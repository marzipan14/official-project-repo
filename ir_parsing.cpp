#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

bool is_interesting(Instruction* I) {
	auto opcode = I->getOpcodeName();
	return !I->isBinaryOp() && !I->isUnaryOp() && !I->isBitwiseLogicOp() && !I->isShift() && !I->isCast()
		&& strcmp(opcode, "icmp") != 0 && strcmp(opcode, "fcmp") != 0
		&& strcmp(opcode, "br") != 0 && strcmp(opcode, "ret") != 0
		&& strcmp(opcode, "phi") != 0;
}

void print_basic_block(BasicBlock* BB) {
	for(auto &I : *BB) {
		I.print(outs());
		outs() << "\n";
	}
	outs() << "\n";
}

int main(int argc, char **argv) {
	if (argc < 2) {
		outs() << "Usage: " << argv[0] << " <IR file>\n";
		return 1;
	}

	SMDiagnostic Err;
	LLVMContext Context;
	std::unique_ptr<Module> M(parseIRFile(argv[1], Err, Context));
	if (!M) {
		Err.print(argv[0], outs());
		return 1;
	}

	for(auto &F : *M) {
		for(auto &BB : F) {
			// bool invalid = false;
			// bool interesting = false;
			// for(auto &I : BB) {

				// if the basic block has an interesting
				// instruction, then print it
				// interesting |= is_interesting(&I);

				// if the basic block touches memory,
				// then ignore it
				// if(I.mayReadOrWriteMemory()) {
				//	invalid = true;
				//	break;
				// }
			// }
			// if(!invalid && interesting) print_basic_block(&BB);
			
			auto last_instr_opcode = BB.back().getOpcodeName();
			if(BB.size() == 2 && strcmp(last_instr_opcode, "br") == 0)
				print_basic_block(&BB);
		}
		
	}
}
