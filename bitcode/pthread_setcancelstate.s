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
	movl	%edi, %ebx
	callq	pthread_self
	movq	%rax, %r15
	movl	$22, %eax
	cmpl	$1, %ebx
	ja	.LBB0_9
# %bb.1:
	testq	%r15, %r15
	je	.LBB0_9
# %bb.2:
	movq	%r15, %r14
	addq	$80, %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	testq	%r12, %r12
	je	.LBB0_4
# %bb.3:
	movl	88(%r15), %eax
	movl	%eax, (%r12)
.LBB0_4:
	movl	%ebx, 88(%r15)
	testl	%ebx, %ebx
	jne	.LBB0_8
# %bb.5:
	cmpl	$0, 92(%r15)
	jne	.LBB0_8
# %bb.6:
	movq	(%r15), %rdi
	callq	pte_osThreadCheckCancel
	cmpl	$4, %eax
	jne	.LBB0_8
# %bb.7:
	movl	$4, 32(%r15)
	movl	$1, 88(%r15)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
.LBB0_8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
.LBB0_9:
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
