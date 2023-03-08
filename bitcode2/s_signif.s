	.text
	.file	"s_signif.c"
	.globl	significand             # -- Begin function significand
	.p2align	4, 0x90
	.type	significand,@function
significand:                            # @significand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	ilogb
	negl	%eax
	cvtsi2sd	%eax, %xmm1
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_scalb
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	significand, .Lfunc_end0-significand
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
