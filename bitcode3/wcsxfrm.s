	.text
	.file	"wcsxfrm.c"
	.globl	wcsxfrm                 # -- Begin function wcsxfrm
	.p2align	4, 0x90
	.type	wcsxfrm,@function
wcsxfrm:                                # @wcsxfrm
# %bb.0:
	jmp	wcslcpy                 # TAILCALL
.Lfunc_end0:
	.size	wcsxfrm, .Lfunc_end0-wcsxfrm
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
