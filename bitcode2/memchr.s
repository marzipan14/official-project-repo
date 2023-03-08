	.text
	.file	"memchr.c"
	.globl	memchr                  # -- Begin function memchr
	.p2align	4, 0x90
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rdx
	jb	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpb	%sil, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	jmp	.LBB0_1
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_10
# %bb.6:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movzbl	%sil, %ecx
	movl	%ecx, %edi
	shll	$8, %edi
	orl	%ecx, %edi
	movl	%edi, %ecx
	shll	$16, %ecx
	orl	%edi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r10
	shlq	$32, %r10
	orq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	xorq	%r10, %rcx
	movq	%rcx, %rdi
	notq	%rdi
	andq	%r8, %rdi
	addq	%r9, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rdi
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addq	$-8, %rdx
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rdx
	ja	.LBB0_7
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	cmpb	%sil, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$-1, %rdx
	addq	$1, %rax
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB0_11
.LBB0_13:
	xorl	%eax, %eax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
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
