	.text
	.file	"llabs.c"
	.globl	llabs                   # -- Begin function llabs
	.p2align	4, 0x90
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	movq	%rdi, %rax
	negq	%rax
	cmovlq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	llabs, .Lfunc_end0-llabs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
