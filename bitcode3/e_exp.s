	.text
	.file	"e_exp.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_exp
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	9218868437227405312     # double +Inf
.LCPI0_3:
	.quad	4649454530587146735     # double 709.78271289338397
.LCPI0_4:
	.quad	-4573606559926636463    # double -745.13321910194111
.LCPI0_5:
	.quad	4609176140021203710     # double 1.4426950408889634
.LCPI0_6:
	.quad	4604418534311723008     # double 0.69314718036912382
.LCPI0_7:
	.quad	4461442080421002358     # double 1.9082149292705877E-10
.LCPI0_8:
	.quad	4496342204012209360     # double 4.1381367970572385E-8
.LCPI0_9:
	.quad	-4702957295668925455    # double -1.6533902205465252E-6
.LCPI0_10:
	.quad	4544508515198557740     # double 6.6137563214379344E-5
.LCPI0_11:
	.quad	-4654820494858601069    # double -0.0027777777777015593
.LCPI0_12:
	.quad	4595172819793696062     # double 0.16666666666666602
.LCPI0_13:
	.quad	4611686018427387904     # double 2
.LCPI0_14:
	.quad	103582791429521408      # double 9.3326361850321888E-302
.LCPI0_15:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	__ieee754_exp
	.p2align	4, 0x90
	.type	__ieee754_exp,@function
__ieee754_exp:                          # @__ieee754_exp
# %bb.0:
	movq	%xmm0, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	movq	%rax, %rcx
	shrq	$63, %rcx
	movl	%edx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$1082535490, %esi       # imm = 0x40862E42
	jb	.LBB0_8
# %bb.1:
	cmpl	$2146435072, %esi       # imm = 0x7FF00000
	jb	.LBB0_6
# %bb.2:
	andl	$1048575, %edx          # imm = 0xFFFFF
	movapd	%xmm0, %xmm1
	testl	%ecx, %ecx
	je	.LBB0_4
# %bb.3:
	xorpd	%xmm1, %xmm1
.LBB0_4:
	orl	%eax, %edx
	je	.LBB0_23
# %bb.5:
	addsd	%xmm0, %xmm0
	retq
.LBB0_8:
	cmpl	$1071001155, %esi       # imm = 0x3FD62E43
	jb	.LBB0_16
# %bb.9:
	cmpl	$1072734897, %esi       # imm = 0x3FF0A2B1
	ja	.LBB0_12
# %bb.10:
	movsd	ln2HI(,%rcx,8), %xmm2   # xmm2 = mem[0],zero
	movsd	ln2LO(,%rcx,8), %xmm1   # xmm1 = mem[0],zero
	movl	%ecx, %eax
	xorl	$1, %eax
	subl	%ecx, %eax
	jmp	.LBB0_13
.LBB0_6:
	ucomisd	.LCPI0_3(%rip), %xmm0
	jbe	.LBB0_11
# %bb.7:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	retq
.LBB0_16:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	xorl	%eax, %eax
	ucomisd	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_17
# %bb.18:
	cmpl	$1043333119, %esi       # imm = 0x3E2FFFFF
	ja	.LBB0_17
# %bb.19:
	addsd	.LCPI0_1(%rip), %xmm0
	retq
.LBB0_11:
	xorpd	%xmm1, %xmm1
	movsd	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	ja	.LBB0_23
.LBB0_12:
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	halF(,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	mulsd	.LCPI0_7(%rip), %xmm1
.LBB0_13:
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm0
	jmp	.LBB0_14
.LBB0_17:
                                        # implicit-def: $xmm1
                                        # implicit-def: $xmm2
.LBB0_14:
	movapd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	.LCPI0_8(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm3, %xmm5
	addsd	.LCPI0_9(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	addsd	.LCPI0_10(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	addsd	.LCPI0_11(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	addsd	.LCPI0_12(%rip), %xmm5
	mulsd	%xmm3, %xmm5
	movapd	%xmm0, %xmm4
	subsd	%xmm5, %xmm4
	movapd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	testl	%eax, %eax
	je	.LBB0_15
# %bb.20:
	movsd	.LCPI0_13(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm4, %xmm0
	divsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	addsd	.LCPI0_1(%rip), %xmm2
	movq	%xmm2, %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movl	%eax, %ecx
	shll	$20, %ecx
	addl	%esi, %ecx
	cmpl	$-1021, %eax            # imm = 0xFC03
	jl	.LBB0_22
# %bb.21:
	shlq	$32, %rcx
	movl	%edx, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm0
	retq
.LBB0_15:
	addsd	.LCPI0_15(%rip), %xmm4
	divsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	retq
.LBB0_22:
	addl	$1048576000, %ecx       # imm = 0x3E800000
	shlq	$32, %rcx
	movl	%edx, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm1
	mulsd	.LCPI0_14(%rip), %xmm1
.LBB0_23:
	movapd	%xmm1, %xmm0
	retq
.Lfunc_end0:
	.size	__ieee754_exp, .Lfunc_end0-__ieee754_exp
                                        # -- End function
	.type	ln2HI,@object           # @ln2HI
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
ln2HI:
	.quad	4604418534311723008     # double 0.69314718036912382
	.quad	-4618953502543052800    # double -0.69314718036912382
	.size	ln2HI, 16

	.type	ln2LO,@object           # @ln2LO
	.p2align	4
ln2LO:
	.quad	4461442080421002358     # double 1.9082149292705877E-10
	.quad	-4761929956433773450    # double -1.9082149292705877E-10
	.size	ln2LO, 16

	.type	halF,@object            # @halF
	.p2align	4
halF:
	.quad	4602678819172646912     # double 0.5
	.quad	-4620693217682128896    # double -0.5
	.size	halF, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
