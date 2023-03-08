	.text
	.file	"labs.c"
	.globl	labs                    # -- Begin function labs
	.p2align	4, 0x90
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	movq	%rdi, %rax
	negq	%rax
	cmovlq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	labs, .Lfunc_end0-labs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
