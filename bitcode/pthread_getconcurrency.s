	.text
	.file	"pthread_getconcurrency.c"
	.globl	pthread_getconcurrency  # -- Begin function pthread_getconcurrency
	.p2align	4, 0x90
	.type	pthread_getconcurrency,@function
pthread_getconcurrency:                 # @pthread_getconcurrency
# %bb.0:
	movl	pte_concurrency(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_getconcurrency, .Lfunc_end0-pthread_getconcurrency
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
