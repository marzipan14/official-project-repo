	.text
	.file	"s_fpclassify.c"
	.globl	__fpclassifyd           # -- Begin function __fpclassifyd
	.p2align	4, 0x90
	.type	__fpclassifyd,@function
__fpclassifyd:                          # @__fpclassifyd
# %bb.0:
	movq	%xmm0, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movl	%edx, %eax
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	je	.LBB0_11
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	cmpl	$-2147483648, %edx      # imm = 0x80000000
	je	.LBB0_11
.LBB0_3:
	leal	-1048576(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	cmpl	$2145386496, %esi       # imm = 0x7FE00000
	jb	.LBB0_11
# %bb.4:
	leal	2146435072(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2145386496, %esi       # imm = 0x7FE00000
	jb	.LBB0_11
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	cmpl	$1048576, %edx          # imm = 0x100000
	jb	.LBB0_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_8
# %bb.7:
	cmpl	$-2146435072, %edx      # imm = 0x80100000
	jb	.LBB0_11
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_10
# %bb.9:
	movl	$1, %eax
	cmpl	$2146435072, %edx       # imm = 0x7FF00000
	je	.LBB0_11
.LBB0_10:
	xorl	$-1048576, %edx         # imm = 0xFFF00000
	xorl	%eax, %eax
	orl	%edx, %ecx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
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
