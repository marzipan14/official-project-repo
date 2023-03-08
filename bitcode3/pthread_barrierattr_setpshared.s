	.text
	.file	"pthread_barrierattr_setpshared.c"
	.globl	pthread_barrierattr_setpshared # -- Begin function pthread_barrierattr_setpshared
	.p2align	4, 0x90
	.type	pthread_barrierattr_setpshared,@function
pthread_barrierattr_setpshared:         # @pthread_barrierattr_setpshared
# %bb.0:
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	cmpl	$1, %esi
	ja	.LBB0_4
# %bb.2:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:
	movl	%esi, (%rcx)
	xorl	%eax, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	pthread_barrierattr_setpshared, .Lfunc_end0-pthread_barrierattr_setpshared
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
