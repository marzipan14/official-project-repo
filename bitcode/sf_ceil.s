	.text
	.file	"sf_ceil.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function ceilf
.LCPI0_0:
	.long	1900671690              # float 1.00000002E+30
	.text
	.globl	ceilf
	.p2align	4, 0x90
	.type	ceilf,@function
ceilf:                                  # @ceilf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$1258291199, %ecx       # imm = 0x4AFFFFFF
	ja	.LBB0_8
# %bb.1:
	cmpl	$1065353215, %ecx       # imm = 0x3F7FFFFF
	ja	.LBB0_5
# %bb.2:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_11
# %bb.3:
	testl	%eax, %eax
	js	.LBB0_4
# %bb.10:
	testl	%ecx, %ecx
	movl	$1065353216, %ecx       # imm = 0x3F800000
	cmovnel	%ecx, %eax
	jmp	.LBB0_11
.LBB0_8:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jb	.LBB0_12
# %bb.9:
	addss	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_5:
	shrl	$23, %ecx
	addl	$-127, %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_12
# %bb.6:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_11
# %bb.7:
	movl	$8388608, %edx          # imm = 0x800000
	shrl	%cl, %edx
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovgl	%edx, %esi
	addl	%eax, %esi
	movl	$-8388608, %eax         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %eax
	andl	%esi, %eax
	jmp	.LBB0_11
.LBB0_4:
	movl	$-2147483648, %eax      # imm = 0x80000000
.LBB0_11:
	movd	%eax, %xmm0
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	ceilf, .Lfunc_end0-ceilf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
