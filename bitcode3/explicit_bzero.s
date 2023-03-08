	.text
	.file	"explicit_bzero.c"
	.globl	explicit_bzero          # -- Begin function explicit_bzero
	.p2align	4, 0x90
	.type	explicit_bzero,@function
explicit_bzero:                         # @explicit_bzero
# %bb.0:
	jmp	bzero                   # TAILCALL
.Lfunc_end0:
	.size	explicit_bzero, .Lfunc_end0-explicit_bzero
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
