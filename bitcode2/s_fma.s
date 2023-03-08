	.text
	.file	"s_fma.c"
	.globl	fma                     # -- Begin function fma
	.p2align	4, 0x90
	.type	fma,@function
fma:                                    # @fma
# %bb.0:
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	fma, .Lfunc_end0-fma
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
