	.text
	.file	"memrchr.c"
	.globl	memrchr                 # -- Begin function memrchr
	.p2align	4, 0x90
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	leaq	(%rdi,%rdx), %rcx
	negq	%rdx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	testb	$7, %cl
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	testq	%rdx, %rdx
	je	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-1(%rcx), %rax
	addq	$1, %rdx
	cmpb	%sil, -1(%rcx)
	movq	%rax, %rcx
	jne	.LBB0_1
.LBB0_14:
	retq
.LBB0_4:
	negq	%rdx
	cmpq	$8, %rdx
	jae	.LBB0_6
# %bb.5:
	addq	$-1, %rcx
	movq	%rcx, %rax
	jmp	.LBB0_10
.LBB0_6:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movzbl	%sil, %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shll	$16, %eax
	orl	%ecx, %eax
	movq	%rax, %r10
	shlq	$32, %r10
	orq	%rax, %r10
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi,%rdx), %rax
	xorq	%r10, %rax
	movq	%rax, %rcx
	notq	%rcx
	andq	%r8, %rcx
	addq	%r9, %rax
	testq	%rax, %rcx
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$-8, %rdx
	cmpq	$7, %rdx
	ja	.LBB0_7
.LBB0_9:                                # %._crit_edge
	leaq	(%rdi,%rdx), %rax
	addq	$-8, %rax
	addq	$7, %rax
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	cmpb	%sil, (%rax)
	je	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$-1, %rdx
	addq	$-1, %rax
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_11
.LBB0_13:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	memrchr, .Lfunc_end0-memrchr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
