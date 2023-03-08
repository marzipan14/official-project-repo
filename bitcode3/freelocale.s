	.text
	.file	"freelocale.c"
	.globl	_freelocale_r           # -- Begin function _freelocale_r
	.p2align	4, 0x90
	.type	_freelocale_r,@function
_freelocale_r:                          # @_freelocale_r
# %bb.0:
	retq
.Lfunc_end0:
	.size	_freelocale_r, .Lfunc_end0-_freelocale_r
                                        # -- End function
	.globl	freelocale              # -- Begin function freelocale
	.p2align	4, 0x90
	.type	freelocale,@function
freelocale:                             # @freelocale
# %bb.0:
	jmp	__getreent              # TAILCALL
.Lfunc_end1:
	.size	freelocale, .Lfunc_end1-freelocale
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
