	.text
	.file	"wctype_l.c"
	.globl	wctype_l                # -- Begin function wctype_l
	.p2align	4, 0x90
	.type	wctype_l,@function
wctype_l:                               # @wctype_l
# %bb.0:
	jmp	wctype                  # TAILCALL
.Lfunc_end0:
	.size	wctype_l, .Lfunc_end0-wctype_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
