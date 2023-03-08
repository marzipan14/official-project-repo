	.text
	.file	"timesr.c"
	.globl	_times_r                # -- Begin function _times_r
	.p2align	4, 0x90
	.type	_times_r,@function
_times_r:                               # @_times_r
# %bb.0:
	movq	%rsi, %rdi
	jmp	times                   # TAILCALL
.Lfunc_end0:
	.size	_times_r, .Lfunc_end0-_times_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
