	.text
	.file	"sf_copysign.c"
	.globl	copysignf               # -- Begin function copysignf
	.p2align	4, 0x90
	.type	copysignf,@function
copysignf:                              # @copysignf
# %bb.0:
	movd	%xmm0, %eax
	movmskps	%xmm1, %ecx
	shll	$31, %ecx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%ecx, %eax
	movd	%eax, %xmm0
	retq
.Lfunc_end0:
	.size	copysignf, .Lfunc_end0-copysignf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
