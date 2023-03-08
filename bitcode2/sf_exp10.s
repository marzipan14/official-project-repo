	.text
	.file	"sf_exp10.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function exp10f
.LCPI0_0:
	.long	1092616192              # float 10
	.text
	.globl	exp10f
	.p2align	4, 0x90
	.type	exp10f,@function
exp10f:                                 # @exp10f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movaps	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	powf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	exp10f, .Lfunc_end0-exp10f
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
