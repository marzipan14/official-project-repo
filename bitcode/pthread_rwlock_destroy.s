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
	pushq	%r12
	pushq	%rbx
	movl	$22, %r15d
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	cmpq	$-1, %r14
	je	.LBB0_14
# %bb.2:
	testq	%r14, %r14
	je	.LBB0_19
# %bb.3:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	jne	.LBB0_19
# %bb.4:
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.5:
	leaq	8(%r14), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB0_7
# %bb.6:
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_19
.LBB0_14:
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$16, %r15d
	cmpq	$-1, (%rbx)
	jne	.LBB0_16
# %bb.15:
	movq	$0, (%rbx)
	xorl	%r15d, %r15d
.LBB0_16:
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	testl	%r15d, %r15d
	sete	%al
	xorl	%r12d, %r12d
.LBB0_17:
	movl	%r12d, %ebx
.LBB0_18:
	testb	%al, %al
	cmovnel	%ebx, %r15d
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	cmpl	$0, 28(%r14)
	jg	.LBB0_9
# %bb.8:
	movl	24(%r14), %eax
	cmpl	32(%r14), %eax
	jle	.LBB0_10
.LBB0_9:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	movl	$16, %r12d
.LBB0_13:
	testl	%r15d, %r15d
	sete	%al
	testl	%ebx, %ebx
	jne	.LBB0_18
	jmp	.LBB0_17
.LBB0_10:
	movl	$0, 36(%r14)
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	testl	%r15d, %r15d
	jne	.LBB0_19
# %bb.11:
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.12:
	movq	$0, (%rbx)
	movq	%r14, %rdi
	addq	$16, %rdi
	callq	pthread_cond_destroy
	movl	%eax, %r15d
	movq	%r12, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	free
	jmp	.LBB0_13
.Lfunc_end0:
	.size	pthread_rwlock_destroy, .Lfunc_end0-pthread_rwlock_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
