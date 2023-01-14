### How to compile the pass ###

    mkdir build
    cd build
    cmake ..
    make
    cd ..
    clang -flegacy-pass-manager -Xclang -load -Xclang build/touchmemory/libTouchMemoryPass.* ./test.c

