	.text
	.file	"sf_isinf.c"
	.globl	isinff                  # -- Begin function isinff
	.p2align	4, 0x90
	.type	isinff,@function
isinff:                                 # @isinff
# %bb.0:
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	isinff, .Lfunc_end0-isinff
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
