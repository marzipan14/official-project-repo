	.text
	.file	"towupper_l.c"
	.globl	towupper_l              # -- Begin function towupper_l
	.p2align	4, 0x90
	.type	towupper_l,@function
towupper_l:                             # @towupper_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	towupper
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	towupper_l, .Lfunc_end0-towupper_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
