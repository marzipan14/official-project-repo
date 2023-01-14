DIR=$1

if [[ ! -d $DIR ]]; then
    echo "$DIR is not a directory!"
    exit
fi

spatch --sp-file touch_memory_at_every_exit_point.cocci --dir $DIR --in-place
