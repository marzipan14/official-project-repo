	.text
	.file	"iswspace_l.c"
	.globl	iswspace_l              # -- Begin function iswspace_l
	.p2align	4, 0x90
	.type	iswspace_l,@function
iswspace_l:                             # @iswspace_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswspace_l, .Lfunc_end0-iswspace_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
