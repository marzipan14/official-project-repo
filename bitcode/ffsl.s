	.text
	.file	"ffsl.c"
	.globl	ffsl                    # -- Begin function ffsl
	.p2align	4, 0x90
	.type	ffsl,@function
ffsl:                                   # @ffsl
# %bb.0:
	bsfq	%rdi, %rcx
	addl	$1, %ecx
	xorl	%eax, %eax
	testq	%rdi, %rdi
	cmovnel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	ffsl, .Lfunc_end0-ffsl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
