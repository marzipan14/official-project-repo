	.text
	.file	"s_nan.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function nan
.LCPI0_0:
	.quad	9221120237041090560     # double NaN
	.text
	.globl	nan
	.p2align	4, 0x90
	.type	nan,@function
nan:                                    # @nan
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	retq
.Lfunc_end0:
	.size	nan, .Lfunc_end0-nan
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
