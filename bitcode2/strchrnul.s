	.text
	.file	"strchrnul.c"
	.globl	strchrnul               # -- Begin function strchrnul
	.p2align	4, 0x90
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strchrnul, .Lfunc_end0-strchrnul
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
