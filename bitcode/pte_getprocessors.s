	.text
	.file	"pte_getprocessors.c"
	.globl	pte_getprocessors       # -- Begin function pte_getprocessors
	.p2align	4, 0x90
	.type	pte_getprocessors,@function
pte_getprocessors:                      # @pte_getprocessors
# %bb.0:
	movl	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pte_getprocessors, .Lfunc_end0-pte_getprocessors
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
