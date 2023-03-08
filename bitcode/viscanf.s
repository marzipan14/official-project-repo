	.text
	.file	"viscanf.c"
	.globl	viscanf                 # -- Begin function viscanf
	.p2align	4, 0x90
	.type	viscanf,@function
viscanf:                                # @viscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	__svfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	viscanf, .Lfunc_end0-viscanf
                                        # -- End function
	.globl	_viscanf_r              # -- Begin function _viscanf_r
	.p2align	4, 0x90
	.type	_viscanf_r,@function
_viscanf_r:                             # @_viscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	8(%rdi), %rsi
	callq	__svfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_viscanf_r, .Lfunc_end1-_viscanf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
