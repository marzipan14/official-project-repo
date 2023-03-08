	.text
	.file	"bcopy.c"
	.globl	bcopy                   # -- Begin function bcopy
	.p2align	4, 0x90
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	memmove                 # TAILCALL
.Lfunc_end0:
	.size	bcopy, .Lfunc_end0-bcopy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
