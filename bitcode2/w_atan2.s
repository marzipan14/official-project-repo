	.text
	.file	"w_atan2.c"
	.globl	atan2                   # -- Begin function atan2
	.p2align	4, 0x90
	.type	atan2,@function
atan2:                                  # @atan2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__ieee754_atan2
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atan2, .Lfunc_end0-atan2
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
