	.text
	.file	"w_exp2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function exp2
.LCPI0_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	exp2
	.p2align	4, 0x90
	.type	exp2,@function
exp2:                                   # @exp2
# %bb.0:
	movaps	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	pow                     # TAILCALL
.Lfunc_end0:
	.size	exp2, .Lfunc_end0-exp2
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
