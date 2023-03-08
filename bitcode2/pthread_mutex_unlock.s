	.text
	.file	"pthread_mutex_unlock.c"
	.globl	pthread_mutex_unlock    # -- Begin function pthread_mutex_unlock
	.p2align	4, 0x90
	.type	pthread_mutex_unlock,@function
pthread_mutex_unlock:                   # @pthread_mutex_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-4, %rbx
	ja	.LBB0_7
# %bb.1:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_8
# %bb.2:
	callq	pthread_self
	movl	%edx, %ecx
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	movq	%rax, %rdx
	callq	pthread_equal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.3:
	cmpl	$1, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.4:
	xorl	%r14d, %r14d
	addl	$-1, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_15
.LBB0_5:
	movq	$0, 24(%rbx)
	xorl	%eax, %eax
	xchgl	%eax, 8(%rbx)
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_15
# %bb.6:
	movq	(%rbx), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_15
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	jmp	.LBB0_15
.LBB0_8:
	xorl	%eax, %eax
	xchgl	%eax, 8(%rbx)
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_14
# %bb.10:
	movq	(%rbx), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_14
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	jmp	.LBB0_14
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB0_15
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_unlock, .Lfunc_end0-pthread_mutex_unlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
