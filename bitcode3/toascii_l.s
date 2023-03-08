	.text
	.file	"toascii_l.c"
	.globl	toascii_l               # -- Begin function toascii_l
	.p2align	4, 0x90
	.type	toascii_l,@function
toascii_l:                              # @toascii_l
# %bb.0:
	movl	%edi, %eax
	andl	$127, %eax
	retq
.Lfunc_end0:
	.size	toascii_l, .Lfunc_end0-toascii_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
