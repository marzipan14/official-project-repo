	.text
	.file	"mblen_r.c"
	.globl	_mblen_r                # -- Begin function _mblen_r
	.p2align	4, 0x90
	.type	_mblen_r,@function
_mblen_r:                               # @_mblen_r
# %bb.0:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	cmpb	$0, (%rsi)
	je	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	setne	%al
	addl	%eax, %eax
	addl	$-1, %eax
.LBB0_3:
	retq
.Lfunc_end0:
	.size	_mblen_r, .Lfunc_end0-_mblen_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
