	.text
	.file	"_Exit.c"
	.globl	_Exit                   # -- Begin function _Exit
	.p2align	4, 0x90
	.type	_Exit,@function
_Exit:                                  # @_Exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_exit
.Lfunc_end0:
	.size	_Exit, .Lfunc_end0-_Exit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
