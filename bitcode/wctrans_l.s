	.text
	.file	"wctrans_l.c"
	.globl	wctrans_l               # -- Begin function wctrans_l
	.p2align	4, 0x90
	.type	wctrans_l,@function
wctrans_l:                              # @wctrans_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	wctrans
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wctrans_l, .Lfunc_end0-wctrans_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
