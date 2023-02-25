DIR=$1

if [[ ! -d $DIR ]]; then
    echo "$DIR is not a directory!"
    exit
fi

for i in $(find $DIR -name '*.c'); do
    echo '
#ifndef ADD_INSTRUMENTATION
#define ADD_INSTRUMENTATION
static volatile int __A_VARIABLE;

static void __cyg_profile_func_enter (void *func, void *call_site);
static void __cyg_profile_func_exit (void *func, void *call_site);

static void __cyg_profile_func_enter (void *this_fn, void *call_site) {
}

static void __cyg_profile_func_exit (void *this_fn, void *call_site) {
	__A_VARIABLE = 1;
}
#endif
' | cat - $i > /tmp/out && mv /tmp/out $i    
done

for i in $(find $DIR -name 'Makefile.uk'); do
    long_dirname=$(dirname $i)
    dirname=${long_dirname##*/}
    echo $dirname
done
