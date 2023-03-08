	.text
	.file	"pthread_rwlockattr_setpshared.c"
	.globl	pthread_rwlockattr_setpshared # -- Begin function pthread_rwlockattr_setpshared
	.p2align	4, 0x90
	.type	pthread_rwlockattr_setpshared,@function
pthread_rwlockattr_setpshared:          # @pthread_rwlockattr_setpshared
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	ja	.LBB0_4
# %bb.3:
	movl	%esi, (%rcx)
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_rwlockattr_setpshared, .Lfunc_end0-pthread_rwlockattr_setpshared
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
