	.text
	.file	"sf_fpclassify.c"
	.globl	__fpclassifyf           # -- Begin function __fpclassifyf
	.p2align	4, 0x90
	.type	__fpclassifyf,@function
__fpclassifyf:                          # @__fpclassifyf
# %bb.0:
	movd	%xmm0, %edx
	movl	%edx, %ecx
	orl	$-2147483648, %ecx      # imm = 0x80000000
	movl	$2, %eax
	cmpl	$-2147483648, %ecx      # imm = 0x80000000
	je	.LBB0_4
# %bb.1:
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	leal	-8388608(%rdx), %esi
	movl	$4, %eax
	cmpl	$2130706432, %esi       # imm = 0x7F000000
	jb	.LBB0_4
# %bb.2:
	addl	$-1, %edx
	movl	$3, %eax
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	jb	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	cmpl	$-8388608, %ecx         # imm = 0xFF800000
	sete	%al
.LBB0_4:
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
