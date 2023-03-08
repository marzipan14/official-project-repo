	.text
	.file	"plat.c"
	.globl	getentropy              # -- Begin function getentropy
	.p2align	4, 0x90
	.type	getentropy,@function
getentropy:                             # @getentropy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$88, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getentropy, .Lfunc_end0-getentropy
                                        # -- End function
	.globl	abort                   # -- Begin function abort
	.p2align	4, 0x90
	.type	abort,@function
abort:                                  # @abort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	abort, .Lfunc_end1-abort
                                        # -- End function
	.globl	_exit                   # -- Begin function _exit
	.p2align	4, 0x90
	.type	_exit,@function
_exit:                                  # @_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	ukplat_terminate
.Lfunc_end2:
	.size	_exit, .Lfunc_end2-_exit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
