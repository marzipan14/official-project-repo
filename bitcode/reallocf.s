	.text
	.file	"reallocf.c"
	.globl	_reallocf_r             # -- Begin function _reallocf_r
	.p2align	4, 0x90
	.type	_reallocf_r,@function
_reallocf_r:                            # @_reallocf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	testq	%r14, %r14
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	free
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_reallocf_r, .Lfunc_end0-_reallocf_r
                                        # -- End function
	.globl	reallocf                # -- Begin function reallocf
	.p2align	4, 0x90
	.type	reallocf,@function
reallocf:                               # @reallocf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	realloc
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.1:
	testq	%r14, %r14
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	free
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	reallocf, .Lfunc_end1-reallocf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
