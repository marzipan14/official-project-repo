	.text
	.file	"sem_trywait.c"
	.globl	sem_trywait             # -- Begin function sem_trywait
	.p2align	4, 0x90
	.type	sem_trywait,@function
sem_trywait:                            # @sem_trywait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %r12
	testq	%r12, %r12
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	leaq	8(%r12), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_8
# %bb.3:
	cmpq	$0, (%r15)
	je	.LBB0_4
# %bb.5:
	movl	(%r12), %eax
	testl	%eax, %eax
	jle	.LBB0_7
# %bb.6:
	addl	$-1, %eax
	movl	%eax, (%r12)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
	jmp	.LBB0_10
.LBB0_1:
	movl	$22, %ebx
.LBB0_8:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_9:
	movl	$-1, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_9
.LBB0_7:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$11, %ebx
	jmp	.LBB0_8
.Lfunc_end0:
	.size	sem_trywait, .Lfunc_end0-sem_trywait
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
