	.text
	.file	"pthread_rwlockattr_getpshared.c"
	.globl	pthread_rwlockattr_getpshared # -- Begin function pthread_rwlockattr_getpshared
	.p2align	4, 0x90
	.type	pthread_rwlockattr_getpshared,@function
pthread_rwlockattr_getpshared:          # @pthread_rwlockattr_getpshared
# %bb.0:
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.2:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:
	movl	(%rcx), %eax
	movl	%eax, (%rsi)
	xorl	%eax, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	pthread_rwlockattr_getpshared, .Lfunc_end0-pthread_rwlockattr_getpshared
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
