	.text
	.file	"pthread_attr_getschedparam.c"
	.globl	pthread_attr_getschedparam # -- Begin function pthread_attr_getschedparam
	.p2align	4, 0x90
	.type	pthread_attr_getschedparam,@function
pthread_attr_getschedparam:             # @pthread_attr_getschedparam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$22, %eax
	testq	%r14, %r14
	je	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	movq	(%rbx), %rsi
	addq	$28, %rsi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB0_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_getschedparam, .Lfunc_end0-pthread_attr_getschedparam
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
