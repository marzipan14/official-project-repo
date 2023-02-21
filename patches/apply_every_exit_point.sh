DIR=$1

if [[ ! -d $DIR ]]; then
    echo "$DIR is not a directory!"
    exit
fi

for file in $(find $DIR -name '*.c'); do
    sed  -i '1i static volatile int __A_VARIABLE;' $file
done

spatch --sp-file touch_memory_at_every_exit_point.cocci --dir $DIR --in-place
