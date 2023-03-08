	.text
	.file	"fsetpos.c"
	.globl	_fsetpos_r              # -- Begin function _fsetpos_r
	.p2align	4, 0x90
	.type	_fsetpos_r,@function
_fsetpos_r:                             # @_fsetpos_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdx), %rdx
	xorl	%ecx, %ecx
	callq	_fseek_r
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fsetpos_r, .Lfunc_end0-_fsetpos_r
                                        # -- End function
	.globl	fsetpos                 # -- Begin function fsetpos
	.p2align	4, 0x90
	.type	fsetpos,@function
fsetpos:                                # @fsetpos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__getreent
	movq	(%rbx), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	_fseek_r
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fsetpos, .Lfunc_end1-fsetpos
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
