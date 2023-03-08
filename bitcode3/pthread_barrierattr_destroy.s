	.text
	.file	"pthread_barrierattr_destroy.c"
	.globl	pthread_barrierattr_destroy # -- Begin function pthread_barrierattr_destroy
	.p2align	4, 0x90
	.type	pthread_barrierattr_destroy,@function
pthread_barrierattr_destroy:            # @pthread_barrierattr_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.2:
	movq	$0, (%rdi)
	movq	%rcx, %rdi
	callq	free
	xorl	%eax, %eax
.LBB0_3:
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_barrierattr_destroy, .Lfunc_end0-pthread_barrierattr_destroy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
