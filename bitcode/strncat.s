	.text
	.file	"strncat.c"
	.globl	strncat                 # -- Begin function strncat
	.p2align	4, 0x90
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	movq	%rdi, %rax
	movq	%rdi, %rcx
	testb	$7, %al
	jne	.LBB0_3
# %bb.1:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	leaq	-8(%rax), %rcx
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rcx), %r10
	addq	$8, %rcx
	movq	%r10, %rdi
	notq	%rdi
	andq	%r8, %rdi
	addq	%r9, %r10
	testq	%r10, %rdi
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx)
	leaq	1(%rcx), %rcx
	jne	.LBB0_3
# %bb.4:
	testq	%rdx, %rdx
	je	.LBB0_9
# %bb.5:                                # %.preheader
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %r8d
	movb	%r8b, -1(%rcx,%rdi)
	testb	%r8b, %r8b
	je	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_6
# %bb.8:
	movb	$0, -1(%rcx,%rdi)
.LBB0_9:
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
