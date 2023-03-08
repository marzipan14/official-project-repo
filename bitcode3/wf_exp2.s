	.text
	.file	"wf_exp2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function exp2f
.LCPI0_0:
	.long	1073741824              # float 2
	.text
	.globl	exp2f
	.p2align	4, 0x90
	.type	exp2f,@function
exp2f:                                  # @exp2f
# %bb.0:
	movaps	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	powf                    # TAILCALL
.Lfunc_end0:
	.size	exp2f, .Lfunc_end0-exp2f
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
