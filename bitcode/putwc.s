	.text
	.file	"putwc.c"
	.globl	_putwc_r                # -- Begin function _putwc_r
	.p2align	4, 0x90
	.type	_putwc_r,@function
_putwc_r:                               # @_putwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_fputwc_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putwc_r, .Lfunc_end0-_putwc_r
                                        # -- End function
	.globl	putwc                   # -- Begin function putwc
	.p2align	4, 0x90
	.type	putwc,@function
putwc:                                  # @putwc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	fputwc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putwc, .Lfunc_end1-putwc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
