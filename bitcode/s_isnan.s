	.text
	.file	"s_isnan.c"
	.globl	isnan                   # -- Begin function isnan
	.p2align	4, 0x90
	.type	isnan,@function
isnan:                                  # @isnan
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	isnan, .Lfunc_end0-isnan
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
