	.text
	.file	"pthread_spin_destroy.c"
	.globl	pthread_spin_destroy    # -- Begin function pthread_spin_destroy
	.p2align	4, 0x90
	.type	pthread_spin_destroy,@function
pthread_spin_destroy:                   # @pthread_spin_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$22, %r14d
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	cmpq	$-1, %r15
	je	.LBB0_7
# %bb.2:
	testq	%r15, %r15
	je	.LBB0_10
# %bb.3:
	movl	(%r15), %ecx
	cmpl	$3, %ecx
	jne	.LBB0_4
# %bb.5:
	movq	%r15, %rdi
	addq	$8, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %r14d
	testl	%eax, %eax
	jne	.LBB0_10
	jmp	.LBB0_6
.LBB0_7:
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$16, %r14d
	cmpq	$-1, (%rbx)
	jne	.LBB0_9
# %bb.8:
	movq	$0, (%rbx)
	xorl	%r14d, %r14d
.LBB0_9:
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	jmp	.LBB0_10
.LBB0_4:
	xorl	%edx, %edx
	movl	$1, %eax
	lock		cmpxchgl	%edx, (%r15)
	cmpl	$1, %ecx
	jne	.LBB0_10
.LBB0_6:
	movq	$0, (%rbx)
	movq	%r15, %rdi
	callq	free
	xorl	%r14d, %r14d
.LBB0_10:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_spin_destroy, .Lfunc_end0-pthread_spin_destroy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
