	.text
	.file	"lldiv.c"
	.globl	lldiv                   # -- Begin function lldiv
	.p2align	4, 0x90
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	testq	%rdi, %rdi
	setns	%dil
	testq	%rdx, %rdx
	sets	%cl
	andb	%dil, %cl
	movzbl	%cl, %ecx
	addq	%rcx, %rax
	xorl	%edi, %edi
	testb	%cl, %cl
	cmovneq	%rsi, %rdi
	subq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	lldiv, .Lfunc_end0-lldiv
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
