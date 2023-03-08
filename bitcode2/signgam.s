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
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__signgam, .Lfunc_end0-__signgam
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
