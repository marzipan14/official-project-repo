#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/IR/IRBuilder.h"
using namespace llvm;

using Result = SetVector<BasicBlock*>;

namespace {
  struct TouchMemoryPass : public ModulePass {
    static char ID;
    TouchMemoryPass() : ModulePass(ID) {}

    virtual bool runOnModule(Module &M) {
      Result basicBlocks;
      for (auto &F : M) {
      	for (auto &BB : F) {
            for (auto &I : BB) {
            	if(strcmp(I.getOpcodeName(), "ret") == 0) {
                    basicBlocks.insert(&BB);
                    break;
      	        }
	    }
	}
      }

      for(auto* BB : basicBlocks) {
        IRBuilder<> Builder(BB);
        Builder.SetInsertPoint(&BB->back());
        auto* allocaInst = Builder.CreateAlloca(Builder.getInt32Ty());
        auto* storeInst = Builder.CreateStore(Builder.getInt32(42), allocaInst, true);
      }

      return true;
    }
  };
}

char TouchMemoryPass::ID = 0;

static void registerTouchMemoryPass(const PassManagerBuilder &,
                         legacy::PassManagerBase &PM) {
  PM.add(new TouchMemoryPass());
}

static RegisterStandardPasses
    RegisterMyPass(PassManagerBuilder::EP_ModuleOptimizerEarly, registerTouchMemoryPass);

static RegisterStandardPasses
    RegisterMyPass0(PassManagerBuilder::EP_EnabledOnOptLevel0, registerTouchMemoryPass);
