	.text
	.file	"pthread_condattr_destroy.c"
	.globl	pthread_condattr_destroy # -- Begin function pthread_condattr_destroy
	.p2align	4, 0x90
	.type	pthread_condattr_destroy,@function
pthread_condattr_destroy:               # @pthread_condattr_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.2:
	callq	free
	movq	$0, (%rbx)
	xorl	%eax, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_condattr_destroy, .Lfunc_end0-pthread_condattr_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
