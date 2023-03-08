	.text
	.file	"vwprintf.c"
	.globl	vwprintf                # -- Begin function vwprintf
	.p2align	4, 0x90
	.type	vwprintf,@function
vwprintf:                               # @vwprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	16(%rax), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	_vfwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vwprintf, .Lfunc_end0-vwprintf
                                        # -- End function
	.globl	_vwprintf_r             # -- Begin function _vwprintf_r
	.p2align	4, 0x90
	.type	_vwprintf_r,@function
_vwprintf_r:                            # @_vwprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	16(%rdi), %rsi
	callq	_vfwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vwprintf_r, .Lfunc_end1-_vwprintf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
