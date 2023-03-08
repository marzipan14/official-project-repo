	.text
	.file	"atof.c"
	.globl	atof                    # -- Begin function atof
	.p2align	4, 0x90
	.type	atof,@function
atof:                                   # @atof
# %bb.0:
	xorl	%esi, %esi
	jmp	strtod                  # TAILCALL
.Lfunc_end0:
	.size	atof, .Lfunc_end0-atof
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
