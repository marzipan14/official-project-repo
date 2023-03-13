#!/usr/bin/env python
from ropper import RopperService
import subprocess

gadget_type = input("Please enter gadget type (rop/jop): ")

if gadget_type not in ["rop", "jop"]:
    exit()

options = { 'all': False,
            'type': gadget_type,
            'detailed': False,
            'instr_count': 6,
            'color': True}

rs = RopperService(options)

redis1 = "/home/mateusz/redis1"
redis2 = "/home/mateusz/redis2"
redis3 = "/home/mateusz/redis3"
ropper = "/home/mateusz/Ropper/Ropper.py"

rs.addFile(redis1)
rs.addFile(redis2)
rs.addFile(redis3)

rs.loadGadgetsFor()

results = rs.searchdict(search='% [%]')
for file, gadgets in results.items():
    badbytes = []
    for gadget in gadgets:
        badbytes.append(hex(gadget.address)[2:])

    command = 'python3 %s --file %s --type %s --chain execve' % (ropper, file, gadget_type)
    
    for badbyte in badbytes:
        command += '-b %s' % badbyte

    result = subprocess.run(command, shell=True, capture_output=True, text=True).stdout

    init_index = result.find("#!/usr/bin/env python")
    end_index = result.find("print(rop)")+len("print(rop)")
    title = '### %s gadget for %s ###' % (gadget_type.upper(), file)
    print_result = 'NOT FOUND'
    if init_index != -1 and end_index != -1:
        print_result = result[init_index:end_index]

    print()
    print(title)
    print()
    print(print_result)
    print()
    print('#' * len(title))    
