	.text
	.file	"strcpy.c"
	.globl	strcpy                  # -- Begin function strcpy
	.p2align	4, 0x90
	.type	strcpy,@function
strcpy:                                 # @strcpy
# %bb.0:
	movq	%rdi, %rax
	movl	%esi, %ecx
	orl	%eax, %ecx
	testb	$7, %cl
	je	.LBB0_2
# %bb.1:
	movq	%rax, %r11
	jmp	.LBB0_4
.LBB0_2:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movq	(%rsi), %rdx
	movq	%rdx, %rcx
	notq	%rcx
	leaq	(%rdx,%r8), %rdi
	andq	%rcx, %rdi
	movq	%rax, %r11
	testq	%r9, %rdi
	jne	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%r11)
	addq	$8, %r11
	movq	8(%rsi), %rdx
	addq	$8, %rsi
	movq	%rdx, %rdi
	notq	%rdi
	leaq	(%rdx,%r8), %r10
	andq	%r9, %rdi
	testq	%r10, %rdi
	je	.LBB0_3
.LBB0_4:
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r11,%rdx)
	addq	$1, %rdx
	testb	%cl, %cl
	jne	.LBB0_5
# %bb.6:
	retq
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
