	.text
	.file	"pthread_barrier_wait.c"
	.globl	pthread_barrier_wait    # -- Begin function pthread_barrier_wait
	.p2align	4, 0x90
	.type	pthread_barrier_wait,@function
pthread_barrier_wait:                   # @pthread_barrier_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.1:
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_10
# %bb.2:
	movslq	8(%rbx), %r14
	lock		subl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.3:
	movl	4(%rbx), %esi
	movl	%esi, (%rbx)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jb	.LBB0_6
# %bb.4:
	leaq	(%rbx,%r14,8), %rdi
	addq	$16, %rdi
	addl	$-1, %esi
	callq	sem_post_multiple
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
.LBB0_5:
	leaq	(%rbx,%r14,8), %rdi
	addq	$16, %rdi
	callq	sem_wait
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.7:
	movl	8(%rbx), %ecx
	movl	$1, %edx
	subl	%r14d, %edx
	movl	%r14d, %eax
	lock		cmpxchgl	%edx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	xorl	%eax, %eax
	cmpl	%ecx, %r14d
	sete	%al
	negl	%eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_barrier_wait, .Lfunc_end0-pthread_barrier_wait
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
