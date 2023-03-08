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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
	testq	%rdi, %rdi
	je	.LBB0_20
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_20
# %bb.2:
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
	jne	.LBB0_20
# %bb.4:
	movq	(%rbx), %r14
.LBB0_5:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
	jne	.LBB0_20
# %bb.6:
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.7:
	leaq	8(%r14), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_20
.LBB0_9:
	movl	28(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	movl	%eax, 28(%r14)
	xorl	%r12d, %r12d
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	32(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%r14), %eax
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.11:
	subl	%ecx, %eax
	movl	%eax, 24(%r14)
	movl	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_13
# %bb.14:
	negl	%eax
	movl	%eax, 32(%r14)
	leaq	-56(%rbp), %rdi
	movl	$pte_rwlock_cancelwrwait, %esi
	movq	%r14, %rdx
	callq	pte_push_cleanup
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r14), %rbx
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pthread_cond_wait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_15
# %bb.17:
	xorl	%edi, %edi
	callq	pte_pop_cleanup
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r14), %eax
	jmp	.LBB0_18
.LBB0_13:
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_21:
	movl	%eax, %r12d
	movl	$1, %edi
	callq	pte_pop_cleanup
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_19
.Lfunc_end0:
	.size	pthread_rwlock_wrlock, .Lfunc_end0-pthread_rwlock_wrlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
