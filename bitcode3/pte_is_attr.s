	.text
	.file	"pte_is_attr.c"
	.globl	pte_is_attr             # -- Begin function pte_is_attr
	.p2align	4, 0x90
	.type	pte_is_attr,@function
pte_is_attr:                            # @pte_is_attr
# %bb.0:
	movl	$1, %eax
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.2:
	movl	$3300982766, %edx       # imm = 0xC4C0FFEE
	xorl	%eax, %eax
	cmpq	%rdx, (%rcx)
	setne	%al
.LBB0_3:
	retq
.Lfunc_end0:
	.size	pte_is_attr, .Lfunc_end0-pte_is_attr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
