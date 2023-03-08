	.text
	.file	"ef_j1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_j1f
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_2:
	.long	861231058               # float 4.96727992E-8
.LCPI0_3:
	.long	3079024182              # float -1.59955634E-5
.LCPI0_4:
	.long	985165053               # float 0.0014070567
.LCPI0_5:
	.long	3179282432              # float -0.0625
.LCPI0_6:
	.long	760829566               # float 1.2354227E-11
.LCPI0_7:
	.long	833446982               # float 5.04636244E-9
.LCPI0_8:
	.long	899547074               # float 1.17718469E-6
.LCPI0_9:
	.long	960690870               # float 1.85946788E-4
.LCPI0_10:
	.long	1016916057              # float 0.0191537607
.LCPI0_11:
	.long	1056964608              # float 0.5
.LCPI0_13:
	.long	1052770304              # float 0.375
.LCPI0_14:
	.long	1058041531              # float 0.564189613
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_12:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_j1f
	.p2align	4, 0x90
	.type	__ieee754_j1f,@function
__ieee754_j1f:                          # @__ieee754_j1f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	movaps	%xmm0, -48(%rbp)        # 16-byte Spill
	callq	fabsf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB0_18
# %bb.3:
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	callq	sinf
	movaps	%xmm0, -64(%rbp)        # 16-byte Spill
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	movaps	.LCPI0_12(%rip), %xmm6  # xmm6 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	movaps	-64(%rbp), %xmm4        # 16-byte Reload
	xorps	%xmm4, %xmm6
	subss	%xmm0, %xmm6
	subss	%xmm0, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706431, %ebx       # imm = 0x7EFFFFFF
	ja	.LBB0_8
# %bb.4:
	movaps	%xmm6, -80(%rbp)        # 16-byte Spill
	movaps	%xmm4, -48(%rbp)        # 16-byte Spill
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	callq	cosf
	movaps	-64(%rbp), %xmm2        # 16-byte Reload
	mulss	-24(%rbp), %xmm2        # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_6
# %bb.5:
	movaps	-80(%rbp), %xmm6        # 16-byte Reload
	divss	%xmm6, %xmm0
	movaps	%xmm0, %xmm4
	jmp	.LBB0_7
.LBB0_1:
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm3
	jmp	.LBB0_22
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$838860799, %ebx        # imm = 0x31FFFFFF
	movaps	-48(%rbp), %xmm3        # 16-byte Reload
	ja	.LBB0_21
# %bb.19:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm3, %xmm0
	ucomiss	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_21
# %bb.20:
	mulss	.LCPI0_11(%rip), %xmm3
	jmp	.LBB0_22
.LBB0_21:
	movaps	%xmm3, %xmm1
	mulss	%xmm3, %xmm1
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	addss	.LCPI0_3(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	.LCPI0_4(%rip), %xmm0
	mulss	%xmm1, %xmm0
	addss	.LCPI0_5(%rip), %xmm0
	movss	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_8(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_9(%rip), %xmm2
	mulss	%xmm1, %xmm0
	mulss	%xmm1, %xmm2
	addss	.LCPI0_10(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_0(%rip), %xmm2
	mulss	%xmm3, %xmm0
	divss	%xmm2, %xmm0
	mulss	.LCPI0_11(%rip), %xmm3
	addss	%xmm0, %xmm3
	jmp	.LBB0_22
.LBB0_6:
	movaps	-48(%rbp), %xmm4        # 16-byte Reload
	divss	%xmm4, %xmm0
	movaps	%xmm0, %xmm6
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movd	-20(%rbp), %xmm0        # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1090519040, %ecx       # imm = 0x41000000
	jb	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pr8, %edx
	movl	$ps8, %ecx
	jmp	.LBB0_13
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1089936472, %ecx       # imm = 0x40F71C58
	jb	.LBB0_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pr5, %edx
	movl	$ps5, %ecx
	jmp	.LBB0_13
.LBB0_12:
	cmpl	$1077336935, %ecx       # imm = 0x4036DB67
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$ps3, %edx
	movl	$ps2, %ecx
	cmovaq	%rdx, %rcx
	movl	$pr3, %esi
	movl	$pr2, %edx
	cmovaq	%rsi, %rdx
.LBB0_13:
	movdqa	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm1
	divss	%xmm3, %xmm1
	movss	20(%rdx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	addss	16(%rdx), %xmm5
	mulss	%xmm1, %xmm5
	addss	12(%rdx), %xmm5
	mulss	%xmm1, %xmm5
	addss	8(%rdx), %xmm5
	mulss	%xmm1, %xmm5
	addss	4(%rdx), %xmm5
	mulss	%xmm1, %xmm5
	addss	(%rdx), %xmm5
	movss	16(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	12(%rcx), %xmm3
	mulss	%xmm1, %xmm3
	addss	8(%rcx), %xmm3
	mulss	%xmm1, %xmm3
	addss	4(%rcx), %xmm3
	mulss	%xmm1, %xmm3
	addss	(%rcx), %xmm3
	mulss	%xmm1, %xmm3
	addss	%xmm2, %xmm3
	divss	%xmm3, %xmm5
	addss	%xmm2, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	andl	$2145386496, %eax       # imm = 0x7FE00000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075838975, %eax       # imm = 0x401FFFFF
	jbe	.LBB0_15
# %bb.14:
	movl	$qr8, %ecx
	movl	$qs8, %eax
	jmp	.LBB0_16
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$qr2, %ecx
	movl	$qs2, %eax
.LBB0_16:
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
	movss	20(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	16(%rax), %xmm3
	mulss	%xmm1, %xmm3
	addss	12(%rax), %xmm3
	mulss	%xmm1, %xmm3
	addss	8(%rax), %xmm3
	mulss	%xmm1, %xmm3
	addss	4(%rax), %xmm3
	mulss	%xmm1, %xmm3
	addss	(%rax), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_0(%rip), %xmm3
	divss	%xmm3, %xmm2
	addss	.LCPI0_13(%rip), %xmm2
	divss	%xmm0, %xmm2
	mulss	%xmm2, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	mulss	%xmm5, %xmm4
	subss	%xmm6, %xmm4
	mulss	.LCPI0_14(%rip), %xmm4
	movaps	%xmm4, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_sqrtf
	movaps	-48(%rbp), %xmm3        # 16-byte Reload
	divss	%xmm0, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB0_22
# %bb.17:
	xorps	.LCPI0_12(%rip), %xmm3
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm3, %xmm0
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_j1f, .Lfunc_end0-__ieee754_j1f
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_y1f
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	4286578688              # float -Inf
.LCPI1_2:
	.long	2143289344              # float NaN
.LCPI1_3:
	.long	3016056835              # float -9.19099178E-8
.LCPI1_4:
	.long	935680028               # float 2.35252592E-5
.LCPI1_5:
	.long	3136991018              # float -0.00191256893
.LCPI1_6:
	.long	1028562492              # float 0.0504438728
.LCPI1_7:
	.long	3192439601              # float -0.196057096
.LCPI1_8:
	.long	764576207               # float 1.66559249E-11
.LCPI1_9:
	.long	836106475               # float 6.22741458E-9
.LCPI1_10:
	.long	901120724               # float 1.35608798E-6
.LCPI1_11:
	.long	961832011               # float 2.02552576E-4
.LCPI1_12:
	.long	1017325674              # float 0.0199167319
.LCPI1_13:
	.long	1059256707              # float 0.636619746
.LCPI1_14:
	.long	3206740355              # float -0.636619746
.LCPI1_16:
	.long	1052770304              # float 0.375
.LCPI1_17:
	.long	1058041531              # float 0.564189613
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_15:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_y1f
	.p2align	4, 0x90
	.type	__ieee754_y1f,@function
__ieee754_y1f:                          # @__ieee754_y1f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB1_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB1_23
# %bb.7:
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	callq	sinf
	movaps	%xmm0, -64(%rbp)        # 16-byte Spill
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	movaps	.LCPI1_15(%rip), %xmm6  # xmm6 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	-64(%rbp), %xmm6        # 16-byte Folded Reload
	subss	%xmm0, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706432, %ebx       # imm = 0x7F000000
	jae	.LBB1_8
# %bb.9:
	movaps	%xmm0, %xmm1
	movaps	%xmm6, -48(%rbp)        # 16-byte Spill
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm0
	movss	%xmm1, -24(%rbp)        # 4-byte Spill
	callq	cosf
	movss	-24(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	mulss	%xmm3, %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB1_11
# %bb.10:
	movaps	-48(%rbp), %xmm6        # 16-byte Reload
	divss	%xmm6, %xmm0
	jmp	.LBB1_12
.LBB1_1:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movss	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	jmp	.LBB1_26
.LBB1_3:
	movss	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB1_26
.LBB1_5:
	movss	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB1_26
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$612368384, %ebx        # imm = 0x24800000
	ja	.LBB1_25
# %bb.24:
	movss	.LCPI1_14(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm2
	jmp	.LBB1_26
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movss	-20(%rbp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	jmp	.LBB1_22
.LBB1_25:
	movaps	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	movss	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI1_4(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_5(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_6(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_7(%rip), %xmm1
	movaps	%xmm1, %xmm3
	movss	.LCPI1_8(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI1_9(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_10(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_11(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_12(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI1_0(%rip), %xmm1
	divss	%xmm1, %xmm3
	mulss	%xmm0, %xmm3
	movss	%xmm3, -64(%rbp)        # 4-byte Spill
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	callq	__ieee754_j1f
	movss	%xmm0, -48(%rbp)        # 4-byte Spill
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_logf
	movaps	%xmm0, %xmm2
	mulss	-48(%rbp), %xmm2        # 4-byte Folded Reload
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	subss	%xmm0, %xmm2
	mulss	.LCPI1_13(%rip), %xmm2
	addss	-64(%rbp), %xmm2        # 4-byte Folded Reload
	jmp	.LBB1_26
.LBB1_11:
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	subss	%xmm3, %xmm1
	movaps	%xmm0, %xmm6
	divss	%xmm1, %xmm6
	movaps	%xmm1, %xmm0
.LBB1_12:
	movss	-20(%rbp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1207959552, %ebx       # imm = 0x48000000
	ja	.LBB1_22
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1090519040, %ebx       # imm = 0x41000000
	jb	.LBB1_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pr8, %ecx
	movl	$ps8, %eax
	jmp	.LBB1_18
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1089936472, %ebx       # imm = 0x40F71C58
	jb	.LBB1_17
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$pr5, %ecx
	movl	$ps5, %eax
	jmp	.LBB1_18
.LBB1_17:
	cmpl	$1077336935, %ebx       # imm = 0x4036DB67
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$ps3, %ecx
	movl	$ps2, %eax
	cmovaq	%rcx, %rax
	movl	$pr3, %edx
	movl	$pr2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_18:
	movaps	%xmm5, %xmm1
	mulss	%xmm5, %xmm1
	movss	.LCPI1_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm2
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
	movss	16(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	12(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	8(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	4(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	%xmm3, %xmm4
	divss	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	andl	$2145386496, %r14d      # imm = 0x7FE00000
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075838975, %r14d      # imm = 0x401FFFFF
	jbe	.LBB1_20
# %bb.19:
	movl	$qr8, %ecx
	movl	$qs8, %eax
	jmp	.LBB1_21
.LBB1_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$qr2, %ecx
	movl	$qs2, %eax
.LBB1_21:
	movss	20(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	addss	16(%rcx), %xmm3
	mulss	%xmm2, %xmm3
	addss	12(%rcx), %xmm3
	mulss	%xmm2, %xmm3
	addss	8(%rcx), %xmm3
	mulss	%xmm2, %xmm3
	addss	4(%rcx), %xmm3
	mulss	%xmm2, %xmm3
	addss	(%rcx), %xmm3
	movss	20(%rax), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	16(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	12(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	8(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	4(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	(%rax), %xmm4
	mulss	%xmm2, %xmm4
	addss	.LCPI1_0(%rip), %xmm4
	divss	%xmm4, %xmm3
	addss	.LCPI1_16(%rip), %xmm3
	divss	%xmm5, %xmm3
	mulss	%xmm3, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulss	%xmm1, %xmm6
	addss	%xmm0, %xmm6
.LBB1_22:
	mulss	.LCPI1_17(%rip), %xmm6
	movaps	%xmm6, -48(%rbp)        # 16-byte Spill
	movaps	%xmm5, %xmm0
	callq	__ieee754_sqrtf
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	divss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ieee754_y1f, .Lfunc_end1-__ieee754_y1f
                                        # -- End function
	.type	pr8,@object             # @pr8
	.section	.rodata,"a",@progbits
	.p2align	4
pr8:
	.long	0                       # float 0
	.long	1039138816              # float 0.1171875
	.long	1096013034              # float 13.239481
	.long	1137575587              # float 412.051849
	.long	1165110253              # float 3874.74536
	.long	1173836758              # float 7914.47949
	.size	pr8, 24

	.type	ps8,@object             # @ps8
	.p2align	4
ps8:
	.long	1122265644              # float 114.207367
	.long	1164193509              # float 3650.93091
	.long	1192254517              # float 36956.207
	.long	1203675494              # float 97602.7968
	.long	1190176907              # float 30804.2715
	.size	ps8, 20

	.type	pr5,@object             # @pr5
	.p2align	4
pr5:
	.long	761803583               # float 1.31990521E-11
	.long	1039138815              # float 0.117187493
	.long	1088008227              # float 6.80275106
	.long	1121492426              # float 108.308182
	.long	1140943031              # float 517.636169
	.long	1141124550              # float 528.71521
	.size	pr5, 24

	.type	ps5,@object             # @ps5
	.p2align	4
ps5:
	.long	1114447701              # float 59.2805977
	.long	1148705201              # float 991.401428
	.long	1168591395              # float 5353.26709
	.long	1173693830              # float 7844.69042
	.long	1153171840              # float 1504.04688
	.size	ps5, 20

	.type	pr3,@object             # @pr3
	.p2align	4
pr3:
	.long	827318541               # float 3.02503911E-9
	.long	1039138731              # float 0.117186867
	.long	1081849319              # float 3.93297744
	.long	1108113989              # float 35.1194038
	.long	1119231018              # float 91.0550079
	.long	1111637116              # float 48.5590668
	.size	pr3, 24

	.type	ps3,@object             # @ps3
	.p2align	4
ps3:
	.long	1108027981              # float 34.7913094
	.long	1135108504              # float 336.762451
	.long	1149426659              # float 1046.87146
	.long	1147057133              # float 890.81134
	.long	1120899948              # float 103.787933
	.size	ps3, 20

	.type	pr2,@object             # @pr2
	.p2align	4
pr2:
	.long	870796968               # float 1.07710832E-7
	.long	1039137302              # float 0.11717622
	.long	1075287488              # float 2.36851501
	.long	1094967740              # float 12.2426109
	.long	1099795777              # float 17.6939716
	.long	1084381773              # float 5.07352304
	.size	pr2, 24

	.type	ps2,@object             # @ps2
	.p2align	4
ps2:
	.long	1101757932              # float 21.4364853
	.long	1123718297              # float 125.29023
	.long	1130907335              # float 232.276474
	.long	1122720727              # float 117.679375
	.long	1090901392              # float 8.36463928
	.size	ps2, 20

	.type	qr8,@object             # @qr8
	.p2align	4
qr8:
	.long	0                       # float 0
	.long	3184656384              # float -0.102539063
	.long	3246533773              # float -16.2717533
	.long	3292391043              # float -759.601745
	.long	3325634362              # float -11849.8066
	.long	3342677635              # float -48438.5117
	.size	qr8, 24

	.type	qs8,@object             # @qs8
	.p2align	4
qs8:
	.long	1126262071              # float 161.39537
	.long	1173654295              # float 7825.38623
	.long	1208138966              # float 133875.344
	.long	1227862684              # float 719657.75
	.long	1227013780              # float 666601.25
	.long	3364866888              # float -294490.25
	.size	qs8, 24

	.type	qr2,@object             # @qr2
	.p2align	4
qr2:
	.long	3024062770              # float -1.78381725E-7
	.long	3184653429              # float -0.102517046
	.long	3224380451              # float -2.75220561
	.long	3248312086              # float -19.6636162
	.long	3257486623              # float -42.3253136
	.long	3249207730              # float -21.3719215
	.size	qr2, 24

	.type	qs2,@object             # @qs2
	.p2align	4
qs2:
	.long	1106003028              # float 29.5333633
	.long	1132264263              # float 252.981552
	.long	1144873006              # float 757.502808
	.long	1144576298              # float 739.393188
	.long	1125905138              # float 155.949005
	.long	3231626295              # float -4.95949888
	.size	qs2, 24

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
