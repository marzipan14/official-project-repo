	.text
	.file	"abs.c"
	.globl	abs                     # -- Begin function abs
	.p2align	4, 0x90
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	retq
.Lfunc_end0:
	.size	abs, .Lfunc_end0-abs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
