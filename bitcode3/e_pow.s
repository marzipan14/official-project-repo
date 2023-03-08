	.text
	.file	"e_pow.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_pow
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4845873199050653696     # double 9007199254740992
.LCPI0_2:
	.quad	4596625081194860271     # double 0.20697501780033842
.LCPI0_3:
	.quad	4597478449480325989     # double 0.23066074577556175
.LCPI0_4:
	.quad	4598584653024936193     # double 0.27272812380853401
.LCPI0_5:
	.quad	4599676419357746765     # double 0.33333332981837743
.LCPI0_6:
	.quad	4601392076422097919     # double 0.42857142857855018
.LCPI0_7:
	.quad	4603579539098120963     # double 0.59999999999999465
.LCPI0_8:
	.quad	4613937818241073152     # double 3
.LCPI0_9:
	.quad	-4609434218613702656    # double -3
.LCPI0_10:
	.quad	4606838314073325568     # double 0.96179670095443726
.LCPI0_11:
	.quad	-4738297118486494731    # double -7.0284616509527583E-9
.LCPI0_12:
	.quad	4606838314010018813     # double 0.96179669392597555
.LCPI0_13:
	.quad	-4616189618054758400    # double -1
.LCPI0_14:
	.quad	-4625196817309499392    # double -0.25
.LCPI0_15:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI0_16:
	.quad	4602678819172646912     # double 0.5
.LCPI0_17:
	.quad	4609176139934466048     # double 1.4426950216293335
.LCPI0_18:
	.quad	4491406094830001988     # double 1.9259629911266175E-8
.LCPI0_19:
	.quad	-4614195896833572098    # double -1.4426950408889634
.LCPI0_21:
	.quad	118622047889322841      # double 1.0E-300
.LCPI0_22:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_23:
	.quad	4365981760143196926     # double 8.0085662595372941E-17
.LCPI0_24:
	.quad	4604418534330597376     # double 0.69314718246459961
.LCPI0_25:
	.quad	4604418534313441775     # double 0.69314718055994529
.LCPI0_26:
	.quad	-4746692435354555335    # double -1.904654299957768E-9
.LCPI0_27:
	.quad	4496342204012209360     # double 4.1381367970572385E-8
.LCPI0_28:
	.quad	-4702957295668925455    # double -1.6533902205465252E-6
.LCPI0_29:
	.quad	4544508515198557740     # double 6.6137563214379344E-5
.LCPI0_30:
	.quad	-4654820494858601069    # double -0.0027777777777015593
.LCPI0_31:
	.quad	4595172819793696062     # double 0.16666666666666602
.LCPI0_32:
	.quad	-4611686018427387904    # double -2
.LCPI0_33:
	.quad	9218868437227405312     # double +Inf
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_20:
	.quad	4607182418800017408     # double 1
	.quad	-4616189618054758400    # double -1
.LCPI0_34:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_pow
	.p2align	4, 0x90
	.type	__ieee754_pow,@function
__ieee754_pow:                          # @__ieee754_pow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%xmm1, %r12
	movq	%r12, %r13
	shrq	$32, %r13
	movl	%r13d, %r15d
	andl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	movl	%r15d, %eax
	orl	%r12d, %eax
	je	.LBB0_37
# %bb.1:
	movq	%xmm0, %rsi
	movq	%rsi, %r14
	shrq	$32, %r14
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jbe	.LBB0_4
.LBB0_2:
	addl	$-1072693248, %ebx      # imm = 0xC0100000
	orl	%esi, %ebx
	je	.LBB0_37
# %bb.3:
	movl	$.L.str, %edi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	nan                     # TAILCALL
.LBB0_4:
	sete	%al
	testl	%esi, %esi
	setne	%cl
	testb	%al, %cl
	jne	.LBB0_2
# %bb.5:
	cmpl	$2146435072, %r15d      # imm = 0x7FF00000
	ja	.LBB0_2
# %bb.6:
	testl	%r12d, %r12d
	je	.LBB0_8
# %bb.7:
	cmpl	$2146435072, %r15d      # imm = 0x7FF00000
	je	.LBB0_2
.LBB0_8:
	testl	%r14d, %r14d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	js	.LBB0_9
.LBB0_14:
	xorl	%ecx, %ecx
	jmp	.LBB0_15
.LBB0_9:
	movl	$2, %ecx
	cmpl	$1128267775, %r15d      # imm = 0x433FFFFF
	jbe	.LBB0_10
.LBB0_15:
	testl	%r12d, %r12d
	je	.LBB0_43
.LBB0_16:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movdqa	%xmm1, -96(%rbp)        # 16-byte Spill
	movq	%xmm0, -72(%rbp)        # 8-byte Folded Spill
	callq	fabs
	movdqa	%xmm0, %xmm6
	movq	-64(%rbp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	jne	.LBB0_19
# %bb.17:
	testl	%ebx, %ebx
	je	.LBB0_31
# %bb.18:
	movl	%ebx, %eax
	orl	$1073741824, %eax       # imm = 0x40000000
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	je	.LBB0_31
.LBB0_19:
	shrq	$63, %rsi
	addl	$-1, %esi
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, %eax
	orl	%esi, %eax
	je	.LBB0_24
# %bb.20:
	movabsq	$-4294967296, %r8       # imm = 0xFFFFFFFF00000000
	cmpl	$1105199105, %r15d      # imm = 0x41E00001
	jb	.LBB0_26
# %bb.21:
	cmpl	$1139802113, %r15d      # imm = 0x43F00001
	jb	.LBB0_38
# %bb.22:
	cmpl	$1072693247, %ebx       # imm = 0x3FEFFFFF
	ja	.LBB0_59
	jmp	.LBB0_23
.LBB0_24:
	movsd	-72(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
.LBB0_25:
	subsd	%xmm6, %xmm6
	divsd	%xmm6, %xmm6
	jmp	.LBB0_37
.LBB0_10:
	cmpl	$1072693248, %r15d      # imm = 0x3FF00000
	jb	.LBB0_14
# %bb.11:
	movl	%r15d, %eax
	shrl	$20, %eax
	cmpl	$1094713344, %r15d      # imm = 0x41400000
	jb	.LBB0_40
# %bb.12:
	movb	$51, %cl
	subb	%al, %cl
	movl	%r12d, %eax
	shrl	%cl, %eax
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$0, %ecx
	cmpl	%r12d, %edx
	jne	.LBB0_15
# %bb.13:
	andl	$1, %eax
	movl	$2, %ecx
	subl	%eax, %ecx
	jmp	.LBB0_15
.LBB0_26:
	xorl	%r9d, %r9d
	movl	$0, %ecx
	cmpl	$1048575, %ebx          # imm = 0xFFFFF
	ja	.LBB0_28
# %bb.27:
	mulsd	.LCPI0_1(%rip), %xmm6
	movq	%xmm6, %rbx
	shrq	$32, %rbx
	movl	$-53, %ecx
.LBB0_28:
	movl	%ebx, %edx
	sarl	$20, %edx
	addl	%edx, %ecx
	addl	$-1023, %ecx            # imm = 0xFC01
	andl	$1048575, %ebx          # imm = 0xFFFFF
	leal	1072693248(%rbx), %eax
	cmpl	$235663, %ebx           # imm = 0x3988F
	jb	.LBB0_61
# %bb.29:
	cmpl	$767610, %ebx           # imm = 0xBB67A
	jae	.LBB0_60
# %bb.30:
	movl	$1, %r9d
	jmp	.LBB0_61
.LBB0_31:
	testl	%r13d, %r13d
	movl	-44(%rbp), %eax         # 4-byte Reload
	jns	.LBB0_33
# %bb.32:                               # %select.true.sink
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm6
.LBB0_33:                               # %select.end
	testl	%r14d, %r14d
	jns	.LBB0_37
# %bb.34:
	addl	$-1072693248, %ebx      # imm = 0xC0100000
	orl	%eax, %ebx
	je	.LBB0_25
# %bb.35:
	cmpl	$1, %eax
	jne	.LBB0_37
# %bb.36:
	xorpd	.LCPI0_34(%rip), %xmm6
	jmp	.LBB0_37
.LBB0_38:
	cmpl	$1072693246, %ebx       # imm = 0x3FEFFFFE
	ja	.LBB0_74
.LBB0_23:
	testl	%r13d, %r13d
	jns	.LBB0_55
	jmp	.LBB0_76
.LBB0_40:
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	jne	.LBB0_16
# %bb.41:
	movb	$19, %cl
	subb	%al, %cl
	movl	%r15d, %eax
	shrl	%cl, %eax
	movl	%eax, %edx
	shll	%cl, %edx
	xorl	%ecx, %ecx
	cmpl	%r15d, %edx
	jne	.LBB0_43
# %bb.42:
	andl	$1, %eax
	movl	$2, %ecx
	subl	%eax, %ecx
.LBB0_43:
	cmpl	$2146435072, %r15d      # imm = 0x7FF00000
	jne	.LBB0_49
# %bb.44:
	leal	-1072693248(%rbx), %eax
	orl	-64(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB0_37
# %bb.45:
	cmpl	$1072693248, %ebx       # imm = 0x3FF00000
	jb	.LBB0_54
# %bb.46:
	testl	%r13d, %r13d
	jns	.LBB0_48
# %bb.47:
	pxor	%xmm1, %xmm1
.LBB0_48:
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_37
.LBB0_49:
	cmpl	$1072693248, %r15d      # imm = 0x3FF00000
	jne	.LBB0_52
# %bb.50:
	testl	%r13d, %r13d
	js	.LBB0_79
# %bb.51:
	movapd	%xmm0, %xmm6
	jmp	.LBB0_37
.LBB0_52:
	cmpl	$1073741824, %r13d      # imm = 0x40000000
	jne	.LBB0_56
# %bb.53:
	mulsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm6
	jmp	.LBB0_37
.LBB0_54:
	testl	%r13d, %r13d
	jns	.LBB0_55
# %bb.80:
	pxor	.LCPI0_34(%rip), %xmm1
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_37
.LBB0_56:
	testl	%r14d, %r14d
	js	.LBB0_16
# %bb.57:
	cmpl	$1071644672, %r13d      # imm = 0x3FE00000
	jne	.LBB0_16
# %bb.58:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ieee754_sqrt          # TAILCALL
.LBB0_60:
	addl	$1, %ecx
	addl	$-1048576, %eax         # imm = 0xFFF00000
.LBB0_61:
	movq	%xmm6, %rdx
	movq	%rax, %rdi
	shlq	$32, %rdi
	movl	%edx, %edx
	orq	%rdi, %rdx
	movq	%rdx, %xmm1
	movl	%r9d, %edx
	movsd	bp(,%rdx,8), %xmm2      # xmm2 = mem[0],zero
	movdqa	%xmm1, %xmm0
	subsd	%xmm2, %xmm0
	sarl	%eax
	orl	$536870912, %eax        # imm = 0x20000000
	shll	$18, %r9d
	addl	%r9d, %eax
	addl	$524288, %eax           # imm = 0x80000
	shlq	$32, %rax
	movq	%rax, %xmm5
	movdqa	%xmm5, %xmm6
	subsd	%xmm2, %xmm6
	addsd	%xmm1, %xmm2
	movsd	.LCPI0_0(%rip), %xmm7   # xmm7 = mem[0],zero
	divsd	%xmm2, %xmm7
	movapd	%xmm0, %xmm4
	mulsd	%xmm7, %xmm4
	movq	%r8, %xmm2
	movapd	%xmm4, %xmm3
	andpd	%xmm2, %xmm3
	subsd	%xmm6, %xmm1
	mulsd	%xmm3, %xmm5
	subsd	%xmm5, %xmm0
	movapd	%xmm4, %xmm5
	mulsd	%xmm4, %xmm5
	movsd	.LCPI0_2(%rip), %xmm6   # xmm6 = mem[0],zero
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_3(%rip), %xmm6
	mulsd	%xmm3, %xmm1
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_4(%rip), %xmm6
	subsd	%xmm1, %xmm0
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_5(%rip), %xmm6
	mulsd	%xmm7, %xmm0
	mulsd	%xmm5, %xmm6
	addsd	.LCPI0_6(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	mulsd	%xmm5, %xmm5
	addsd	.LCPI0_7(%rip), %xmm6
	mulsd	%xmm5, %xmm6
	movapd	%xmm4, %xmm1
	addsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm6, %xmm1
	movapd	%xmm3, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	.LCPI0_8(%rip), %xmm6   # xmm6 = mem[0],zero
	addsd	%xmm5, %xmm6
	addsd	%xmm1, %xmm6
	andpd	%xmm2, %xmm6
	movsd	.LCPI0_9(%rip), %xmm7   # xmm7 = mem[0],zero
	addsd	%xmm6, %xmm7
	subsd	%xmm5, %xmm7
	subsd	%xmm7, %xmm1
	mulsd	%xmm6, %xmm3
	mulsd	%xmm0, %xmm6
	mulsd	%xmm4, %xmm1
	addsd	%xmm6, %xmm1
	movapd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	andpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm4
	subsd	%xmm3, %xmm4
	movsd	.LCPI0_10(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	.LCPI0_11(%rip), %xmm0
	subsd	%xmm4, %xmm1
	mulsd	.LCPI0_12(%rip), %xmm1
	addsd	%xmm0, %xmm1
	addsd	dp_l(,%rdx,8), %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	movapd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	movsd	dp_h(,%rdx,8), %xmm5    # xmm5 = mem[0],zero
	addsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm0
	andpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm4, %xmm2
	subsd	%xmm5, %xmm2
.LBB0_62:
	subsd	%xmm3, %xmm2
	movapd	-96(%rbp), %xmm4        # 16-byte Reload
	subsd	%xmm2, %xmm1
	addl	$-1, %r10d
	xorl	%eax, %eax
	orl	%esi, %r10d
	sete	%al
	movsd	.LCPI0_20(,%rax,8), %xmm6 # xmm6 = mem[0],zero
	andq	%r8, %r12
	movq	%r12, %xmm2
	mulsd	%xmm4, %xmm1
	subsd	%xmm2, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	movq	%xmm1, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	cmpl	$1083179008, %edx       # imm = 0x40900000
	jl	.LBB0_67
# %bb.63:
	leal	-1083179008(%rdx), %eax
	orl	%esi, %eax
	jne	.LBB0_65
# %bb.64:
	movsd	.LCPI0_23(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm4, %xmm2
	subsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.LBB0_70
.LBB0_65:
	movsd	.LCPI0_22(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB0_66
.LBB0_67:
	movl	%edx, %eax
	andl	$2147482624, %eax       # imm = 0x7FFFFC00
	cmpl	$1083231232, %eax       # imm = 0x4090CC00
	jb	.LBB0_70
# %bb.68:
	leal	1064252416(%rdx), %eax
	orl	%esi, %eax
	jne	.LBB0_77
# %bb.69:
	subsd	%xmm0, %xmm1
	ucomisd	%xmm4, %xmm1
	jae	.LBB0_77
.LBB0_70:
	movl	%edx, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	cmpl	$1071644673, %ecx       # imm = 0x3FE00001
	jb	.LBB0_72
# %bb.71:
	shrl	$20, %ecx
	addb	$2, %cl
	movl	$1048576, %esi          # imm = 0x100000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	addl	%edx, %esi
	movl	%esi, %eax
	shrl	$20, %eax
	leal	1(%rax), %ecx
	movl	$-1048576, %ebx         # imm = 0xFFF00000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %ebx
	andl	%esi, %ebx
	shlq	$32, %rbx
	andl	$1048575, %esi          # imm = 0xFFFFF
	orl	$1048576, %esi          # imm = 0x100000
	movb	$19, %cl
	subb	%al, %cl
	shrl	%cl, %esi
	movl	%esi, %edi
	negl	%edi
	testl	%edx, %edx
	cmovnsl	%esi, %edi
	movq	%rbx, %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm4, %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rsi
.LBB0_72:
	andq	%r8, %rsi
	movq	%rsi, %xmm1
	movsd	.LCPI0_24(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	movapd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm4
	mulsd	.LCPI0_25(%rip), %xmm4
	mulsd	.LCPI0_26(%rip), %xmm1
	addsd	%xmm4, %xmm1
	movapd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm3
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	.LCPI0_27(%rip), %xmm5  # xmm5 = mem[0],zero
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_28(%rip), %xmm5
	subsd	%xmm2, %xmm3
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_29(%rip), %xmm5
	subsd	%xmm3, %xmm1
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_30(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	addsd	.LCPI0_31(%rip), %xmm5
	mulsd	%xmm4, %xmm5
	movapd	%xmm0, %xmm2
	subsd	%xmm5, %xmm2
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_32(%rip), %xmm2
	divsd	%xmm2, %xmm3
	movapd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	%edi, %ecx
	shll	$20, %ecx
	addl	%edx, %ecx
	cmpl	$1048575, %ecx          # imm = 0xFFFFF
	jg	.LBB0_78
# %bb.73:
	movapd	%xmm6, -64(%rbp)        # 16-byte Spill
	callq	scalbn
	movapd	-64(%rbp), %xmm6        # 16-byte Reload
	mulsd	%xmm0, %xmm6
	jmp	.LBB0_37
.LBB0_74:
	cmpl	$1072693249, %ebx       # imm = 0x3FF00001
	jb	.LBB0_81
.LBB0_59:
	testl	%r13d, %r13d
	jg	.LBB0_76
.LBB0_55:
	xorpd	%xmm6, %xmm6
	jmp	.LBB0_37
.LBB0_76:
	movsd	.LCPI0_33(%rip), %xmm6  # xmm6 = mem[0],zero
	jmp	.LBB0_37
.LBB0_77:
	movsd	.LCPI0_21(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB0_66:
	mulsd	%xmm0, %xmm6
	mulsd	%xmm0, %xmm6
	jmp	.LBB0_37
.LBB0_78:
	shlq	$32, %rcx
	movl	%eax, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm0
	mulsd	%xmm0, %xmm6
	jmp	.LBB0_37
.LBB0_79:
	movsd	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero
	divsd	%xmm0, %xmm6
.LBB0_37:
	movapd	%xmm6, %xmm0
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_81:
	addsd	.LCPI0_13(%rip), %xmm6
	movapd	%xmm6, %xmm0
	movsd	.LCPI0_14(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm6, %xmm2
	addsd	.LCPI0_15(%rip), %xmm2
	mulsd	%xmm6, %xmm0
	mulsd	%xmm6, %xmm2
	movsd	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	.LCPI0_17(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm6, %xmm3
	mulsd	.LCPI0_18(%rip), %xmm6
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI0_19(%rip), %xmm1
	addsd	%xmm6, %xmm1
	movapd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movq	%r8, %xmm0
	pand	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	jmp	.LBB0_62
.Lfunc_end0:
	.size	__ieee754_pow, .Lfunc_end0-__ieee754_pow
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	bp,@object              # @bp
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
bp:
	.quad	4607182418800017408     # double 1
	.quad	4609434218613702656     # double 1.5
	.size	bp, 16

	.type	dp_l,@object            # @dp_l
	.p2align	4
dp_l:
	.quad	0                       # double 0
	.quad	4489242115478376454     # double 1.350039202129749E-8
	.size	dp_l, 16

	.type	dp_h,@object            # @dp_h
	.p2align	4
dp_h:
	.quad	0                       # double 0
	.quad	4603444093224222720     # double 0.58496248722076416
	.size	dp_h, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
