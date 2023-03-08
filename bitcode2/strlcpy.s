	.text
	.file	"strlcpy.c"
	.globl	strlcpy                 # -- Begin function strlcpy
	.p2align	4, 0x90
	.type	strlcpy,@function
strlcpy:                                # @strlcpy
# %bb.0:
	movq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	addq	$-1, %rdx
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %esi
	movb	%sil, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	je	.LBB0_10
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %rcx
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jne	.LBB0_4
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, (%rdi)
	jmp	.LBB0_7
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
.LBB0_9:
	notq	%rax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strlcpy, .Lfunc_end0-strlcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
