	.text
	.file	"wmemmove.c"
	.globl	wmemmove                # -- Begin function wmemmove
	.p2align	4, 0x90
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	shlq	$2, %rdx
	jmp	memmove                 # TAILCALL
.Lfunc_end0:
	.size	wmemmove, .Lfunc_end0-wmemmove
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
