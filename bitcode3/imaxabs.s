	.text
	.file	"imaxabs.c"
	.globl	imaxabs                 # -- Begin function imaxabs
	.p2align	4, 0x90
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	movq	%rdi, %rax
	negq	%rax
	cmovlq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	imaxabs, .Lfunc_end0-imaxabs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
