	.text
	.file	"sf_erf.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function erff
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	3287401077              # float -483.519196
.LCPI0_2:
	.long	3296731915              # float -1025.09509
.LCPI0_3:
	.long	3290391617              # float -637.566467
.LCPI0_4:
	.long	3273695978              # float -160.636383
.LCPI0_5:
	.long	3247312971              # float -17.7579556
.LCPI0_6:
	.long	3209469396              # float -0.799283266
.LCPI0_7:
	.long	3156320402              # float -0.0098649431
.LCPI0_8:
	.long	3249768210              # float -22.4409523
.LCPI0_9:
	.long	1139622823              # float 474.528534
.LCPI0_10:
	.long	1106424921              # float 30.3380604
.LCPI0_11:
	.long	1134749041              # float 325.792511
.LCPI0_12:
	.long	1153439577              # float 1536.72961
.LCPI0_13:
	.long	1162345915              # float 3199.85815
.LCPI0_14:
	.long	1159696590              # float 2553.05029
.LCPI0_15:
	.long	3239905150              # float -9.81432914
.LCPI0_16:
	.long	3265434411              # float -81.2874374
.LCPI0_17:
	.long	3275266791              # float -184.605087
.LCPI0_18:
	.long	3273811340              # float -162.396667
.LCPI0_19:
	.long	3262742615              # float -62.3753319
.LCPI0_20:
	.long	3240685602              # float -10.5586262
.LCPI0_21:
	.long	3207700663              # float -0.693858563
.LCPI0_22:
	.long	3156320403              # float -0.00986494403
.LCPI0_23:
	.long	3178725271              # float -0.0604244135
.LCPI0_24:
	.long	1087520636              # float 6.57024956
.LCPI0_25:
	.long	1121535263              # float 108.635002
.LCPI0_26:
	.long	1100821966              # float 19.6512718
.LCPI0_27:
	.long	1124706403              # float 137.657761
.LCPI0_28:
	.long	1138313327              # float 434.565887
.LCPI0_29:
	.long	1143036105              # float 645.387268
.LCPI0_30:
	.long	1138131211              # float 429.008148
.LCPI0_31:
	.long	4294963200              # float NaN
.LCPI0_32:
	.long	3205496832              # float -0.5625
.LCPI0_33:
	.long	3212836864              # float -1
.LCPI0_35:
	.long	3138255296              # float -0.00216637552
.LCPI0_36:
	.long	1024545203              # float 0.0354783051
.LCPI0_37:
	.long	3185777858              # float -0.110894695
.LCPI0_38:
	.long	1050869332              # float 0.31834662
.LCPI0_39:
	.long	3200160264              # float -0.37220788
.LCPI0_40:
	.long	1054107653              # float 0.414856106
.LCPI0_41:
	.long	3139096006              # float -0.00236211857
.LCPI0_42:
	.long	1011112611              # float 0.0119845001
.LCPI0_43:
	.long	1012887059              # float 0.0136370836
.LCPI0_44:
	.long	1040265991              # float 0.126171216
.LCPI0_45:
	.long	1033050855              # float 0.0718286559
.LCPI0_46:
	.long	1057642373              # float 0.540397942
.LCPI0_47:
	.long	1037693745              # float 0.106420882
.LCPI0_48:
	.long	3210237451              # float -0.845062911
.LCPI0_49:
	.long	1062753803              # float 0.845062911
.LCPI0_50:
	.long	3083294385              # float -2.37630175E-5
.LCPI0_51:
	.long	3149730953              # float -0.00577027025
.LCPI0_52:
	.long	3169407631              # float -0.0284817498
.LCPI0_53:
	.long	3198577643              # float -0.325042099
.LCPI0_54:
	.long	1040414164              # float 0.128379166
.LCPI0_55:
	.long	3062161946              # float -3.96022824E-6
.LCPI0_56:
	.long	957017673               # float 1.32494737E-4
.LCPI0_57:
	.long	1000767766              # float 0.00508130621
.LCPI0_58:
	.long	1032137315              # float 0.0650222525
.LCPI0_59:
	.long	1053539278              # float 0.397917211
.LCPI0_60:
	.long	1090519040              # float 8
.LCPI0_61:
	.long	1065579988              # float 1.02703333
.LCPI0_62:
	.long	1040187392              # float 0.125
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_34:
	.long	3212836864              # float -1
	.long	1065353216              # float 1
	.text
	.globl	erff
	.p2align	4, 0x90
	.type	erff,@function
erff:                                   # @erff
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
	jae	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1062731775, %ebx       # imm = 0x3F57FFFF
	ja	.LBB0_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$830472191, %ebx        # imm = 0x317FFFFF
	ja	.LBB0_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$67108863, %ebx         # imm = 0x3FFFFFF
	ja	.LBB0_6
# %bb.5:
	movss	.LCPI0_60(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_61(%rip), %xmm0
	addss	%xmm1, %xmm0
	mulss	.LCPI0_62(%rip), %xmm0
	jmp	.LBB0_21
.LBB0_1:
	shrl	$30, %r14d
	andl	$-2, %r14d
	movl	$1, %eax
	subl	%r14d, %eax
	cvtsi2ss	%eax, %xmm1
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm3
	addss	%xmm1, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_22
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1067450367, %ebx       # imm = 0x3F9FFFFF
	ja	.LBB0_13
# %bb.10:
	callq	fabsf
	addss	.LCPI0_33(%rip), %xmm0
	movss	.LCPI0_35(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	addss	.LCPI0_36(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	.LCPI0_37(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	.LCPI0_38(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	.LCPI0_39(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	.LCPI0_40(%rip), %xmm3
	mulss	%xmm0, %xmm3
	addss	.LCPI0_41(%rip), %xmm3
	movss	.LCPI0_42(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_43(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_44(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_45(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_46(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_47(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_0(%rip), %xmm1
	divss	%xmm1, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_12
# %bb.11:
	addss	.LCPI0_49(%rip), %xmm3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_22
.LBB0_8:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI0_50(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	.LCPI0_51(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_52(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_53(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI0_54(%rip), %xmm3
	movss	.LCPI0_55(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	.LCPI0_56(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_57(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_58(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_59(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI0_0(%rip), %xmm2
	divss	%xmm2, %xmm3
	jmp	.LBB0_7
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1086324736, %ebx       # imm = 0x40C00000
	jb	.LBB0_15
# %bb.14:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	setns	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI0_34(,%rax,4), %xmm3 # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB0_22
.LBB0_6:
	movss	.LCPI0_54(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
.LBB0_7:
	mulss	%xmm0, %xmm3
	addss	%xmm0, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_22
.LBB0_15:
	callq	fabsf
	movaps	%xmm0, %xmm8
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1077336941, %ebx       # imm = 0x4036DB6D
	ja	.LBB0_17
# %bb.16:
	movss	.LCPI0_15(%rip), %xmm7  # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm7
	addss	.LCPI0_16(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_17(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_18(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_19(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_20(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_21(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_22(%rip), %xmm7
	movss	.LCPI0_23(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_24(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI0_25(%rip), %xmm1
	movss	.LCPI0_26(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_27(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_28(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_29(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movss	.LCPI0_30(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB0_18
.LBB0_12:
	movss	.LCPI0_48(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm3, %xmm0
	jmp	.LBB0_21
.LBB0_17:
	movss	.LCPI0_1(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm7
	addss	.LCPI0_2(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_3(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_4(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_5(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_6(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI0_7(%rip), %xmm7
	movss	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_9(%rip), %xmm1
	movss	.LCPI0_10(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_11(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI0_12(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI0_13(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movss	.LCPI0_14(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
.LBB0_18:
	mulss	%xmm0, %xmm1
	addss	%xmm6, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	mulss	%xmm0, %xmm1
	addss	.LCPI0_0(%rip), %xmm1
	divss	%xmm1, %xmm7
	movss	%xmm7, -20(%rbp)        # 4-byte Spill
	movss	.LCPI0_31(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	andps	%xmm8, %xmm1
	movaps	%xmm1, -64(%rbp)        # 16-byte Spill
	mulss	%xmm1, %xmm1
	movss	.LCPI0_32(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movaps	%xmm8, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_expf
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm0
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	addss	%xmm1, %xmm0
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	addss	-20(%rbp), %xmm1        # 4-byte Folded Reload
	movaps	%xmm1, %xmm0
	callq	__ieee754_expf
	mulss	-24(%rbp), %xmm0        # 4-byte Folded Reload
	divss	-48(%rbp), %xmm0        # 16-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_20
# %bb.19:
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_22
.LBB0_20:
	addss	.LCPI0_33(%rip), %xmm0
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, %xmm3
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm3, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	erff, .Lfunc_end0-erff
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function erfcf
.LCPI1_0:
	.long	1065353216              # float 1
.LCPI1_1:
	.long	1073741824              # float 2
.LCPI1_2:
	.long	3287401077              # float -483.519196
.LCPI1_3:
	.long	3296731915              # float -1025.09509
.LCPI1_4:
	.long	3290391617              # float -637.566467
.LCPI1_5:
	.long	3273695978              # float -160.636383
.LCPI1_6:
	.long	3247312971              # float -17.7579556
.LCPI1_7:
	.long	3209469396              # float -0.799283266
.LCPI1_8:
	.long	3156320402              # float -0.0098649431
.LCPI1_9:
	.long	3249768210              # float -22.4409523
.LCPI1_10:
	.long	1139622823              # float 474.528534
.LCPI1_11:
	.long	1106424921              # float 30.3380604
.LCPI1_12:
	.long	1134749041              # float 325.792511
.LCPI1_13:
	.long	1153439577              # float 1536.72961
.LCPI1_14:
	.long	1162345915              # float 3199.85815
.LCPI1_15:
	.long	1159696590              # float 2553.05029
.LCPI1_16:
	.long	3239905150              # float -9.81432914
.LCPI1_17:
	.long	3265434411              # float -81.2874374
.LCPI1_18:
	.long	3275266791              # float -184.605087
.LCPI1_19:
	.long	3273811340              # float -162.396667
.LCPI1_20:
	.long	3262742615              # float -62.3753319
.LCPI1_21:
	.long	3240685602              # float -10.5586262
.LCPI1_22:
	.long	3207700663              # float -0.693858563
.LCPI1_23:
	.long	3156320403              # float -0.00986494403
.LCPI1_24:
	.long	3178725271              # float -0.0604244135
.LCPI1_25:
	.long	1087520636              # float 6.57024956
.LCPI1_26:
	.long	1121535263              # float 108.635002
.LCPI1_27:
	.long	1100821966              # float 19.6512718
.LCPI1_28:
	.long	1124706403              # float 137.657761
.LCPI1_29:
	.long	1138313327              # float 434.565887
.LCPI1_30:
	.long	1143036105              # float 645.387268
.LCPI1_31:
	.long	1138131211              # float 429.008148
.LCPI1_32:
	.long	4294963200              # float NaN
.LCPI1_33:
	.long	3205496832              # float -0.5625
.LCPI1_34:
	.long	3212836864              # float -1
.LCPI1_35:
	.long	3138255296              # float -0.00216637552
.LCPI1_36:
	.long	1024545203              # float 0.0354783051
.LCPI1_37:
	.long	3185777858              # float -0.110894695
.LCPI1_38:
	.long	1050869332              # float 0.31834662
.LCPI1_39:
	.long	3200160264              # float -0.37220788
.LCPI1_40:
	.long	1054107653              # float 0.414856106
.LCPI1_41:
	.long	3139096006              # float -0.00236211857
.LCPI1_42:
	.long	1011112611              # float 0.0119845001
.LCPI1_43:
	.long	1012887059              # float 0.0136370836
.LCPI1_44:
	.long	1040265991              # float 0.126171216
.LCPI1_45:
	.long	1033050855              # float 0.0718286559
.LCPI1_46:
	.long	1057642373              # float 0.540397942
.LCPI1_47:
	.long	1037693745              # float 0.106420882
.LCPI1_48:
	.long	1062753803              # float 0.845062911
.LCPI1_49:
	.long	1042196436              # float 0.154937088
.LCPI1_50:
	.long	3083294385              # float -2.37630175E-5
.LCPI1_51:
	.long	3149730953              # float -0.00577027025
.LCPI1_52:
	.long	3169407631              # float -0.0284817498
.LCPI1_53:
	.long	3198577643              # float -0.325042099
.LCPI1_54:
	.long	1040414164              # float 0.128379166
.LCPI1_55:
	.long	3062161946              # float -3.96022824E-6
.LCPI1_56:
	.long	957017673               # float 1.32494737E-4
.LCPI1_57:
	.long	1000767766              # float 0.00508130621
.LCPI1_58:
	.long	1032137315              # float 0.0650222525
.LCPI1_59:
	.long	1053539278              # float 0.397917211
.LCPI1_60:
	.long	3204448256              # float -0.5
.LCPI1_61:
	.long	1056964608              # float 0.5
	.text
	.globl	erfcf
	.p2align	4, 0x90
	.type	erfcf,@function
erfcf:                                  # @erfcf
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
	cmpl	$1062731775, %ebx       # imm = 0x3F57FFFF
	ja	.LBB1_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$595591167, %ebx        # imm = 0x237FFFFF
	ja	.LBB1_6
# %bb.4:
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_5
.LBB1_1:
	shrl	$30, %r14d
	andl	$-2, %r14d
	cvtsi2ss	%r14d, %xmm2
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_26
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1067450367, %ebx       # imm = 0x3F9FFFFF
	ja	.LBB1_14
# %bb.10:
	callq	fabsf
	addss	.LCPI1_34(%rip), %xmm0
	movss	.LCPI1_35(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	addss	.LCPI1_36(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI1_37(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI1_38(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI1_39(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI1_40(%rip), %xmm2
	mulss	%xmm0, %xmm2
	addss	.LCPI1_41(%rip), %xmm2
	movss	.LCPI1_42(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI1_43(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_44(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_45(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_46(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_47(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_0(%rip), %xmm1
	divss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_13
# %bb.11:
	movss	.LCPI1_49(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_12
.LBB1_6:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI1_50(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	.LCPI1_51(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI1_52(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI1_53(%rip), %xmm2
	mulss	%xmm1, %xmm2
	addss	.LCPI1_54(%rip), %xmm2
	movss	.LCPI1_55(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	.LCPI1_56(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI1_57(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI1_58(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI1_59(%rip), %xmm3
	mulss	%xmm1, %xmm3
	addss	.LCPI1_0(%rip), %xmm3
	divss	%xmm3, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	mulss	%xmm0, %xmm2
	cmpl	$1048575999, %r14d      # imm = 0x3E7FFFFF
	jg	.LBB1_8
# %bb.7:
	addss	%xmm0, %xmm2
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
.LBB1_12:
	subss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_26
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1105199103, %ebx       # imm = 0x41DFFFFF
	ja	.LBB1_24
# %bb.15:
	callq	fabsf
	movaps	%xmm0, %xmm8
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1077336940, %ebx       # imm = 0x4036DB6C
	ja	.LBB1_17
# %bb.16:
	movss	.LCPI1_16(%rip), %xmm7  # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm7
	addss	.LCPI1_17(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_18(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_19(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_20(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_21(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_22(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_23(%rip), %xmm7
	movss	.LCPI1_24(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI1_25(%rip), %xmm1
	mulss	%xmm0, %xmm1
	addss	.LCPI1_26(%rip), %xmm1
	movss	.LCPI1_27(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI1_28(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI1_29(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI1_30(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movss	.LCPI1_31(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB1_21
.LBB1_8:
	addss	.LCPI1_60(%rip), %xmm0
	addss	%xmm2, %xmm0
	movss	.LCPI1_61(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB1_5:
	subss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_26
.LBB1_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm1, %xmm1
	testl	%r14d, %r14d
	jle	.LBB1_25
	jmp	.LBB1_26
.LBB1_13:
	addss	.LCPI1_48(%rip), %xmm2
	addss	.LCPI1_0(%rip), %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm1
	jmp	.LBB1_26
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB1_20
# %bb.18:
	cmpl	$1086324736, %ebx       # imm = 0x40C00000
	jb	.LBB1_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_26
.LBB1_20:
	movss	.LCPI1_2(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm7
	addss	.LCPI1_3(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_4(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_5(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_6(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_7(%rip), %xmm7
	mulss	%xmm0, %xmm7
	addss	.LCPI1_8(%rip), %xmm7
	movss	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI1_10(%rip), %xmm1
	movss	.LCPI1_11(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI1_12(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI1_13(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	movss	.LCPI1_14(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movss	.LCPI1_15(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
.LBB1_21:
	mulss	%xmm0, %xmm1
	addss	%xmm6, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm5, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm4, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	mulss	%xmm0, %xmm1
	addss	.LCPI1_0(%rip), %xmm1
	divss	%xmm1, %xmm7
	movss	%xmm7, -20(%rbp)        # 4-byte Spill
	movss	.LCPI1_32(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	andps	%xmm8, %xmm1
	movaps	%xmm1, -64(%rbp)        # 16-byte Spill
	mulss	%xmm1, %xmm1
	movss	.LCPI1_33(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movaps	%xmm8, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_expf
	movss	%xmm0, -24(%rbp)        # 4-byte Spill
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm0
	movaps	-64(%rbp), %xmm1        # 16-byte Reload
	addss	%xmm1, %xmm0
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	addss	-20(%rbp), %xmm1        # 4-byte Folded Reload
	movaps	%xmm1, %xmm0
	callq	__ieee754_expf
	movaps	%xmm0, %xmm1
	mulss	-24(%rbp), %xmm1        # 4-byte Folded Reload
	divss	-48(%rbp), %xmm1        # 16-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_23
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_26
.LBB1_23:
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, %xmm1
.LBB1_26:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	erfcf, .Lfunc_end1-erfcf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
