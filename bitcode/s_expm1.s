	.text
	.file	"s_expm1.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function expm1
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4604418534311723008     # double 0.69314718036912382
.LCPI0_2:
	.quad	-4761929956433773450    # double -1.9082149292705877E-10
.LCPI0_3:
	.quad	-4618953502543052800    # double -0.69314718036912382
.LCPI0_4:
	.quad	4461442080421002358     # double 1.9082149292705877E-10
.LCPI0_5:
	.quad	9218868437227405312     # double +Inf
.LCPI0_6:
	.quad	4649454530587146735     # double 709.78271289338397
.LCPI0_7:
	.quad	118622047889322841      # double 1.0E-300
.LCPI0_8:
	.quad	-4616189618054758400    # double -1
.LCPI0_9:
	.quad	4609176140021203710     # double 1.4426950408889634
.LCPI0_11:
	.quad	4602678819172646912     # double 0.5
.LCPI0_12:
	.quad	-4716678695450197203    # double -2.0109921818362437E-7
.LCPI0_13:
	.quad	4526346094260933177     # double 4.0082178273293624E-6
.LCPI0_14:
	.quad	-4677887503499600969    # double -7.9365075786748794E-5
.LCPI0_15:
	.quad	4564962959435912581     # double 0.0015873015872548146
.LCPI0_16:
	.quad	-4638407376216452876    # double -0.033333333333333132
.LCPI0_17:
	.quad	4607182418800017408     # double 1
.LCPI0_18:
	.quad	4613937818241073152     # double 3
.LCPI0_19:
	.quad	4618441417868443648     # double 6
.LCPI0_20:
	.quad	-4625196817309499392    # double -0.25
.LCPI0_21:
	.quad	-4611686018427387904    # double -2
.LCPI0_22:
	.quad	-4620693217682128896    # double -0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3
.LCPI0_10:
	.quad	-4620693217682128896    # double -0.5
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	expm1
	.p2align	4, 0x90
	.type	expm1,@function
expm1:                                  # @expm1
# %bb.0:
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$1078159482, %edx       # imm = 0x4043687A
	jb	.LBB0_7
# %bb.1:
	cmpl	$1082535490, %edx       # imm = 0x40862E42
	jb	.LBB0_15
# %bb.2:
	cmpl	$2146435072, %edx       # imm = 0x7FF00000
	jb	.LBB0_13
# %bb.3:
	movl	%eax, %edx
	andl	$1048575, %edx          # imm = 0xFFFFF
	movapd	%xmm0, %xmm1
	testl	$-2147483648, %eax      # imm = 0x80000000
	je	.LBB0_5
# %bb.4:
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB0_5:
	orl	%ecx, %edx
	je	.LBB0_28
# %bb.6:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_27
.LBB0_7:
	cmpl	$1071001155, %edx       # imm = 0x3FD62E43
	jb	.LBB0_11
# %bb.8:
	cmpl	$1072734897, %edx       # imm = 0x3FF0A2B1
	ja	.LBB0_18
# %bb.9:
	testl	$-2147483648, %eax      # imm = 0x80000000
	jne	.LBB0_33
# %bb.10:
	addsd	.LCPI0_3(%rip), %xmm0
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$1, %ecx
	movapd	%xmm0, %xmm2
	jmp	.LBB0_19
.LBB0_11:
	cmpl	$1016070143, %edx       # imm = 0x3C8FFFFF
	ja	.LBB0_20
# %bb.12:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm1
	jmp	.LBB0_26
.LBB0_13:
	ucomisd	.LCPI0_6(%rip), %xmm0
	jbe	.LBB0_15
# %bb.14:
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_28
.LBB0_15:
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB0_18
# %bb.16:
	movl	%eax, %ecx
	andl	$-2147483648, %ecx      # imm = 0x80000000
	je	.LBB0_18
# %bb.17:
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_28
.LBB0_18:
	xorl	%ecx, %ecx
	testl	$-2147483648, %eax      # imm = 0x80000000
	sete	%cl
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_10(,%rcx,8), %xmm1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movsd	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	mulsd	.LCPI0_4(%rip), %xmm1
.LBB0_19:
	movapd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	jmp	.LBB0_21
.LBB0_20:
	xorl	%ecx, %ecx
                                        # implicit-def: $xmm2
.LBB0_21:
	movsd	.LCPI0_11(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm0, %xmm4
	movapd	%xmm0, %xmm3
	mulsd	%xmm4, %xmm3
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_13(%rip), %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_14(%rip), %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_15(%rip), %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_16(%rip), %xmm1
	mulsd	%xmm3, %xmm1
	addsd	.LCPI0_17(%rip), %xmm1
	mulsd	%xmm1, %xmm4
	movsd	.LCPI0_18(%rip), %xmm5  # xmm5 = mem[0],zero
	subsd	%xmm4, %xmm5
	subsd	%xmm5, %xmm1
	mulsd	%xmm0, %xmm5
	movsd	.LCPI0_19(%rip), %xmm4  # xmm4 = mem[0],zero
	subsd	%xmm5, %xmm4
	divsd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm1
	testl	%ecx, %ecx
	je	.LBB0_25
# %bb.22:
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	subsd	%xmm3, %xmm1
	cmpl	$1, %ecx
	je	.LBB0_29
# %bb.23:
	cmpl	$-1, %ecx
	jne	.LBB0_31
# %bb.24:
	subsd	%xmm1, %xmm0
	mulsd	.LCPI0_11(%rip), %xmm0
	addsd	.LCPI0_22(%rip), %xmm0
	jmp	.LBB0_27
.LBB0_25:
	mulsd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
.LBB0_26:
	subsd	%xmm1, %xmm0
.LBB0_27:
	movapd	%xmm0, %xmm1
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	retq
.LBB0_29:
	movsd	.LCPI0_20(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_34
# %bb.30:
	addsd	.LCPI0_11(%rip), %xmm0
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_21(%rip), %xmm1
	jmp	.LBB0_28
.LBB0_31:
	leal	1(%rcx), %eax
	cmpl	$58, %eax
	jb	.LBB0_35
# %bb.32:
	subsd	%xmm1, %xmm0
	addsd	.LCPI0_17(%rip), %xmm0
	movq	%xmm0, %rax
	movl	%eax, %edx
	shrq	$32, %rax
	shll	$20, %ecx
	addl	%eax, %ecx
	shlq	$32, %rcx
	orq	%rcx, %rdx
	movq	%rdx, %xmm1
	addsd	.LCPI0_8(%rip), %xmm1
	jmp	.LBB0_28
.LBB0_33:
	addsd	.LCPI0_1(%rip), %xmm0
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$-1, %ecx
	movapd	%xmm0, %xmm2
	jmp	.LBB0_19
.LBB0_34:
	subsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	addsd	.LCPI0_17(%rip), %xmm0
	jmp	.LBB0_27
.LBB0_35:
	cmpl	$19, %ecx
	jg	.LBB0_37
# %bb.36:
	movl	$2097152, %eax          # imm = 0x200000
	shrl	%cl, %eax
	movl	$1072693248, %edx       # imm = 0x3FF00000
	subl	%eax, %edx
	shlq	$32, %rdx
	movq	%rdx, %xmm2
	subsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	movq	%xmm2, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	shll	$20, %ecx
	addl	%edx, %ecx
	jmp	.LBB0_38
.LBB0_37:
	shll	$20, %ecx
	movl	$1072693248, %eax       # imm = 0x3FF00000
	subl	%ecx, %eax
	shlq	$32, %rax
	movq	%rax, %xmm2
	addsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	addsd	.LCPI0_17(%rip), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	addl	%ecx, %edx
	movl	%edx, %ecx
.LBB0_38:
	shlq	$32, %rcx
	movl	%eax, %eax
	orq	%rcx, %rax
	movq	%rax, %xmm1
	jmp	.LBB0_28
.Lfunc_end0:
	.size	expm1, .Lfunc_end0-expm1
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
