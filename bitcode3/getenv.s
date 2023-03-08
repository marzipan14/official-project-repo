	.text
	.file	"getenv.c"
	.globl	_findenv                # -- Begin function _findenv
	.p2align	4, 0x90
	.type	_findenv,@function
_findenv:                               # @_findenv
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
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_findenv_r              # TAILCALL
.Lfunc_end0:
	.size	_findenv, .Lfunc_end0-_findenv
                                        # -- End function
	.globl	getenv                  # -- Begin function getenv
	.p2align	4, 0x90
	.type	getenv,@function
getenv:                                 # @getenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	leaq	-12(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_findenv_r
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getenv, .Lfunc_end1-getenv
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
