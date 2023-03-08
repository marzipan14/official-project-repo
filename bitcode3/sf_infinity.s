	.text
	.file	"sf_infinity.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function infinityf
.LCPI0_0:
	.long	2139095040              # float +Inf
	.text
	.globl	infinityf
	.p2align	4, 0x90
	.type	infinityf,@function
infinityf:                              # @infinityf
# %bb.0:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.Lfunc_end0:
	.size	infinityf, .Lfunc_end0-infinityf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
