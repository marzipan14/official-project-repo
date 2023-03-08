	.text
	.file	"pte_threadDestroy.c"
	.globl	pte_threadDestroy       # -- Begin function pte_threadDestroy
	.p2align	4, 0x90
	.type	pte_threadDestroy,@function
pte_threadDestroy:                      # @pte_threadDestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	-208(%rbp), %rdi
	movl	$192, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	pte_threadReusePush
	leaq	-128(%rbp), %rdi
	callq	pthread_mutex_destroy
	leaq	-144(%rbp), %rdi
	callq	pthread_mutex_destroy
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.2:
	callq	pte_osThreadDelete
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_threadDestroy, .Lfunc_end0-pte_threadDestroy
                                        # -- End function
	.globl	pte_threadExitAndDestroy # -- Begin function pte_threadExitAndDestroy
	.p2align	4, 0x90
	.type	pte_threadExitAndDestroy,@function
pte_threadExitAndDestroy:               # @pte_threadExitAndDestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	-208(%rbp), %rdi
	movl	$192, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	pte_threadReusePush
	leaq	-128(%rbp), %rdi
	callq	pthread_mutex_destroy
	leaq	-144(%rbp), %rdi
	callq	pthread_mutex_destroy
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.2:
	callq	pte_osThreadExitAndDelete
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_threadExitAndDestroy, .Lfunc_end1-pte_threadExitAndDestroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
