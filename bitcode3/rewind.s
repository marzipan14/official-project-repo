	.text
	.file	"rewind.c"
	.globl	_rewind_r               # -- Begin function _rewind_r
	.p2align	4, 0x90
	.type	_rewind_r,@function
_rewind_r:                              # @_rewind_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_fseek_r
	andb	$-97, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_rewind_r, .Lfunc_end0-_rewind_r
                                        # -- End function
	.globl	rewind                  # -- Begin function rewind
	.p2align	4, 0x90
	.type	rewind,@function
rewind:                                 # @rewind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_fseek_r
	andb	$-97, 16(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rewind, .Lfunc_end1-rewind
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
