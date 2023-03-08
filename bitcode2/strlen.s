	.text
	.file	"strlen.c"
	.globl	strlen                  # -- Begin function strlen
	.p2align	4, 0x90
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	testb	$7, %dil
	je	.LBB0_6
# %bb.1:
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_2
# %bb.3:                                # %.preheader3
	leaq	1(%rdi), %rax
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_5 Depth=1
	cmpb	$0, (%rax)
	leaq	1(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.11:
	addq	$-1, %rax
	jmp	.LBB0_12
.LBB0_6:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %rdx # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movq	%rsi, %rcx
	notq	%rcx
	addq	%r8, %rsi
	andq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rsi
	jne	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rcx
	addq	$8, %rax
	movq	%rcx, %rsi
	notq	%rsi
	addq	%r8, %rcx
	andq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rsi
	je	.LBB0_7
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rax)
	leaq	1(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
	jmp	.LBB0_12
.LBB0_2:
	movq	%rdi, %rax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	subq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strlen, .Lfunc_end0-strlen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
