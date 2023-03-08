	.text
	.file	"atoll.c"
	.globl	atoll                   # -- Begin function atoll
	.p2align	4, 0x90
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atoll, .Lfunc_end0-atoll
                                        # -- End function
	.globl	_atoll_r                # -- Begin function _atoll_r
	.p2align	4, 0x90
	.type	_atoll_r,@function
_atoll_r:                               # @_atoll_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtoll_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_atoll_r, .Lfunc_end1-_atoll_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
