	.text
	.file	"sf_fma.c"
	.globl	fmaf                    # -- Begin function fmaf
	.p2align	4, 0x90
	.type	fmaf,@function
fmaf:                                   # @fmaf
# %bb.0:
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	fmaf, .Lfunc_end0-fmaf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
