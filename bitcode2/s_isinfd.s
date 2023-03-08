	.text
	.file	"s_isinfd.c"
	.globl	__isinfd                # -- Begin function __isinfd
	.p2align	4, 0x90
	.type	__isinfd,@function
__isinfd:                               # @__isinfd
# %bb.0:
	movq	%xmm0, %rax
	movl	%eax, %ecx
	negl	%ecx
	orl	%eax, %ecx
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	shrl	$31, %ecx
	orl	%eax, %ecx
	movl	$2146435072, %edx       # imm = 0x7FF00000
	subl	%ecx, %edx
	movl	%edx, %eax
	negl	%eax
	orl	%edx, %eax
	notl	%eax
	shrl	$31, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__isinfd, .Lfunc_end0-__isinfd
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
