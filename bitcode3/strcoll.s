	.text
	.file	"strcoll.c"
	.globl	strcoll                 # -- Begin function strcoll
	.p2align	4, 0x90
	.type	strcoll,@function
strcoll:                                # @strcoll
# %bb.0:
	jmp	strcmp                  # TAILCALL
.Lfunc_end0:
	.size	strcoll, .Lfunc_end0-strcoll
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
