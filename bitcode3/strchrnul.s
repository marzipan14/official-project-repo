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
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
.LBB0_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strchrnul, .Lfunc_end0-strchrnul
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
