	.text
	.file	"ef_asin.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_asinf
.LCPI0_0:
	.long	940699400               # float 3.47933092E-5
.LCPI0_1:
	.long	978288388               # float 7.91535014E-4
.LCPI0_2:
	.long	3173257542              # float -0.0400555357
.LCPI0_3:
	.long	1045301928              # float 0.201212525
.LCPI0_4:
	.long	3198595216              # float -0.325565815
.LCPI0_5:
	.long	1042983595              # float 0.166666672
.LCPI0_6:
	.long	1033750062              # float 0.077038154
.LCPI0_7:
	.long	3207607137              # float -0.688283979
.LCPI0_8:
	.long	1073829677              # float 2.02094579
.LCPI0_9:
	.long	3222917433              # float -2.40339494
.LCPI0_10:
	.long	1065353216              # float 1
.LCPI0_11:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_12:
	.long	1056964608              # float 0.5
.LCPI0_13:
	.long	4294963200              # float NaN
.LCPI0_14:
	.long	3007036718              # float -4.37113883E-8
.LCPI0_15:
	.long	1061752795              # float 0.785398185
.LCPI0_16:
	.long	859553070               # float 4.37113883E-8
.LCPI0_17:
	.long	1070141403              # float 1.57079637
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_18:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_asinf
	.p2align	4, 0x90
	.type	__ieee754_asinf,@function
__ieee754_asinf:                        # @__ieee754_asinf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	jne	.LBB0_2
# %bb.1:
	movss	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_14(%rip), %xmm0
.LBB0_12:
	addss	%xmm1, %xmm0
	jmp	.LBB0_13
.LBB0_2:
	cmpl	$1065353217, %ebx       # imm = 0x3F800001
	jb	.LBB0_4
# %bb.3:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_13
.LBB0_4:
	cmpl	$1056964607, %ebx       # imm = 0x3EFFFFFF
	ja	.LBB0_7
# %bb.5:
	cmpl	$838860799, %ebx        # imm = 0x31FFFFFF
	ja	.LBB0_11
# %bb.6:
	movss	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	ucomiss	.LCPI0_10(%rip), %xmm1
	ja	.LBB0_13
.LBB0_7:
	callq	fabsf
	movss	.LCPI0_10(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	mulss	.LCPI0_12(%rip), %xmm2
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	.LCPI0_1(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_2(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_3(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_4(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_5(%rip), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movss	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	.LCPI0_7(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_8(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	.LCPI0_9(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movss	%xmm2, -28(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm0
	callq	__ieee754_sqrtf
	movaps	%xmm0, %xmm1
	cmpl	$1064933786, %ebx       # imm = 0x3F79999A
	jb	.LBB0_9
# %bb.8:
	movss	-24(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	-20(%rbp), %xmm2        # 4-byte Folded Reload
	mulss	%xmm1, %xmm2
	addss	%xmm1, %xmm2
	addss	%xmm2, %xmm2
	addss	.LCPI0_16(%rip), %xmm2
	movss	.LCPI0_17(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	testl	%r14d, %r14d
	jle	.LBB0_10
	jmp	.LBB0_13
.LBB0_9:
	movss	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	andps	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	mulss	%xmm2, %xmm0
	movss	-28(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm3
	movaps	%xmm1, %xmm0
	addss	%xmm2, %xmm0
	divss	%xmm0, %xmm3
	movss	-24(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	addss	%xmm1, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm3, %xmm3
	movss	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm0
	subss	%xmm0, %xmm1
	addss	%xmm2, %xmm2
	movss	.LCPI0_15(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm0
	subss	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	addss	%xmm3, %xmm0
	testl	%r14d, %r14d
	jg	.LBB0_13
.LBB0_10:
	xorps	.LCPI0_18(%rip), %xmm0
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_11:
	movdqa	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI0_1(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_2(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_3(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_5(%rip), %xmm1
	movss	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	addss	.LCPI0_7(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_8(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_9(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_10(%rip), %xmm3
	mulss	%xmm2, %xmm1
	divss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	jmp	.LBB0_12
.Lfunc_end0:
	.size	__ieee754_asinf, .Lfunc_end0-__ieee754_asinf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
