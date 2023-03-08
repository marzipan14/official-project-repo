	.text
	.file	"sem_getvalue.c"
	.globl	sem_getvalue            # -- Begin function sem_getvalue
	.p2align	4, 0x90
	.type	sem_getvalue,@function
sem_getvalue:                           # @sem_getvalue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.2:
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	testq	%r12, %r12
	je	.LBB0_3
# %bb.4:
	leaq	8(%r12), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB0_8
# %bb.5:
	cmpq	$0, (%rbx)
	je	.LBB0_6
# %bb.7:
	movl	(%r12), %ebx
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	%ebx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_6:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
.LBB0_3:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
.LBB0_8:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sem_getvalue, .Lfunc_end0-sem_getvalue
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
