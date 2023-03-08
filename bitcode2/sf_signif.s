	.text
	.file	"sf_signif.c"
	.globl	significandf            # -- Begin function significandf
	.p2align	4, 0x90
	.type	significandf,@function
significandf:                           # @significandf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)         # 4-byte Spill
	callq	ilogbf
	negl	%eax
	cvtsi2ss	%eax, %xmm1
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_scalbf
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	significandf, .Lfunc_end0-significandf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
