	.text
	.file	"pthread_atfork.c"
	.globl	pthread_atfork          # -- Begin function pthread_atfork
	.p2align	4, 0x90
	.type	pthread_atfork,@function
pthread_atfork:                         # @pthread_atfork
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pthread_atfork, .Lfunc_end0-pthread_atfork
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
