	.text
	.file	"pthread_rwlock_trywrlock.c"
	.globl	pthread_rwlock_trywrlock # -- Begin function pthread_rwlock_trywrlock
	.p2align	4, 0x90
	.type	pthread_rwlock_trywrlock,@function
pthread_rwlock_trywrlock:               # @pthread_rwlock_trywrlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$22, %r12d
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB0_16
# %bb.2:
	cmpq	$-1, %r14
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_rwlock_check_need_init
	movl	%eax, %r12d
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_16
# %bb.4:
	movq	(%rbx), %r14
.LBB0_5:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	movl	$22, %r12d
	jne	.LBB0_16
# %bb.6:
	movq	%r14, %rdi
	callq	pthread_mutex_trylock
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.LBB0_16
# %bb.7:
	leaq	8(%r14), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_trylock
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	testl	%eax, %eax
	cmovnel	%eax, %r12d
	jmp	.LBB0_16
.LBB0_9:
	movl	$16, %r12d
	cmpl	$0, 28(%r14)
	je	.LBB0_10
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	24(%r14), %eax
	movl	32(%r14), %ecx
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.11:
	subl	%ecx, %eax
	movl	%eax, 24(%r14)
	movl	$0, 32(%r14)
.LBB0_12:
	testl	%eax, %eax
	jle	.LBB0_15
# %bb.13:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	testl	%r12d, %r12d
	jne	.LBB0_16
# %bb.14:
	testl	%eax, %eax
	movl	$16, %r12d
	cmovnel	%eax, %r12d
	jmp	.LBB0_16
.LBB0_15:
	movl	$1, 28(%r14)
	xorl	%r12d, %r12d
	jmp	.LBB0_16
.Lfunc_end0:
	.size	pthread_rwlock_trywrlock, .Lfunc_end0-pthread_rwlock_trywrlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
