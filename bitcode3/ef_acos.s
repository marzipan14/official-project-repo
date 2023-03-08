	.text
	.file	"ef_acos.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_acosf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1056964608              # float 0.5
.LCPI0_2:
	.long	4294963200              # float NaN
.LCPI0_3:
	.long	940699400               # float 3.47933092E-5
.LCPI0_4:
	.long	978288388               # float 7.91535014E-4
.LCPI0_5:
	.long	3173257542              # float -0.0400555357
.LCPI0_6:
	.long	1045301928              # float 0.201212525
.LCPI0_7:
	.long	3198595216              # float -0.325565815
.LCPI0_8:
	.long	1042983595              # float 0.166666672
.LCPI0_9:
	.long	1033750062              # float 0.077038154
.LCPI0_10:
	.long	3207607137              # float -0.688283979
.LCPI0_11:
	.long	1073829677              # float 2.02094579
.LCPI0_12:
	.long	3222917433              # float -2.40339494
.LCPI0_13:
	.long	3013747048              # float -7.54978942E-8
.LCPI0_14:
	.long	1078530010              # float 3.1415925
.LCPI0_15:
	.long	1070141403              # float 1.57079637
.LCPI0_16:
	.long	866263400               # float 7.54978942E-8
.LCPI0_17:
	.long	1070141402              # float 1.57079625
.LCPI0_18:
	.long	1078530011              # float 3.14159274
	.text
	.globl	__ieee754_acosf
	.p2align	4, 0x90
	.type	__ieee754_acosf,@function
__ieee754_acosf:                        # @__ieee754_acosf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$1065353216, %ecx       # imm = 0x3F800000
	jne	.LBB0_3
# %bb.1:
	xorps	%xmm0, %xmm0
	testl	%eax, %eax
	jg	.LBB0_12
# %bb.2:
	movss	.LCPI0_18(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_12
.LBB0_3:
	cmpl	$1065353217, %ecx       # imm = 0x3F800001
	jb	.LBB0_5
# %bb.4:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_12
.LBB0_5:
	cmpl	$1056964607, %ecx       # imm = 0x3EFFFFFF
	ja	.LBB0_9
# %bb.6:
	cmpl	$587202561, %ecx        # imm = 0x23000001
	jae	.LBB0_8
# %bb.7:
	movss	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_12
.LBB0_9:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	testl	%eax, %eax
	js	.LBB0_10
# %bb.11:
	subss	%xmm0, %xmm1
	mulss	.LCPI0_1(%rip), %xmm1
	movss	%xmm1, -4(%rbp)         # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	__ieee754_sqrtf
	movaps	%xmm0, %xmm1
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-4(%rbp), %xmm5         # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm0
	addss	.LCPI0_4(%rip), %xmm0
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm0
	addss	.LCPI0_5(%rip), %xmm0
	andps	%xmm1, %xmm2
	movaps	%xmm2, %xmm4
	mulss	%xmm5, %xmm0
	addss	.LCPI0_6(%rip), %xmm0
	mulss	%xmm2, %xmm4
	movaps	%xmm5, %xmm3
	mulss	%xmm5, %xmm0
	addss	.LCPI0_7(%rip), %xmm0
	subss	%xmm4, %xmm3
	mulss	%xmm5, %xmm0
	addss	.LCPI0_8(%rip), %xmm0
	movss	.LCPI0_9(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm4
	addss	.LCPI0_10(%rip), %xmm4
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm4
	addss	.LCPI0_11(%rip), %xmm4
	mulss	%xmm5, %xmm4
	addss	.LCPI0_12(%rip), %xmm4
	mulss	%xmm5, %xmm4
	addss	.LCPI0_0(%rip), %xmm4
	divss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	addss	%xmm2, %xmm1
	divss	%xmm1, %xmm3
	addss	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm0, %xmm0
	jmp	.LBB0_12
.LBB0_8:
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI0_4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_5(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_6(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_7(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_8(%rip), %xmm1
	movss	.LCPI0_9(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	addss	.LCPI0_10(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_11(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_12(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_0(%rip), %xmm3
	mulss	%xmm2, %xmm1
	divss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI0_16(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm2
	subss	%xmm0, %xmm2
	addss	.LCPI0_17(%rip), %xmm2
	movaps	%xmm2, %xmm0
	jmp	.LBB0_12
.LBB0_10:
	addss	%xmm1, %xmm0
	mulss	.LCPI0_1(%rip), %xmm0
	movss	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	.LCPI0_4(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_5(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_6(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_8(%rip), %xmm2
	movaps	%xmm2, %xmm3
	movss	.LCPI0_9(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	.LCPI0_10(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_11(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_12(%rip), %xmm2
	mulss	%xmm0, %xmm3
	mulss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm3
	movss	%xmm3, -4(%rbp)         # 4-byte Spill
	callq	__ieee754_sqrtf
	movss	-4(%rbp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_13(%rip), %xmm1
	addss	%xmm0, %xmm1
	addss	%xmm1, %xmm1
	movss	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
.LBB0_12:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_acosf, .Lfunc_end0-__ieee754_acosf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
