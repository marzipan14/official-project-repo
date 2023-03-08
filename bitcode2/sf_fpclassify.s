	.text
	.file	"sf_fpclassify.c"
	.globl	__fpclassifyf           # -- Begin function __fpclassifyf
	.p2align	4, 0x90
	.type	__fpclassifyf,@function
__fpclassifyf:                          # @__fpclassifyf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	orl	$-2147483648, %ecx      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2147483648, %ecx      # imm = 0x80000000
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	leal	-8388608(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706432, %edx       # imm = 0x7F000000
	jb	.LBB0_4
# %bb.3:
	leal	2139095040(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706431, %edx       # imm = 0x7EFFFFFF
	ja	.LBB0_5
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_5:
	leal	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	jb	.LBB0_7
# %bb.6:
	addl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388606, %eax          # imm = 0x7FFFFE
	ja	.LBB0_8
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_8:
	xorl	%eax, %eax
	cmpl	$-8388608, %ecx         # imm = 0xFF800000
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__fpclassifyf, .Lfunc_end0-__fpclassifyf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
