	.text
	.file	"stpcpy.c"
	.globl	stpcpy                  # -- Begin function stpcpy
	.p2align	4, 0x90
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	movq	%rdi, %rax
	movl	%esi, %ecx
	orl	%eax, %ecx
	testb	$7, %cl
	jne	.LBB0_3
# %bb.1:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movq	(%rsi), %rdi
	movq	%rdi, %rcx
	notq	%rcx
	leaq	(%rdi,%r8), %rdx
	andq	%rcx, %rdx
	testq	%r9, %rdx
	jne	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%rax)
	addq	$8, %rax
	movq	8(%rsi), %rdi
	addq	$8, %rsi
	movq	%rdi, %rcx
	notq	%rcx
	leaq	(%rdi,%r8), %rdx
	andq	%r9, %rcx
	testq	%rdx, %rcx
	je	.LBB0_2
.LBB0_3:
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	addq	$1, %rsi
	movb	%cl, 1(%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB0_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	stpcpy, .Lfunc_end0-stpcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
