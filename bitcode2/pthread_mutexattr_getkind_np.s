	.text
	.file	"pthread_mutexattr_getkind_np.c"
	.globl	pthread_mutexattr_getkind_np # -- Begin function pthread_mutexattr_getkind_np
	.p2align	4, 0x90
	.type	pthread_mutexattr_getkind_np,@function
pthread_mutexattr_getkind_np:           # @pthread_mutexattr_getkind_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	pthread_mutexattr_gettype
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutexattr_getkind_np, .Lfunc_end0-pthread_mutexattr_getkind_np
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
