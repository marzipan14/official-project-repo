	.text
	.file	"fgetpos.c"
	.globl	_fgetpos_r              # -- Begin function _fgetpos_r
	.p2align	4, 0x90
	.type	_fgetpos_r,@function
_fgetpos_r:                             # @_fgetpos_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	callq	_ftell_r
	movq	%rax, (%rbx)
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	sete	%cl
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fgetpos_r, .Lfunc_end0-_fgetpos_r
                                        # -- End function
	.globl	fgetpos                 # -- Begin function fgetpos
	.p2align	4, 0x90
	.type	fgetpos,@function
fgetpos:                                # @fgetpos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_ftell_r
	movq	%rax, (%r14)
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	sete	%cl
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fgetpos, .Lfunc_end1-fgetpos
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
