	.text
	.file	"er_gamma.c"
	.globl	__ieee754_gamma_r       # -- Begin function __ieee754_gamma_r
	.p2align	4, 0x90
	.type	__ieee754_gamma_r,@function
__ieee754_gamma_r:                      # @__ieee754_gamma_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__ieee754_lgamma_r
	callq	__ieee754_exp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_gamma_r, .Lfunc_end0-__ieee754_gamma_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
