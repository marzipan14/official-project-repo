	.text
	.file	"pthread_rwlock_destroy.c"
	.globl	pthread_rwlock_destroy  # -- Begin function pthread_rwlock_destroy
	.p2align	4, 0x90
	.type	pthread_rwlock_destroy,@function
pthread_rwlock_destroy:                 # @pthread_rwlock_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	testq	%rdi, %rdi
	je	.LBB0_17
# %bb.1:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB0_13
# %bb.3:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_17
# %bb.4:
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_17
# %bb.5:
	leaq	8(%r14), %r13
	movq	%r13, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.6:
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_17
.LBB0_13:
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	cmpq	$-1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r12d
	jne	.LBB0_15
# %bb.14:
	movq	$0, (%r15)
	xorl	%r12d, %r12d
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	cmovnel	%r15d, %ebx
	testl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%r12d, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	cmpl	$0, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_9
# %bb.8:
	movl	24(%r14), %eax
	cmpl	32(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_10
.LBB0_9:
	movq	%r13, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r15d
	movl	$16, %ebx
	jmp	.LBB0_16
.LBB0_10:
	movl	$0, 36(%r14)
	movq	%r13, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_17
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_17
# %bb.12:
	movq	$0, (%r15)
	leaq	16(%r14), %rdi
	callq	pthread_cond_destroy
	movl	%eax, %r12d
	movq	%r13, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	free
	jmp	.LBB0_16
.Lfunc_end0:
	.size	pthread_rwlock_destroy, .Lfunc_end0-pthread_rwlock_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
