	.text
	.file	"getwc_u.c"
	.globl	_getwc_unlocked_r       # -- Begin function _getwc_unlocked_r
	.p2align	4, 0x90
	.type	_getwc_unlocked_r,@function
_getwc_unlocked_r:                      # @_getwc_unlocked_r
# %bb.0:
	jmp	_fgetwc_unlocked_r      # TAILCALL
.Lfunc_end0:
	.size	_getwc_unlocked_r, .Lfunc_end0-_getwc_unlocked_r
                                        # -- End function
	.globl	getwc_unlocked          # -- Begin function getwc_unlocked
	.p2align	4, 0x90
	.type	getwc_unlocked,@function
getwc_unlocked:                         # @getwc_unlocked
# %bb.0:
	jmp	fgetwc_unlocked         # TAILCALL
.Lfunc_end1:
	.size	getwc_unlocked, .Lfunc_end1-getwc_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
