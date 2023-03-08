	.text
	.file	"strncmp.c"
	.globl	strncmp                 # -- Begin function strncmp
	.p2align	4, 0x90
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_16
# %bb.1:
	movl	%esi, %ecx
	orl	%edi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	jne	.LBB0_9
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_8
# %bb.3:                                # %.preheader1
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	cmpq	(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	je	.LBB0_16
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	leaq	(%rcx,%r9), %r10
	notq	%rcx
	andq	%r8, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %rcx
	jne	.LBB0_16
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$-8, %rdx
	addq	$8, %rdi
	addq	$8, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rdx
	ja	.LBB0_4
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %r8b
	movb	(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %r8b
	jne	.LBB0_15
# %bb.10:                               # %.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	je	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdi,%rcx), %r8d
	cmpb	(%rsi,%rcx), %r8b
	leaq	1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
# %bb.14:
	movb	-1(%rdi,%rcx), %r8b
	movb	-1(%rsi,%rcx), %cl
.LBB0_15:
	movzbl	%r8b, %eax
	movzbl	%cl, %ecx
	subl	%ecx, %eax
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
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
