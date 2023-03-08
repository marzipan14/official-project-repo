	.text
	.file	"signgam.c"
	.globl	__signgam               # -- Begin function __signgam
	.p2align	4, 0x90
	.type	__signgam,@function
__signgam:                              # @__signgam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	addq	$224, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__signgam, .Lfunc_end0-__signgam
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
