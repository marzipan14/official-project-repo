	.text
	.file	"pthread_mutexattr_gettype.c"
	.globl	pthread_mutexattr_gettype # -- Begin function pthread_mutexattr_gettype
	.p2align	4, 0x90
	.type	pthread_mutexattr_gettype,@function
pthread_mutexattr_gettype:              # @pthread_mutexattr_gettype
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
	retq
.Lfunc_end0:
	.size	pthread_mutexattr_gettype, .Lfunc_end0-pthread_mutexattr_gettype
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits