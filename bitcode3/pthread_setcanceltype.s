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
	testl	%ebx, %ebx
	je	.LBB0_1
# %bb.2:
	movq	%rax, %r12
	movl	$22, %eax
	cmpl	$1, %ebx
	jne	.LBB0_7
# %bb.3:
	testq	%r12, %r12
	je	.LBB0_7
# %bb.4:
	movq	%r12, %r15
	addq	$80, %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	testq	%r14, %r14
	je	.LBB0_6
# %bb.5:
	movl	92(%r12), %eax
	movl	%eax, (%r14)
.LBB0_6:
	movl	$1, 92(%r12)
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	movl	$1, %eax
.LBB0_7:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_setcanceltype, .Lfunc_end0-pthread_setcanceltype
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
