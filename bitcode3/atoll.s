	.text
	.file	"atoll.c"
	.globl	atoll                   # -- Begin function atoll
	.p2align	4, 0x90
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	xorl	%esi, %esi
	movl	$10, %edx
	jmp	strtoll                 # TAILCALL
.Lfunc_end0:
	.size	atoll, .Lfunc_end0-atoll
                                        # -- End function
	.globl	_atoll_r                # -- Begin function _atoll_r
	.p2align	4, 0x90
	.type	_atoll_r,@function
_atoll_r:                               # @_atoll_r
# %bb.0:
	xorl	%edx, %edx
	movl	$10, %ecx
	jmp	_strtoll_r              # TAILCALL
.Lfunc_end1:
	.size	_atoll_r, .Lfunc_end1-_atoll_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
