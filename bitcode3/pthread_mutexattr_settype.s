	.text
	.file	"pthread_mutexattr_settype.c"
	.globl	pthread_mutexattr_settype # -- Begin function pthread_mutexattr_settype
	.p2align	4, 0x90
	.type	pthread_mutexattr_settype,@function
pthread_mutexattr_settype:              # @pthread_mutexattr_settype
# %bb.0:
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	cmpl	$2, %esi
	ja	.LBB0_4
# %bb.2:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:
	movl	%esi, 4(%rcx)
	xorl	%eax, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	pthread_mutexattr_settype, .Lfunc_end0-pthread_mutexattr_settype
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
