	.text
	.file	"e_jn.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __ieee754_jn
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI0_3:
	.zero	8
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4611686018427387904     # double 2
.LCPI0_2:
	.quad	4603256987541740397     # double 0.56418958354775628
.LCPI0_4:
	.quad	-4616189618054758400    # double -1
.LCPI0_5:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI0_6:
	.quad	4607182418800017408     # double 1
.LCPI0_7:
	.quad	4649454530587146735     # double 709.78271289338397
.LCPI0_8:
	.quad	-4611686018427387904    # double -2
.LCPI0_9:
	.quad	6103021453049119613     # double 1.0E+100
.LCPI0_10:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	__ieee754_jn
	.p2align	4, 0x90
	.type	__ieee754_jn,@function
__ieee754_jn:                           # @__ieee754_jn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movdqa	%xmm0, %xmm3
	movq	%xmm0, %rbx
	movq	%rbx, %r14
	shrq	$32, %r14
	movl	%r14d, %r12d
	andl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	movl	%ebx, %eax
	negl	%eax
	orl	%ebx, %eax
	shrl	$31, %eax
	orl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435073, %eax       # imm = 0x7FF00001
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm3, %xmm3
	jmp	.LBB0_47
.LBB0_2:
	movl	%edi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jns	.LBB0_4
# %bb.3:
	negl	%r15d
	pxor	.LCPI0_0(%rip), %xmm3
	xorl	$-2147483648, %r14d     # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB0_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r15d
	jne	.LBB0_8
# %bb.6:
	movdqa	%xmm3, %xmm0
	callq	__ieee754_j1
	movdqa	%xmm0, %xmm3
	jmp	.LBB0_47
.LBB0_7:
	movdqa	%xmm3, %xmm0
	callq	__ieee754_j0
	movdqa	%xmm0, %xmm3
	jmp	.LBB0_47
.LBB0_8:
	shrl	$31, %r14d
	andl	%r15d, %r14d
	movdqa	%xmm3, %xmm0
	callq	fabs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %r12d      # imm = 0x7FEFFFFF
	ja	.LBB0_13
# %bb.9:
	orl	%r12d, %ebx
	je	.LBB0_13
# %bb.10:
	movdqa	%xmm0, %xmm6
	cvtsi2sd	%r15d, %xmm7
	ucomisd	%xmm7, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_14
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1041235967, %r12d      # imm = 0x3E0FFFFF
	ja	.LBB0_17
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %r15d
	jl	.LBB0_29
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm3, %xmm3
	jmp	.LBB0_45
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1389363200, %r12d      # imm = 0x52D00000
	movdqa	%xmm6, -64(%rbp)        # 16-byte Spill
	jb	.LBB0_26
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	andl	$3, %r15d
	jmpq	*.LJTI0_0(,%r15,8)
.LBB0_16:
	movdqa	%xmm6, %xmm0
	callq	cos
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	movapd	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB0_42
.LBB0_17:
	leal	(%r15,%r15), %eax
	movapd	.LCPI0_3(%rip), %xmm1   # xmm1 = <u,2.0E+0>
	cvtsi2sd	%eax, %xmm1
	movdqa	%xmm6, %xmm0
	punpcklqdq	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0]
	divpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	movapd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movapd	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	.LCPI0_4(%rip), %xmm4
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_5(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm4, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	jbe	.LBB0_20
# %bb.18:                               # %.preheader6
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm4, %xmm5
	addl	$1, %ecx
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm4
	mulsd	%xmm5, %xmm4
	subsd	%xmm1, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm4, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm5, %xmm1
	ja	.LBB0_19
.LBB0_20:
	addl	%r15d, %ecx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm2, %xmm2
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm6, %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	addl	$-2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jge	.LBB0_21
# %bb.22:
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	movaps	%xmm6, -64(%rbp)        # 16-byte Spill
	mulsd	%xmm7, %xmm0
	movsd	%xmm7, -72(%rbp)        # 8-byte Spill
	callq	fabs
	callq	__ieee754_log
	mulsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	leal	-2(%r15,%r15), %eax
	xorps	%xmm6, %xmm6
	cvtsi2sd	%eax, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_31
# %bb.23:
	cmpl	$2, %r15d
	jl	.LBB0_36
# %bb.24:
	testb	$1, %r15b
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB0_55
# %bb.25:
	movapd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	%xmm2, %xmm7
	addsd	.LCPI0_8(%rip), %xmm6
	leal	-2(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB0_56
.LBB0_26:
	movdqa	%xmm6, %xmm0
	callq	__ieee754_j0
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	__ieee754_j1
	movapd	%xmm0, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB0_45
# %bb.27:
	movsd	-48(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	leal	-1(%r15), %eax
	andl	$1, %eax
	cmpl	$2, %r15d
	jne	.LBB0_48
# %bb.28:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_51
.LBB0_29:
	mulsd	.LCPI0_10(%rip), %xmm6
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jge	.LBB0_53
# %bb.30:
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm6, %xmm3
	jmp	.LBB0_43
.LBB0_31:
	cmpl	$2, %r15d
	jl	.LBB0_36
# %bb.32:                               # %.preheader4
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm1, %xmm4
	movsd	-48(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm1, %xmm7
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_34 Depth=1
	movapd	%xmm4, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	movapd	%xmm7, %xmm4
	cmpl	$1, %r15d
	jle	.LBB0_37
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	%xmm5, %xmm7
	addsd	%xmm2, %xmm6
	ucomisd	%xmm3, %xmm7
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_33
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=1
	divsd	%xmm7, %xmm4
	movsd	-48(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	divsd	%xmm7, %xmm5
	movsd	%xmm5, -48(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm7
	jmp	.LBB0_33
.LBB0_36:
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	movsd	.LCPI0_6(%rip), %xmm7   # xmm7 = mem[0],zero
.LBB0_37:
	movsd	%xmm7, -72(%rbp)        # 8-byte Spill
	callq	__ieee754_j0
	movapd	%xmm0, %xmm3
	mulsd	-48(%rbp), %xmm3        # 8-byte Folded Reload
	divsd	-72(%rbp), %xmm3        # 8-byte Folded Reload
	jmp	.LBB0_44
.LBB0_38:
	movdqa	%xmm6, %xmm0
	callq	cos
	pxor	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_41
.LBB0_39:
	movdqa	%xmm6, %xmm0
	callq	cos
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB0_42
.LBB0_40:
	movdqa	%xmm6, %xmm0
	callq	cos
.LBB0_41:
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-48(%rbp), %xmm2        # 16-byte Reload
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm2
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI0_2(%rip), %xmm2
	movapd	%xmm2, -48(%rbp)        # 16-byte Spill
	movapd	%xmm1, %xmm0
	callq	__ieee754_sqrt
	movapd	-48(%rbp), %xmm3        # 16-byte Reload
.LBB0_43:
	divsd	%xmm0, %xmm3
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_45:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_47
# %bb.46:
	xorpd	.LCPI0_0(%rip), %xmm3
.LBB0_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	%xmm3, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_48:
	movl	%eax, %ecx
	subl	%r15d, %ecx
	addl	$1, %ecx
	movl	$2, %edx
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2sd	%edx, %xmm4
	movapd	%xmm3, %xmm1
	divsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm0, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%rdx), %esi
	xorps	%xmm3, %xmm3
	cvtsi2sd	%esi, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	divsd	%xmm2, %xmm3
	mulsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$4, %edx
	addl	$2, %ecx
	jne	.LBB0_49
# %bb.50:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
.LBB0_51:
	testl	%eax, %eax
	je	.LBB0_45
# %bb.52:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	divsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm3
	subsd	%xmm4, %xmm3
	jmp	.LBB0_45
.LBB0_53:
	leal	-1(%r15), %eax
	leal	-2(%r15), %ecx
	andl	$3, %eax
	cmpl	$3, %ecx
	jae	.LBB0_59
# %bb.54:
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$2, %ecx
	movapd	%xmm6, %xmm3
	jmp	.LBB0_61
.LBB0_55:
	leal	-1(%r15), %eax
	movsd	.LCPI0_6(%rip), %xmm7   # xmm7 = mem[0],zero
.LBB0_56:
	cmpl	$2, %r15d
	je	.LBB0_37
# %bb.57:                               # %.preheader2
	addl	$2, %eax
	movsd	.LCPI0_8(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm7, %xmm3
	movapd	%xmm7, %xmm4
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	subsd	%xmm2, %xmm4
	addsd	%xmm1, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm4, %xmm2
	movapd	%xmm4, %xmm7
	mulsd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	%xmm3, %xmm7
	addsd	%xmm1, %xmm6
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %eax
	cmpl	$2, %eax
	jg	.LBB0_58
	jmp	.LBB0_37
.LBB0_59:
	movl	%eax, %edx
	subl	%r15d, %edx
	addl	$1, %edx
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$2, %ecx
	movapd	%xmm6, %xmm3
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rcx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	leal	3(%rcx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	addl	$4, %ecx
	addl	%edx, %esi
	addl	$4, %esi
	cmpl	$2, %esi
	jne	.LBB0_60
.LBB0_61:
	testl	%eax, %eax
	je	.LBB0_43
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	jne	.LBB0_62
	jmp	.LBB0_43
.Lfunc_end0:
	.size	__ieee754_jn, .Lfunc_end0-__ieee754_jn
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_16
	.quad	.LBB0_39
	.quad	.LBB0_38
	.quad	.LBB0_40
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_yn
.LCPI1_0:
	.quad	-4503599627370496       # double -Inf
.LCPI1_1:
	.quad	9221120237041090560     # double NaN
.LCPI1_3:
	.quad	4603256987541740397     # double 0.56418958354775628
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_2:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_yn
	.p2align	4, 0x90
	.type	__ieee754_yn,@function
__ieee754_yn:                           # @__ieee754_yn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%xmm0, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%edx, %esi
	negl	%esi
	orl	%edx, %esi
	shrl	$31, %esi
	orl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435073, %esi       # imm = 0x7FF00001
	jb	.LBB1_2
# %bb.1:
	addsd	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	jmp	.LBB1_28
.LBB1_2:
	orl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB1_5
# %bb.6:
	movl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testl	%edi, %edi
	jns	.LBB1_8
# %bb.7:
	negl	%ebx
	leal	(%rbx,%rbx), %ecx
	andl	$2, %ecx
	movl	$1, %r14d
	subl	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB1_12
# %bb.11:
	cvtsi2sd	%r14d, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	__ieee754_y1
	movdqa	%xmm0, %xmm2
	mulsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB1_28
.LBB1_3:
	movsd	.LCPI1_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_28
.LBB1_5:
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB1_28
.LBB1_9:
	callq	__ieee754_y0
	movdqa	%xmm0, %xmm2
	jmp	.LBB1_28
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm2, %xmm2
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	je	.LBB1_28
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1389363200, %eax       # imm = 0x52D00000
	movq	%xmm0, -24(%rbp)        # 8-byte Folded Spill
	jb	.LBB1_21
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	andl	$3, %ebx
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_15:
	callq	sin
	jmp	.LBB1_16
.LBB1_21:
	callq	__ieee754_y0
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movq	-24(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_y1
	movdqa	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jl	.LBB1_26
# %bb.22:
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movabsq	$-4503599627370496, %rcx # imm = 0xFFF0000000000000
	movq	%xmm2, %rdx
	andq	%rax, %rdx
	cmpq	%rcx, %rdx
	je	.LBB1_26
# %bb.23:                               # %.preheader
	movl	$2, %edx
	movl	$2, %esi
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.p2align	4, 0x90
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm3, %xmm0
	movdqa	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm3, %xmm2
	subsd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %esi
	jge	.LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=1
	movq	%xmm2, %rdi
	andq	%rax, %rdi
	addl	$1, %esi
	addl	$2, %edx
	cmpq	%rcx, %rdi
	jne	.LBB1_24
	jmp	.LBB1_26
.LBB1_17:
	callq	sin
	pxor	.LCPI1_2(%rip), %xmm0
.LBB1_16:
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	-48(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm1
	jmp	.LBB1_20
.LBB1_18:
	callq	sin
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	%xmm0, %xmm1
	subsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
	jmp	.LBB1_20
.LBB1_19:
	callq	sin
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
.LBB1_20:
	movl	$42, __A_VARIABLE(%rip)
	mulsd	.LCPI1_3(%rip), %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_sqrt
	movapd	-48(%rbp), %xmm2        # 16-byte Reload
	divsd	%xmm0, %xmm2
.LBB1_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jg	.LBB1_28
# %bb.27:
	pxor	.LCPI1_2(%rip), %xmm2
.LBB1_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ieee754_yn, .Lfunc_end1-__ieee754_yn
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_15
	.quad	.LBB1_17
	.quad	.LBB1_18
	.quad	.LBB1_19
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
