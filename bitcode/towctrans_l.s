	.text
	.file	"towctrans_l.c"
	.globl	towctrans_l             # -- Begin function towctrans_l
	.p2align	4, 0x90
	.type	towctrans_l,@function
towctrans_l:                            # @towctrans_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	towctrans
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	towctrans_l, .Lfunc_end0-towctrans_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
