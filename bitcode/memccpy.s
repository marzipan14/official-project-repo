	.text
	.file	"memccpy.c"
	.globl	memccpy                 # -- Begin function memccpy
	.p2align	4, 0x90
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	pushq	%rbx
	cmpq	$8, %rcx
	jb	.LBB0_5
# %bb.1:
	movl	%esi, %eax
	orl	%edi, %eax
	testb	$7, %al
	jne	.LBB0_5
# %bb.2:
	movl	%edx, %eax
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movsbq	%al, %rax
	movq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	shlq	$8, %r10
	addq	%rax, %r10
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %r11
	movq	%r11, %rax
	xorq	%r10, %rax
	movq	%rax, %rbx
	notq	%rbx
	andq	%r8, %rbx
	addq	%r9, %rax
	testq	%rax, %rbx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$8, %rsi
	movq	%r11, (%rdi)
	addq	$8, %rdi
	addq	$-8, %rcx
	cmpq	$7, %rcx
	ja	.LBB0_3
.LBB0_5:
	movsbl	%dl, %r8d
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rdx, %rcx
	je	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movsbl	(%rsi,%rdx), %ebx
	movb	%bl, (%rdi,%rdx)
	addq	$1, %rdx
	cmpl	%ebx, %r8d
	jne	.LBB0_6
# %bb.8:                                # %._crit_edge
	addq	%rdx, %rdi
	movq	%rdi, %rax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	memccpy, .Lfunc_end0-memccpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
