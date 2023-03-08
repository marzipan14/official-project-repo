	.text
	.file	"duplocale.c"
	.globl	_duplocale_r            # -- Begin function _duplocale_r
	.p2align	4, 0x90
	.type	_duplocale_r,@function
_duplocale_r:                           # @_duplocale_r
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
	retq
.Lfunc_end0:
	.size	_duplocale_r, .Lfunc_end0-_duplocale_r
                                        # -- End function
	.globl	duplocale               # -- Begin function duplocale
	.p2align	4, 0x90
	.type	duplocale,@function
duplocale:                              # @duplocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	duplocale, .Lfunc_end1-duplocale
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
