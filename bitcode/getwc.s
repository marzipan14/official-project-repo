	.text
	.file	"getwc.c"
	.globl	_getwc_r                # -- Begin function _getwc_r
	.p2align	4, 0x90
	.type	_getwc_r,@function
_getwc_r:                               # @_getwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_getwc_r, .Lfunc_end0-_getwc_r
                                        # -- End function
	.globl	getwc                   # -- Begin function getwc
	.p2align	4, 0x90
	.type	getwc,@function
getwc:                                  # @getwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	fgetwc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getwc, .Lfunc_end1-getwc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
