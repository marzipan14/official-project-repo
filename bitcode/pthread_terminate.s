	.text
	.file	"pthread_terminate.c"
	.globl	pthread_terminate       # -- Begin function pthread_terminate
	.p2align	4, 0x90
	.type	pthread_terminate,@function
pthread_terminate:                      # @pthread_terminate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$0, pte_processInitialized(%rip)
	je	.LBB0_8
# %bb.1:
	movq	pte_selfThreadKey(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.2:
	callq	pthread_key_delete
	movq	$0, pte_selfThreadKey(%rip)
.LBB0_3:
	movq	pte_cleanupKey(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.4:
	callq	pthread_key_delete
	movq	$0, pte_cleanupKey(%rip)
.LBB0_5:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	pte_threadReuseTop(%rip), %rdi
	cmpq	$1, %rdi
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rbx
	callq	free
	movq	%rbx, %rdi
	cmpq	$1, %rbx
	jne	.LBB0_6
.LBB0_7:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$0, pte_processInitialized(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_terminate, .Lfunc_end0-pthread_terminate
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
