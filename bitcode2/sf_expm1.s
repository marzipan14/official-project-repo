	.text
	.file	"sf_expm1.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function expm1f
.LCPI0_0:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_1:
	.long	1060204928              # float 0.693138123
.LCPI0_2:
	.long	3071801297              # float -9.05800061E-6
.LCPI0_3:
	.long	3207688576              # float -0.693138123
.LCPI0_4:
	.long	924317649               # float 9.05800061E-6
.LCPI0_5:
	.long	2139095040              # float +Inf
.LCPI0_6:
	.long	228737632               # float 1.0E-30
.LCPI0_7:
	.long	3212836864              # float -1
.LCPI0_8:
	.long	1069066811              # float 1.44269502
.LCPI0_10:
	.long	1056964608              # float 0.5
.LCPI0_11:
	.long	3025661371              # float -2.01099212E-7
.LCPI0_12:
	.long	914783828               # float 4.00821773E-6
.LCPI0_13:
	.long	3097915597              # float -7.9365076E-5
.LCPI0_14:
	.long	986713345               # float 0.00158730161
.LCPI0_15:
	.long	3171453065              # float -0.0333333351
.LCPI0_16:
	.long	1065353216              # float 1
.LCPI0_17:
	.long	1077936128              # float 3
.LCPI0_18:
	.long	1086324736              # float 6
.LCPI0_19:
	.long	3196059648              # float -0.25
.LCPI0_20:
	.long	3221225472              # float -2
.LCPI0_21:
	.long	3204448256              # float -0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_9:
	.long	3204448256              # float -0.5
	.long	1056964608              # float 0.5
	.text
	.globl	expm1f
	.p2align	4, 0x90
	.type	expm1f,@function
expm1f:                                 # @expm1f
# %bb.0:
	movd	%xmm0, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1100331076, %ecx       # imm = 0x4195B844
	jb	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %ecx       # imm = 0x7F800001
	jb	.LBB0_7
# %bb.2:
	addss	%xmm0, %xmm0
	jmp	.LBB0_38
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1051816473, %ecx       # imm = 0x3EB17219
	jb	.LBB0_10
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065686417, %ecx       # imm = 0x3F851591
	ja	.LBB0_20
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_21
# %bb.6:
	addss	.LCPI0_3(%rip), %xmm0
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$1, %ecx
	jmp	.LBB0_22
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jne	.LBB0_12
# %bb.8:
	testl	%eax, %eax
	jns	.LBB0_38
.LBB0_9:
	movss	.LCPI0_7(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_38
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$855638015, %ecx        # imm = 0x32FFFFFF
	ja	.LBB0_15
# %bb.11:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	subss	%xmm1, %xmm1
	subss	%xmm1, %xmm0
	jmp	.LBB0_38
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_16
# %bb.13:
	cmpl	$1118925335, %ecx       # imm = 0x42B17217
	jbe	.LBB0_16
# %bb.14:
	movss	.LCPI0_5(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_15:
	xorl	%ecx, %ecx
                                        # implicit-def: $xmm2
	jmp	.LBB0_24
.LBB0_16:
	testl	%eax, %eax
	jns	.LBB0_19
# %bb.17:
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_9
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setns	%cl
	movss	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	.LCPI0_9(,%rcx,4), %xmm1
	cvttss2si	%xmm1, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movss	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	addss	%xmm0, %xmm2
	mulss	.LCPI0_4(%rip), %xmm1
	jmp	.LBB0_23
.LBB0_21:
	addss	.LCPI0_1(%rip), %xmm0
	movss	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$-1, %ecx
.LBB0_22:
	movaps	%xmm0, %xmm2
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	subss	%xmm1, %xmm0
	subss	%xmm0, %xmm2
	subss	%xmm1, %xmm2
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI0_10(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	movaps	%xmm0, %xmm3
	mulss	%xmm4, %xmm3
	movss	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	.LCPI0_12(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_13(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_14(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_15(%rip), %xmm1
	mulss	%xmm3, %xmm1
	addss	.LCPI0_16(%rip), %xmm1
	mulss	%xmm1, %xmm4
	movss	.LCPI0_17(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm5
	subss	%xmm5, %xmm1
	mulss	%xmm0, %xmm5
	movss	.LCPI0_18(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm4
	divss	%xmm4, %xmm1
	mulss	%xmm3, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_29
# %bb.25:
	subss	%xmm2, %xmm1
	mulss	%xmm0, %xmm1
	subss	%xmm2, %xmm1
	subss	%xmm3, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	je	.LBB0_30
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB0_31
# %bb.27:
	movss	.LCPI0_19(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_33
# %bb.28:
	addss	.LCPI0_10(%rip), %xmm0
	subss	%xmm0, %xmm1
	mulss	.LCPI0_20(%rip), %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_38
.LBB0_29:
	mulss	%xmm0, %xmm1
	subss	%xmm3, %xmm1
	subss	%xmm1, %xmm0
	jmp	.LBB0_38
.LBB0_30:
	subss	%xmm1, %xmm0
	mulss	.LCPI0_10(%rip), %xmm0
	addss	.LCPI0_21(%rip), %xmm0
	jmp	.LBB0_38
.LBB0_31:
	leal	1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$58, %eax
	jb	.LBB0_34
# %bb.32:
	subss	%xmm1, %xmm0
	addss	.LCPI0_16(%rip), %xmm0
	movd	%xmm0, %eax
	shll	$23, %ecx
	addl	%eax, %ecx
	movd	%ecx, %xmm0
	addss	.LCPI0_7(%rip), %xmm0
	jmp	.LBB0_38
.LBB0_33:
	subss	%xmm1, %xmm0
	addss	%xmm0, %xmm0
	addss	.LCPI0_16(%rip), %xmm0
	jmp	.LBB0_38
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$22, %ecx
	jg	.LBB0_36
# %bb.35:
	movl	$16777216, %eax         # imm = 0x1000000
	shrl	%cl, %eax
	movl	$1065353216, %edx       # imm = 0x3F800000
	subl	%eax, %edx
	movd	%edx, %xmm2
	subss	%xmm0, %xmm1
	subss	%xmm1, %xmm2
	movd	%xmm2, %eax
	shll	$23, %ecx
	addl	%eax, %ecx
	jmp	.LBB0_37
.LBB0_36:
	shll	$23, %ecx
	movl	$1065353216, %eax       # imm = 0x3F800000
	subl	%ecx, %eax
	movd	%eax, %xmm2
	addss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	addss	.LCPI0_16(%rip), %xmm0
	movd	%xmm0, %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	movd	%ecx, %xmm0
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	expm1f, .Lfunc_end0-expm1f
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
