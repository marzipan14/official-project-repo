	.text
	.file	"sf_pow10.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function pow10f
.LCPI0_0:
	.long	1092616192              # float 10
	.text
	.globl	pow10f
	.p2align	4, 0x90
	.type	pow10f,@function
pow10f:                                 # @pow10f
# %bb.0:
	movaps	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	powf                    # TAILCALL
.Lfunc_end0:
	.size	pow10f, .Lfunc_end0-pow10f
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
