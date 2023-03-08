	.text
	.file	"cleanup.c"
	.globl	pte_pop_cleanup         # -- Begin function pte_pop_cleanup
	.p2align	4, 0x90
	.type	pte_pop_cleanup,@function
pte_pop_cleanup:                        # @pte_pop_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movq	pte_cleanupKey(%rip), %rdi
	callq	pthread_getspecific
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_4
# %bb.2:
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.3:
	movq	8(%rbx), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movq	pte_cleanupKey(%rip), %rdi
	movq	16(%rbx), %rsi
	callq	pthread_setspecific
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_pop_cleanup, .Lfunc_end0-pte_pop_cleanup
                                        # -- End function
	.globl	pte_push_cleanup        # -- Begin function pte_push_cleanup
	.p2align	4, 0x90
	.type	pte_push_cleanup,@function
pte_push_cleanup:                       # @pte_push_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	pte_cleanupKey(%rip), %rdi
	callq	pthread_getspecific
	movq	%rax, 16(%rbx)
	movq	pte_cleanupKey(%rip), %rdi
	movq	%rbx, %rsi
	callq	pthread_setspecific
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_push_cleanup, .Lfunc_end1-pte_push_cleanup
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
