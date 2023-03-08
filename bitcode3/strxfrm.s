	.text
	.file	"strxfrm.c"
	.globl	strxfrm                 # -- Begin function strxfrm
	.p2align	4, 0x90
	.type	strxfrm,@function
strxfrm:                                # @strxfrm
# %bb.0:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_4
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, (%rdi,%rax)
	testb	%cl, %cl
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_1
# %bb.3:                                # %.loopexit3
	addq	%rax, %rsi
.LBB0_4:
	cmpb	$0, (%rsi)
	je	.LBB0_7
# %bb.5:                                # %.preheader
	addq	$1, %rsi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addq	$1, %rax
	cmpb	$0, (%rsi)
	leaq	1(%rsi), %rsi
	jne	.LBB0_6
.LBB0_7:
	retq
.Lfunc_end0:
	.size	strxfrm, .Lfunc_end0-strxfrm
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
