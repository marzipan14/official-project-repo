	.text
	.file	"s_matherr.c"
	.globl	matherr                 # -- Begin function matherr
	.p2align	4, 0x90
	.type	matherr,@function
matherr:                                # @matherr
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	matherr, .Lfunc_end0-matherr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
