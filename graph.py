import numpy as np
import matplotlib.pyplot as plt
import statistics
import sys

def avg(arr):
    arr = [float(x) for x in arr]
    return np.asarray(statistics.mean(arr))

def stdev(arr):
    arr = [float(x) for x in arr]
    return np.asarray(statistics.stdev(arr))

filename = str(sys.argv[1])

pure_set = {2**(i+1): [] for i in range(8)}
pure_get = {2**(i+1): [] for i in range(8)}
instr_set = {2**(i+1): [] for i in range(8)}
instr_get = {2**(i+1): [] for i in range(8)}
cocci_set = {2**(i+1): [] for i in range(8)}
cocci_get = {2**(i+1): [] for i in range(8)}
llvm_set = {2**(i+1): [] for i in range(8)}
llvm_get = {2**(i+1): [] for i in range(8)}
blocks_set = {2**(i+1): [] for i in range(8)}
blocks_get = {2**(i+1): [] for i in range(8)}

with open(filename) as f:
    header = f.readline()
    for line in f:
        size, _, method, queries, typ = line.split()
        size = int(size)
        if method == "SET":
            if typ == "Pure":
                pure_set[size].append(queries)
            elif typ == "Instrumentation":
                instr_set[size].append(queries)
            elif typ == "Coccinelle":
                cocci_set[size].append(queries)
            elif typ == "LLVM":
                llvm_set[size].append(queries)
            else:
                blocks_set[size].append(queries)
        else:
            if typ == "Pure":
                pure_get[size].append(queries)
            elif typ == "Instrumentation":
                instr_get[size].append(queries)
            elif typ == "Coccinelle":
                cocci_get[size].append(queries)
            elif typ == "LLVM":
                llvm_get[size].append(queries)
            else:
                blocks_get[size].append(queries)

x = np.asarray([2, 4, 8, 16, 32, 64, 128, 256])
indices = np.asarray([0, 1, 2, 3, 4, 5, 6, 7])

pure_set_err = [stdev(pure_set[key]) for key in pure_set.keys()]
pure_set = [avg(pure_set[key]) for key in pure_set.keys()]
pure_get_err = [stdev(pure_get[key]) for key in pure_get.keys()]
pure_get = [avg(pure_get[key]) for key in pure_get.keys()]

instr_set_err = [stdev(instr_set[key]) for key in instr_set.keys()]
instr_set = [avg(instr_set[key]) for key in instr_set.keys()]
instr_get_err = [stdev(instr_get[key]) for key in instr_get.keys()]
instr_get = [avg(instr_get[key]) for key in instr_get.keys()]

cocci_set_err = [stdev(cocci_set[key]) for key in cocci_set.keys()]
cocci_set = [avg(cocci_set[key]) for key in cocci_set.keys()]
cocci_get_err = [stdev(cocci_get[key]) for key in cocci_get.keys()]
cocci_get = [avg(cocci_get[key]) for key in cocci_get.keys()]

llvm_set_err = [stdev(llvm_set[key]) for key in llvm_set.keys()]
llvm_set = [avg(llvm_set[key]) for key in llvm_set.keys()]
llvm_get_err = [stdev(llvm_get[key]) for key in llvm_get.keys()]
llvm_get = [avg(llvm_get[key]) for key in llvm_get.keys()]

blocks_set_err = [stdev(blocks_set[key]) for key in blocks_set.keys()]
blocks_set = [avg(blocks_set[key]) for key in blocks_set.keys()]
blocks_get_err = [stdev(blocks_get[key]) for key in blocks_get.keys()]
blocks_get = [avg(blocks_get[key]) for key in blocks_get.keys()]

width = 0.1

plt.figure(figsize=(18, 6))
plt.bar(indices-0.25, pure_set, width, label='No instrumentation', yerr=pure_set_err)
plt.bar(indices-0.15, instr_set, width, label='-finstrument-functions', yerr=instr_set_err)
plt.bar(indices-0.05, cocci_set, width, label='Touch memory at every exit point (source-level)', yerr=cocci_set_err)
plt.bar(indices+0.05, llvm_set, width, label='Touch memory at every exit point (IR-level)', yerr=llvm_set_err)
plt.bar(indices+0.15, blocks_set, width, label='Touch memory at the end of every basic block', yerr=blocks_set_err)

plt.xlabel('Request size (bytes)')
plt.ylabel('Requests / sec')
plt.title('Redis performance for SET requests')
plt.xticks(indices-0.05, x)
plt.legend()
plt.savefig('graph.png', dpi=700)

exit(0)

plt.plot(x, y1, 'b-', label='SR()')
plt.plot(x, y2, 'r:', label='SR_alternative()')
plt.xlabel('Iteration')
plt.ylabel('Absolute error')
plt.xticks(x[999::1000])
plt.legend(loc='upper right')

plt.savefig('graph1.png', dpi=700)

