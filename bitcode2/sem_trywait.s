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
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_1
# %bb.3:
	movq	%rdi, %r12
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_2
# %bb.4:
	cmpq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.7:
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_8
# %bb.9:
	addl	$-1, %eax
	movl	%eax, (%rbx)
	xorl	%r15d, %r15d
	jmp	.LBB0_10
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	callq	__errno
	movl	%r15d, (%rax)
	movl	$-1, %eax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$22, %r15d
	jmp	.LBB0_6
.LBB0_8:
	movl	$11, %r15d
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB0_6
# %bb.11:
	xorl	%eax, %eax
	jmp	.LBB0_12
.Lfunc_end0:
	.size	sem_trywait, .Lfunc_end0-sem_trywait
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
