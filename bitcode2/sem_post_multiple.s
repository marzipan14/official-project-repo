	.text
	.file	"sem_post_multiple.c"
	.globl	sem_post_multiple       # -- Begin function sem_post_multiple
	.p2align	4, 0x90
	.type	sem_post_multiple,@function
sem_post_multiple:                      # @sem_post_multiple
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB0_10
# %bb.1:
	testq	%r13, %r13
	je	.LBB0_10
# %bb.2:
	movl	%esi, %r15d
	movq	%rdi, %rbx
	leaq	8(%r13), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.3:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_15
# %bb.4:
	movl	(%r13), %esi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	subl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$34, %r12d
	cmpl	%eax, %esi
	jg	.LBB0_7
# %bb.5:
	leal	(%rsi,%r15), %eax
	movl	%eax, (%r13)
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB0_8
# %bb.6:
	negl	%esi
	movq	16(%r13), %rdi
	cmpl	%r15d, %esi
	cmovgl	%r15d, %esi
                                        # kill: def $esi killed $esi killed $rsi
	callq	pte_osSemaphorePost
	xorl	%r12d, %r12d
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB0_12
# %bb.9:
	xorl	%eax, %eax
	jmp	.LBB0_14
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	callq	__errno
	movl	%r12d, (%rax)
.LBB0_13:
	movl	$-1, %eax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_13
.Lfunc_end0:
	.size	sem_post_multiple, .Lfunc_end0-sem_post_multiple
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
