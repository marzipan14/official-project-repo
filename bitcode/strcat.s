	.text
	.file	"strcat.c"
	.globl	strcat                  # -- Begin function strcat
	.p2align	4, 0x90
	.type	strcat,@function
strcat:                                 # @strcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	testb	$7, %r14b
	jne	.LBB0_3
# %bb.1:
	movabsq	$-9187201950435737472, %rax # imm = 0x8080808080808080
	leaq	-8(%r14), %rdi
	movabsq	$-72340172838076673, %rcx # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rbx
	addq	$8, %rdi
	movq	%rbx, %rdx
	notq	%rdx
	andq	%rax, %rdx
	addq	%rcx, %rbx
	testq	%rbx, %rdx
	je	.LBB0_2
.LBB0_3:
	addq	$-1, %rdi
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 1(%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB0_4
# %bb.5:
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
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
