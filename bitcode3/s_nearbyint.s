	.text
	.file	"s_nearbyint.c"
	.globl	nearbyint               # -- Begin function nearbyint
	.p2align	4, 0x90
	.type	nearbyint,@function
nearbyint:                              # @nearbyint
# %bb.0:
	jmp	rint                    # TAILCALL
.Lfunc_end0:
	.size	nearbyint, .Lfunc_end0-nearbyint
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
