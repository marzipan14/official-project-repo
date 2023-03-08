	.text
	.file	"bcopy.c"
	.globl	bcopy                   # -- Begin function bcopy
	.p2align	4, 0x90
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bcopy, .Lfunc_end0-bcopy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
