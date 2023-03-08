	.text
	.file	"mbrlen.c"
	.globl	mbrlen                  # -- Begin function mbrlen
	.p2align	4, 0x90
	.type	mbrlen,@function
mbrlen:                                 # @mbrlen
# %bb.0:
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	xorl	%edi, %edi
	jmp	mbrtowc                 # TAILCALL
.Lfunc_end0:
	.size	mbrlen, .Lfunc_end0-mbrlen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
