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
	cmpl	$2146435073, %eax       # imm = 0x7FF00001
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_66
.LBB0_2:
	movl	%edi, %r15d
	testl	%edi, %edi
	js	.LBB0_6
# %bb.3:
	cmpl	$1, %r15d
	je	.LBB0_7
.LBB0_4:
	testl	%r15d, %r15d
	jne	.LBB0_8
# %bb.5:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ieee754_j0            # TAILCALL
.LBB0_6:
	negl	%r15d
	pxor	.LCPI0_0(%rip), %xmm0
	xorl	$-2147483648, %r14d     # imm = 0x80000000
	cmpl	$1, %r15d
	jne	.LBB0_4
.LBB0_7:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__ieee754_j1            # TAILCALL
.LBB0_8:
	shrl	$31, %r14d
	andl	%r15d, %r14d
	callq	fabs
	xorpd	%xmm3, %xmm3
	cmpl	$2146435071, %r12d      # imm = 0x7FEFFFFF
	ja	.LBB0_63
# %bb.9:
	orl	%r12d, %ebx
	je	.LBB0_63
# %bb.10:
	movdqa	%xmm0, %xmm6
	cvtsi2sd	%r15d, %xmm7
	ucomisd	%xmm7, %xmm0
	jae	.LBB0_15
# %bb.11:
	cmpl	$1041235967, %r12d      # imm = 0x3E0FFFFF
	ja	.LBB0_18
# %bb.12:
	cmpl	$33, %r15d
	jg	.LBB0_63
# %bb.13:
	mulsd	.LCPI0_10(%rip), %xmm6
	cmpl	$2, %r15d
	jge	.LBB0_39
# %bb.14:
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm6, %xmm3
	jmp	.LBB0_62
.LBB0_15:
	cmpl	$1389363200, %r12d      # imm = 0x52D00000
	movdqa	%xmm6, -64(%rbp)        # 16-byte Spill
	jb	.LBB0_23
# %bb.16:
	andl	$3, %r15d
	jmpq	*.LJTI0_0(,%r15,8)
.LBB0_17:
	movdqa	%xmm6, %xmm0
	callq	cos
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	movapd	%xmm0, %xmm2
	addsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
	jmp	.LBB0_52
.LBB0_18:
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
	movl	$1, %edx
	movsd	.LCPI0_5(%rip), %xmm3   # xmm3 = mem[0],zero
	ucomisd	%xmm4, %xmm3
	jbe	.LBB0_21
# %bb.19:                               # %.preheader8
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm4, %xmm5
	addl	$1, %edx
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm4
	mulsd	%xmm5, %xmm4
	subsd	%xmm1, %xmm4
	ucomisd	%xmm4, %xmm3
	movapd	%xmm5, %xmm1
	ja	.LBB0_20
.LBB0_21:
	addl	%r15d, %edx
	leal	(%rdx,%rdx), %ecx
	movl	%ecx, %esi
	negl	%esi
	movl	%eax, %edi
	notl	%edi
	cmpl	%edi, %esi
	cmovgel	%esi, %edi
	leal	(%rdi,%rdx,2), %edx
	addl	$1, %edx
	testb	$2, %dl
	jne	.LBB0_26
# %bb.22:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm6, %xmm1
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	addl	$-2, %ecx
	jmp	.LBB0_27
.LBB0_23:
	movdqa	%xmm6, %xmm0
	callq	__ieee754_j0
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	__ieee754_j1
	movapd	%xmm0, %xmm3
	cmpl	$2, %r15d
	jl	.LBB0_63
# %bb.24:
	leal	-1(%r15), %eax
	andl	$1, %eax
	cmpl	$2, %r15d
	jne	.LBB0_44
# %bb.25:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	movsd	-48(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	jmp	.LBB0_47
.LBB0_26:
	xorpd	%xmm3, %xmm3
.LBB0_27:
	cmpl	$2, %edx
	jb	.LBB0_30
# %bb.28:                               # %.preheader6
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ecx, %xmm2
	divsd	%xmm6, %xmm2
	subsd	%xmm3, %xmm2
	movapd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	leal	-2(%rcx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	divsd	%xmm6, %xmm2
	subsd	%xmm3, %xmm2
	movapd	%xmm1, %xmm3
	divsd	%xmm2, %xmm3
	addl	$-4, %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_29
.LBB0_30:
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
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
	jbe	.LBB0_34
# %bb.31:
	cmpl	$2, %r15d
	jl	.LBB0_49
# %bb.32:
	testb	$1, %r15b
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	jne	.LBB0_53
# %bb.33:
	movapd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	-48(%rbp), %xmm7        # 8-byte Folded Reload
	addsd	.LCPI0_8(%rip), %xmm6
	leal	-2(%r15), %eax
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB0_54
.LBB0_34:
	cmpl	$2, %r15d
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	jl	.LBB0_50
# %bb.35:                               # %.preheader4
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm1, %xmm4
	movsd	-48(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movapd	%xmm1, %xmm7
	jmp	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=1
	movapd	%xmm4, %xmm5
	addl	$-1, %r15d
	movapd	%xmm7, %xmm4
	cmpl	$1, %r15d
	jle	.LBB0_57
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	%xmm5, %xmm7
	addsd	%xmm2, %xmm6
	ucomisd	%xmm3, %xmm7
	jbe	.LBB0_36
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	divsd	%xmm7, %xmm4
	movsd	-48(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	divsd	%xmm7, %xmm5
	movsd	%xmm5, -48(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm7
	jmp	.LBB0_36
.LBB0_39:
	leal	-1(%r15), %eax
	leal	-2(%r15), %ecx
	andl	$3, %eax
	cmpl	$3, %ecx
	jae	.LBB0_58
# %bb.40:
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$2, %ecx
	movapd	%xmm6, %xmm3
	jmp	.LBB0_60
.LBB0_41:
	movdqa	%xmm6, %xmm0
	callq	cos
	pxor	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_43
.LBB0_42:
	movdqa	%xmm6, %xmm0
	callq	cos
.LBB0_43:
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-48(%rbp), %xmm2        # 16-byte Reload
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm2
	jmp	.LBB0_52
.LBB0_44:
	movl	%eax, %ecx
	subl	%r15d, %ecx
	addl	$1, %ecx
	movl	$2, %edx
	movapd	-64(%rbp), %xmm2        # 16-byte Reload
	movsd	-48(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm4, %xmm0
	xorps	%xmm4, %xmm4
	cvtsi2sd	%edx, %xmm4
	movapd	%xmm3, %xmm1
	divsd	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm0, %xmm4
	leal	2(%rdx), %esi
	xorps	%xmm3, %xmm3
	cvtsi2sd	%esi, %xmm3
	divsd	%xmm2, %xmm3
	mulsd	%xmm4, %xmm3
	subsd	%xmm1, %xmm3
	addl	$4, %edx
	addl	$2, %ecx
	jne	.LBB0_45
# %bb.46:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
.LBB0_47:
	testl	%eax, %eax
	je	.LBB0_63
# %bb.48:
	divsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm3
	subsd	%xmm4, %xmm3
	testl	%r14d, %r14d
	je	.LBB0_65
	jmp	.LBB0_64
.LBB0_49:
	movsd	.LCPI0_6(%rip), %xmm7   # xmm7 = mem[0],zero
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_57
.LBB0_50:
	movsd	.LCPI0_6(%rip), %xmm7   # xmm7 = mem[0],zero
	jmp	.LBB0_57
.LBB0_51:
	movdqa	%xmm6, %xmm0
	callq	cos
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	callq	sin
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	movapd	%xmm0, %xmm2
	subsd	-48(%rbp), %xmm2        # 8-byte Folded Reload
.LBB0_52:
	mulsd	.LCPI0_2(%rip), %xmm2
	movapd	%xmm2, -48(%rbp)        # 16-byte Spill
	movapd	%xmm1, %xmm0
	callq	__ieee754_sqrt
	movapd	-48(%rbp), %xmm3        # 16-byte Reload
.LBB0_62:
	divsd	%xmm0, %xmm3
.LBB0_63:
	testl	%r14d, %r14d
	je	.LBB0_65
.LBB0_64:
	xorpd	.LCPI0_0(%rip), %xmm3
.LBB0_65:
	movapd	%xmm3, %xmm0
.LBB0_66:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_53:
	leal	-1(%r15), %eax
	movsd	.LCPI0_6(%rip), %xmm7   # xmm7 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB0_54:
	cmpl	$2, %r15d
	je	.LBB0_57
# %bb.55:                               # %.preheader2
	addl	$2, %eax
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm7, %xmm3
	movapd	%xmm7, %xmm4
	mulsd	%xmm6, %xmm4
	divsd	%xmm0, %xmm4
	subsd	%xmm1, %xmm4
	addsd	%xmm2, %xmm6
	movapd	%xmm4, %xmm1
	movapd	%xmm4, %xmm7
	mulsd	%xmm6, %xmm7
	divsd	%xmm0, %xmm7
	subsd	%xmm3, %xmm7
	addsd	%xmm2, %xmm6
	addl	$-2, %eax
	cmpl	$2, %eax
	jg	.LBB0_56
.LBB0_57:
	movsd	%xmm7, -72(%rbp)        # 8-byte Spill
	callq	__ieee754_j0
	movapd	%xmm0, %xmm3
	mulsd	-48(%rbp), %xmm3        # 8-byte Folded Reload
	divsd	-72(%rbp), %xmm3        # 8-byte Folded Reload
	testl	%r14d, %r14d
	je	.LBB0_65
	jmp	.LBB0_64
.LBB0_58:
	movl	%eax, %edx
	subl	%r15d, %edx
	addl	$1, %edx
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	$2, %ecx
	movapd	%xmm6, %xmm3
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	leal	1(%rcx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	mulsd	%xmm6, %xmm3
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	leal	2(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm6, %xmm3
	leal	3(%rcx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	movl	%ecx, %esi
	addl	$4, %ecx
	addl	%edx, %esi
	addl	$4, %esi
	cmpl	$2, %esi
	jne	.LBB0_59
.LBB0_60:
	testl	%eax, %eax
	je	.LBB0_62
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm1, %xmm0
	mulsd	%xmm6, %xmm3
	addl	$1, %ecx
	addl	$-1, %eax
	jne	.LBB0_61
	jmp	.LBB0_62
.Lfunc_end0:
	.size	__ieee754_jn, .Lfunc_end0-__ieee754_jn
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_17
	.quad	.LBB0_51
	.quad	.LBB0_41
	.quad	.LBB0_42
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
	movdqa	%xmm0, %xmm1
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
	cmpl	$2146435073, %esi       # imm = 0x7FF00001
	jb	.LBB1_2
# %bb.1:
	addsd	%xmm1, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB1_29
.LBB1_2:
	orl	%eax, %edx
	je	.LBB1_3
# %bb.4:
	testl	%ecx, %ecx
	js	.LBB1_5
# %bb.6:
	movl	%edi, %ebx
	movl	$1, %r14d
	testl	%edi, %edi
	js	.LBB1_7
# %bb.8:
	cmpl	$1, %ebx
	je	.LBB1_11
.LBB1_9:
	testl	%ebx, %ebx
	jne	.LBB1_12
# %bb.10:
	movdqa	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__ieee754_y0            # TAILCALL
.LBB1_3:
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_29
.LBB1_5:
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB1_29
.LBB1_7:
	negl	%ebx
	leal	(%rbx,%rbx), %ecx
	andl	$2, %ecx
	movl	$1, %r14d
	subl	%ecx, %r14d
	cmpl	$1, %ebx
	jne	.LBB1_9
.LBB1_11:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movdqa	%xmm1, %xmm0
	callq	__ieee754_y1
	mulsd	-48(%rbp), %xmm0        # 8-byte Folded Reload
	jmp	.LBB1_29
.LBB1_12:
	pxor	%xmm0, %xmm0
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	je	.LBB1_29
# %bb.13:
	cmpl	$1389363200, %eax       # imm = 0x52D00000
	movq	%xmm1, -24(%rbp)        # 8-byte Folded Spill
	jb	.LBB1_21
# %bb.14:
	andl	$3, %ebx
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_15:
	movdqa	%xmm1, %xmm0
	callq	sin
	jmp	.LBB1_16
.LBB1_21:
	movdqa	%xmm1, %xmm0
	callq	__ieee754_y0
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movq	-24(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_y1
	movdqa	%xmm0, %xmm2
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
	movdqa	%xmm1, %xmm0
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
	movdqa	%xmm1, %xmm0
	callq	sin
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	%xmm0, %xmm1
	subsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
	jmp	.LBB1_20
.LBB1_19:
	movdqa	%xmm1, %xmm0
	callq	sin
	movq	%xmm0, -48(%rbp)        # 8-byte Folded Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movapd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
.LBB1_20:
	mulsd	.LCPI1_3(%rip), %xmm1
	movapd	%xmm1, -48(%rbp)        # 16-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__ieee754_sqrt
	movapd	-48(%rbp), %xmm2        # 16-byte Reload
	divsd	%xmm0, %xmm2
.LBB1_26:
	testl	%r14d, %r14d
	jg	.LBB1_28
# %bb.27:
	pxor	.LCPI1_2(%rip), %xmm2
.LBB1_28:
	movdqa	%xmm2, %xmm0
.LBB1_29:
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
