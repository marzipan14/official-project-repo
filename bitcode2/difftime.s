	.text
	.file	"difftime.c"
	.globl	difftime                # -- Begin function difftime
	.p2align	4, 0x90
	.type	difftime,@function
difftime:                               # @difftime
# %bb.0:
	subq	%rsi, %rdi
	cvtsi2sd	%rdi, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	difftime, .Lfunc_end0-difftime
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
