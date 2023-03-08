	.text
	.file	"atol.c"
	.globl	atol                    # -- Begin function atol
	.p2align	4, 0x90
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	xorl	%esi, %esi
	movl	$10, %edx
	jmp	strtol                  # TAILCALL
.Lfunc_end0:
	.size	atol, .Lfunc_end0-atol
                                        # -- End function
	.globl	_atol_r                 # -- Begin function _atol_r
	.p2align	4, 0x90
	.type	_atol_r,@function
_atol_r:                                # @_atol_r
# %bb.0:
	xorl	%edx, %edx
	movl	$10, %ecx
	jmp	_strtol_r               # TAILCALL
.Lfunc_end1:
	.size	_atol_r, .Lfunc_end1-_atol_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
