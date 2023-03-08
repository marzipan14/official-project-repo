	.text
	.file	"pthread_spin_trylock.c"
	.globl	pthread_spin_trylock    # -- Begin function pthread_spin_trylock
	.p2align	4, 0x90
	.type	pthread_spin_trylock,@function
pthread_spin_trylock:                   # @pthread_spin_trylock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rdi
	je	.LBB0_3
.LBB0_5:
	movslq	(%rdi), %rcx
	movl	$2, %edx
	movl	$1, %eax
	lock		cmpxchgl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rcx
	je	.LBB0_8
# %bb.9:
	cmpq	$3, %rcx
	je	.LBB0_12
# %bb.10:
	cmpq	$2, %rcx
	jne	.LBB0_13
# %bb.11:
	movl	$16, %r14d
	jmp	.LBB0_13
.LBB0_3:
	movq	%rbx, %rdi
	callq	pte_spinlock_check_need_init
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.4:
	movq	(%rbx), %rdi
	jmp	.LBB0_5
.LBB0_8:
	xorl	%r14d, %r14d
	jmp	.LBB0_13
.LBB0_12:
	addq	$8, %rdi
	callq	pthread_mutex_trylock
	movl	%eax, %r14d
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_spin_trylock, .Lfunc_end0-pthread_spin_trylock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
