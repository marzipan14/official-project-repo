	.text
	.file	"pthread_getconcurrency.c"
	.globl	pthread_getconcurrency  # -- Begin function pthread_getconcurrency
	.p2align	4, 0x90
	.type	pthread_getconcurrency,@function
pthread_getconcurrency:                 # @pthread_getconcurrency
# %bb.0:
	movl	pte_concurrency(%rip), %eax
	retq
.Lfunc_end0:
	.size	pthread_getconcurrency, .Lfunc_end0-pthread_getconcurrency
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
