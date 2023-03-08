	.text
	.file	"envlock.c"
	.globl	__env_lock              # -- Begin function __env_lock
	.p2align	4, 0x90
	.type	__env_lock,@function
__env_lock:                             # @__env_lock
# %bb.0:
	retq
.Lfunc_end0:
	.size	__env_lock, .Lfunc_end0-__env_lock
                                        # -- End function
	.globl	__env_unlock            # -- Begin function __env_unlock
	.p2align	4, 0x90
	.type	__env_unlock,@function
__env_unlock:                           # @__env_unlock
# %bb.0:
	retq
.Lfunc_end1:
	.size	__env_unlock, .Lfunc_end1-__env_unlock
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
