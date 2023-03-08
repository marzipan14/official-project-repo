	.text
	.file	"ef_pow.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_powf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_2:
	.long	1266679808              # float 16777216
.LCPI0_3:
	.long	4294963200              # float NaN
.LCPI0_4:
	.long	1045688642              # float 0.206975013
.LCPI0_5:
	.long	1047278165              # float 0.230660751
.LCPI0_6:
	.long	1049338629              # float 0.272728115
.LCPI0_7:
	.long	1051372203              # float 0.333333343
.LCPI0_8:
	.long	1054567863              # float 0.428571433
.LCPI0_9:
	.long	1058642330              # float 0.600000024
.LCPI0_10:
	.long	1077936128              # float 3
.LCPI0_11:
	.long	3225419776              # float -3
.LCPI0_12:
	.long	1064712192              # float 0.961791992
.LCPI0_13:
	.long	916308896               # float 4.70173836E-6
.LCPI0_14:
	.long	1064712271              # float 0.9617967
.LCPI0_15:
	.long	3212836864              # float -1
.LCPI0_16:
	.long	3196059648              # float -0.25
.LCPI0_17:
	.long	1056964608              # float 0.5
.LCPI0_18:
	.long	1069066752              # float 1.44268799
.LCPI0_19:
	.long	921478512               # float 7.05260754E-6
.LCPI0_20:
	.long	3216550459              # float -1.44269502
.LCPI0_22:
	.long	228737632               # float 1.0E-30
.LCPI0_23:
	.long	859351612               # float 4.29956657E-8
.LCPI0_24:
	.long	1060205056              # float 0.693145751
.LCPI0_25:
	.long	1060205080              # float 0.693147182
.LCPI0_26:
	.long	901758604               # float 1.42860654E-6
.LCPI0_27:
	.long	858897228               # float 4.13813694E-8
.LCPI0_28:
	.long	3051219470              # float -1.6533902E-6
.LCPI0_29:
	.long	948613973               # float 6.61375597E-5
.LCPI0_30:
	.long	3140881249              # float -0.00277777785
.LCPI0_31:
	.long	1042983595              # float 0.166666672
.LCPI0_32:
	.long	3221225472              # float -2
.LCPI0_33:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_34:
	.long	2139095040              # float +Inf
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
.LCPI0_21:
	.long	1065353216              # float 1
	.long	3212836864              # float -1
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
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	je	.LBB0_70
# %bb.1:
	movd	%xmm0, %r14d
	movl	%r14d, %r13d
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	cmpl	$2139095040, %r13d      # imm = 0x7F800000
	ja	.LBB0_5
# %bb.2:
	cmpl	$2139095041, %ebx       # imm = 0x7F800001
	jae	.LBB0_5
# %bb.3:
	testl	%r14d, %r14d
	js	.LBB0_7
.LBB0_11:
	xorl	%r15d, %r15d
	jmp	.LBB0_12
.LBB0_5:
	cmpl	$1065353216, %r13d      # imm = 0x3F800000
	je	.LBB0_70
# %bb.6:
	movl	$.L.str, %edi
	callq	nanf
	movaps	%xmm0, %xmm6
	jmp	.LBB0_70
.LBB0_7:
	movl	$2, %r15d
	cmpl	$1266679807, %ebx       # imm = 0x4B7FFFFF
	jbe	.LBB0_8
.LBB0_12:
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	je	.LBB0_19
# %bb.13:
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jne	.LBB0_21
# %bb.14:
	cmpl	$1065353216, %r13d      # imm = 0x3F800000
	je	.LBB0_70
# %bb.15:
	cmpl	$1065353217, %r13d      # imm = 0x3F800001
	jb	.LBB0_27
# %bb.16:
	testl	%r12d, %r12d
	jns	.LBB0_18
# %bb.17:
	pxor	%xmm1, %xmm1
.LBB0_18:
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_70
.LBB0_19:
	testl	%r12d, %r12d
	js	.LBB0_26
# %bb.20:
	movaps	%xmm0, %xmm6
	jmp	.LBB0_70
.LBB0_21:
	cmpl	$1073741824, %r12d      # imm = 0x40000000
	jne	.LBB0_23
# %bb.22:
	mulss	%xmm0, %xmm0
	movaps	%xmm0, %xmm6
	jmp	.LBB0_70
.LBB0_8:
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	jb	.LBB0_11
# %bb.9:
	movl	%ebx, %eax
	shrl	$23, %eax
	movb	$-106, %cl
	subb	%al, %cl
	movl	%ebx, %eax
	shrl	%cl, %eax
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$0, %r15d
	cmpl	%ebx, %edx
	jne	.LBB0_12
# %bb.10:
	andl	$1, %eax
	movl	$2, %r15d
	subl	%eax, %r15d
	jmp	.LBB0_12
.LBB0_23:
	testl	%r14d, %r14d
	js	.LBB0_29
# %bb.24:
	cmpl	$1056964608, %r12d      # imm = 0x3F000000
	jne	.LBB0_29
# %bb.25:
	callq	__ieee754_sqrtf
	movdqa	%xmm0, %xmm6
	jmp	.LBB0_70
.LBB0_26:
	movss	.LCPI0_0(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm6
	jmp	.LBB0_70
.LBB0_27:
	testl	%r12d, %r12d
	js	.LBB0_36
.LBB0_28:
	xorps	%xmm6, %xmm6
	jmp	.LBB0_70
.LBB0_29:
	movdqa	%xmm1, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, -44(%rbp)        # 4-byte Folded Spill
	callq	fabsf
	movdqa	%xmm0, %xmm6
	testl	%r13d, %r13d
	je	.LBB0_37
# %bb.30:
	movl	%r13d, %eax
	orl	$1073741824, %eax       # imm = 0x40000000
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	je	.LBB0_37
# %bb.31:
	shrl	$31, %r14d
	addl	$-1, %r14d
	movl	%r15d, %eax
	orl	%r14d, %eax
	je	.LBB0_43
# %bb.32:
	cmpl	$1291845633, %ebx       # imm = 0x4D000001
	jb	.LBB0_45
# %bb.33:
	cmpl	$1065353207, %r13d      # imm = 0x3F7FFFF7
	movaps	-64(%rbp), %xmm9        # 16-byte Reload
	ja	.LBB0_48
# %bb.34:
	testl	%r12d, %r12d
	jns	.LBB0_28
	jmp	.LBB0_51
.LBB0_36:
	pxor	.LCPI0_1(%rip), %xmm1
	movdqa	%xmm1, %xmm6
	jmp	.LBB0_70
.LBB0_37:
	testl	%r12d, %r12d
	jns	.LBB0_39
# %bb.38:                               # %select.true.sink
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm6, %xmm0
	movaps	%xmm0, %xmm6
.LBB0_39:                               # %select.end
	testl	%r14d, %r14d
	jns	.LBB0_70
# %bb.40:
	addl	$-1065353216, %r13d     # imm = 0xC0800000
	orl	%r15d, %r13d
	je	.LBB0_44
# %bb.41:
	cmpl	$1, %r15d
	jne	.LBB0_70
# %bb.42:
	xorps	.LCPI0_1(%rip), %xmm6
	jmp	.LBB0_70
.LBB0_43:
	movss	-44(%rbp), %xmm6        # 4-byte Reload
                                        # xmm6 = mem[0],zero,zero,zero
.LBB0_44:
	subss	%xmm6, %xmm6
	divss	%xmm6, %xmm6
	jmp	.LBB0_70
.LBB0_45:
	cmpl	$8388608, %r13d         # imm = 0x800000
	mulss	.LCPI0_2(%rip), %xmm6
	movd	%xmm6, %ecx
	cmovael	%r13d, %ecx
	movl	$-151, %eax
	movl	$-127, %edx
	cmovbl	%eax, %edx
	movl	%ecx, %eax
	sarl	$23, %eax
	addl	%edx, %eax
	andl	$8388607, %ecx          # imm = 0x7FFFFF
	leal	1065353216(%rcx), %edx
	xorl	%esi, %esi
	cmpl	$1885298, %ecx          # imm = 0x1CC472
	movaps	-64(%rbp), %xmm9        # 16-byte Reload
	jb	.LBB0_53
# %bb.46:
	cmpl	$6140887, %ecx          # imm = 0x5DB3D7
	jae	.LBB0_52
# %bb.47:
	movl	$1, %esi
	jmp	.LBB0_53
.LBB0_48:
	cmpl	$1065353224, %r13d      # imm = 0x3F800008
	jb	.LBB0_67
# %bb.49:
	testl	%r12d, %r12d
	jle	.LBB0_28
.LBB0_51:
	movss	.LCPI0_34(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	jmp	.LBB0_70
.LBB0_52:
	addl	$1, %eax
	addl	$-8388608, %edx         # imm = 0xFF800000
.LBB0_53:
	movd	%edx, %xmm1
	movl	%esi, %ecx
	movss	bp(,%rcx,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movdqa	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	sarl	%edx
	orl	$536870912, %edx        # imm = 0x20000000
	shll	$21, %esi
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
	movss	.LCPI0_3(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm3
	andps	%xmm8, %xmm3
	subss	%xmm6, %xmm1
	mulss	%xmm3, %xmm5
	movaps	%xmm4, %xmm6
	mulss	%xmm4, %xmm6
	movss	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm2
	addss	.LCPI0_5(%rip), %xmm2
	subss	%xmm5, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_6(%rip), %xmm2
	mulss	%xmm3, %xmm1
	mulss	%xmm6, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	subss	%xmm1, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_8(%rip), %xmm2
	mulss	%xmm7, %xmm0
	mulss	%xmm6, %xmm2
	addss	.LCPI0_9(%rip), %xmm2
	mulss	%xmm6, %xmm6
	mulss	%xmm6, %xmm2
	movaps	%xmm4, %xmm1
	addss	%xmm3, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	mulss	%xmm3, %xmm2
	movss	.LCPI0_10(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	addss	%xmm2, %xmm5
	addss	%xmm1, %xmm5
	andps	%xmm8, %xmm5
	movss	.LCPI0_11(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
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
	movss	.LCPI0_12(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm3
	mulss	.LCPI0_13(%rip), %xmm0
	mulss	.LCPI0_14(%rip), %xmm1
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
.LBB0_54:
	subss	%xmm3, %xmm2
	subss	%xmm2, %xmm1
	addl	$-1, %r15d
	xorl	%eax, %eax
	orl	%r14d, %r15d
	sete	%al
	movss	.LCPI0_21(,%rax,4), %xmm6 # xmm6 = mem[0],zero,zero,zero
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
	testl	%eax, %eax
	jle	.LBB0_59
# %bb.55:
	cmpl	$1124073473, %ecx       # imm = 0x43000001
	jae	.LBB0_58
# %bb.56:
	cmpl	$1124073472, %ecx       # imm = 0x43000000
	jne	.LBB0_63
# %bb.57:
	movss	.LCPI0_23(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	addss	%xmm9, %xmm2
	subss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm2
	jbe	.LBB0_64
.LBB0_58:
	movss	.LCPI0_33(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	jmp	.LBB0_69
.LBB0_59:
	cmpl	$1125515265, %ecx       # imm = 0x43160001
	jae	.LBB0_62
# %bb.60:
	subss	%xmm0, %xmm1
	ucomiss	%xmm9, %xmm1
	jb	.LBB0_63
# %bb.61:
	cmpl	$1125515264, %ecx       # imm = 0x43160000
	jne	.LBB0_63
.LBB0_62:
	movss	.LCPI0_22(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	jmp	.LBB0_69
.LBB0_63:
	xorl	%edi, %edi
	cmpl	$1056964609, %ecx       # imm = 0x3F000001
	jb	.LBB0_65
.LBB0_64:
	shrl	$23, %ecx
	addb	$-126, %cl
	movl	$8388608, %edx          # imm = 0x800000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	%edx, %esi
	shrl	$23, %esi
	leal	-127(%rsi), %ecx
	movl	$-8388608, %ebx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %ebx
	andl	%edx, %ebx
	andl	$8388607, %edx          # imm = 0x7FFFFF
	orl	$8388608, %edx          # imm = 0x800000
	movb	$-106, %cl
	subb	%sil, %cl
	shrl	%cl, %edx
	movl	%edx, %edi
	negl	%edi
	testl	%eax, %eax
	cmovnsl	%edx, %edi
	movd	%ebx, %xmm1
	subss	%xmm1, %xmm0
	movaps	%xmm9, %xmm1
	addss	%xmm0, %xmm1
	movd	%xmm1, %eax
.LBB0_65:
	andl	$-4096, %eax            # imm = 0xF000
	movd	%eax, %xmm1
	movss	.LCPI0_24(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	movaps	%xmm1, %xmm3
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm9
	mulss	.LCPI0_25(%rip), %xmm9
	mulss	.LCPI0_26(%rip), %xmm1
	addss	%xmm9, %xmm1
	movaps	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movss	.LCPI0_27(%rip), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	.LCPI0_28(%rip), %xmm4
	movaps	%xmm0, %xmm5
	mulss	%xmm3, %xmm4
	addss	.LCPI0_29(%rip), %xmm4
	subss	%xmm2, %xmm5
	mulss	%xmm3, %xmm4
	addss	.LCPI0_30(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_31(%rip), %xmm4
	mulss	%xmm3, %xmm4
	movaps	%xmm0, %xmm2
	subss	%xmm4, %xmm2
	movaps	%xmm0, %xmm3
	mulss	%xmm2, %xmm3
	addss	.LCPI0_32(%rip), %xmm2
	subss	%xmm5, %xmm1
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
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB0_68
# %bb.66:
	movaps	%xmm6, -64(%rbp)        # 16-byte Spill
	callq	scalbnf
	movaps	-64(%rbp), %xmm6        # 16-byte Reload
	jmp	.LBB0_69
.LBB0_67:
	addss	.LCPI0_15(%rip), %xmm6
	movaps	%xmm6, %xmm0
	movss	.LCPI0_16(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm2
	addss	.LCPI0_7(%rip), %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm6, %xmm2
	movss	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm1
	movss	.LCPI0_18(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm3
	mulss	.LCPI0_19(%rip), %xmm6
	mulss	%xmm0, %xmm1
	mulss	.LCPI0_20(%rip), %xmm1
	addss	%xmm6, %xmm1
	movaps	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	andps	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	jmp	.LBB0_54
.LBB0_68:
	movd	%eax, %xmm0
.LBB0_69:
	mulss	%xmm0, %xmm6
.LBB0_70:
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
