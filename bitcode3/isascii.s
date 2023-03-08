	.text
	.file	"isascii.c"
	.globl	isascii                 # -- Begin function isascii
	.p2align	4, 0x90
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	xorl	%eax, %eax
	cmpl	$128, %edi
	setb	%al
	retq
.Lfunc_end0:
	.size	isascii, .Lfunc_end0-isascii
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
