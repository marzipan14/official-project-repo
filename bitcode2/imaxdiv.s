	.text
	.file	"imaxdiv.c"
	.globl	imaxdiv                 # -- Begin function imaxdiv
	.p2align	4, 0x90
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	imaxdiv, .Lfunc_end0-imaxdiv
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
