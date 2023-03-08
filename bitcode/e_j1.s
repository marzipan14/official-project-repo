	.text
	.file	"e_j1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_j1
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4497595169789053913     # double 4.9672799960958445E-8
.LCPI0_3:
	.quad	-4688029754776447384    # double -1.599556310840356E-5
.LCPI0_4:
	.quad	4564131726469049441     # double 0.0014070566695518971
.LCPI0_5:
	.quad	-4634204016564240384    # double -0.0625
.LCPI0_6:
	.quad	4443692529362763480     # double 1.2354227442613791E-11
.LCPI0_7:
	.quad	4482678707613204268     # double 5.0463625707621704E-9
.LCPI0_8:
	.quad	4518165923915334808     # double 1.1771846404262368E-6
.LCPI0_9:
	.quad	4550992249546995300     # double 1.8594678558863092E-4
.LCPI0_10:
	.quad	4581177916844637779     # double 0.019153759953836346
.LCPI0_11:
	.quad	4602678819172646912     # double 0.5
.LCPI0_13:
	.quad	4600427019358961664     # double 0.375
.LCPI0_14:
	.quad	4603256987541740397     # double 0.56418958354775628
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_12:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_j1
	.p2align	4, 0x90
	.type	__ieee754_j1,@function
__ieee754_j1:                           # @__ieee754_j1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%xmm0, %r14
	shrq	$32, %r14
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	movsd	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm0, %xmm3
	jmp	.LBB0_26
.LBB0_2:
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	callq	fabs
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB0_22
# %bb.3:
	movq	%xmm0, -24(%rbp)        # 8-byte Folded Spill
	callq	sin
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	-80(%rbp), %xmm4        # 16-byte Reload
	subsd	%xmm0, %xmm4
	cmpl	$2145386495, %ebx       # imm = 0x7FDFFFFF
	ja	.LBB0_4
# %bb.5:
	movapd	%xmm0, %xmm2
	movapd	%xmm4, -48(%rbp)        # 16-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm2, -56(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-56(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	-80(%rbp), %xmm6        # 16-byte Reload
	movapd	%xmm6, %xmm1
	mulsd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB0_7
# %bb.6:
	xorpd	.LCPI0_12(%rip), %xmm6
	subsd	%xmm3, %xmm6
	divsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm4
	jmp	.LBB0_8
.LBB0_22:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	-48(%rbp), %xmm3        # 16-byte Reload
	addsd	%xmm3, %xmm0
	ucomisd	.LCPI0_1(%rip), %xmm0
	jbe	.LBB0_25
# %bb.23:
	cmpl	$1044381695, %ebx       # imm = 0x3E3FFFFF
	ja	.LBB0_25
# %bb.24:
	mulsd	.LCPI0_11(%rip), %xmm3
	jmp	.LBB0_26
.LBB0_25:
	movapd	%xmm3, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	.LCPI0_3(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	.LCPI0_5(%rip), %xmm0
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_7(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_8(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_9(%rip), %xmm2
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_10(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	.LCPI0_1(%rip), %xmm2
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	mulsd	.LCPI0_11(%rip), %xmm3
	addsd	%xmm0, %xmm3
	jmp	.LBB0_26
.LBB0_4:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_20
.LBB0_7:
	movapd	-48(%rbp), %xmm4        # 16-byte Reload
	divsd	%xmm4, %xmm0
	movapd	%xmm0, %xmm6
.LBB0_8:
	movq	-24(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1207959552, %ebx       # imm = 0x48000000
	ja	.LBB0_20
# %bb.9:
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$1075838975, %eax       # imm = 0x401FFFFF
	jbe	.LBB0_11
# %bb.10:
	movl	$pr8, %edx
	movl	$ps8, %ecx
	jmp	.LBB0_14
.LBB0_11:
	cmpl	$1074933386, %eax       # imm = 0x40122E8A
	jbe	.LBB0_13
# %bb.12:
	movl	$pr5, %edx
	movl	$ps5, %ecx
	jmp	.LBB0_14
.LBB0_13:
	cmpl	$1074191212, %eax       # imm = 0x4006DB6C
	movl	$ps3, %edx
	movl	$ps2, %ecx
	cmovaq	%rdx, %rcx
	movl	$pr3, %esi
	movl	$pr2, %edx
	cmovaq	%rsi, %rdx
.LBB0_14:
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
	jbe	.LBB0_16
# %bb.15:
	movl	$qr8, %ecx
	movl	$qs8, %eax
	jmp	.LBB0_19
.LBB0_16:
	cmpl	$1074933386, %eax       # imm = 0x40122E8A
	jbe	.LBB0_18
# %bb.17:
	movl	$qr5, %ecx
	movl	$qs5, %eax
	jmp	.LBB0_19
.LBB0_18:
	cmpl	$1074191212, %eax       # imm = 0x4006DB6C
	movl	$qs3, %ecx
	movl	$qs2, %eax
	cmovaq	%rcx, %rax
	movl	$qr3, %edx
	movl	$qr2, %ecx
	cmovaq	%rdx, %rcx
.LBB0_19:
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
.LBB0_20:
	mulsd	.LCPI0_14(%rip), %xmm4
	movapd	%xmm4, -48(%rbp)        # 16-byte Spill
	callq	__ieee754_sqrt
	movapd	-48(%rbp), %xmm3        # 16-byte Reload
	divsd	%xmm0, %xmm3
	testl	%r14d, %r14d
	jns	.LBB0_26
# %bb.21:
	xorpd	.LCPI0_12(%rip), %xmm3
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm3, %xmm0
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_j1, .Lfunc_end0-__ieee754_j1
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_y1
.LCPI1_0:
	.quad	-4503599627370496       # double -Inf
.LCPI1_1:
	.quad	9221120237041090560     # double NaN
.LCPI1_2:
	.quad	-4721835091845642824    # double -9.1909915803987887E-8
.LCPI1_3:
	.quad	4537564656359094414     # double 2.352526005616105E-5
.LCPI1_4:
	.quad	-4656909046429453041    # double -0.0019125689587576355
.LCPI1_5:
	.quad	4587430549087923409     # double 0.050443871663981128
.LCPI1_6:
	.quad	-4627140315441218422    # double -0.19605709064623894
.LCPI1_7:
	.quad	4445703991582160682     # double 1.6655924620799208E-11
.LCPI1_8:
	.quad	4484106511813352070     # double 6.227414523646215E-9
.LCPI1_9:
	.quad	4519010771196087462     # double 1.3560880109751623E-6
.LCPI1_10:
	.quad	4551604895264110436     # double 2.0255258102513517E-4
.LCPI1_11:
	.quad	4581397828513671664     # double 0.01991673182366499
.LCPI1_12:
	.quad	4607182418800017408     # double 1
.LCPI1_13:
	.quad	4603909380684499075     # double 0.63661977236758138
.LCPI1_14:
	.quad	-4619462656170276733    # double -0.63661977236758138
.LCPI1_16:
	.quad	4600427019358961664     # double 0.375
.LCPI1_17:
	.quad	4603256987541740397     # double 0.56418958354775628
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_15:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_y1
	.p2align	4, 0x90
	.type	__ieee754_y1,@function
__ieee754_y1:                           # @__ieee754_y1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
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
	movsd	.LCPI1_12(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	jmp	.LBB1_29
.LBB1_2:
	orl	%ebx, %ecx
	je	.LBB1_8
# %bb.3:
	testl	%eax, %eax
	js	.LBB1_9
# %bb.4:
	cmpl	$1073741824, %ebx       # imm = 0x40000000
	jb	.LBB1_10
# %bb.5:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	sin
	movaps	%xmm0, -48(%rbp)        # 16-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	.LCPI1_15(%rip), %xmm6  # xmm6 = [-0.0E+0,-0.0E+0]
	xorpd	-48(%rbp), %xmm6        # 16-byte Folded Reload
	subsd	%xmm0, %xmm6
	cmpl	$2145386495, %ebx       # imm = 0x7FDFFFFF
	ja	.LBB1_12
# %bb.6:
	movapd	%xmm0, %xmm1
	movapd	%xmm6, -32(%rbp)        # 16-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	cos
	movsd	-56(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	-48(%rbp), %xmm1        # 16-byte Reload
	mulsd	%xmm3, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB1_14
# %bb.7:
	movapd	-32(%rbp), %xmm6        # 16-byte Reload
	divsd	%xmm6, %xmm0
	jmp	.LBB1_15
.LBB1_8:
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_29
.LBB1_9:
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_29
.LBB1_10:
	cmpl	$1016070144, %ebx       # imm = 0x3C900000
	ja	.LBB1_13
# %bb.11:
	movsd	.LCPI1_14(%rip), %xmm2  # xmm2 = mem[0],zero
	jmp	.LBB1_28
.LBB1_12:
	movsd	-16(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB1_27
.LBB1_13:
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
	movapd	%xmm1, %xmm3
	movsd	.LCPI1_7(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_8(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_9(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_10(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_11(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI1_12(%rip), %xmm1
	divsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_j1
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_log
	movapd	%xmm0, %xmm2
	mulsd	-32(%rbp), %xmm2        # 8-byte Folded Reload
	movsd	.LCPI1_12(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	subsd	%xmm0, %xmm2
	mulsd	.LCPI1_13(%rip), %xmm2
	addsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB1_29
.LBB1_14:
	movapd	-48(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm3, %xmm1
	movapd	%xmm0, %xmm6
	divsd	%xmm1, %xmm6
	movapd	%xmm1, %xmm0
.LBB1_15:
	movsd	-16(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	cmpl	$1207959553, %ebx       # imm = 0x48000001
	jae	.LBB1_27
# %bb.16:
	cmpl	$1075838975, %ebx       # imm = 0x401FFFFF
	jbe	.LBB1_18
# %bb.17:
	movl	$pr8, %ecx
	movl	$ps8, %eax
	jmp	.LBB1_21
.LBB1_18:
	cmpl	$1074933386, %ebx       # imm = 0x40122E8A
	jbe	.LBB1_20
# %bb.19:
	movl	$pr5, %ecx
	movl	$ps5, %eax
	jmp	.LBB1_21
.LBB1_20:
	cmpl	$1074191212, %ebx       # imm = 0x4006DB6C
	movl	$ps3, %ecx
	movl	$ps2, %eax
	cmovaq	%rcx, %rax
	movl	$pr3, %edx
	movl	$pr2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_21:
	movapd	%xmm5, %xmm1
	mulsd	%xmm5, %xmm1
	movsd	.LCPI1_12(%rip), %xmm3  # xmm3 = mem[0],zero
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
	jbe	.LBB1_23
# %bb.22:
	movl	$qr8, %ecx
	movl	$qs8, %eax
	jmp	.LBB1_26
.LBB1_23:
	cmpl	$1074933386, %ebx       # imm = 0x40122E8A
	jbe	.LBB1_25
# %bb.24:
	movl	$qr5, %ecx
	movl	$qs5, %eax
	jmp	.LBB1_26
.LBB1_25:
	cmpl	$1074191212, %ebx       # imm = 0x4006DB6C
	movl	$qs3, %ecx
	movl	$qs2, %eax
	cmovaq	%rcx, %rax
	movl	$qr3, %edx
	movl	$qr2, %ecx
	cmovaq	%rdx, %rcx
.LBB1_26:
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
	addsd	.LCPI1_12(%rip), %xmm4
	divsd	%xmm4, %xmm3
	addsd	.LCPI1_16(%rip), %xmm3
	divsd	%xmm5, %xmm3
	mulsd	%xmm3, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm1, %xmm6
	addsd	%xmm0, %xmm6
.LBB1_27:
	mulsd	.LCPI1_17(%rip), %xmm6
	movapd	%xmm6, -32(%rbp)        # 16-byte Spill
	movapd	%xmm5, %xmm0
	callq	__ieee754_sqrt
	movapd	-32(%rbp), %xmm2        # 16-byte Reload
.LBB1_28:
	divsd	%xmm0, %xmm2
.LBB1_29:
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ieee754_y1, .Lfunc_end1-__ieee754_y1
                                        # -- End function
	.type	pr8,@object             # @pr8
	.section	.rodata,"a",@progbits
	.p2align	4
pr8:
	.quad	0                       # double 0
	.quad	4593108669964483790     # double 0.11718749999998865
	.quad	4623642783075237838     # double 13.239480659307358
	.quad	4645956509072532880     # double 412.05185430737856
	.quad	4660739070293783244     # double 3874.7453891396053
	.quad	4665424076983468765     # double 7914.4795403189173
	.size	pr8, 48

	.type	ps8,@object             # @ps8
	.p2align	4
ps8:
	.quad	4637737046166039724     # double 114.20737037567841
	.quad	4660246896882558799     # double 3650.9308342085346
	.quad	4675312035863837567     # double 36956.206026903346
	.quad	4681443626114291643     # double 97602.79359349508
	.quad	4674196627785386797     # double 30804.272062788881
	.size	ps8, 40

	.type	pr5,@object             # @pr5
	.p2align	4
pr5:
	.quad	4444215450408176253     # double 1.3199051955624352E-11
	.quad	4593108669473816643     # double 0.1171874931906141
	.quad	4619345235458332131     # double 6.8027512786843287
	.quad	4637321927758054125     # double 108.30818299018911
	.quad	4647764391453972041     # double 517.63613953319975
	.quad	4647861843912428727     # double 528.71520136333754
	.size	pr5, 48

	.type	ps5,@object             # @ps5
	.p2align	4
ps5:
	.quad	4633539819881849661     # double 59.280598722113133
	.quad	4651931674920511233     # double 991.40141873361438
	.quad	4662607993962411771     # double 5353.2669529148798
	.quad	4665347342921480981     # double 7844.6903174955123
	.quad	4654329683615112785     # double 1504.0468881036106
	.size	ps5, 40

	.type	pr3,@object             # @pr3
	.p2align	4
pr3:
	.quad	4479388525873962717     # double 3.0250391613737362E-9
	.quad	4593108624248787323     # double 0.11718686556725359
	.quad	4616038696802495882     # double 3.9329775003331564
	.quad	4630139433958953257     # double 35.119403559163693
	.quad	4636107843717306423     # double 91.055011075078127
	.quad	4632030898649841381     # double 48.559068519736492
	.size	pr3, 48

	.type	ps3,@object             # @ps3
	.p2align	4
ps3:
	.quad	4630093258825139868     # double 34.791309500125152
	.quad	4644632004018677599     # double 336.76245874782575
	.quad	4652319004553631011     # double 1046.8713997577513
	.quad	4651046875287138793     # double 890.81134639825643
	.quad	4637003843403443539     # double 103.78793243963928
	.size	ps3, 40

	.type	pr2,@object             # @pr2
	.p2align	4
pr2:
	.quad	4502730828338775284     # double 1.0771083010687374E-7
	.quad	4593107857116106115     # double 0.11717621946268335
	.quad	4612515840360689344     # double 2.3685149666760879
	.quad	4623081595299015012     # double 12.242610914826123
	.quad	4625673627793067746     # double 17.693971127168773
	.quad	4617398297642189310     # double 5.073523125888185
	.size	pr2, 48

	.type	ps2,@object             # @ps2
	.p2align	4
ps2:
	.quad	4626727052061830364     # double 21.436485936382141
	.quad	4638516932880444629     # double 125.29022716840275
	.quad	4642376518279027673     # double 232.27646905716281
	.quad	4637981366650700969     # double 117.6793732871471
	.quad	4620898491152880018     # double 8.3646389337161828
	.size	ps2, 40

	.type	qr8,@object             # @qr8
	.p2align	4
qr8:
	.quad	0                       # double 0
	.quad	-4631318898052956685    # double -0.10253906249999271
	.quad	-4598098727748011529    # double -16.271753454458999
	.quad	-4573479293624732298    # double -759.60172251395011
	.quad	-4555631922415897579    # double -11849.806670242959
	.quad	-4546481884815647638    # double -48438.512428575035
	.size	qr8, 48

	.type	qs8,@object             # @qs8
	.p2align	4
qs8:
	.quad	4639882611305205221     # double 161.39536970072291
	.quad	4665326117599085593     # double 7825.3859992334847
	.quad	4683839934366703256     # double 133875.33628724958
	.quad	4694429024867752985     # double 719657.72368324094
	.quad	4693973273079819612     # double 666601.23261777638
	.quad	-4534569120172758504    # double -294490.26430383464
	.size	qs8, 48

	.type	qr5,@object             # @qr5
	.p2align	4
qr5:
	.quad	-4776355188663279464    # double -2.089799311417641E-11
	.quad	-4631318898936283153    # double -0.10253905024137543
	.quad	-4602647041615352501    # double -8.0564482812393603
	.quad	-4582705720479729232    # double -183.66960747488838
	.quad	-4569617851380305073    # double -1373.1937606550816
	.quad	-4565408795781650531    # double -2612.4444045321566
	.size	qr5, 48

	.type	qs5,@object             # @qs5
	.p2align	4
qs5:
	.quad	4635419745701204402     # double 81.276550138433578
	.quad	4656474838921902137     # double 1991.7987346048596
	.quad	4670530914603028009     # double 17468.485192490891
	.quad	4677084341551681943     # double 49851.427091035228
	.quad	4673411522359998027     # double 27948.075163891812
	.quad	-4561461224969101308    # double -4719.1835479512847
	.size	qs5, 48

	.type	qr3,@object             # @qr3
	.p2align	4
qr3:
	.quad	-4740654704431740849    # double -5.0783122646176656E-9
	.quad	-4631318986876850860    # double -0.10253782982083709
	.quad	-4606495489464804865    # double -4.610115811394734
	.quad	-4590033946861037862    # double -57.847221656278364
	.quad	-4581137379441978017    # double -228.2445407376317
	.quad	-4581455249564492810    # double -219.21012847890933
	.size	qr3, 48

	.type	qs3,@object             # @qs3
	.p2align	4
qs3:
	.quad	4631905091510822884     # double 47.665155032372951
	.quad	4649138596034506302     # double 673.86511267669971
	.quad	4659651449835125914     # double 3380.1528667952634
	.quad	4662821807351223462     # double 5547.7290972072278
	.quad	4656084822175047499     # double 1903.119193388108
	.quad	-4584411051263905505    # double -135.20119144430734
	.size	qs3, 48

	.type	qr2,@object             # @qr2
	.p2align	4
qr2:
	.quad	-4717536937982417198    # double -1.7838172751095887E-7
	.quad	-4631320484753395696    # double -0.10251704260798555
	.quad	-4609992201811046694    # double -2.7522056827818746
	.quad	-4597144003242585985    # double -19.663616264370372
	.quad	-4592218461252334934    # double -42.325313337283049
	.quad	-4596663158158954926    # double -21.371921170370406
	.size	qr2, 48

	.type	qs2,@object             # @qs2
	.p2align	4
qs2:
	.quad	4629006120318297343     # double 29.533362906052385
	.quad	4643105013550423226     # double 252.98154998219053
	.quad	4649874281219072247     # double 757.50283486864544
	.quad	4649714987232968745     # double 739.39320532046725
	.quad	4639690984324520148     # double 155.94900333666612
	.quad	-4606102118978557845    # double -4.9594989882262821
	.size	qs2, 48

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
