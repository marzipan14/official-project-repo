	.text
	.file	"explicit_bzero.c"
	.globl	explicit_bzero          # -- Begin function explicit_bzero
	.p2align	4, 0x90
	.type	explicit_bzero,@function
explicit_bzero:                         # @explicit_bzero
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	bzero
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	explicit_bzero, .Lfunc_end0-explicit_bzero
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
