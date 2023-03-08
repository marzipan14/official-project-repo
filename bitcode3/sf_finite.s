	.text
	.file	"sf_finite.c"
	.globl	finitef                 # -- Begin function finitef
	.p2align	4, 0x90
	.type	finitef,@function
finitef:                                # @finitef
# %bb.0:
	movd	%xmm0, %ecx
	andl	$2139095040, %ecx       # imm = 0x7F800000
	xorl	%eax, %eax
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	setne	%al
	retq
.Lfunc_end0:
	.size	finitef, .Lfunc_end0-finitef
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
