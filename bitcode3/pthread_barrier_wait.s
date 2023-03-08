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
	movl	$22, %ecx
	testq	%rdi, %rdi
	je	.LBB0_8
# %bb.1:
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.2:
	movslq	8(%rbx), %r14
	lock		subl	$1, (%rbx)
	jne	.LBB0_5
# %bb.3:
	movl	4(%rbx), %esi
	movl	%esi, (%rbx)
	cmpl	$2, %esi
	jb	.LBB0_7
# %bb.4:
	leaq	(%rbx,%r14,8), %rdi
	addq	$16, %rdi
	addl	$-1, %esi
	callq	sem_post_multiple
	jmp	.LBB0_6
.LBB0_5:
	leaq	(%rbx,%r14,8), %rdi
	addq	$16, %rdi
	callq	sem_wait
.LBB0_6:
	movl	%eax, %ecx
	testl	%eax, %eax
	jne	.LBB0_8
.LBB0_7:
	movl	$1, %edx
	subl	%r14d, %edx
	xorl	%ecx, %ecx
	cmpl	8(%rbx), %r14d
	sete	%cl
	movl	%r14d, %eax
	lock		cmpxchgl	%edx, 8(%rbx)
	negl	%ecx
.LBB0_8:
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_barrier_wait, .Lfunc_end0-pthread_barrier_wait
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
