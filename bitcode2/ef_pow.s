	.text
	.file	"ef_pow.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_powf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1266679808              # float 16777216
.LCPI0_2:
	.long	4294963200              # float NaN
.LCPI0_3:
	.long	1045688642              # float 0.206975013
.LCPI0_4:
	.long	1047278165              # float 0.230660751
.LCPI0_5:
	.long	1049338629              # float 0.272728115
.LCPI0_6:
	.long	1051372203              # float 0.333333343
.LCPI0_7:
	.long	1054567863              # float 0.428571433
.LCPI0_8:
	.long	1058642330              # float 0.600000024
.LCPI0_9:
	.long	1077936128              # float 3
.LCPI0_10:
	.long	3225419776              # float -3
.LCPI0_11:
	.long	1064712192              # float 0.961791992
.LCPI0_12:
	.long	916308896               # float 4.70173836E-6
.LCPI0_13:
	.long	1064712271              # float 0.9617967
.LCPI0_14:
	.long	3212836864              # float -1
.LCPI0_15:
	.long	3196059648              # float -0.25
.LCPI0_16:
	.long	1056964608              # float 0.5
.LCPI0_17:
	.long	1069066752              # float 1.44268799
.LCPI0_18:
	.long	921478512               # float 7.05260754E-6
.LCPI0_19:
	.long	3216550459              # float -1.44269502
.LCPI0_21:
	.long	228737632               # float 1.0E-30
.LCPI0_22:
	.long	859351612               # float 4.29956657E-8
.LCPI0_23:
	.long	1060205056              # float 0.693145751
.LCPI0_24:
	.long	1060205080              # float 0.693147182
.LCPI0_25:
	.long	901758604               # float 1.42860654E-6
.LCPI0_26:
	.long	858897228               # float 4.13813694E-8
.LCPI0_27:
	.long	3051219470              # float -1.6533902E-6
.LCPI0_28:
	.long	948613973               # float 6.61375597E-5
.LCPI0_29:
	.long	3140881249              # float -0.00277777785
.LCPI0_30:
	.long	1042983595              # float 0.166666672
.LCPI0_31:
	.long	3221225472              # float -2
.LCPI0_32:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_33:
	.long	2139095040              # float +Inf
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_20:
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_34:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_powf
	.p2align	4, 0x90
	.type	__ieee754_powf,@function
__ieee754_powf:                         # @__ieee754_powf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movd	%xmm1, %r12d
	movl	%r12d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	je	.LBB0_7
# %bb.1:
	movd	%xmm0, %r14d
	movl	%r14d, %r13d
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %r13d      # imm = 0x7F800001
	jb	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %ebx       # imm = 0x7F800001
	jb	.LBB0_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353216, %r13d      # imm = 0x3F800000
	je	.LBB0_7
.LBB0_5:
	movl	$.L.str, %edi
	callq	nanf
.LBB0_6:
	movaps	%xmm0, %xmm6
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm6, %xmm0
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB0_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1266679808, %ebx       # imm = 0x4B800000
	jb	.LBB0_17
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r15d
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jne	.LBB0_21
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353216, %r13d      # imm = 0x3F800000
	je	.LBB0_7
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353217, %r13d      # imm = 0x3F800001
	jb	.LBB0_30
# %bb.14:
	testl	%r12d, %r12d
	jns	.LBB0_16
# %bb.15:
	pxor	%xmm1, %xmm1
.LBB0_16:
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_7
.LBB0_17:
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	jb	.LBB0_20
# %bb.18:
	movl	%ebx, %eax
	shrl	$23, %eax
	movb	$-106, %cl
	subb	%al, %cl
	movl	%ebx, %eax
	shrl	%cl, %eax
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %edx
	jne	.LBB0_20
# %bb.19:
	andl	$1, %eax
	movl	$2, %r15d
	subl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	jne	.LBB0_24
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB0_6
# %bb.29:
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm6
	jmp	.LBB0_7
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1073741824, %r12d      # imm = 0x40000000
	jne	.LBB0_26
# %bb.25:
	mulss	%xmm0, %xmm0
	jmp	.LBB0_6
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_32
# %bb.27:
	cmpl	$1056964608, %r12d      # imm = 0x3F000000
	jne	.LBB0_32
# %bb.28:
	callq	__ieee754_sqrtf
	jmp	.LBB0_6
.LBB0_30:
	testl	%r12d, %r12d
	js	.LBB0_39
.LBB0_31:
	xorps	%xmm6, %xmm6
	jmp	.LBB0_7
.LBB0_32:
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, -44(%rbp)        # 4-byte Folded Spill
	callq	fabsf
	movdqa	%xmm0, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB0_40
# %bb.33:
	movl	%r13d, %eax
	orl	$1073741824, %eax       # imm = 0x40000000
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	je	.LBB0_40
# %bb.34:
	shrl	$31, %r14d
	addl	$-1, %r14d
	movl	%r15d, %eax
	orl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_46
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1291845633, %ebx       # imm = 0x4D000001
	jb	.LBB0_47
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353207, %r13d      # imm = 0x3F7FFFF7
	movaps	-64(%rbp), %xmm9        # 16-byte Reload
	ja	.LBB0_52
# %bb.37:
	testl	%r12d, %r12d
	jns	.LBB0_31
	jmp	.LBB0_56
.LBB0_39:
	pxor	.LCPI0_34(%rip), %xmm1
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_7
.LBB0_40:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB0_42
# %bb.41:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm6, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm0, %xmm6
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB0_7
# %bb.43:
	addl	$-1065353216, %r13d     # imm = 0xC0800000
	orl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_55
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB0_7
# %bb.45:
	xorps	.LCPI0_34(%rip), %xmm6
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_7
.LBB0_46:
	movss	-44(%rbp), %xmm6        # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
	subss	%xmm6, %xmm6
	divss	%xmm6, %xmm6
	jmp	.LBB0_7
.LBB0_47:
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpl	$8388607, %r13d         # imm = 0x7FFFFF
	movaps	-64(%rbp), %xmm9        # 16-byte Reload
	ja	.LBB0_49
# %bb.48:
	mulss	.LCPI0_1(%rip), %xmm6
	movd	%xmm6, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$-24, %eax
.LBB0_49:
	movl	%r13d, %ecx
	sarl	$23, %ecx
	addl	%ecx, %eax
	addl	$-127, %eax
	andl	$8388607, %r13d         # imm = 0x7FFFFF
	leal	1065353216(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1885298, %r13d         # imm = 0x1CC472
	jb	.LBB0_58
# %bb.50:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6140887, %r13d         # imm = 0x5DB3D7
	jae	.LBB0_57
# %bb.51:
	movl	$1, %edx
	jmp	.LBB0_58
.LBB0_52:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353224, %r13d      # imm = 0x3F800008
	jb	.LBB0_59
# %bb.53:
	testl	%r12d, %r12d
	jle	.LBB0_31
.LBB0_56:
	movss	.LCPI0_33(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB0_7
.LBB0_55:
	subss	%xmm6, %xmm6
	divss	%xmm6, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_7
.LBB0_57:
	addl	$1, %eax
	addl	$-8388608, %esi         # imm = 0xFF800000
.LBB0_58:
	movl	$42, __A_VARIABLE(%rip)
	movd	%esi, %xmm1
	movl	%edx, %ecx
	movss	bp(,%rcx,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movdqa	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	sarl	%esi
	orl	$536870912, %esi        # imm = 0x20000000
	shll	$21, %edx
	addl	%esi, %edx
	addl	$262144, %edx           # imm = 0x40000
	movd	%edx, %xmm5
	movdqa	%xmm5, %xmm6
	subss	%xmm2, %xmm6
	addss	%xmm1, %xmm2
	movss	.LCPI0_0(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm7
	movaps	%xmm0, %xmm4
	mulss	%xmm7, %xmm4
	movss	.LCPI0_2(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm3
	andps	%xmm8, %xmm3
	subss	%xmm6, %xmm1
	mulss	%xmm3, %xmm5
	movaps	%xmm4, %xmm6
	mulss	%xmm4, %xmm6
	movss	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm2
	addss	.LCPI0_4(%rip), %xmm2
	subss	%xmm5, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_5(%rip), %xmm2
	mulss	%xmm3, %xmm1
	mulss	%xmm6, %xmm2
	addss	.LCPI0_6(%rip), %xmm2
	subss	%xmm1, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_8(%rip), %xmm2
	mulss	%xmm6, %xmm6
	mulss	%xmm6, %xmm2
	movaps	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	mulss	%xmm3, %xmm2
	movss	.LCPI0_9(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm5
	addss	%xmm1, %xmm5
	andps	%xmm8, %xmm5
	movss	.LCPI0_10(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm6
	subss	%xmm2, %xmm6
	subss	%xmm6, %xmm1
	mulss	%xmm5, %xmm3
	mulss	%xmm0, %xmm5
	mulss	%xmm4, %xmm1
	addss	%xmm5, %xmm1
	movaps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	andps	%xmm8, %xmm0
	movaps	%xmm0, %xmm2
	subss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	movss	.LCPI0_11(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	mulss	.LCPI0_12(%rip), %xmm0
	mulss	.LCPI0_13(%rip), %xmm1
	addss	%xmm0, %xmm1
	addss	dp_l(,%rcx,4), %xmm1
	xorps	%xmm4, %xmm4
	cvtsi2ss	%eax, %xmm4
	movaps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	movss	dp_h(,%rcx,4), %xmm5    # xmm5 = mem[0],zero,zero,zero
	addss	%xmm5, %xmm0
	addss	%xmm4, %xmm0
	andps	%xmm8, %xmm0
	movaps	%xmm0, %xmm2
	subss	%xmm4, %xmm2
	subss	%xmm5, %xmm2
	jmp	.LBB0_60
.LBB0_59:
	addss	.LCPI0_14(%rip), %xmm6
	movaps	%xmm6, %xmm0
	movss	.LCPI0_15(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm2
	addss	.LCPI0_6(%rip), %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm2
	movss	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	movss	.LCPI0_17(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm3
	mulss	.LCPI0_18(%rip), %xmm6
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_19(%rip), %xmm1
	addss	%xmm6, %xmm1
	movaps	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	andps	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
.LBB0_60:
	subss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	xorl	%eax, %eax
	orl	%r14d, %r15d
	sete	%al
	movss	.LCPI0_20(,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
	andl	$-4096, %r12d           # imm = 0xF000
	movd	%r12d, %xmm2
	mulss	%xmm9, %xmm1
	subss	%xmm2, %xmm9
	mulss	%xmm0, %xmm9
	addss	%xmm1, %xmm9
	mulss	%xmm2, %xmm0
	movaps	%xmm0, %xmm1
	addss	%xmm9, %xmm1
	movd	%xmm1, %eax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_63
# %bb.61:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1124073473, %ecx       # imm = 0x43000001
	jb	.LBB0_67
.LBB0_62:
	movss	.LCPI0_32(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	jmp	.LBB0_78
.LBB0_63:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1125515265, %ecx       # imm = 0x43160001
	jae	.LBB0_66
# %bb.64:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1125515264, %ecx       # imm = 0x43160000
	jne	.LBB0_70
# %bb.65:
	subss	%xmm0, %xmm1
	ucomiss	%xmm9, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_69
.LBB0_66:
	movss	.LCPI0_21(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	jmp	.LBB0_78
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1124073472, %ecx       # imm = 0x43000000
	jne	.LBB0_70
# %bb.68:
	movss	.LCPI0_22(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	addss	%xmm9, %xmm2
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_62
.LBB0_69:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_71
.LBB0_70:
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1056964609, %ecx       # imm = 0x3F000001
	jb	.LBB0_74
.LBB0_71:
	shrl	$23, %ecx
	addb	$-126, %cl
	movl	$8388608, %edi          # imm = 0x800000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	addl	%eax, %edi
	movl	%edi, %edx
	shrl	$23, %edx
	leal	-127(%rdx), %ecx
	movl	$-8388608, %esi         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %esi
	andl	%edi, %esi
	andl	$8388607, %edi          # imm = 0x7FFFFF
	orl	$8388608, %edi          # imm = 0x800000
	movb	$-106, %cl
	subb	%dl, %cl
	shrl	%cl, %edi
	movd	%esi, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_73
# %bb.72:
	negl	%edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_73:
	subss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm9, %xmm1
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
.LBB0_74:
	andl	$-4096, %eax            # imm = 0xF000
	movd	%eax, %xmm1
	movss	.LCPI0_23(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm9
	mulss	.LCPI0_24(%rip), %xmm9
	mulss	.LCPI0_25(%rip), %xmm1
	addss	%xmm9, %xmm1
	movaps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	movss	.LCPI0_26(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm5
	addss	.LCPI0_27(%rip), %xmm5
	subss	%xmm2, %xmm3
	mulss	%xmm4, %xmm5
	addss	.LCPI0_28(%rip), %xmm5
	subss	%xmm3, %xmm1
	mulss	%xmm4, %xmm5
	addss	.LCPI0_29(%rip), %xmm5
	mulss	%xmm4, %xmm5
	addss	.LCPI0_30(%rip), %xmm5
	mulss	%xmm4, %xmm5
	movaps	%xmm0, %xmm2
	subss	%xmm5, %xmm2
	movaps	%xmm0, %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_31(%rip), %xmm2
	divss	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	addss	%xmm1, %xmm2
	subss	%xmm2, %xmm3
	subss	%xmm3, %xmm0
	addss	.LCPI0_0(%rip), %xmm0
	movd	%xmm0, %ecx
	movl	%edi, %eax
	shll	$23, %eax
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB0_76
# %bb.75:
	movaps	%xmm6, -64(%rbp)        # 16-byte Spill
	callq	scalbnf
	movaps	-64(%rbp), %xmm6        # 16-byte Reload
	jmp	.LBB0_77
.LBB0_76:
	movd	%eax, %xmm0
.LBB0_77:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_78:
	mulss	%xmm0, %xmm6
	jmp	.LBB0_7
.Lfunc_end0:
	.size	__ieee754_powf, .Lfunc_end0-__ieee754_powf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	bp,@object              # @bp
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
bp:
	.long	1065353216              # float 1
	.long	1069547520              # float 1.5
	.size	bp, 8

	.type	dp_l,@object            # @dp_l
	.p2align	2
dp_l:
	.long	0                       # float 0
	.long	902942684               # float 1.56322085E-6
	.size	dp_l, 8

	.type	dp_h,@object            # @dp_h
	.p2align	2
dp_h:
	.long	0                       # float 0
	.long	1058390016              # float 0.584960938
	.size	dp_h, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
