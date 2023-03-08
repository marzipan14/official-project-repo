	.text
	.file	"pthread_rwlock_timedrdlock.c"
	.globl	pthread_rwlock_timedrdlock # -- Begin function pthread_rwlock_timedrdlock
	.p2align	4, 0x90
	.type	pthread_rwlock_timedrdlock,@function
pthread_rwlock_timedrdlock:             # @pthread_rwlock_timedrdlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_15
# %bb.2:
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_rwlock_check_need_init
	movl	%eax, %r12d
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB0_15
# %bb.4:
	movq	(%rbx), %r14
.LBB0_5:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
	jne	.LBB0_15
# %bb.6:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pthread_mutex_timedlock
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_15
# %bb.7:
	movl	24(%r14), %eax
	addl	$1, %eax
	movl	%eax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jne	.LBB0_14
# %bb.8:
	leaq	8(%r14), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pthread_mutex_timedlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.9:
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$116, %eax
	jne	.LBB0_11
# %bb.10:
	addl	$1, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_11
.LBB0_12:
	movl	32(%r14), %eax
	subl	%eax, 24(%r14)
	movl	$0, 32(%r14)
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_14
# %bb.13:
	movl	%eax, %r12d
.LBB0_11:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_15
.LBB0_14:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r12d
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_rwlock_timedrdlock, .Lfunc_end0-pthread_rwlock_timedrdlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
