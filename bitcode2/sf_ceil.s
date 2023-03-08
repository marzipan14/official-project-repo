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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1258291199, %ecx       # imm = 0x4AFFFFFF
	ja	.LBB0_6
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353215, %ecx       # imm = 0x3F7FFFFF
	ja	.LBB0_8
# %bb.2:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_13
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_15
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_13
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1065353216, %eax       # imm = 0x3F800000
	jmp	.LBB0_13
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jb	.LBB0_14
# %bb.7:
	addss	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_8:
	shrl	$23, %ecx
	addl	$-127, %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_14
# %bb.9:
	addss	.LCPI0_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_13
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_12
# %bb.11:
	movl	$8388608, %edx          # imm = 0x800000
	shrl	%cl, %edx
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$-8388608, %edx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	andl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, %eax      # imm = 0x80000000
.LBB0_13:
	movd	%eax, %xmm0
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
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
