	.text
	.file	"sf_isnan.c"
	.globl	isnanf                  # -- Begin function isnanf
	.p2align	4, 0x90
	.type	isnanf,@function
isnanf:                                 # @isnanf
# %bb.0:
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	seta	%al
	retq
.Lfunc_end0:
	.size	isnanf, .Lfunc_end0-isnanf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
