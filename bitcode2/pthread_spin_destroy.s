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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.1:
	movq	%rdi, %r15
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_13
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB0_9
# %bb.3:
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB0_4
# %bb.7:
	leaq	8(%r14), %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
	jmp	.LBB0_8
.LBB0_9:
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	cmpq	$-1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %ebx
	jne	.LBB0_11
# %bb.10:
	movq	$0, (%r15)
	xorl	%ebx, %ebx
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	jmp	.LBB0_12
.LBB0_4:
	xorl	%edx, %edx
	movl	$1, %eax
	lock		cmpxchgl	%edx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	cmpl	$1, %ecx
	jne	.LBB0_12
.LBB0_8:
	movq	$0, (%r15)
	movq	%r14, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_spin_destroy, .Lfunc_end0-pthread_spin_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
