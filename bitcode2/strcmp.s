	.text
	.file	"strcmp.c"
	.globl	strcmp                  # -- Begin function strcmp
	.p2align	4, 0x90
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	movl	%esi, %eax
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	jne	.LBB0_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.2:                                # %.preheader2
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %rdx # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rax,%rdx), %rcx
	notq	%rax
	andq	%r8, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rax
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	addq	$8, %rdi
	cmpq	8(%rsi), %rax
	leaq	8(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_11
# %bb.8:                                # %.preheader
	addq	$1, %rdi
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %al
	jne	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi), %eax
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_9
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rsi), %cl
	xorl	%eax, %eax
.LBB0_12:
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	subl	%ecx, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	xorl	%eax, %eax
	jmp	.LBB0_13
.Lfunc_end0:
	.size	strcmp, .Lfunc_end0-strcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
