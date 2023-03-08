	.text
	.file	"sf_fabs.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fabsf
.LCPI0_0:
	.long	2147483647              # float NaN
	.long	2147483647              # float NaN
	.long	2147483647              # float NaN
	.long	2147483647              # float NaN
	.text
	.globl	fabsf
	.p2align	4, 0x90
	.type	fabsf,@function
fabsf:                                  # @fabsf
# %bb.0:
	andps	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	fabsf, .Lfunc_end0-fabsf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
