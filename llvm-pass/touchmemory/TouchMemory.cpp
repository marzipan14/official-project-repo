#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Constant.h"
using namespace llvm;

namespace {
  struct TouchMemoryPass : public ModulePass {
    static char ID;
    TouchMemoryPass() : ModulePass(ID) {}

    virtual bool runOnModule(Module &M) {

      auto* intType = Type::getInt32Ty(M.getContext());

      auto* globalVar = new GlobalVariable(
	  M,
	  intType,
	  false,
	  GlobalVariable::InternalLinkage,
	  Constant::getNullValue(intType),
	  "__A_VARIABLE"
      );

      for (auto &F : M) {

      	for (auto &BB : F) {

          IRBuilder<> Builder(&BB);

          for (auto &I : BB) {
            if(strcmp(I.getOpcodeName(), "ret") == 0) {
              Builder.SetInsertPoint(&BB.back());
              auto* storeInst = Builder.CreateStore(Builder.getInt32(42), globalVar, true);
              break;
      	    }
          }

        }
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
