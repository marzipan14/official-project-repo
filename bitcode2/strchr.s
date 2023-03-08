	.text
	.file	"strchr.c"
	.globl	strchr                  # -- Begin function strchr
	.p2align	4, 0x90
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	je	.LBB0_15
	.p2align	4, 0x90
# %bb.1:
	testb	$7, %al
	je	.LBB0_5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_23
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%sil, %cl
	je	.LBB0_17
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	jne	.LBB0_2
.LBB0_5:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movq	%rdi, %rcx
	notq	%rcx
	leaq	(%rdi,%r8), %rdx
	andq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %rdx
	jne	.LBB0_9
# %bb.6:                                # %.preheader8
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
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	xorq	%r11, %rdi
	movq	%rdi, %rdx
	notq	%rdx
	addq	%r8, %rdi
	andq	%r9, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdx
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rdi
	addq	$8, %rax
	movq	%rdi, %rdx
	notq	%rdx
	leaq	(%rdi,%r8), %rcx
	andq	%r9, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rdx
	je	.LBB0_7
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	testb	%dl, %dl
	je	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%sil, %dl
	je	.LBB0_25
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rcx), %edx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB0_11
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_15 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	testb	$7, %al
	je	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_14
	jmp	.LBB0_17
.LBB0_18:
	movabsq	$-72340172838076673, %rcx # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %rdx # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movq	%rsi, %rdi
	notq	%rdi
	addq	%rcx, %rsi
	andq	%rdi, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rsi
	jne	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rsi
	addq	$8, %rax
	movq	%rsi, %rdi
	notq	%rdi
	addq	%rcx, %rsi
	andq	%rdx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rdi
	je	.LBB0_19
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_17
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rax)
	leaq	1(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_21
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_25:
	movl	%esi, %edx
.LBB0_26:
	xorl	%eax, %eax
	cmpb	%sil, %dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rcx, %rax
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
