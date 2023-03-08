	.text
	.file	"pthread_barrier_init.c"
	.globl	pthread_barrier_init    # -- Begin function pthread_barrier_init
	.p2align	4, 0x90
	.type	pthread_barrier_init,@function
pthread_barrier_init:                   # @pthread_barrier_init
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
	movl	$22, %r15d
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.1:
	movl	%edx, %r12d
	testl	%edx, %edx
	je	.LBB0_11
# %bb.2:
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %r15d
	testq	%rax, %rax
	je	.LBB0_11
# %bb.3:
	movq	%rax, %rbx
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_6
# %bb.4:
	movq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.5:
	movl	(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	%esi, 12(%rbx)
	movl	%r12d, 4(%rbx)
	movl	%r12d, (%rbx)
	movl	$0, 8(%rbx)
	leaq	16(%rbx), %r12
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	sem_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.7:
	movq	%rbx, %rdi
	addq	$24, %rdi
	movl	12(%rbx), %esi
	xorl	%edx, %edx
	callq	sem_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_8
# %bb.9:
	movq	%r12, %rdi
	callq	sem_destroy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
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
.LBB0_8:
	movq	%rbx, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB0_11
.Lfunc_end0:
	.size	pthread_barrier_init, .Lfunc_end0-pthread_barrier_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
