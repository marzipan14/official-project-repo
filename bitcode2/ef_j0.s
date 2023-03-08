	.text
	.file	"ef_j0.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_j0f
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_2:
	.long	2979966780              # float -4.61832705E-9
.LCPI0_3:
	.long	905285256               # float 1.82954045E-6
.LCPI0_4:
	.long	3108451630              # float -1.89979299E-4
.LCPI0_5:
	.long	1015021568              # float 0.015625
.LCPI0_6:
	.long	815810024               # float 1.16614007E-9
.LCPI0_7:
	.long	889838246               # float 5.13546524E-7
.LCPI0_8:
	.long	955594391               # float 1.16926785E-4
.LCPI0_9:
	.long	1015015236              # float 0.0156191029
.LCPI0_10:
	.long	1056964608              # float 0.5
.LCPI0_11:
	.long	3196059648              # float -0.25
.LCPI0_13:
	.long	1058041531              # float 0.564189613
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_12:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_j0f
	.p2align	4, 0x90
	.type	__ieee754_j0f,@function
__ieee754_j0f:                          # @__ieee754_j0f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movd	%xmm0, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_5
# %bb.1:
	callq	fabsf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB0_6
# %bb.2:
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	sinf
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	movaps	%xmm0, %xmm1
	movss	-16(%rbp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	addss	%xmm1, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706431, %ebx       # imm = 0x7EFFFFFF
	ja	.LBB0_12
# %bb.3:
	movss	%xmm4, -24(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	movss	%xmm1, -28(%rbp)        # 4-byte Spill
	callq	cosf
	xorps	.LCPI0_12(%rip), %xmm0
	movss	-16(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm2        # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_14
# %bb.4:
	divss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	movaps	%xmm0, %xmm4
	jmp	.LBB0_15
.LBB0_5:
	mulss	%xmm0, %xmm0
	movss	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	jmp	.LBB0_22
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$956301311, %ebx        # imm = 0x38FFFFFF
	ja	.LBB0_10
# %bb.7:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	ucomiss	.LCPI0_0(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$838860800, %ebx        # imm = 0x32000000
	jae	.LBB0_24
# %bb.9:
	movss	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	jmp	.LBB0_23
.LBB0_10:
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	movss	.LCPI0_2(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm5
	addss	.LCPI0_3(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_4(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_5(%rip), %xmm5
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm1
	addss	.LCPI0_7(%rip), %xmm1
	mulss	%xmm4, %xmm5
	mulss	%xmm4, %xmm1
	addss	.LCPI0_8(%rip), %xmm1
	mulss	%xmm4, %xmm1
	addss	.LCPI0_9(%rip), %xmm1
	mulss	%xmm4, %xmm1
	addss	.LCPI0_0(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353215, %ebx       # imm = 0x3F7FFFFF
	ja	.LBB0_13
# %bb.11:
	divss	%xmm1, %xmm5
	addss	.LCPI0_11(%rip), %xmm5
	mulss	%xmm5, %xmm4
	addss	.LCPI0_0(%rip), %xmm4
	jmp	.LBB0_23
.LBB0_12:
	movd	-12(%rbp), %xmm0        # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_16
.LBB0_13:
	mulss	.LCPI0_10(%rip), %xmm0
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	subss	%xmm0, %xmm2
	mulss	%xmm3, %xmm2
	divss	%xmm1, %xmm5
	mulss	%xmm5, %xmm4
	addss	%xmm2, %xmm4
	jmp	.LBB0_23
.LBB0_14:
	movss	-24(%rbp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	divss	%xmm4, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
.LBB0_15:
	movd	-12(%rbp), %xmm0        # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movd	%xmm0, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1090519040, %eax       # imm = 0x41000000
	jb	.LBB0_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pR8, %ecx
	movl	$pS8, %eax
	jmp	.LBB0_21
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1089936472, %eax       # imm = 0x40F71C58
	jb	.LBB0_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pR5, %ecx
	movl	$pS5, %eax
	jmp	.LBB0_21
.LBB0_20:
	cmpl	$1077336935, %eax       # imm = 0x4036DB67
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$pS3, %ecx
	movl	$pS2, %eax
	cmovaq	%rcx, %rax
	movl	$pR3, %edx
	movl	$pR2, %ecx
	cmovaq	%rdx, %rcx
.LBB0_21:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm5, %xmm2
	divss	%xmm1, %xmm2
	movss	20(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	16(%rcx), %xmm1
	mulss	%xmm2, %xmm1
	addss	12(%rcx), %xmm1
	mulss	%xmm2, %xmm1
	addss	8(%rcx), %xmm1
	mulss	%xmm2, %xmm1
	addss	4(%rcx), %xmm1
	mulss	%xmm2, %xmm1
	addss	(%rcx), %xmm1
	movss	16(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	addss	12(%rax), %xmm3
	mulss	%xmm2, %xmm3
	addss	8(%rax), %xmm3
	mulss	%xmm2, %xmm3
	addss	4(%rax), %xmm3
	mulss	%xmm2, %xmm3
	addss	(%rax), %xmm3
	mulss	%xmm2, %xmm3
	addss	%xmm5, %xmm3
	divss	%xmm3, %xmm1
	addss	%xmm5, %xmm1
	mulss	%xmm1, %xmm4
	movss	%xmm4, -24(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	qzerof
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_sqrtf
	movss	-24(%rbp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movss	-20(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm1        # 4-byte Folded Reload
	subss	%xmm1, %xmm4
	mulss	.LCPI0_13(%rip), %xmm4
.LBB0_22:
	divss	%xmm0, %xmm4
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm4, %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_24:
	movss	.LCPI0_11(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	addss	.LCPI0_0(%rip), %xmm4
	jmp	.LBB0_23
.Lfunc_end0:
	.size	__ieee754_j0f, .Lfunc_end0-__ieee754_j0f
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function qzerof
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	3187671040              # float -0.125
	.text
	.p2align	4, 0x90
	.type	qzerof,@function
qzerof:                                 # @qzerof
# %bb.0:
	movd	%xmm0, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1090519040, %eax       # imm = 0x41000000
	jb	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$qR8, %ecx
	movl	$qS8, %eax
	jmp	.LBB1_5
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1089936472, %eax       # imm = 0x40F71C58
	jb	.LBB1_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$qR5, %ecx
	movl	$qS5, %eax
	jmp	.LBB1_5
.LBB1_4:
	cmpl	$1077336935, %eax       # imm = 0x4036DB67
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$qS3, %ecx
	movl	$qS2, %eax
	cmovaq	%rcx, %rax
	movl	$qR3, %edx
	movl	$qR2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_5:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	divss	%xmm1, %xmm3
	movss	20(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	16(%rcx), %xmm1
	mulss	%xmm3, %xmm1
	addss	12(%rcx), %xmm1
	mulss	%xmm3, %xmm1
	addss	8(%rcx), %xmm1
	mulss	%xmm3, %xmm1
	addss	4(%rcx), %xmm1
	mulss	%xmm3, %xmm1
	addss	(%rcx), %xmm1
	movss	20(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	16(%rax), %xmm4
	mulss	%xmm3, %xmm4
	addss	12(%rax), %xmm4
	mulss	%xmm3, %xmm4
	addss	8(%rax), %xmm4
	mulss	%xmm3, %xmm4
	addss	4(%rax), %xmm4
	mulss	%xmm3, %xmm4
	addss	(%rax), %xmm4
	mulss	%xmm3, %xmm4
	addss	%xmm2, %xmm4
	divss	%xmm4, %xmm1
	addss	.LCPI1_1(%rip), %xmm1
	divss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end1:
	.size	qzerof, .Lfunc_end1-qzerof
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_y0f
.LCPI2_0:
	.long	1065353216              # float 1
.LCPI2_1:
	.long	4286578688              # float -Inf
.LCPI2_2:
	.long	2143289344              # float NaN
.LCPI2_3:
	.long	2922324459              # float -3.98205184E-11
.LCPI2_4:
	.long	849871546               # float 1.9559014E-8
.LCPI2_5:
	.long	3061839164              # float -3.81407062E-6
.LCPI2_6:
	.long	968239721               # float 3.47453431E-4
.LCPI2_7:
	.long	3160565574              # float -0.0138185676
.LCPI2_8:
	.long	1043654669              # float 0.176666453
.LCPI2_9:
	.long	3180799669              # float -0.0738042966
.LCPI2_10:
	.long	804421826               # float 4.41110315E-10
.LCPI2_11:
	.long	881533292               # float 2.59150852E-7
.LCPI2_12:
	.long	949970400               # float 7.60068651E-5
.LCPI2_13:
	.long	1011913605              # float 0.0127304839
.LCPI2_14:
	.long	1059256707              # float 0.636619746
.LCPI2_16:
	.long	1058041531              # float 0.564189613
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_15:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_y0f
	.p2align	4, 0x90
	.type	__ieee754_y0f,@function
__ieee754_y0f:                          # @__ieee754_y0f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movd	%xmm0, %eax
	movl	%eax, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB2_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB2_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB2_18
# %bb.7:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	sinf
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	movaps	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm3
	subss	%xmm1, %xmm3
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706432, %ebx       # imm = 0x7F000000
	jae	.LBB2_8
# %bb.9:
	movss	%xmm3, -24(%rbp)        # 4-byte Spill
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	movss	%xmm1, -28(%rbp)        # 4-byte Spill
	callq	cosf
	xorps	.LCPI2_15(%rip), %xmm0
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	mulss	-28(%rbp), %xmm2        # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_11
# %bb.10:
	movss	-24(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	divss	%xmm3, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	jmp	.LBB2_12
.LBB2_1:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	jmp	.LBB2_21
.LBB2_3:
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB2_21
.LBB2_5:
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB2_21
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$838860800, %ebx        # imm = 0x32000000
	ja	.LBB2_20
# %bb.19:
	callq	__ieee754_logf
	mulss	.LCPI2_14(%rip), %xmm0
	addss	.LCPI2_9(%rip), %xmm0
	jmp	.LBB2_21
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB2_13
.LBB2_20:
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movss	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI2_4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_5(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_6(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_7(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_8(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_9(%rip), %xmm1
	movaps	%xmm1, %xmm3
	movss	.LCPI2_10(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI2_11(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_12(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_13(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI2_0(%rip), %xmm1
	divss	%xmm1, %xmm3
	movss	%xmm3, -12(%rbp)        # 4-byte Spill
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	__ieee754_j0f
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_logf
	mulss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	mulss	.LCPI2_14(%rip), %xmm0
	addss	-12(%rbp), %xmm0        # 4-byte Folded Reload
	jmp	.LBB2_21
.LBB2_11:
	divss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	movaps	%xmm0, %xmm3
.LBB2_12:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1090519040, %ebx       # imm = 0x41000000
	jb	.LBB2_14
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pR8, %ecx
	movl	$pS8, %eax
.LBB2_17:
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movss	.LCPI2_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm1
	divss	%xmm2, %xmm1
	movss	20(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	16(%rcx), %xmm2
	mulss	%xmm1, %xmm2
	addss	12(%rcx), %xmm2
	mulss	%xmm1, %xmm2
	addss	8(%rcx), %xmm2
	mulss	%xmm1, %xmm2
	addss	4(%rcx), %xmm2
	mulss	%xmm1, %xmm2
	addss	(%rcx), %xmm2
	movaps	%xmm2, %xmm5
	movss	16(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	12(%rax), %xmm2
	mulss	%xmm1, %xmm2
	addss	8(%rax), %xmm2
	mulss	%xmm1, %xmm2
	addss	4(%rax), %xmm2
	mulss	%xmm1, %xmm2
	addss	(%rax), %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm4, %xmm2
	divss	%xmm2, %xmm5
	addss	%xmm4, %xmm5
	mulss	%xmm3, %xmm5
	movss	%xmm5, -12(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	qzerof
	mulss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	addss	-12(%rbp), %xmm0        # 4-byte Folded Reload
	mulss	.LCPI2_16(%rip), %xmm0
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_sqrtf
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1089936472, %ebx       # imm = 0x40F71C58
	jb	.LBB2_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pR5, %ecx
	movl	$pS5, %eax
	jmp	.LBB2_17
.LBB2_16:
	cmpl	$1077336935, %ebx       # imm = 0x4036DB67
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$pS3, %ecx
	movl	$pS2, %eax
	cmovaq	%rcx, %rax
	movl	$pR3, %edx
	movl	$pR2, %ecx
	cmovaq	%rdx, %rcx
	jmp	.LBB2_17
.Lfunc_end2:
	.size	__ieee754_y0f, .Lfunc_end2-__ieee754_y0f
                                        # -- End function
	.type	pR8,@object             # @pR8
	.section	.rodata,"a",@progbits
	.p2align	4
pR8:
	.long	0                       # float 0
	.long	3180331008              # float -0.0703125
	.long	3238088326              # float -8.08167076
	.long	3279980564              # float -257.06311
	.long	3306902390              # float -2485.21631
	.long	3315869786              # float -5253.04395
	.size	pR8, 24

	.type	pS8,@object             # @pS8
	.p2align	4
pS8:
	.long	1122570648              # float 116.534363
	.long	1164942315              # float 3833.74487
	.long	1193186779              # float 40597.8555
	.long	1206126716              # float 116752.969
	.long	1194986426              # float 47627.7266
	.size	pS8, 20

	.type	pR5,@object             # @pR5
	.p2align	4
pR5:
	.long	2907227530              # float -1.14125463E-11
	.long	3180331007              # float -0.0703124925
	.long	3229948808              # float -4.15961075
	.long	3263650171              # float -67.6747665
	.long	3282410907              # float -331.231293
	.long	3282909049              # float -346.43338
	.size	pR5, 24

	.type	pS5,@object             # @pS5
	.p2align	4
pS5:
	.long	1114833928              # float 60.7539368
	.long	1149462547              # float 1051.25232
	.long	1169872836              # float 5978.9707
	.long	1175872968              # float 9625.44531
	.long	1159094510              # float 2406.05811
	.size	pS5, 20

	.type	pR3,@object             # @pR3
	.p2align	4
pR3:
	.long	2972649499              # float -2.54704591E-9
	.long	3180330936              # float -0.0703119636
	.long	3222941077              # float -2.40903211
	.long	3249519186              # float -21.9659767
	.long	3261616402              # float -58.0791702
	.long	3254490469              # float -31.4479465
	.size	pR3, 24

	.type	pS3,@object             # @pS3
	.p2align	4
pS3:
	.long	1108307092              # float 35.8560333
	.long	1135919562              # float 361.513977
	.long	1150628723              # float 1193.60779
	.long	1150091238              # float 1127.99683
	.long	1127060664              # float 173.580933
	.size	pS3, 20

	.type	pR2,@object             # @pR2
	.p2align	4
pR2:
	.long	3015612599              # float -8.87534312E-8
	.long	3180329746              # float -0.0703030974
	.long	3216617932              # float -1.45073843
	.long	3237238687              # float -7.63569593
	.long	3241350966              # float -11.1931667
	.long	3226399757              # float -3.23364568
	.size	pR2, 24

	.type	pS2,@object             # @pS2
	.p2align	4
pS2:
	.long	1102168877              # float 22.2203007
	.long	1124611312              # float 136.206787
	.long	1132936242              # float 270.470276
	.long	1125769242              # float 153.875397
	.long	1097500058              # float 14.6576176
	.size	pS2, 20

	.type	qR8,@object             # @qR8
	.p2align	4
qR8:
	.long	0                       # float 0
	.long	1033240576              # float 0.0732421875
	.long	1094470291              # float 11.7682066
	.long	1141599001              # float 557.673401
	.long	1175088330              # float 8859.19726
	.long	1192269472              # float 37014.625
	.size	qR8, 24

	.type	qS8,@object             # @qS8
	.p2align	4
qS8:
	.long	1126418090              # float 163.776031
	.long	1174213314              # float 8098.34472
	.long	1208693395              # float 142538.297
	.long	1229201108              # float 803309.25
	.long	1229796185              # float 840501.563
	.long	3366447977              # float -343899.281
	.size	qS8, 24

	.type	qR5,@object             # @qR5
	.p2align	4
qR5:
	.long	765586553               # float 1.84085958E-11
	.long	1033240575              # float 0.07324218
	.long	1085980038              # float 5.83563519
	.long	1124539536              # float 135.111572
	.long	1149265869              # float 1027.24377
	.long	1157152587              # float 1989.97791
	.size	qR5, 24

	.type	qS5,@object             # @qS5
	.p2align	4
qS5:
	.long	1118145952              # float 82.7766113
	.long	1157750023              # float 2077.81421
	.long	1184054932              # float 18847.2891
	.long	1197322013              # float 56751.1133
	.long	1192003777              # float 35976.7539
	.long	3316077246              # float -5354.34277
	.size	qS5, 24

	.type	qR3,@object             # @qR3
	.p2align	4
qR3:
	.long	831940635               # float 4.37740999E-9
	.long	1033240432              # float 0.0732411146
	.long	1079379939              # float 3.34423137
	.long	1110080709              # float 42.6218452
	.long	1126878943              # float 170.80809
	.long	1126611940              # float 166.733948
	.size	qR3, 24

	.type	qS3,@object             # @qS3
	.p2align	4
qS3:
	.long	1111689494              # float 48.758873
	.long	1144089628              # float 709.689208
	.long	1164411487              # float 3704.14819
	.long	1170858855              # float 6460.42529
	.long	1159546199              # float 2516.33374
	.long	3272949593              # float -149.247452
	.size	qS3, 24

	.type	qR2,@object             # @qR2
	.p2align	4
qR2:
	.long	874613211               # float 1.5044445E-7
	.long	1033238058              # float 0.0732234269
	.long	1073726655              # float 1.99819171
	.long	1097330173              # float 14.4956026
	.long	1107121265              # float 31.6662312
	.long	1099040140              # float 16.2527084
	.size	qR2, 24

	.type	qS2,@object             # @qS2
	.p2align	4
qS2:
	.long	1106439352              # float 30.3655853
	.long	1132899471              # float 269.348114
	.long	1146303017              # float 844.783752
	.long	1146928101              # float 882.935852
	.long	1129622168              # float 212.666382
	.long	3232363352              # float -5.31095505
	.size	qS2, 24

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
