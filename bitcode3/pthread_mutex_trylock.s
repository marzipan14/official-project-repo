	.text
	.file	"pthread_mutex_trylock.c"
	.globl	pthread_mutex_trylock   # -- Begin function pthread_mutex_trylock
	.p2align	4, 0x90
	.type	pthread_mutex_trylock,@function
pthread_mutex_trylock:                  # @pthread_mutex_trylock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rbx
	cmpq	$-3, %rbx
	jb	.LBB0_3
# %bb.1:
	movq	%rdi, %r15
	callq	pte_mutex_check_need_init
	movl	%eax, %r14d
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.2:
	movq	(%r15), %rbx
.LBB0_3:
	movl	8(%rbx), %ecx
	movl	$1, %edx
	xorl	%eax, %eax
	lock		cmpxchgl	%edx, 8(%rbx)
	xorl	%r14d, %r14d
	movl	16(%rbx), %eax
	testl	%ecx, %ecx
	je	.LBB0_4
# %bb.6:
	movl	$16, %r14d
	cmpl	$1, %eax
	jne	.LBB0_9
# %bb.7:
	callq	pthread_self
	movl	%edx, %ecx
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	movq	%rax, %rdx
	callq	pthread_equal
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	addl	$1, 12(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB0_9
.LBB0_4:
	testl	%eax, %eax
	je	.LBB0_9
# %bb.5:
	movl	$1, 12(%rbx)
	callq	pthread_self
	movq	%rax, 24(%rbx)
	movl	%edx, 32(%rbx)
.LBB0_9:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_trylock, .Lfunc_end0-pthread_mutex_trylock
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
