	.text
	.file	"s_fabs.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fabs
.LCPI0_0:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.text
	.globl	fabs
	.p2align	4, 0x90
	.type	fabs,@function
fabs:                                   # @fabs
# %bb.0:
	andps	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	fabs, .Lfunc_end0-fabs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
