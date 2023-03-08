	.text
	.file	"pthread_mutexattr_getkind_np.c"
	.globl	pthread_mutexattr_getkind_np # -- Begin function pthread_mutexattr_getkind_np
	.p2align	4, 0x90
	.type	pthread_mutexattr_getkind_np,@function
pthread_mutexattr_getkind_np:           # @pthread_mutexattr_getkind_np
# %bb.0:
	jmp	pthread_mutexattr_gettype # TAILCALL
.Lfunc_end0:
	.size	pthread_mutexattr_getkind_np, .Lfunc_end0-pthread_mutexattr_getkind_np
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
