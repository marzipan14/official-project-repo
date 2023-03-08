	.text
	.file	"towlower_l.c"
	.globl	towlower_l              # -- Begin function towlower_l
	.p2align	4, 0x90
	.type	towlower_l,@function
towlower_l:                             # @towlower_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	towlower
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	towlower_l, .Lfunc_end0-towlower_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
