	.text
	.file	"atoi.c"
	.globl	atoi                    # -- Begin function atoi
	.p2align	4, 0x90
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atoi, .Lfunc_end0-atoi
                                        # -- End function
	.globl	_atoi_r                 # -- Begin function _atoi_r
	.p2align	4, 0x90
	.type	_atoi_r,@function
_atoi_r:                                # @_atoi_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtol_r
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_atoi_r, .Lfunc_end1-_atoi_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
