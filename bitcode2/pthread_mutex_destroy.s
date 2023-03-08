	.text
	.file	"pthread_mutex_destroy.c"
	.globl	pthread_mutex_destroy   # -- Begin function pthread_mutex_destroy
	.p2align	4, 0x90
	.type	pthread_mutex_destroy,@function
pthread_mutex_destroy:                  # @pthread_mutex_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movq	(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-4, %rax
	ja	.LBB0_8
# %bb.1:
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	pthread_mutex_trylock
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.2:
	movq	-24(%rbp), %rax
	cmpl	$1, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.3:
	movl	12(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB0_7
.LBB0_4:
	movq	$0, (%r14)
	leaq	-24(%rbp), %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	movq	-24(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_5
# %bb.6:
	movq	%rax, (%r14)
	jmp	.LBB0_11
.LBB0_8:
	movq	pte_mutex_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	cmpq	$-3, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %ebx
	jb	.LBB0_10
# %bb.9:
	movq	$0, (%r14)
	xorl	%ebx, %ebx
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	pte_mutex_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_5:
	movq	(%rax), %rdi
	callq	pte_osSemaphoreDelete
	movq	-24(%rbp), %rdi
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB0_11
.LBB0_7:
	addl	$-1, %ecx
	movl	%ecx, 12(%rax)
	movl	$16, %ebx
	jmp	.LBB0_11
.Lfunc_end0:
	.size	pthread_mutex_destroy, .Lfunc_end0-pthread_mutex_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
