	.text
	.file	"pthread_setconcurrency.c"
	.globl	pthread_setconcurrency  # -- Begin function pthread_setconcurrency
	.p2align	4, 0x90
	.type	pthread_setconcurrency,@function
pthread_setconcurrency:                 # @pthread_setconcurrency
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB0_1
# %bb.2:
	movl	%edi, pte_concurrency(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_1:
	movl	$22, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_setconcurrency, .Lfunc_end0-pthread_setconcurrency
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
