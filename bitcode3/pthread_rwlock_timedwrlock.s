	.text
	.file	"pthread_rwlock_timedwrlock.c"
	.globl	pthread_rwlock_timedwrlock # -- Begin function pthread_rwlock_timedwrlock
	.p2align	4, 0x90
	.type	pthread_rwlock_timedwrlock,@function
pthread_rwlock_timedwrlock:             # @pthread_rwlock_timedwrlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$22, %r13d
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	testq	%r12, %r12
	je	.LBB0_19
# %bb.2:
	movq	%rsi, %r14
	cmpq	$-1, %r12
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_rwlock_check_need_init
	movl	%eax, %r13d
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_19
# %bb.4:
	movq	(%rbx), %r12
.LBB0_5:
	cmpl	$262974946, 36(%r12)    # imm = 0xFACADE2
	movl	$22, %r13d
	jne	.LBB0_19
# %bb.6:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	pthread_mutex_timedlock
	movl	%eax, %r13d
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.7:
	leaq	8(%r12), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pthread_mutex_timedlock
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_19
.LBB0_9:
	movl	28(%r12), %eax
	testl	%eax, %eax
	je	.LBB0_10
.LBB0_18:
	addl	$1, %eax
	movl	%eax, 28(%r12)
	xorl	%r13d, %r13d
.LBB0_19:
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	24(%r12), %eax
	movl	32(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.11:
	subl	%ecx, %eax
	movl	%eax, 24(%r12)
	movl	$0, 32(%r12)
.LBB0_12:
	testl	%eax, %eax
	jle	.LBB0_13
# %bb.14:
	negl	%eax
	movl	%eax, 32(%r12)
	leaq	-64(%rbp), %rdi
	movl	$pte_rwlock_cancelwrwait, %esi
	movq	%r12, %rdx
	callq	pte_push_cleanup
	leaq	16(%r12), %rbx
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	pthread_cond_timedwait
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, 32(%r12)
	js	.LBB0_15
# %bb.17:
	xorl	%edi, %edi
	callq	pte_pop_cleanup
	movl	$0, 24(%r12)
	movl	28(%r12), %eax
	jmp	.LBB0_18
.LBB0_13:
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_20:
	movl	%eax, %r13d
	movl	$1, %edi
	callq	pte_pop_cleanup
	jmp	.LBB0_19
.Lfunc_end0:
	.size	pthread_rwlock_timedwrlock, .Lfunc_end0-pthread_rwlock_timedwrlock
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
