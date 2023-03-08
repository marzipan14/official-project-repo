	.text
	.file	"s_signbit.c"
	.globl	__signbitf              # -- Begin function __signbitf
	.p2align	4, 0x90
	.type	__signbitf,@function
__signbitf:                             # @__signbitf
# %bb.0:
	movmskps	%xmm0, %eax
	andl	$1, %eax
	retq
.Lfunc_end0:
	.size	__signbitf, .Lfunc_end0-__signbitf
                                        # -- End function
	.globl	__signbitd              # -- Begin function __signbitd
	.p2align	4, 0x90
	.type	__signbitd,@function
__signbitd:                             # @__signbitd
# %bb.0:
	movmskpd	%xmm0, %eax
	andl	$1, %eax
	retq
.Lfunc_end1:
	.size	__signbitd, .Lfunc_end1-__signbitd
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
