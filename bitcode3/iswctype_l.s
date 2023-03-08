	.text
	.file	"iswctype_l.c"
	.globl	iswctype_l              # -- Begin function iswctype_l
	.p2align	4, 0x90
	.type	iswctype_l,@function
iswctype_l:                             # @iswctype_l
# %bb.0:
	jmp	iswctype                # TAILCALL
.Lfunc_end0:
	.size	iswctype_l, .Lfunc_end0-iswctype_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
