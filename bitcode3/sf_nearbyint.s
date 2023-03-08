	.text
	.file	"sf_nearbyint.c"
	.globl	nearbyintf              # -- Begin function nearbyintf
	.p2align	4, 0x90
	.type	nearbyintf,@function
nearbyintf:                             # @nearbyintf
# %bb.0:
	jmp	rintf                   # TAILCALL
.Lfunc_end0:
	.size	nearbyintf, .Lfunc_end0-nearbyintf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
