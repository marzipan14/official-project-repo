	.text
	.file	"pthread_attr_destroy.c"
	.globl	pthread_attr_destroy    # -- Begin function pthread_attr_destroy
	.p2align	4, 0x90
	.type	pthread_attr_destroy,@function
pthread_attr_destroy:                   # @pthread_attr_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$22, %eax
	testl	%ecx, %ecx
	jne	.LBB0_2
# %bb.1:
	movq	(%rbx), %rdi
	movq	$0, (%rdi)
	callq	free
	movq	$0, (%rbx)
	xorl	%eax, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_destroy, .Lfunc_end0-pthread_attr_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
