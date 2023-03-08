	.text
	.file	"pthread_attr_setstackaddr.c"
	.globl	pthread_attr_setstackaddr # -- Begin function pthread_attr_setstackaddr
	.p2align	4, 0x90
	.type	pthread_attr_setstackaddr,@function
pthread_attr_setstackaddr:              # @pthread_attr_setstackaddr
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
	movq	%r14, 8(%rax)
	xorl	%eax, %eax
.LBB0_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_setstackaddr, .Lfunc_end0-pthread_attr_setstackaddr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
