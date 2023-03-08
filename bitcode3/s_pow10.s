	.text
	.file	"s_pow10.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function pow10
.LCPI0_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	pow10
	.p2align	4, 0x90
	.type	pow10,@function
pow10:                                  # @pow10
# %bb.0:
	movaps	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	pow                     # TAILCALL
.Lfunc_end0:
	.size	pow10, .Lfunc_end0-pow10
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
