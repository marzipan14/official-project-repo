	.text
	.file	"sem_init.c"
	.globl	sem_init                # -- Begin function sem_init
	.p2align	4, 0x90
	.type	sem_init,@function
sem_init:                               # @sem_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testl	%esi, %esi
	je	.LBB0_1
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	%ebx, (%rax)
	movl	$-1, %ebx
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_1:
	movl	%edx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB0_2
# %bb.3:
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	movq	%rax, %r12
	movl	%r15d, (%rax)
	leaq	8(%rax), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_8
# %bb.6:
	movq	%r12, %rsi
	addq	$16, %rsi
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	pte_osSemaphoreCreate
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
# %bb.7:
	movq	%r15, %rdi
	callq	pthread_mutex_destroy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	free
	movl	$28, %ebx
	jmp	.LBB0_9
.LBB0_2:
	movl	$22, %ebx
	jmp	.LBB0_9
.LBB0_4:
	movl	$12, %ebx
	jmp	.LBB0_9
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, (%r14)
	jmp	.LBB0_11
.Lfunc_end0:
	.size	sem_init, .Lfunc_end0-sem_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
