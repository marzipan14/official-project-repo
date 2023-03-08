	.text
	.file	"strsep.c"
	.globl	strsep                  # -- Begin function strsep
	.p2align	4, 0x90
	.type	strsep,@function
strsep:                                 # @strsep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	(%rdi), %rdi
	xorl	%ecx, %ecx
	callq	__strtok_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strsep, .Lfunc_end0-strsep
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
