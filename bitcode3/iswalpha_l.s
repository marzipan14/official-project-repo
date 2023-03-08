	.text
	.file	"iswalpha_l.c"
	.globl	iswalpha_l              # -- Begin function iswalpha_l
	.p2align	4, 0x90
	.type	iswalpha_l,@function
iswalpha_l:                             # @iswalpha_l
# %bb.0:
	jmp	iswalpha                # TAILCALL
.Lfunc_end0:
	.size	iswalpha_l, .Lfunc_end0-iswalpha_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
