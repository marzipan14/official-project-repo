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

      for (auto &F : M) {
        AllocaInst* allocaInst;
      	for (auto &BB : F) {

          IRBuilder<> Builder(&BB);
          if(&BB == &(*F.begin())) {
            Builder.SetInsertPoint(&BB.front());
            allocaInst = Builder.CreateAlloca(Builder.getInt32Ty());
          }

          Builder.SetInsertPoint(&BB.back());
          auto* storeInst = Builder.CreateStore(Builder.getInt32(42), allocaInst, true);

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
