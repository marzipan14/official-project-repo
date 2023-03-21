#!/bin/bash

SRC=$1
DEST=$2
ROPPER="/home/mateusz/Ropper/Ropper.py"

if [[ ! -d $SRC ]]; then
	echo "The source is not a directory!"
	exit
fi

if [[ ! -d $DEST ]]; then
	echo "The destination is not a directory!"
	exit
fi

for file in $(find $SRC -name "*ld.o"); do
	if [[ ! -f $file ]]; then
		continue
	fi
	mv $file $DEST
done

#rm -rf $SRC

echo -e "Library\tNo. of ROP gadgets\tNot touching memory\tNo.of JOP gadgets\tNot touching memory"
for file in $(find $DEST -name "*.ld.o"); do
	result="${file%.ld.o}"
	result="${result#$DEST}"
	
	all=$(python3 $ROPPER --file $file --type rop --all 2> /dev/null | wc -l)
	result="$result\t$all"
	
	t_memory=$(python3 $ROPPER --file $file --type rop --search "% [%]" --all 2> /dev/null | wc -l)
	nt_memory=$((all - t_memory))
	result="$result\t$nt_memory"

	all=$(python3 $ROPPER --file $file --type jop --all 2> /dev/null | wc -l)
	result="$result\t$all"
	
	t_memory=$(python3 $ROPPER --file $file --type jop --search "% [%]" --all 2> /dev/null | wc -l)
	nt_memory=$((all - t_memory))
	result="$result\t$nt_memory"
	
	echo -e $result
done
