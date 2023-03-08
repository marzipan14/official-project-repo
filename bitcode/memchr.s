	.text
	.file	"memchr.c"
	.globl	memchr                  # -- Begin function memchr
	.p2align	4, 0x90
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	movq	%rdi, %rax
	testb	$7, %al
	je	.LBB0_5
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	subq	$1, %rdx
	jb	.LBB0_12
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	%sil, (%rax)
	je	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	testb	$7, %al
	jne	.LBB0_2
.LBB0_5:
	cmpq	$8, %rdx
	jb	.LBB0_9
# %bb.6:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movzbl	%sil, %ecx
	movl	%ecx, %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movl	%edi, %ecx
	shll	$16, %ecx
	orl	%edi, %ecx
	movq	%rcx, %r10
	shlq	$32, %r10
	orq	%rcx, %r10
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	xorq	%r10, %rcx
	movq	%rcx, %rdi
	notq	%rdi
	andq	%r8, %rdi
	addq	%r9, %rcx
	testq	%rcx, %rdi
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$-8, %rdx
	addq	$8, %rax
	cmpq	$7, %rdx
	ja	.LBB0_7
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpb	%sil, (%rax)
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	addq	$-1, %rdx
	addq	$1, %rax
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_10
.LBB0_12:
	xorl	%eax, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	memchr, .Lfunc_end0-memchr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
