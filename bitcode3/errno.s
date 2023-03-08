	.text
	.file	"errno.c"
	.globl	__errno                 # -- Begin function __errno
	.p2align	4, 0x90
	.type	__errno,@function
__errno:                                # @__errno
# %bb.0:
	jmp	__getreent              # TAILCALL
.Lfunc_end0:
	.size	__errno, .Lfunc_end0-__errno
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
