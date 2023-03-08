	.text
	.file	"pthread_setconcurrency.c"
	.globl	pthread_setconcurrency  # -- Begin function pthread_setconcurrency
	.p2align	4, 0x90
	.type	pthread_setconcurrency,@function
pthread_setconcurrency:                 # @pthread_setconcurrency
# %bb.0:
	testl	%edi, %edi
	js	.LBB0_1
# %bb.2:
	movl	%edi, pte_concurrency(%rip)
	xorl	%eax, %eax
	retq
.LBB0_1:
	movl	$22, %eax
	retq
.Lfunc_end0:
	.size	pthread_setconcurrency, .Lfunc_end0-pthread_setconcurrency
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
