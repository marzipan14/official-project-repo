	.text
	.file	"atol.c"
	.globl	atol                    # -- Begin function atol
	.p2align	4, 0x90
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atol, .Lfunc_end0-atol
                                        # -- End function
	.globl	_atol_r                 # -- Begin function _atol_r
	.p2align	4, 0x90
	.type	_atol_r,@function
_atol_r:                                # @_atol_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtol_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_atol_r, .Lfunc_end1-_atol_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
