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
	testq	%r12, %r12
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %rbx
	leaq	8(%r12), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.3:
	cmpq	$0, (%rbx)
	je	.LBB0_4
# %bb.5:
	movl	$34, %r15d
	cmpl	$2147483647, (%r12)     # imm = 0x7FFFFFFF
	je	.LBB0_8
# %bb.6:
	movq	16(%r12), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
	movl	(%r12), %ecx
	testl	%ecx, %ecx
	setns	%dl
	testl	%eax, %eax
	sete	%bl
	orb	%dl, %bl
	movzbl	%bl, %edx
	addl	%ecx, %edx
	movl	%edx, (%r12)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.7:
	movl	$22, %r15d
	testl	%ecx, %ecx
	jns	.LBB0_12
.LBB0_8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_9
.LBB0_1:
	movl	$22, %r15d
.LBB0_9:
	callq	__errno
	movl	%r15d, (%rax)
.LBB0_10:
	movl	$-1, %eax
.LBB0_11:
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
	jmp	.LBB0_10
.LBB0_12:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
	jmp	.LBB0_11
.Lfunc_end0:
	.size	sem_post, .Lfunc_end0-sem_post
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
