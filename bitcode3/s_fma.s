	.text
	.file	"s_fma.c"
	.globl	fma                     # -- Begin function fma
	.p2align	4, 0x90
	.type	fma,@function
fma:                                    # @fma
# %bb.0:
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	retq
.Lfunc_end0:
	.size	fma, .Lfunc_end0-fma
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
