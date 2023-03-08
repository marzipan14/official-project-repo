	.text
	.file	"getwc_u.c"
	.globl	_getwc_unlocked_r       # -- Begin function _getwc_unlocked_r
	.p2align	4, 0x90
	.type	_getwc_unlocked_r,@function
_getwc_unlocked_r:                      # @_getwc_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_fgetwc_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_getwc_unlocked_r, .Lfunc_end0-_getwc_unlocked_r
                                        # -- End function
	.globl	getwc_unlocked          # -- Begin function getwc_unlocked
	.p2align	4, 0x90
	.type	getwc_unlocked,@function
getwc_unlocked:                         # @getwc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	fgetwc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getwc_unlocked, .Lfunc_end1-getwc_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
