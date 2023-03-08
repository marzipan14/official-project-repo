	.text
	.file	"s_isnand.c"
	.globl	__isnand                # -- Begin function __isnand
	.p2align	4, 0x90
	.type	__isnand,@function
__isnand:                               # @__isnand
# %bb.0:
	movq	%xmm0, %rax
	movl	%eax, %ecx
	negl	%ecx
	orl	%eax, %ecx
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	shrl	$31, %ecx
	orl	%eax, %ecx
	movl	$2146435072, %eax       # imm = 0x7FF00000
	subl	%ecx, %eax
	shrl	$31, %eax
	retq
.Lfunc_end0:
	.size	__isnand, .Lfunc_end0-__isnand
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
