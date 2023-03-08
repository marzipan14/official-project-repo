	.text
	.file	"mblen_r.c"
	.globl	_mblen_r                # -- Begin function _mblen_r
	.p2align	4, 0x90
	.type	_mblen_r,@function
_mblen_r:                               # @_mblen_r
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	cmpb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_2
# %bb.3:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	_mblen_r, .Lfunc_end0-_mblen_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
