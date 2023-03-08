	.text
	.file	"bcmp.c"
	.globl	bcmp                    # -- Begin function bcmp
	.p2align	4, 0x90
	.type	bcmp,@function
bcmp:                                   # @bcmp
# %bb.0:
	jmp	memcmp                  # TAILCALL
.Lfunc_end0:
	.size	bcmp, .Lfunc_end0-bcmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
