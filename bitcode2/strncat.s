	.text
	.file	"strncat.c"
	.globl	strncat                 # -- Begin function strncat
	.p2align	4, 0x90
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rcx
	testb	$7, %al
	jne	.LBB0_5
# %bb.1:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movq	%rdi, %rcx
	notq	%rcx
	addq	%r8, %rdi
	andq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	testq	%r9, %rdi
	jne	.LBB0_4
# %bb.2:                                # %.preheader3
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx), %r10
	addq	$8, %rcx
	movq	%r10, %rdi
	notq	%rdi
	addq	%r8, %r10
	andq	%r9, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %rdi
	je	.LBB0_3
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_14
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_13
# %bb.8:
	movb	(%rsi), %dil
	movb	%dil, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB0_13
# %bb.9:                                # %.preheader
	movl	$1, %edi
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rsi,%rdi), %r8d
	movb	%r8b, (%rcx,%rdi)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	jne	.LBB0_10
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_11:
	movb	$0, (%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strncat, .Lfunc_end0-strncat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
