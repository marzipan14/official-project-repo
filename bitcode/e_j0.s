	.text
	.file	"e_j0.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_j0
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	-4741210792633417778    # double -4.6183268853210319E-9
.LCPI0_3:
	.quad	4521246587339421977     # double 1.8295404953270067E-6
.LCPI0_4:
	.quad	-4672231013997689111    # double -1.8997929423885472E-4
.LCPI0_5:
	.quad	4580160821035794429     # double 0.015624999999999995
.LCPI0_6:
	.quad	4473209937533885839     # double 1.1661400333379E-9
.LCPI0_7:
	.quad	4512953537030051241     # double 5.1354655020731811E-7
.LCPI0_8:
	.quad	4548256098277645300     # double 1.1692678466333745E-4
.LCPI0_9:
	.quad	4580157421615891108     # double 0.015619102946489001
.LCPI0_10:
	.quad	4602678819172646912     # double 0.5
.LCPI0_11:
	.quad	-4625196817309499392    # double -0.25
.LCPI0_13:
	.quad	-4629700416936869888    # double -0.125
.LCPI0_14:
	.quad	4603256987541740397     # double 0.56418958354775628
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_12:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_j0
	.p2align	4, 0x90
	.type	__ieee754_j0,@function
__ieee754_j0:                           # @__ieee754_j0
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%xmm0, %rbx
	shrq	$32, %rbx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	mulsd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	jmp	.LBB0_29
.LBB0_2:
	callq	fabs
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB0_6
# %bb.3:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	-32(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	cmpl	$2145386495, %ebx       # imm = 0x7FDFFFFF
	ja	.LBB0_12
# %bb.4:
	movapd	%xmm0, %xmm2
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-32(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	xorpd	.LCPI0_12(%rip), %xmm0
	movapd	%xmm6, %xmm1
	mulsd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB0_14
# %bb.5:
	subsd	%xmm3, %xmm6
	divsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm4
	jmp	.LBB0_15
.LBB0_6:
	cmpl	$1059061759, %ebx       # imm = 0x3F1FFFFF
	ja	.LBB0_10
# %bb.7:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_10
# %bb.8:
	cmpl	$1044381696, %ebx       # imm = 0x3E400000
	jae	.LBB0_18
# %bb.9:
	movsd	.LCPI0_1(%rip), %xmm4   # xmm4 = mem[0],zero
	jmp	.LBB0_30
.LBB0_10:
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	.LCPI0_2(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_3(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_4(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_5(%rip), %xmm5
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm4, %xmm1
	addsd	.LCPI0_7(%rip), %xmm1
	mulsd	%xmm4, %xmm1
	addsd	.LCPI0_8(%rip), %xmm1
	mulsd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm1
	addsd	.LCPI0_9(%rip), %xmm1
	mulsd	%xmm4, %xmm1
	addsd	.LCPI0_1(%rip), %xmm1
	cmpl	$1072693247, %ebx       # imm = 0x3FEFFFFF
	ja	.LBB0_13
# %bb.11:
	divsd	%xmm1, %xmm5
	addsd	.LCPI0_11(%rip), %xmm5
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_1(%rip), %xmm4
	jmp	.LBB0_30
.LBB0_12:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_28
.LBB0_13:
	mulsd	.LCPI0_10(%rip), %xmm0
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	divsd	%xmm1, %xmm5
	mulsd	%xmm5, %xmm4
	addsd	%xmm2, %xmm4
	jmp	.LBB0_30
.LBB0_14:
	movsd	-16(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	divsd	%xmm4, %xmm0
	movapd	%xmm0, %xmm6
.LBB0_15:
	movq	-24(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1207959553, %ebx       # imm = 0x48000001
	jae	.LBB0_28
# %bb.16:
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1075838975, %eax       # imm = 0x401FFFFF
	jbe	.LBB0_19
# %bb.17:
	movl	$pR8, %edx
	movl	$pS8, %ecx
	jmp	.LBB0_22
.LBB0_18:
	movsd	.LCPI0_11(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	.LCPI0_1(%rip), %xmm4
	jmp	.LBB0_30
.LBB0_19:
	cmpl	$1074933386, %eax       # imm = 0x40122E8A
	jbe	.LBB0_21
# %bb.20:
	movl	$pR5, %edx
	movl	$pS5, %ecx
	jmp	.LBB0_22
.LBB0_21:
	cmpl	$1074191212, %eax       # imm = 0x4006DB6C
	movl	$pS3, %edx
	movl	$pS2, %ecx
	cmovaq	%rdx, %rcx
	movl	$pR3, %esi
	movl	$pR2, %edx
	cmovaq	%rsi, %rdx
.LBB0_22:
	movdqa	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	movsd	40(%rdx), %xmm5         # xmm5 = mem[0],zero
	mulsd	%xmm1, %xmm5
	addsd	32(%rdx), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	24(%rdx), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	16(%rdx), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	8(%rdx), %xmm5
	mulsd	%xmm1, %xmm5
	addsd	(%rdx), %xmm5
	movsd	32(%rcx), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	addsd	24(%rcx), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	16(%rcx), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	8(%rcx), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	(%rcx), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	divsd	%xmm3, %xmm5
	addsd	%xmm2, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075838975, %eax       # imm = 0x401FFFFF
	jbe	.LBB0_24
# %bb.23:
	movl	$qR8, %ecx
	movl	$qS8, %eax
	jmp	.LBB0_27
.LBB0_24:
	cmpl	$1074933386, %eax       # imm = 0x40122E8A
	jbe	.LBB0_26
# %bb.25:
	movl	$qR5, %ecx
	movl	$qS5, %eax
	jmp	.LBB0_27
.LBB0_26:
	cmpl	$1074191212, %eax       # imm = 0x4006DB6C
	movl	$qS3, %ecx
	movl	$qS2, %eax
	cmovaq	%rcx, %rax
	movl	$qR3, %edx
	movl	$qR2, %ecx
	cmovaq	%rdx, %rcx
.LBB0_27:
	movsd	40(%rcx), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	32(%rcx), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	24(%rcx), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	16(%rcx), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	8(%rcx), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	(%rcx), %xmm2
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	addsd	32(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	24(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	16(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	8(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	(%rax), %xmm3
	mulsd	%xmm1, %xmm3
	addsd	.LCPI0_1(%rip), %xmm3
	divsd	%xmm3, %xmm2
	addsd	.LCPI0_13(%rip), %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm5, %xmm4
	subsd	%xmm6, %xmm4
.LBB0_28:
	mulsd	.LCPI0_14(%rip), %xmm4
	movsd	%xmm4, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_sqrt
	movsd	-16(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
.LBB0_29:
	divsd	%xmm0, %xmm4
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm4, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_j0, .Lfunc_end0-__ieee754_j0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_y0
.LCPI1_0:
	.quad	-4503599627370496       # double -Inf
.LCPI1_1:
	.quad	9221120237041090560     # double NaN
.LCPI1_2:
	.quad	-4772157277719252024    # double -3.982051941321034E-11
.LCPI1_3:
	.quad	4491496578029104084     # double 1.9559013703502292E-8
.LCPI1_4:
	.quad	-4697255891167978323    # double -3.8140705372436416E-6
.LCPI1_5:
	.quad	4555045008183565163     # double 3.4745343209368365E-4
.LCPI1_6:
	.quad	-4644252553432991081    # double -0.01381856719455969
.LCPI1_7:
	.quad	4595533100048049148     # double 0.17666645250918112
.LCPI1_8:
	.quad	-4633389456256413665    # double -0.073804295108687232
.LCPI1_9:
	.quad	4467095945411484143     # double 4.4111031133267547E-10
.LCPI1_10:
	.quad	4508494848557449981     # double 2.5915085184045781E-7
.LCPI1_11:
	.quad	4545236740968335041     # double 7.6006862735035325E-5
.LCPI1_12:
	.quad	4578492245867087642     # double 0.01273048348341237
.LCPI1_13:
	.quad	4607182418800017408     # double 1
.LCPI1_14:
	.quad	4603909380684499075     # double 0.63661977236758138
.LCPI1_16:
	.quad	-4629700416936869888    # double -0.125
.LCPI1_17:
	.quad	4603256987541740397     # double 0.56418958354775628
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_15:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_y0
	.p2align	4, 0x90
	.type	__ieee754_y0,@function
__ieee754_y0:                           # @__ieee754_y0
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB1_2
# %bb.1:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI1_13(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	jmp	.LBB1_28
.LBB1_2:
	orl	%ebx, %ecx
	je	.LBB1_3
# %bb.4:
	testl	%eax, %eax
	js	.LBB1_5
# %bb.6:
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB1_25
# %bb.7:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	sin
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	-32(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm0, %xmm6
	cmpl	$2145386495, %ebx       # imm = 0x7FDFFFFF
	ja	.LBB1_8
# %bb.9:
	movapd	%xmm0, %xmm1
	movsd	%xmm6, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	xorpd	.LCPI1_15(%rip), %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB1_11
# %bb.10:
	movsd	-16(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	divsd	%xmm6, %xmm0
	jmp	.LBB1_12
.LBB1_3:
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_28
.LBB1_5:
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_28
.LBB1_25:
	cmpl	$1044381696, %ebx       # imm = 0x3E400000
	ja	.LBB1_27
# %bb.26:
	callq	__ieee754_log
	movapd	%xmm0, %xmm2
	mulsd	.LCPI1_14(%rip), %xmm2
	addsd	.LCPI1_8(%rip), %xmm2
	jmp	.LBB1_28
.LBB1_8:
	movsd	-24(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB1_13
.LBB1_27:
	movdqa	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_3(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_4(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_5(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_6(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_7(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_8(%rip), %xmm1
	movapd	%xmm1, %xmm3
	movsd	.LCPI1_9(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_10(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_11(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_12(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_13(%rip), %xmm1
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -32(%rbp)        # 8-byte Spill
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__ieee754_j0
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_log
	movapd	%xmm0, %xmm2
	mulsd	-16(%rbp), %xmm2        # 8-byte Folded Reload
	mulsd	.LCPI1_14(%rip), %xmm2
	addsd	-32(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB1_28
.LBB1_11:
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm3, %xmm1
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movapd	%xmm1, %xmm0
.LBB1_12:
	movsd	-24(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	cmpl	$1207959553, %ebx       # imm = 0x48000001
	jae	.LBB1_13
# %bb.14:
	cmpl	$1075838975, %ebx       # imm = 0x401FFFFF
	jbe	.LBB1_16
# %bb.15:
	movl	$pR8, %ecx
	movl	$pS8, %eax
	jmp	.LBB1_19
.LBB1_16:
	cmpl	$1074933386, %ebx       # imm = 0x40122E8A
	jbe	.LBB1_18
# %bb.17:
	movl	$pR5, %ecx
	movl	$pS5, %eax
	jmp	.LBB1_19
.LBB1_18:
	cmpl	$1074191212, %ebx       # imm = 0x4006DB6C
	movl	$pS3, %ecx
	movl	$pS2, %eax
	cmovaq	%rcx, %rax
	movl	$pR3, %edx
	movl	$pR2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_19:
	movapd	%xmm5, %xmm1
	mulsd	%xmm5, %xmm1
	movsd	.LCPI1_13(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	32(%rcx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	24(%rcx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	16(%rcx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	8(%rcx), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	(%rcx), %xmm1
	movsd	32(%rax), %xmm4         # xmm4 = mem[0],zero
	mulsd	%xmm2, %xmm4
	addsd	24(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	16(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	8(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	divsd	%xmm4, %xmm1
	addsd	%xmm3, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075838975, %ebx       # imm = 0x401FFFFF
	jbe	.LBB1_21
# %bb.20:
	movl	$qR8, %ecx
	movl	$qS8, %eax
	jmp	.LBB1_24
.LBB1_21:
	cmpl	$1074933386, %ebx       # imm = 0x40122E8A
	jbe	.LBB1_23
# %bb.22:
	movl	$qR5, %ecx
	movl	$qS5, %eax
	jmp	.LBB1_24
.LBB1_23:
	cmpl	$1074191212, %ebx       # imm = 0x4006DB6C
	movl	$qS3, %ecx
	movl	$qS2, %eax
	cmovaq	%rcx, %rax
	movl	$qR3, %edx
	movl	$qR2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_24:
	movsd	40(%rcx), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	32(%rcx), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	24(%rcx), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	16(%rcx), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	8(%rcx), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	(%rcx), %xmm3
	movsd	40(%rax), %xmm4         # xmm4 = mem[0],zero
	mulsd	%xmm2, %xmm4
	addsd	32(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	24(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	16(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	8(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	(%rax), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	.LCPI1_13(%rip), %xmm4
	divsd	%xmm4, %xmm3
	addsd	.LCPI1_16(%rip), %xmm3
	divsd	%xmm5, %xmm3
	mulsd	%xmm3, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm1, %xmm6
	addsd	%xmm0, %xmm6
.LBB1_13:
	mulsd	.LCPI1_17(%rip), %xmm6
	movsd	%xmm6, -16(%rbp)        # 8-byte Spill
	movapd	%xmm5, %xmm0
	callq	__ieee754_sqrt
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
.LBB1_28:
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ieee754_y0, .Lfunc_end1-__ieee754_y0
                                        # -- End function
	.type	pR8,@object             # @pR8
	.section	.rodata,"a",@progbits
	.p2align	4
pR8:
	.quad	0                       # double 0
	.quad	-4633641066610819790    # double -0.070312499999990036
	.quad	-4602632842817591431    # double -8.081670412753498
	.quad	-4580142118682892189    # double -257.06310567970485
	.quad	-4565688573100176644    # double -2485.2164100942882
	.quad	-4560874239408970691    # double -5253.0438049072955
	.size	pR8, 48

	.type	pS8,@object             # @pS8
	.p2align	4
pS8:
	.quad	4637900793828697937     # double 116.53436461966818
	.quad	4660648908942829880     # double 3833.7447536412183
	.quad	4675812540598890591     # double 40597.857264847255
	.quad	4682759616392571325     # double 116752.97256437592
	.quad	4676778718732765660     # double 47627.728414673096
	.size	pS8, 40

	.type	pR5,@object             # @pR5
	.p2align	4
pR5:
	.quad	-4780262379782629940    # double -1.141254646918945E-11
	.quad	-4633641067036869690    # double -0.070312494087359928
	.quad	-4607002713190011969    # double -4.1596106447058778
	.quad	-4588909431676397693    # double -67.674765226516726
	.quad	-4578837338016002973    # double -331.23129964917297
	.quad	-4578569900043039785    # double -346.43338836560491
	.size	pR5, 48

	.type	pS5,@object             # @pS5
	.p2align	4
pS5:
	.quad	4633747173989205470     # double 60.753938269230034
	.quad	4652338271982856292     # double 1051.2523059570458
	.quad	4663295962775428448     # double 5978.9709433385578
	.quad	4666517258757405240     # double 9625.4451435777446
	.quad	4657509392920078436     # double 2406.0581592293911
	.size	pS5, 40

	.type	pR3,@object             # @pR3
	.p2align	4
pR3:
	.quad	-4745139227486737786    # double -2.5470460177195192E-9
	.quad	-4633641105403878837    # double -0.070311961638148165
	.quad	-4610764959760744332    # double -2.4090322154952961
	.quad	-4596495946174869996    # double -21.965977473488309
	.quad	-4590001302967543227    # double -58.079170470173757
	.quad	-4593827009006479345    # double -31.44794705948885
	.size	pR3, 48

	.type	pS3,@object             # @pS3
	.p2align	4
pS3:
	.quad	4630243105449672147     # double 35.856033805520973
	.quad	4645067437439089678     # double 361.51398305030386
	.quad	4652964358233547222     # double 1193.6078379211153
	.quad	4652675797830835070     # double 1127.9967985690741
	.quad	4640311352621502593     # double 173.58093081333575
	.size	pS3, 40

	.type	pR2,@object             # @pR2
	.p2align	4
pR2:
	.quad	-4722073588920286611    # double -8.8753433303252641E-8
	.quad	-4633641743984746942    # double -0.070303099548362474
	.quad	-4614159672459089853    # double -1.4507384678095299
	.quad	-4603088988856670221    # double -7.6356961382352777
	.quad	-4600881226022886653    # double -11.193166886035675
	.quad	-4608908095059400945    # double -3.2336457935133534
	.size	pR2, 48

	.type	pS2,@object             # @pS2
	.p2align	4
pS2:
	.quad	4626947676037667161     # double 22.220299753208881
	.quad	4638996367093041039     # double 136.20679421821521
	.quad	4643465779653248923     # double 270.47027865808349
	.quad	4639618025689381631     # double 153.87539420832033
	.quad	4624441123253327881     # double 14.657617694825619
	.size	pS2, 40

	.type	qR8,@object             # @qR8
	.p2align	4
qR8:
	.quad	0                       # double 0
	.quad	4589942076476489260     # double 0.073242187499993505
	.quad	4622814529337898198     # double 11.768206468225269
	.quad	4648116562747725861     # double 557.67338025640186
	.quad	4666096009499702381     # double 8859.1972075646863
	.quad	4675320065150686566     # double 37014.626777688783
	.size	qR8, 48

	.type	qS8,@object             # @qS8
	.p2align	4
qS8:
	.quad	4639966373233768892     # double 163.77602689568982
	.quad	4665626239135581539     # double 8098.3449465644981
	.quad	4684137591238528063     # double 142538.29141912048
	.quad	4695147586068491075     # double 803309.2571195144
	.quad	4695467065687804733     # double 840501.57981906051
	.quad	-4533720279514009403    # double -343899.29353786662
	.size	qS8, 48

	.type	qR5,@object             # @qR5
	.p2align	4
qR5:
	.quad	4446246417212411097     # double 1.8408596359451553E-11
	.quad	4589942075695476812     # double 0.073242176661268477
	.quad	4618256359431159251     # double 5.8356350896205695
	.quad	4638957832572995817     # double 135.11157728644983
	.quad	4652232681307292801     # double 1027.243765961641
	.quad	4656466830624744358     # double 1989.9778586460538
	.size	qR5, 48

	.type	qS5,@object             # @qS5
	.p2align	4
qS5:
	.quad	4635525303045592387     # double 82.776610223653776
	.quad	4656787576741544142     # double 2077.8141642139299
	.quad	4670909917246856813     # double 18847.288778571809
	.quad	4678032627064644466     # double 56751.112289494733
	.quad	4675177420980638880     # double 35976.753842511447
	.quad	-4560762860034341367    # double -5354.3427560194477
	.size	qS5, 48

	.type	qR3,@object             # @qR3
	.p2align	4
qR3:
	.quad	4481869993748646786     # double 4.3774101408973862E-9
	.quad	4589941999411202114     # double 0.073241118004291145
	.quad	4614712958387526901     # double 3.3442313751617072
	.quad	4631195308593622749     # double 42.621844074541265
	.quad	4640213792005750047     # double 170.8080913405656
	.quad	4640070445855023584     # double 166.73394869665117
	.size	qR3, 48

	.type	qS3,@object             # @qS3
	.p2align	4
qS3:
	.quad	4632059018626679718     # double 48.758872972458718
	.quad	4649453708224253619     # double 709.68922105660602
	.quad	4660363923165150307     # double 3704.1482262011136
	.quad	4663825327293164072     # double 6460.4251675256892
	.quad	4657751891375010240     # double 2516.3336892036896
	.quad	-4583916842411822065    # double -149.24745183615639
	.size	qS3, 48

	.type	qR2,@object             # @qR2
	.p2align	4
qR2:
	.quad	4504779658175671259     # double 1.5044444488698327E-7
	.quad	4589940724610907700     # double 0.073223426596307928
	.quad	4611677874752550812     # double 1.99819174093816
	.quad	4624349917051711461     # double 14.495602934788574
	.quad	4629606469526608970     # double 31.666231750478154
	.quad	4625267948167187380     # double 16.252707571092927
	.size	qR2, 48

	.type	qS2,@object             # @qS2
	.p2align	4
qS2:
	.quad	4629240369966512877     # double 30.365584835521918
	.quad	4643446038404877120     # double 269.34811860804984
	.quad	4650642012334440226     # double 844.78375759532014
	.quad	4650977601645232660     # double 882.93584511248855
	.quad	4641686549908427621     # double 212.66638851179883
	.quad	-4605706414756517583    # double -5.3109549388266695
	.size	qS2, 48

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
