### How to compile the pass ###

    cmake -B ./build
    cd build
    make
    clang -flegacy-pass-manager -Xclang -load -Xclang ./touchmemory/libTouchMemoryPass.* ./test.c

