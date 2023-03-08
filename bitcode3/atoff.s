	.text
	.file	"atoff.c"
	.globl	atoff                   # -- Begin function atoff
	.p2align	4, 0x90
	.type	atoff,@function
atoff:                                  # @atoff
# %bb.0:
	xorl	%esi, %esi
	jmp	strtof                  # TAILCALL
.Lfunc_end0:
	.size	atoff, .Lfunc_end0-atoff
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
