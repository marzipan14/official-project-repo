	.text
	.file	"s_fpclassify.c"
	.globl	__fpclassifyd           # -- Begin function __fpclassifyd
	.p2align	4, 0x90
	.type	__fpclassifyd,@function
__fpclassifyd:                          # @__fpclassifyd
# %bb.0:
	movq	%xmm0, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movl	%edx, %eax
	xorl	$-2147483648, %eax      # imm = 0x80000000
	orl	%esi, %eax
	sete	%cl
	movl	%edx, %eax
	orl	%esi, %eax
	movl	$2, %eax
	je	.LBB0_7
# %bb.1:
	testb	%cl, %cl
	jne	.LBB0_7
# %bb.2:
	movl	%edx, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	addl	$-1048576, %ecx         # imm = 0xFFF00000
	movl	$4, %eax
	cmpl	$2145386496, %ecx       # imm = 0x7FE00000
	jb	.LBB0_7
# %bb.3:
	movl	$3, %eax
	cmpl	$1048576, %edx          # imm = 0x100000
	jb	.LBB0_7
# %bb.4:
	testl	%edx, %edx
	jns	.LBB0_6
# %bb.5:
	cmpl	$-2146435072, %edx      # imm = 0x80100000
	jae	.LBB0_6
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_6:
	orl	$-2147483648, %edx      # imm = 0x80000000
	xorl	$-1048576, %edx         # imm = 0xFFF00000
	xorl	%eax, %eax
	orl	%edx, %esi
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__fpclassifyd, .Lfunc_end0-__fpclassifyd
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
