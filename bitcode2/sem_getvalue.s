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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.2:
	testq	%r13, %r13
	je	.LBB0_3
# %bb.4:
	leaq	8(%r13), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_8
# %bb.5:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.7:
	movl	(%r13), %ebx
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_3:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r15d
	jmp	.LBB0_9
.LBB0_6:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r15d
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sem_getvalue, .Lfunc_end0-sem_getvalue
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
