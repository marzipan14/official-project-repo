	.text
	.file	"getline.c"
	.globl	__getline               # -- Begin function __getline
	.p2align	4, 0x90
	.type	__getline,@function
__getline:                              # @__getline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movl	$10, %edx
	callq	__getdelim
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__getline, .Lfunc_end0-__getline
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
