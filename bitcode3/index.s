	.text
	.file	"index.c"
	.globl	index                   # -- Begin function index
	.p2align	4, 0x90
	.type	index,@function
index:                                  # @index
# %bb.0:
	jmp	strchr                  # TAILCALL
.Lfunc_end0:
	.size	index, .Lfunc_end0-index
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
