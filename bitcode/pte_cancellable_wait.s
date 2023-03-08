	.text
	.file	"pte_cancellable_wait.c"
	.globl	pte_cancellable_wait    # -- Begin function pte_cancellable_wait
	.p2align	4, 0x90
	.type	pte_cancellable_wait,@function
pte_cancellable_wait:                   # @pte_cancellable_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	pthread_self
	movq	%rax, %r14
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 88(%r12)
	je	.LBB0_2
.LBB0_3:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pte_osSemaphorePend
	jmp	.LBB0_4
.LBB0_2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pte_osSemaphoreCancellablePend
.LBB0_4:
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB0_13
# %bb.5:
	cmpl	$4, %ebx
	je	.LBB0_8
# %bb.6:
	cmpl	$3, %ebx
	jne	.LBB0_12
# %bb.7:
	movl	$116, %ebx
	jmp	.LBB0_13
.LBB0_8:
	movl	$22, %ebx
	testq	%r14, %r14
	je	.LBB0_13
# %bb.9:
	addq	$80, %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	32(%r12), %eax
	cmpl	$3, %eax
	ja	.LBB0_11
# %bb.10:
	movl	$4, 32(%r12)
	movl	$1, 88(%r12)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
.LBB0_11:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_13
.LBB0_12:
	movl	$22, %ebx
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_cancellable_wait, .Lfunc_end0-pte_cancellable_wait
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
