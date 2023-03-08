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
	movq	(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %r15
	jb	.LBB0_3
# %bb.1:
	movq	%rdi, %rbx
	callq	pte_mutex_check_need_init
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.2:
	movq	(%rbx), %r15
.LBB0_3:
	movl	8(%r15), %ecx
	movl	$1, %edx
	xorl	%eax, %eax
	lock		cmpxchgl	%edx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_6
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r14d
	cmpl	$1, %eax
	jne	.LBB0_13
# %bb.10:
	callq	pthread_self
	movl	%edx, %ecx
	movq	24(%r15), %rdi
	movl	32(%r15), %esi
	movq	%rax, %rdx
	callq	pthread_equal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.11:
	addl	$1, 12(%r15)
	jmp	.LBB0_12
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.8:
	movl	$1, 12(%r15)
	callq	pthread_self
	movq	%rax, 24(%r15)
	movl	%edx, 32(%r15)
.LBB0_12:
	xorl	%r14d, %r14d
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	xorl	%r14d, %r14d
	jmp	.LBB0_14
.Lfunc_end0:
	.size	pthread_mutex_trylock, .Lfunc_end0-pthread_mutex_trylock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
