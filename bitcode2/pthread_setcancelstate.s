	.text
	.file	"pthread_setcancelstate.c"
	.globl	pthread_setcancelstate  # -- Begin function pthread_setcancelstate
	.p2align	4, 0x90
	.type	pthread_setcancelstate,@function
pthread_setcancelstate:                 # @pthread_setcancelstate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r12
	movl	%edi, %r15d
	callq	pthread_self
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rbx, %rbx
	je	.LBB0_9
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	ja	.LBB0_9
# %bb.2:
	movq	%rbx, %r14
	addq	$80, %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_4
# %bb.3:
	movl	88(%rbx), %eax
	movl	%eax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	%r15d, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB0_8
# %bb.5:
	cmpl	$0, 92(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.6:
	movq	(%rbx), %rdi
	callq	pte_osThreadCheckCancel
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$4, 32(%rbx)
	movl	$1, 88(%rbx)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_setcancelstate, .Lfunc_end0-pthread_setcancelstate
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
