	.text
	.file	"sem_post.c"
	.globl	sem_post                # -- Begin function sem_post
	.p2align	4, 0x90
	.type	sem_post,@function
sem_post:                               # @sem_post
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_9
# %bb.1:
	movq	%rdi, %rbx
	leaq	8(%r12), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.2:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.3:
	cmpl	$2147483647, (%r12)     # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$34, %r15d
	je	.LBB0_7
# %bb.4:
	movq	16(%r12), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
	movl	(%r12), %ecx
	leal	1(%rcx), %edx
	movl	%edx, (%r12)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.5:
	testl	%ecx, %ecx
	jns	.LBB0_7
# %bb.6:
	movl	%ecx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB0_11
# %bb.8:
	xorl	%eax, %eax
	jmp	.LBB0_13
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	callq	__errno
	movl	%r15d, (%rax)
.LBB0_12:
	movl	$-1, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_14:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_12
.Lfunc_end0:
	.size	sem_post, .Lfunc_end0-sem_post
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
