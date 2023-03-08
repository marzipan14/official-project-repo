	.text
	.file	"iswdigit_l.c"
	.globl	iswdigit_l              # -- Begin function iswdigit_l
	.p2align	4, 0x90
	.type	iswdigit_l,@function
iswdigit_l:                             # @iswdigit_l
# %bb.0:
	addl	$-48, %edi
	xorl	%eax, %eax
	cmpl	$10, %edi
	setb	%al
	retq
.Lfunc_end0:
	.size	iswdigit_l, .Lfunc_end0-iswdigit_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
