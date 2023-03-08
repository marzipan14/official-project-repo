	.text
	.file	"fls.c"
	.globl	fls                     # -- Begin function fls
	.p2align	4, 0x90
	.type	fls,@function
fls:                                    # @fls
# %bb.0:
	testl	%edi, %edi
	je	.LBB0_1
# %bb.2:
	bsrl	%edi, %eax
	xorl	$-32, %eax
	addl	$33, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	fls, .Lfunc_end0-fls
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
