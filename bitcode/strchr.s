	.text
	.file	"strchr.c"
	.globl	strchr                  # -- Begin function strchr
	.p2align	4, 0x90
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	movq	%rdi, %rax
	testb	%sil, %sil
	je	.LBB0_4
	.p2align	4, 0x90
# %bb.1:
	testb	$7, %al
	je	.LBB0_13
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_3
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	cmpb	%sil, %cl
	je	.LBB0_21
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	testb	$7, %al
	jne	.LBB0_2
.LBB0_13:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movq	(%rax), %rdi
	movq	%rdi, %rcx
	notq	%rcx
	leaq	(%rdi,%r8), %rdx
	andq	%rcx, %rdx
	testq	%r9, %rdx
	jne	.LBB0_17
# %bb.14:                               # %.preheader4
	movzbl	%sil, %ecx
	movl	%ecx, %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movl	%edx, %r10d
	shll	$16, %r10d
	orl	%edx, %r10d
	movq	%r10, %r11
	shlq	$32, %r11
	orq	%r10, %r11
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	xorq	%r11, %rdi
	movq	%rdi, %rdx
	notq	%rdx
	addq	%r8, %rdi
	andq	%r9, %rdx
	testq	%rdi, %rdx
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	8(%rax), %rdi
	addq	$8, %rax
	movq	%rdi, %rdx
	notq	%rdx
	leaq	(%rdi,%r8), %rcx
	andq	%r9, %rdx
	testq	%rcx, %rdx
	je	.LBB0_15
.LBB0_17:
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	1(%rax), %ecx
	addq	$1, %rax
	cmpb	%sil, %cl
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	testb	%cl, %cl
	jne	.LBB0_18
.LBB0_20:
	xorl	%edx, %edx
	cmpb	%sil, %cl
	cmovneq	%rdx, %rax
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %rax
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	testb	$7, %al
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpb	$0, (%rax)
	jne	.LBB0_6
	jmp	.LBB0_21
.LBB0_7:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %rdx # imm = 0x8080808080808080
	addq	$-8, %rax
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rsi
	addq	$8, %rax
	movq	%rsi, %rdi
	notq	%rdi
	andq	%rdx, %rdi
	leaq	(%rsi,%r8), %rcx
	testq	%rcx, %rdi
	je	.LBB0_8
# %bb.9:
	testb	%sil, %sil
	je	.LBB0_21
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, 1(%rax)
	leaq	1(%rax), %rax
	jne	.LBB0_10
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strchr, .Lfunc_end0-strchr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
