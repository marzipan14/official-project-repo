	.text
	.file	"wcstombs.c"
	.globl	wcstombs                # -- Begin function wcstombs
	.p2align	4, 0x90
	.type	wcstombs,@function
wcstombs:                               # @wcstombs
# %bb.0:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	movb	%cl, (%rdi,%rax)
	testb	$-1, %cl
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_1
.LBB0_3:
	cltq
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcstombs, .Lfunc_end0-wcstombs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
