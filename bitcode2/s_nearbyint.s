	.text
	.file	"s_nearbyint.c"
	.globl	nearbyint               # -- Begin function nearbyint
	.p2align	4, 0x90
	.type	nearbyint,@function
nearbyint:                              # @nearbyint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	rint
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	nearbyint, .Lfunc_end0-nearbyint
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
