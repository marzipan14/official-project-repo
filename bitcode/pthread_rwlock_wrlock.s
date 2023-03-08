	.text
	.file	"pthread_rwlock_wrlock.c"
	.globl	pthread_rwlock_wrlock   # -- Begin function pthread_rwlock_wrlock
	.p2align	4, 0x90
	.type	pthread_rwlock_wrlock,@function
pthread_rwlock_wrlock:                  # @pthread_rwlock_wrlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	$22, %r12d
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	testq	%r15, %r15
	je	.LBB0_19
# %bb.2:
	cmpq	$-1, %r15
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_rwlock_check_need_init
	movl	%eax, %r12d
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_19
# %bb.4:
	movq	(%rbx), %r15
.LBB0_5:
	cmpl	$262974946, 36(%r15)    # imm = 0xFACADE2
	movl	$22, %r12d
	jne	.LBB0_19
# %bb.6:
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.7:
	leaq	8(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movl	%eax, %r12d
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_19
.LBB0_9:
	movl	28(%r15), %eax
	testl	%eax, %eax
	je	.LBB0_10
.LBB0_18:
	addl	$1, %eax
	movl	%eax, 28(%r15)
	xorl	%r12d, %r12d
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	24(%r15), %eax
	movl	32(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.11:
	subl	%ecx, %eax
	movl	%eax, 24(%r15)
	movl	$0, 32(%r15)
.LBB0_12:
	testl	%eax, %eax
	jle	.LBB0_13
# %bb.14:
	negl	%eax
	movl	%eax, 32(%r15)
	leaq	-56(%rbp), %rdi
	movl	$pte_rwlock_cancelwrwait, %esi
	movq	%r15, %rdx
	callq	pte_push_cleanup
	leaq	16(%r15), %rbx
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pthread_cond_wait
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, 32(%r15)
	js	.LBB0_15
# %bb.17:
	xorl	%edi, %edi
	callq	pte_pop_cleanup
	movl	$0, 24(%r15)
	movl	28(%r15), %eax
	jmp	.LBB0_18
.LBB0_13:
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_20:
	movl	%eax, %r12d
	movl	$1, %edi
	callq	pte_pop_cleanup
	jmp	.LBB0_19
.Lfunc_end0:
	.size	pthread_rwlock_wrlock, .Lfunc_end0-pthread_rwlock_wrlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
