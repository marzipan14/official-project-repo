	.text
	.file	"sf_isnanf.c"
	.globl	__isnanf                # -- Begin function __isnanf
	.p2align	4, 0x90
	.type	__isnanf,@function
__isnanf:                               # @__isnanf
# %bb.0:
	movd	%xmm0, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	seta	%al
	retq
.Lfunc_end0:
	.size	__isnanf, .Lfunc_end0-__isnanf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
