	.text
	.file	"wf_atan2.c"
	.globl	atan2f                  # -- Begin function atan2f
	.p2align	4, 0x90
	.type	atan2f,@function
atan2f:                                 # @atan2f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__ieee754_atan2f
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atan2f, .Lfunc_end0-atan2f
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
