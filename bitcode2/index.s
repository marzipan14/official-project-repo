	.text
	.file	"index.c"
	.globl	index                   # -- Begin function index
	.p2align	4, 0x90
	.type	index,@function
index:                                  # @index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	index, .Lfunc_end0-index
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
