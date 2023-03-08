	.text
	.file	"bzero.c"
	.globl	bzero                   # -- Begin function bzero
	.p2align	4, 0x90
	.type	bzero,@function
bzero:                                  # @bzero
# %bb.0:
	movq	%rsi, %rdx
	xorl	%esi, %esi
	jmp	memset                  # TAILCALL
.Lfunc_end0:
	.size	bzero, .Lfunc_end0-bzero
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
