	.text
	.file	"strncmp.c"
	.globl	strncmp                 # -- Begin function strncmp
	.p2align	4, 0x90
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_14
# %bb.1:
	movl	%esi, %ecx
	orl	%edi, %ecx
	testb	$7, %cl
	jne	.LBB0_8
# %bb.2:
	cmpq	$8, %rdx
	jb	.LBB0_8
# %bb.3:                                # %.preheader2
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	cmpq	(%rsi), %rcx
	jne	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpq	$8, %rdx
	je	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	leaq	(%rcx,%r9), %r10
	notq	%rcx
	andq	%r8, %rcx
	testq	%r10, %rcx
	jne	.LBB0_14
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$-8, %rdx
	addq	$8, %rdi
	addq	$8, %rsi
	cmpq	$7, %rdx
	ja	.LBB0_4
.LBB0_8:
	movb	(%rdi), %r8b
	movb	(%rsi), %r9b
	cmpb	%r9b, %r8b
	jne	.LBB0_13
# %bb.9:                                # %.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rdx
	je	.LBB0_14
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	testb	%r8b, %r8b
	je	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	movzbl	(%rdi,%rcx), %r8d
	movzbl	(%rsi,%rcx), %r9d
	addq	$1, %rcx
	cmpb	%r9b, %r8b
	je	.LBB0_10
.LBB0_13:
	movzbl	%r8b, %eax
	movzbl	%r9b, %ecx
	subl	%ecx, %eax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strncmp, .Lfunc_end0-strncmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
