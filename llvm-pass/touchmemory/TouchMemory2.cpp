#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
//#include "llvm/ADT/SetVector.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IRBuilder.h"
using namespace llvm;

//using Result = SetVector<BasicBlock*>;

namespace {
    struct TouchMemoryPass : public FunctionPass {
        static char ID;
        TouchMemoryPass() : FunctionPass(ID) {}

        virtual bool runOnFunction(Function &F) {
            //Result basicBlocks;

            for(auto &BB : F) {
                errs() << "Basic block:" << "\n";
                for(auto &I : BB) {
                    errs() << I.getOpcodeName() << "\n";
                    //if(strcmp(I.getOpcodeName(), "ret") == 0) {
                        //basicBlocks.insert(&BB);
                        //break;
                    //}
                }
            }

            //for(auto* BB : basicBlocks) {
             //   IRBuilder<> Builder(BB);
             //   Builder.SetInsertPoint(&BB->back());
             //   auto* allocaInst = Builder.CreateAlloca(Builder.getInt32Ty());
             //   auto* storeInst = Builder.CreateStore(Builder.getInt32(42), allocaInst, true);
            //}
            
            return false;
        }
    };
}

char TouchMemoryPass::ID = 0;

static void registerTouchMemoryPass(const PassManagerBuilder &,
                                PassManagerBase &PM) {
    PM.add(new TouchMemoryPass());
}
static RegisterStandardPasses
    RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible,
                    registerTouchMemoryPass);


