	.text
	.file	"pthread_rwlockattr_getpshared.c"
	.globl	pthread_rwlockattr_getpshared # -- Begin function pthread_rwlockattr_getpshared
	.p2align	4, 0x90
	.type	pthread_rwlockattr_getpshared,@function
pthread_rwlockattr_getpshared:          # @pthread_rwlockattr_getpshared
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.2:
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:
	movl	(%rcx), %eax
	movl	%eax, (%rsi)
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_rwlockattr_getpshared, .Lfunc_end0-pthread_rwlockattr_getpshared
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
