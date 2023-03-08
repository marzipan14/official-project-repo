	.text
	.file	"pthread_condattr_getpshared.c"
	.globl	pthread_condattr_getpshared # -- Begin function pthread_condattr_getpshared
	.p2align	4, 0x90
	.type	pthread_condattr_getpshared,@function
pthread_condattr_getpshared:            # @pthread_condattr_getpshared
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
	movl	4(%rcx), %eax
	movl	%eax, (%rsi)
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_condattr_getpshared, .Lfunc_end0-pthread_condattr_getpshared
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
