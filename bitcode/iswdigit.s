	.text
	.file	"iswdigit.c"
	.globl	iswdigit                # -- Begin function iswdigit
	.p2align	4, 0x90
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addl	$-48, %edi
	xorl	%eax, %eax
	cmpl	$10, %edi
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	iswdigit, .Lfunc_end0-iswdigit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
