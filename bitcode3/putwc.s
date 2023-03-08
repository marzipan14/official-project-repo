	.text
	.file	"putwc.c"
	.globl	_putwc_r                # -- Begin function _putwc_r
	.p2align	4, 0x90
	.type	_putwc_r,@function
_putwc_r:                               # @_putwc_r
# %bb.0:
	jmp	_fputwc_r               # TAILCALL
.Lfunc_end0:
	.size	_putwc_r, .Lfunc_end0-_putwc_r
                                        # -- End function
	.globl	putwc                   # -- Begin function putwc
	.p2align	4, 0x90
	.type	putwc,@function
putwc:                                  # @putwc
# %bb.0:
	jmp	fputwc                  # TAILCALL
.Lfunc_end1:
	.size	putwc, .Lfunc_end1-putwc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
