	.text
	.file	"pthread_attr_setstacksize.c"
	.globl	pthread_attr_setstacksize # -- Begin function pthread_attr_setstacksize
	.p2align	4, 0x90
	.type	pthread_attr_setstacksize,@function
pthread_attr_setstacksize:              # @pthread_attr_setstacksize
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
	testl	%ecx, %ecx
	jne	.LBB0_2
# %bb.1:
	movq	(%rbx), %rax
	movq	%r14, 16(%rax)
	xorl	%eax, %eax
.LBB0_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_setstacksize, .Lfunc_end0-pthread_attr_setstacksize
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
