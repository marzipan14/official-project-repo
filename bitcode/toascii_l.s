	.text
	.file	"toascii_l.c"
	.globl	toascii_l               # -- Begin function toascii_l
	.p2align	4, 0x90
	.type	toascii_l,@function
toascii_l:                              # @toascii_l
# %bb.0:
	movl	%edi, %eax
	andl	$127, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	toascii_l, .Lfunc_end0-toascii_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
