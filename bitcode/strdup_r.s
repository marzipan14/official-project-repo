	.text
	.file	"strdup_r.c"
	.globl	_strdup_r               # -- Begin function _strdup_r
	.p2align	4, 0x90
	.type	_strdup_r,@function
_strdup_r:                              # @_strdup_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	$1, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strdup_r, .Lfunc_end0-_strdup_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
