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

__attribute__((no_instrument_function)) void __cyg_profile_func_exit (void *this_fn, void *call_site);

__attribute__((no_instrument_function)) void __cyg_profile_func_exit (void *this_fn, void *call_site) {
	__A_VARIABLE = 1;
}
#endif
' | cat - $i > /tmp/out && mv /tmp/out $i    
done
