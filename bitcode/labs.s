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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	labs, .Lfunc_end0-labs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
