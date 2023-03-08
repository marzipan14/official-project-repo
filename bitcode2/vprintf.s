	.text
	.file	"vprintf.c"
	.globl	vprintf                 # -- Begin function vprintf
	.p2align	4, 0x90
	.type	vprintf,@function
vprintf:                                # @vprintf
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
	callq	_vfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vprintf, .Lfunc_end0-vprintf
                                        # -- End function
	.globl	_vprintf_r              # -- Begin function _vprintf_r
	.p2align	4, 0x90
	.type	_vprintf_r,@function
_vprintf_r:                             # @_vprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	16(%rdi), %rsi
	callq	_vfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_vprintf_r, .Lfunc_end1-_vprintf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
