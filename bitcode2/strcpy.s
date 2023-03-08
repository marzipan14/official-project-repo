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
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	je	.LBB0_2
# %bb.1:
	movq	%rax, %r11
	jmp	.LBB0_5
.LBB0_2:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rdx
	movq	%rdx, %rcx
	notq	%rcx
	leaq	(%rdx,%r8), %rdi
	andq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r11
	testq	%r9, %rdi
	jne	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%r11)
	addq	$8, %r11
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rsi), %rdx
	addq	$8, %rsi
	movq	%rdx, %rdi
	notq	%rdi
	leaq	(%rdx,%r8), %r10
	andq	%r9, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %rdi
	je	.LBB0_3
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r11,%rdx)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strcpy, .Lfunc_end0-strcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
