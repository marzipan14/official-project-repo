	.text
	.file	"pthread_barrier_destroy.c"
	.globl	pthread_barrier_destroy # -- Begin function pthread_barrier_destroy
	.p2align	4, 0x90
	.type	pthread_barrier_destroy,@function
pthread_barrier_destroy:                # @pthread_barrier_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_7
# %bb.2:
	movq	$0, (%rbx)
	leaq	16(%r14), %r12
	movq	%r12, %rdi
	callq	sem_destroy
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.3:
	leaq	24(%r14), %rdi
	callq	sem_destroy
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
# %bb.5:
	movl	%eax, %r15d
	movl	12(%r14), %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	sem_init
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movq	%r14, (%rbx)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movq	%r14, %rdi
	callq	free
	xorl	%r15d, %r15d
	jmp	.LBB0_7
.Lfunc_end0:
	.size	pthread_barrier_destroy, .Lfunc_end0-pthread_barrier_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
