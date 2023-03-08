	.text
	.file	"s_infinity.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function infinity
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	infinity
	.p2align	4, 0x90
	.type	infinity,@function
infinity:                               # @infinity
# %bb.0:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	retq
.Lfunc_end0:
	.size	infinity, .Lfunc_end0-infinity
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
