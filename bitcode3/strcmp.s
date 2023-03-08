	.text
	.file	"strcmp.c"
	.globl	strcmp                  # -- Begin function strcmp
	.p2align	4, 0x90
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	movl	%esi, %eax
	orl	%edi, %eax
	testb	$7, %al
	jne	.LBB0_6
# %bb.1:
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jne	.LBB0_6
# %bb.2:                                # %.preheader2
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %rdx # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rax,%rdx), %rcx
	notq	%rax
	andq	%r8, %rax
	testq	%rcx, %rax
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rdi), %rax
	addq	$8, %rdi
	cmpq	8(%rsi), %rax
	leaq	8(%rsi), %rsi
	je	.LBB0_3
.LBB0_6:
	movb	(%rdi), %al
	testb	%al, %al
	je	.LBB0_10
# %bb.7:                                # %.preheader
	addq	$1, %rdi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpb	(%rsi), %al
	jne	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addq	$1, %rsi
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	testb	%al, %al
	jne	.LBB0_8
.LBB0_10:
	xorl	%eax, %eax
.LBB0_11:
	movzbl	%al, %eax
	movzbl	(%rsi), %ecx
	subl	%ecx, %eax
	retq
.LBB0_4:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
