CXX := g++
CXXFLAGS := -fno-rtti -O0 -g
LLVM_CXXFLAGS := -I/usr/lib/llvm-10/include -std=c++14   -fno-exceptions -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS
LLVM_LDFLAGS := -L/usr/lib/llvm-10/lib -lLLVM-10

all: ir_parsing asm_parsing

ir_parsing: ir_parsing.cpp
	$(CXX) $(CXXFLAGS) $(LLVM_CXXFLAGS) $^ $(LLVM_LDFLAGS) -o $@

asm_parsing: asm_parsing.cpp
	$(CXX) $^ $(CXXFLAGS) -o $@
