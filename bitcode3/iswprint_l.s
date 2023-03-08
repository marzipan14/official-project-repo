	.text
	.file	"iswprint_l.c"
	.globl	iswprint_l              # -- Begin function iswprint_l
	.p2align	4, 0x90
	.type	iswprint_l,@function
iswprint_l:                             # @iswprint_l
# %bb.0:
	jmp	iswprint                # TAILCALL
.Lfunc_end0:
	.size	iswprint_l, .Lfunc_end0-iswprint_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
