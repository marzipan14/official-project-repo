	.text
	.file	"erf_lgamma.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_lgammaf_r
.LCPI0_0:
	.long	2139095040              # float +Inf
.LCPI0_2:
	.long	1258291200              # float 8388608
.LCPI0_3:
	.long	3204448256              # float -0.5
.LCPI0_4:
	.long	1082130432              # float 4
.LCPI0_5:
	.long	3217031168              # float -1.5
.LCPI0_6:
	.long	1078530011              # float 3.14159274
.LCPI0_7:
	.long	1065353216              # float 1
.LCPI0_8:
	.long	1056964608              # float 0.5
.LCPI0_9:
	.long	3221225472              # float -2
.LCPI0_10:
	.long	3212836864              # float -1
.LCPI0_11:
	.long	3134571752              # float -0.0016309293
.LCPI0_12:
	.long	979058130               # float 8.36339895E-4
.LCPI0_13:
	.long	3122398812              # float -5.95187536E-4
.LCPI0_14:
	.long	978324733               # float 7.93650572E-4
.LCPI0_15:
	.long	3140881249              # float -0.00277777785
.LCPI0_16:
	.long	1034594987              # float 0.0833333358
.LCPI0_17:
	.long	1054244637              # float 0.418938547
.LCPI0_18:
	.long	939917159               # float 3.1947533E-5
.LCPI0_19:
	.long	988886452               # float 0.00184028456
.LCPI0_20:
	.long	1020936420              # float 0.0266422704
.LCPI0_21:
	.long	1041620198              # float 0.146350473
.LCPI0_22:
	.long	1051118714              # float 0.325778782
.LCPI0_23:
	.long	1046226010              # float 0.21498242
.LCPI0_24:
	.long	3181257535              # float -0.0772156641
.LCPI0_25:
	.long	922081213               # float 7.32668422E-6
.LCPI0_26:
	.long	978054870               # float 7.77942477E-4
.LCPI0_27:
	.long	1016643412              # float 0.0186459199
.LCPI0_28:
	.long	1043337070              # float 0.17193386
.LCPI0_29:
	.long	1060688069              # float 0.72193557
.LCPI0_30:
	.long	1068641595              # float 1.39200532
.LCPI0_31:
	.long	1086324736              # float 6
.LCPI0_32:
	.long	1084227584              # float 5
.LCPI0_33:
	.long	1077936128              # float 3
.LCPI0_34:
	.long	1073741824              # float 2
.LCPI0_35:
	.long	3216709315              # float -1.46163213
.LCPI0_36:
	.long	3203160844              # float -0.461632133
.LCPI0_37:
	.long	1012612190              # float 0.0133810919
.LCPI0_38:
	.long	1047164280              # float 0.228963733
.LCPI0_39:
	.long	1064979378              # float 0.977717518
.LCPI0_40:
	.long	1069169383              # float 1.45492256
.LCPI0_41:
	.long	1059193076              # float 0.632827044
.LCPI0_42:
	.long	995284443               # float 0.00321709248
.LCPI0_43:
	.long	1037398703              # float 0.104222648
.LCPI0_44:
	.long	1061482463              # float 0.769285142
.LCPI0_45:
	.long	1074280749              # float 2.12848973
.LCPI0_46:
	.long	1075654334              # float 2.45597792
.LCPI0_47:
	.long	967146347               # float 3.1563206E-4
.LCPI0_48:
	.long	3132617846              # float -0.0014034647
.LCPI0_49:
	.long	1002956551              # float 0.00610053865
.LCPI0_50:
	.long	3171306823              # float -0.0327885412
.LCPI0_51:
	.long	1056422238              # float 0.483836114
.LCPI0_52:
	.long	3114531111              # float -3.12754157E-4
.LCPI0_53:
	.long	979826791               # float 8.81081854E-4
.LCPI0_54:
	.long	3144775678              # float -0.00368452026
.LCPI0_55:
	.long	1016280893              # float 0.0179706756
.LCPI0_56:
	.long	3189186876              # float -0.147587717
.LCPI0_57:
	.long	967830007               # float 3.35529185E-4
.LCPI0_58:
	.long	3121426565              # float -5.38595312E-4
.LCPI0_59:
	.long	991172249               # float 0.00225964771
.LCPI0_60:
	.long	3156802814              # float -0.0103142243
.LCPI0_61:
	.long	1032083989              # float 0.0646249428
.LCPI0_62:
	.long	837164114               # float 6.69710065E-9
.LCPI0_63:
	.long	3187199437              # float -0.121486284
.LCPI0_64:
	.long	936608674               # float 2.52144564E-5
.LCPI0_65:
	.long	963090279               # float 2.20862785E-4
.LCPI0_66:
	.long	983323809               # float 0.00119270768
.LCPI0_67:
	.long	1005716094              # float 0.007385551
.LCPI0_68:
	.long	1032450049              # float 0.0673523024
.LCPI0_69:
	.long	1033773887              # float 0.0772156641
.LCPI0_70:
	.long	943467637               # float 4.48640967E-5
.LCPI0_71:
	.long	954369093               # float 1.08011569E-4
.LCPI0_72:
	.long	973452852               # float 5.10069774E-4
.LCPI0_73:
	.long	993881798               # float 0.00289051374
.LCPI0_74:
	.long	1017682197              # float 0.0205808077
.LCPI0_75:
	.long	1051007590              # float 0.322467029
.LCPI0_76:
	.long	0                       # float 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_lgammaf_r
	.p2align	4, 0x90
	.type	__ieee754_lgammaf_r,@function
__ieee754_lgammaf_r:                    # @__ieee754_lgammaf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movdqa	%xmm0, %xmm5
	movd	%xmm0, %r14d
	movl	$1, (%rdi)
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jb	.LBB0_2
# %bb.1:
	mulss	%xmm5, %xmm5
	movaps	%xmm5, %xmm0
	jmp	.LBB0_64
.LBB0_2:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	testl	%ebx, %ebx
	je	.LBB0_64
# %bb.3:
	movq	%rdi, %r15
	cmpl	$478150655, %ebx        # imm = 0x1C7FFFFF
	ja	.LBB0_7
# %bb.4:
	testl	%r14d, %r14d
	jns	.LBB0_6
# %bb.5:
	movl	$-1, (%r15)
	xorps	.LCPI0_1(%rip), %xmm5
.LBB0_6:
	movaps	%xmm5, %xmm0
	callq	__ieee754_logf
	xorps	.LCPI0_1(%rip), %xmm0
	jmp	.LBB0_64
.LBB0_7:
	xorps	%xmm6, %xmm6
	testl	%r14d, %r14d
	js	.LBB0_9
# %bb.8:
	xorps	%xmm7, %xmm7
	cmpl	$1065353215, %r14d      # imm = 0x3F7FFFFF
	jg	.LBB0_32
.LBB0_30:
	cmpl	$-1082130432, %r14d     # imm = 0xBF800000
	je	.LBB0_61
# %bb.31:
	cmpl	$-1073741824, %r14d     # imm = 0xC0000000
	je	.LBB0_61
	jmp	.LBB0_34
.LBB0_9:
	cmpl	$1258291199, %ebx       # imm = 0x4AFFFFFF
	ja	.LBB0_64
# %bb.10:
	cmpl	$1048575999, %ebx       # imm = 0x3E7FFFFF
	movdqa	%xmm5, -48(%rbp)        # 16-byte Spill
	ja	.LBB0_12
# %bb.11:
	movss	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm0
	xorps	%xmm1, %xmm1
	xorl	%edi, %edi
	callq	__kernel_sinf
	movaps	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_25
.LBB0_12:
	movdqa	.LCPI0_1(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pxor	%xmm5, %xmm0
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	callq	floorf
	ucomiss	-64(%rbp), %xmm0        # 16-byte Folded Reload
	jne	.LBB0_13
	jnp	.LBB0_14
.LBB0_13:
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0        # 16-byte Folded Reload
	movss	%xmm0, -64(%rbp)        # 4-byte Spill
	callq	floorf
	movss	-64(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	addss	%xmm2, %xmm2
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	jmp	.LBB0_15
.LBB0_14:
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	-48(%rbp), %xmm0        # 16-byte Folded Reload
	movd	%xmm0, %eax
	andl	$1, %eax
	cvtsi2ss	%eax, %xmm2
	shll	$2, %eax
.LBB0_15:
	cmpl	$6, %eax
	ja	.LBB0_20
# %bb.16:
	movl	%eax, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_17:
	movss	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	mulss	.LCPI0_6(%rip), %xmm0
	xorps	%xmm1, %xmm1
	callq	__kernel_cosf
	jmp	.LBB0_23
.LBB0_18:
	movss	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	mulss	.LCPI0_6(%rip), %xmm0
	xorps	%xmm1, %xmm1
	jmp	.LBB0_22
.LBB0_19:
	addss	.LCPI0_5(%rip), %xmm2
	mulss	.LCPI0_6(%rip), %xmm2
	xorps	%xmm1, %xmm1
	movaps	%xmm2, %xmm0
	callq	__kernel_cosf
	movaps	%xmm0, %xmm1
	xorps	.LCPI0_1(%rip), %xmm1
	jmp	.LBB0_24
.LBB0_20:
	addss	.LCPI0_9(%rip), %xmm2
.LBB0_21:
	mulss	.LCPI0_6(%rip), %xmm2
	xorps	%xmm1, %xmm1
	movaps	%xmm2, %xmm0
.LBB0_22:
	xorl	%edi, %edi
	callq	__kernel_sinf
.LBB0_23:
	movaps	%xmm0, %xmm1
.LBB0_24:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI0_1(%rip), %xmm1
.LBB0_25:
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB0_26
	jnp	.LBB0_64
.LBB0_26:
	movaps	%xmm1, %xmm0
	mulss	-48(%rbp), %xmm0        # 16-byte Folded Reload
	movaps	%xmm1, -64(%rbp)        # 16-byte Spill
	callq	fabsf
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	__ieee754_logf
	movaps	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	ucomiss	-64(%rbp), %xmm0        # 16-byte Folded Reload
	jbe	.LBB0_28
# %bb.27:
	movl	$-1, (%r15)
.LBB0_28:
	movaps	-48(%rbp), %xmm5        # 16-byte Reload
	xorps	.LCPI0_1(%rip), %xmm5
	xorps	%xmm6, %xmm6
	cmpl	$1065353215, %r14d      # imm = 0x3F7FFFFF
	jle	.LBB0_30
.LBB0_32:
	cmpl	$1065353216, %r14d      # imm = 0x3F800000
	je	.LBB0_61
# %bb.33:
	cmpl	$1073741824, %r14d      # imm = 0x40000000
	je	.LBB0_61
.LBB0_34:
	cmpl	$1073741823, %ebx       # imm = 0x3FFFFFFF
	ja	.LBB0_49
# %bb.35:
	cmpl	$1063675494, %ebx       # imm = 0x3F666666
	ja	.LBB0_39
# %bb.36:
	movss	%xmm7, -64(%rbp)        # 4-byte Spill
	movaps	%xmm5, -48(%rbp)        # 16-byte Spill
	movaps	%xmm5, %xmm0
	callq	__ieee754_logf
	xorps	.LCPI0_1(%rip), %xmm0
	cmpl	$1060850207, %ebx       # imm = 0x3F3B4A1F
	jbe	.LBB0_43
# %bb.37:
	movss	.LCPI0_7(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	movaps	-48(%rbp), %xmm5        # 16-byte Reload
	movss	-64(%rbp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB0_38
.LBB0_49:
	cmpl	$1090519039, %ebx       # imm = 0x40FFFFFF
	movss	%xmm7, -64(%rbp)        # 4-byte Spill
	ja	.LBB0_57
# %bb.50:
	cvttss2si	%xmm5, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	subss	%xmm0, %xmm5
	movss	.LCPI0_18(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm0
	addss	.LCPI0_19(%rip), %xmm0
	mulss	%xmm5, %xmm0
	addss	.LCPI0_20(%rip), %xmm0
	mulss	%xmm5, %xmm0
	addss	.LCPI0_21(%rip), %xmm0
	mulss	%xmm5, %xmm0
	addss	.LCPI0_22(%rip), %xmm0
	mulss	%xmm5, %xmm0
	addss	.LCPI0_23(%rip), %xmm0
	mulss	%xmm5, %xmm0
	addss	.LCPI0_24(%rip), %xmm0
	movss	.LCPI0_25(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm2
	addss	.LCPI0_26(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_27(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_28(%rip), %xmm2
	mulss	%xmm5, %xmm0
	mulss	%xmm5, %xmm2
	addss	.LCPI0_29(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_30(%rip), %xmm2
	mulss	%xmm5, %xmm2
	movss	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm2
	divss	%xmm2, %xmm0
	movss	.LCPI0_8(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm6
	addss	%xmm0, %xmm6
	addl	$-3, %eax
	cmpl	$4, %eax
	ja	.LBB0_61
# %bb.51:
	movaps	%xmm6, -48(%rbp)        # 16-byte Spill
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_52:
	movss	.LCPI0_31(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm1
.LBB0_53:
	movss	.LCPI0_32(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm0
	mulss	%xmm0, %xmm1
.LBB0_54:
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm0
	mulss	%xmm0, %xmm1
.LBB0_55:
	movss	.LCPI0_33(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm0
	mulss	%xmm0, %xmm1
.LBB0_56:
	addss	.LCPI0_34(%rip), %xmm5
	mulss	%xmm1, %xmm5
	movaps	%xmm5, %xmm0
	callq	__ieee754_logf
	movaps	-48(%rbp), %xmm6        # 16-byte Reload
	addss	%xmm0, %xmm6
	jmp	.LBB0_60
.LBB0_39:
	cmpl	$1071490583, %ebx       # imm = 0x3FDDA617
	jbe	.LBB0_41
# %bb.40:
	movss	.LCPI0_34(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
.LBB0_38:
	subss	%xmm5, %xmm6
	movaps	%xmm6, %xmm2
	mulss	%xmm6, %xmm2
	movss	.LCPI0_64(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	addss	.LCPI0_65(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_66(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_67(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_68(%rip), %xmm1
	mulss	%xmm2, %xmm1
	addss	.LCPI0_69(%rip), %xmm1
	movss	.LCPI0_70(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm3
	addss	.LCPI0_71(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_72(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_73(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_74(%rip), %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_75(%rip), %xmm3
	mulss	%xmm2, %xmm3
	mulss	%xmm6, %xmm1
	addss	%xmm3, %xmm1
	mulss	.LCPI0_3(%rip), %xmm6
	addss	%xmm1, %xmm6
	addss	%xmm0, %xmm6
	jmp	.LBB0_61
.LBB0_57:
	movaps	%xmm5, %xmm0
	movaps	%xmm5, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_logf
	movaps	%xmm0, %xmm6
	cmpl	$1551892479, %ebx       # imm = 0x5C7FFFFF
	ja	.LBB0_59
# %bb.58:
	movss	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movaps	-48(%rbp), %xmm3        # 16-byte Reload
	divss	%xmm3, %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI0_11(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	.LCPI0_12(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_13(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_14(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_15(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_16(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI0_17(%rip), %xmm2
	addss	.LCPI0_3(%rip), %xmm3
	addss	.LCPI0_10(%rip), %xmm6
	mulss	%xmm3, %xmm6
	addss	%xmm2, %xmm6
	jmp	.LBB0_60
.LBB0_43:
	cmpl	$1047343879, %ebx       # imm = 0x3E6D3307
	movss	-64(%rbp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	jbe	.LBB0_44
# %bb.45:
	movaps	-48(%rbp), %xmm5        # 16-byte Reload
	addss	.LCPI0_36(%rip), %xmm5
	jmp	.LBB0_46
.LBB0_41:
	cmpl	$1067296288, %ebx       # imm = 0x3F9DA620
	jb	.LBB0_47
# %bb.42:
	addss	.LCPI0_35(%rip), %xmm5
	xorps	%xmm0, %xmm0
.LBB0_46:
	movaps	%xmm5, %xmm2
	mulss	%xmm5, %xmm2
	movaps	%xmm5, %xmm1
	mulss	%xmm2, %xmm1
	movss	.LCPI0_47(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm6
	addss	.LCPI0_48(%rip), %xmm6
	mulss	%xmm1, %xmm6
	addss	.LCPI0_49(%rip), %xmm6
	mulss	%xmm1, %xmm6
	addss	.LCPI0_50(%rip), %xmm6
	mulss	%xmm1, %xmm6
	addss	.LCPI0_51(%rip), %xmm6
	movss	.LCPI0_52(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	.LCPI0_53(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_54(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_55(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_56(%rip), %xmm3
	movss	.LCPI0_57(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	addss	.LCPI0_58(%rip), %xmm4
	mulss	%xmm1, %xmm4
	addss	.LCPI0_59(%rip), %xmm4
	mulss	%xmm1, %xmm4
	addss	.LCPI0_60(%rip), %xmm4
	mulss	%xmm1, %xmm4
	addss	.LCPI0_61(%rip), %xmm4
	mulss	%xmm2, %xmm6
	mulss	%xmm5, %xmm4
	addss	%xmm3, %xmm4
	mulss	%xmm1, %xmm4
	movss	.LCPI0_62(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm1
	subss	%xmm1, %xmm6
	addss	.LCPI0_63(%rip), %xmm6
	addss	%xmm0, %xmm6
	jmp	.LBB0_61
.LBB0_59:
	addss	.LCPI0_10(%rip), %xmm6
	mulss	-48(%rbp), %xmm6        # 16-byte Folded Reload
.LBB0_60:
	movss	-64(%rbp), %xmm7        # 4-byte Reload
                                        # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB0_61
.LBB0_44:
	movaps	-48(%rbp), %xmm5        # 16-byte Reload
	jmp	.LBB0_48
.LBB0_47:
	addss	.LCPI0_10(%rip), %xmm5
	xorps	%xmm0, %xmm0
.LBB0_48:
	movss	.LCPI0_37(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm1
	addss	.LCPI0_38(%rip), %xmm1
	mulss	%xmm5, %xmm1
	addss	.LCPI0_39(%rip), %xmm1
	mulss	%xmm5, %xmm1
	addss	.LCPI0_40(%rip), %xmm1
	mulss	%xmm5, %xmm1
	addss	.LCPI0_41(%rip), %xmm1
	mulss	%xmm5, %xmm1
	addss	.LCPI0_24(%rip), %xmm1
	movss	.LCPI0_42(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm2
	addss	.LCPI0_43(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_44(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_45(%rip), %xmm2
	mulss	%xmm5, %xmm1
	mulss	%xmm5, %xmm2
	addss	.LCPI0_46(%rip), %xmm2
	mulss	%xmm5, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	divss	%xmm2, %xmm1
	mulss	.LCPI0_3(%rip), %xmm5
	addss	%xmm1, %xmm5
	addss	%xmm0, %xmm5
	movaps	%xmm5, %xmm6
.LBB0_61:
	testl	%r14d, %r14d
	jns	.LBB0_63
# %bb.62:
	subss	%xmm6, %xmm7
	movaps	%xmm7, %xmm6
.LBB0_63:
	movaps	%xmm6, %xmm0
.LBB0_64:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_lgammaf_r, .Lfunc_end0-__ieee754_lgammaf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_21
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_19
.LJTI0_1:
	.quad	.LBB0_56
	.quad	.LBB0_55
	.quad	.LBB0_54
	.quad	.LBB0_53
	.quad	.LBB0_52
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
