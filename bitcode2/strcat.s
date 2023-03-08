	.text
	.file	"strcat.c"
	.globl	strcat                  # -- Begin function strcat
	.p2align	4, 0x90
	.type	strcat,@function
strcat:                                 # @strcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %bl
	jne	.LBB0_5
# %bb.1:
	movabsq	$-72340172838076673, %r8 # imm = 0xFEFEFEFEFEFEFEFF
	movabsq	$-9187201950435737472, %rcx # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdx
	movq	%rdx, %rdi
	notq	%rdi
	addq	%r8, %rdx
	andq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rcx, %rdx
	jne	.LBB0_4
# %bb.2:                                # %.preheader1
	movq	%rbx, %rdi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	addq	$8, %rdi
	movq	%rax, %rdx
	notq	%rdx
	addq	%r8, %rax
	andq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rdx
	je	.LBB0_3
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_8
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rdi)
	leaq	1(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
.LBB0_8:
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strcat, .Lfunc_end0-strcat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
