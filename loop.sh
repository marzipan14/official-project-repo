#!/bin/bash

for file in $(find ./bitcode2 -name "*.s"); do
	cat $file
done

#for file in $(find ./bitcode3 -name "*.o"); do
#	mv $file ${file%.o}.ll
#done

#for file in $(find ./bitcode3 -name "*.ll"); do
#	grep -v "llvm.dbg" $file > tmp
#	mv tmp $file
#	llvm-as $file -o ${file%.ll}.bc 2> /dev/null
#done

#for file in $(find ./bitcode3 -name "*.bc"); do
#	llc $file -o ${file%.bc}.s 2> /dev/null
#done
