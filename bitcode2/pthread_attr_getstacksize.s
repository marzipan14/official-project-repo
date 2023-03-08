	.text
	.file	"pthread_attr_getstacksize.c"
	.globl	pthread_attr_getstacksize # -- Begin function pthread_attr_getstacksize
	.p2align	4, 0x90
	.type	pthread_attr_getstacksize,@function
pthread_attr_getstacksize:              # @pthread_attr_getstacksize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testl	%ecx, %ecx
	jne	.LBB0_2
# %bb.1:
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_getstacksize, .Lfunc_end0-pthread_attr_getstacksize
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
