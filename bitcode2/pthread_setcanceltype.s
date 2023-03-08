	.text
	.file	"pthread_setcanceltype.c"
	.globl	pthread_setcanceltype   # -- Begin function pthread_setcanceltype
	.p2align	4, 0x90
	.type	pthread_setcanceltype,@function
pthread_setcanceltype:                  # @pthread_setcanceltype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	pthread_self
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_1
# %bb.2:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%r15, %r15
	je	.LBB0_7
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	ja	.LBB0_7
# %bb.4:
	movq	%r15, %r12
	addq	$80, %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_6
# %bb.5:
	movl	92(%r15), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	%ebx, 92(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	movl	$1, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_setcanceltype, .Lfunc_end0-pthread_setcanceltype
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
