	.text
	.file	"tzlock.c"
	.globl	__tz_lock               # -- Begin function __tz_lock
	.p2align	4, 0x90
	.type	__tz_lock,@function
__tz_lock:                              # @__tz_lock
# %bb.0:
	retq
.Lfunc_end0:
	.size	__tz_lock, .Lfunc_end0-__tz_lock
                                        # -- End function
	.globl	__tz_unlock             # -- Begin function __tz_unlock
	.p2align	4, 0x90
	.type	__tz_unlock,@function
__tz_unlock:                            # @__tz_unlock
# %bb.0:
	retq
.Lfunc_end1:
	.size	__tz_unlock, .Lfunc_end1-__tz_unlock
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
