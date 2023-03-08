	.text
	.file	"strlcpy.c"
	.globl	strlcpy                 # -- Begin function strlcpy
	.p2align	4, 0x90
	.type	strlcpy,@function
strlcpy:                                # @strlcpy
# %bb.0:
	movq	%rsi, %rax
	movq	%rsi, %rcx
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.1:
	movq	%rax, %rcx
	addq	$-1, %rdx
	je	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	movb	%sil, (%rdi)
	addq	$1, %rcx
	testb	%sil, %sil
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rdi
	addq	$-1, %rdx
	jne	.LBB0_3
.LBB0_5:
	movb	$0, (%rdi)
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB0_6
.LBB0_7:
	notq	%rax
	addq	%rcx, %rax
	retq
.Lfunc_end0:
	.size	strlcpy, .Lfunc_end0-strlcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
