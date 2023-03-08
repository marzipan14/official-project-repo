	.text
	.file	"atoi.c"
	.globl	atoi                    # -- Begin function atoi
	.p2align	4, 0x90
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	xorl	%esi, %esi
	movl	$10, %edx
	jmp	strtol                  # TAILCALL
.Lfunc_end0:
	.size	atoi, .Lfunc_end0-atoi
                                        # -- End function
	.globl	_atoi_r                 # -- Begin function _atoi_r
	.p2align	4, 0x90
	.type	_atoi_r,@function
_atoi_r:                                # @_atoi_r
# %bb.0:
	xorl	%edx, %edx
	movl	$10, %ecx
	jmp	_strtol_r               # TAILCALL
.Lfunc_end1:
	.size	_atoi_r, .Lfunc_end1-_atoi_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
