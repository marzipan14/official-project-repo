	.text
	.file	"pthread_equal.c"
	.globl	pthread_equal           # -- Begin function pthread_equal
	.p2align	4, 0x90
	.type	pthread_equal,@function
pthread_equal:                          # @pthread_equal
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rdi
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_equal, .Lfunc_end0-pthread_equal
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
