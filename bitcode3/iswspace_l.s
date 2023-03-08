	.text
	.file	"iswspace_l.c"
	.globl	iswspace_l              # -- Begin function iswspace_l
	.p2align	4, 0x90
	.type	iswspace_l,@function
iswspace_l:                             # @iswspace_l
# %bb.0:
	jmp	iswspace                # TAILCALL
.Lfunc_end0:
	.size	iswspace_l, .Lfunc_end0-iswspace_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
