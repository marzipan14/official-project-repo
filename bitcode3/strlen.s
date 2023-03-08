	.text
	.file	"strlen.c"
	.globl	strlen                  # -- Begin function strlen
	.p2align	4, 0x90
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	movq	%rdi, %rax
	testb	$7, %dil
	je	.LBB0_6
# %bb.1:
	cmpb	$0, (%rdi)
	je	.LBB0_2
# %bb.3:                                # %.preheader1
	leaq	1(%rdi), %rax
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	testb	$7, %al
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_5 Depth=1
	cmpb	$0, (%rax)
	leaq	1(%rax), %rax
	jne	.LBB0_5
# %bb.10:
	addq	$-1, %rax
	jmp	.LBB0_11
.LBB0_6:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	addq	$-8, %rax
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rcx
	addq	$8, %rax
	movq	%rcx, %rsi
	notq	%rsi
	andq	%r8, %rsi
	leaq	(%rcx,%r9), %rdx
	testq	%rdx, %rsi
	je	.LBB0_7
# %bb.8:
	testb	%cl, %cl
	je	.LBB0_11
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 1(%rax)
	leaq	1(%rax), %rax
	jne	.LBB0_9
.LBB0_11:
	subq	%rdi, %rax
	retq
.LBB0_2:
	movq	%rdi, %rax
	subq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	strlen, .Lfunc_end0-strlen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
