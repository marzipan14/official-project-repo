	.text
	.file	"pthread_sigmask.c"
	.globl	pthread_sigmask         # -- Begin function pthread_sigmask
	.p2align	4, 0x90
	.type	pthread_sigmask,@function
pthread_sigmask:                        # @pthread_sigmask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	uk_thread_sigmask
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_sigmask, .Lfunc_end0-pthread_sigmask
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
