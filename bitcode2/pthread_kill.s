	.text
	.file	"pthread_kill.c"
	.globl	pthread_kill            # -- Begin function pthread_kill
	.p2align	4, 0x90
	.type	pthread_kill,@function
pthread_kill:                           # @pthread_kill
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	cmpl	%r15d, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movq	(%rbx), %rdi
	movl	%r14d, %esi
	callq	pte_kill
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_kill, .Lfunc_end0-pthread_kill
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
