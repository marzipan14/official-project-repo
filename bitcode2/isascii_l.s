	.text
	.file	"isascii_l.c"
	.globl	isascii_l               # -- Begin function isascii_l
	.p2align	4, 0x90
	.type	isascii_l,@function
isascii_l:                              # @isascii_l
# %bb.0:
	xorl	%eax, %eax
	cmpl	$128, %edi
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	isascii_l, .Lfunc_end0-isascii_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
