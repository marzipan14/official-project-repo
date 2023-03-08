	.text
	.file	"newlocale.c"
	.globl	_newlocale_r            # -- Begin function _newlocale_r
	.p2align	4, 0x90
	.type	_newlocale_r,@function
_newlocale_r:                           # @_newlocale_r
# %bb.0:
	movl	$__global_locale, %eax
	retq
.Lfunc_end0:
	.size	_newlocale_r, .Lfunc_end0-_newlocale_r
                                        # -- End function
	.globl	newlocale               # -- Begin function newlocale
	.p2align	4, 0x90
	.type	newlocale,@function
newlocale:                              # @newlocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movl	$__global_locale, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	newlocale, .Lfunc_end1-newlocale
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
