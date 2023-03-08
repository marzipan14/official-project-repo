	.text
	.file	"mbsrtowcs.c"
	.globl	_mbsrtowcs_r            # -- Begin function _mbsrtowcs_r
	.p2align	4, 0x90
	.type	_mbsrtowcs_r,@function
_mbsrtowcs_r:                           # @_mbsrtowcs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	$-1, %rcx
	callq	_mbsnrtowcs_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mbsrtowcs_r, .Lfunc_end0-_mbsrtowcs_r
                                        # -- End function
	.globl	mbsrtowcs               # -- Begin function mbsrtowcs
	.p2align	4, 0x90
	.type	mbsrtowcs,@function
mbsrtowcs:                              # @mbsrtowcs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	$-1, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	_mbsnrtowcs_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mbsrtowcs, .Lfunc_end1-mbsrtowcs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
