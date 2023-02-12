#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/BasicBlock.h"
using namespace llvm;

namespace {
  struct TouchMemoryPass : public ModulePass {
    static char ID;
    TouchMemoryPass() : ModulePass(ID) {}

    virtual bool runOnModule(Module &M) {

      auto* intType = Type::getInt32Ty(M.getContext());

      auto* globalVar = M.getOrInsertGlobal("__A_VARIABLE", intType, [&] {
      	return new GlobalVariable(
	  M,
	  intType,
	  false,
	  GlobalVariable::InternalLinkage,
	  Constant::getNullValue(intType),
	  "__A_VARIABLE"
	);
      });

      for (auto &F : M) {
        AllocaInst* allocaInst;
      	for (auto &BB : F) {

          IRBuilder<> Builder(&BB);

          Builder.SetInsertPoint(&BB.back());
          auto* storeInst = Builder.CreateStore(Builder.getInt32(42), globalVar, true);

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
