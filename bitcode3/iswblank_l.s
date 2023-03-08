	.text
	.file	"iswblank_l.c"
	.globl	iswblank_l              # -- Begin function iswblank_l
	.p2align	4, 0x90
	.type	iswblank_l,@function
iswblank_l:                             # @iswblank_l
# %bb.0:
	jmp	iswblank                # TAILCALL
.Lfunc_end0:
	.size	iswblank_l, .Lfunc_end0-iswblank_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
