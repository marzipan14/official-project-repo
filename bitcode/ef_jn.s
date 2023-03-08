	.text
	.file	"ef_jn.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __ieee754_jnf
.LCPI0_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
.LCPI0_2:
	.zero	4
	.long	1073741824              # float 2
	.zero	4
	.zero	4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1073741824              # float 2
.LCPI0_3:
	.long	3212836864              # float -1
.LCPI0_4:
	.long	1315859240              # float 1.0E+9
.LCPI0_5:
	.long	1065353216              # float 1
.LCPI0_6:
	.long	1118925184              # float 88.7216796
.LCPI0_7:
	.long	3221225472              # float -2
.LCPI0_8:
	.long	1343554297              # float 1.0E+10
.LCPI0_9:
	.long	1056964608              # float 0.5
	.text
	.globl	__ieee754_jnf
	.p2align	4, 0x90
	.type	__ieee754_jnf,@function
__ieee754_jnf:                          # @__ieee754_jnf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movd	%xmm0, %r12d
	movl	%r12d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2139095041, %ebx       # imm = 0x7F800001
	jb	.LBB0_2
# %bb.1:
	addss	%xmm0, %xmm0
	jmp	.LBB0_58
.LBB0_2:
	movl	%edi, %r15d
	testl	%edi, %edi
	js	.LBB0_4
# %bb.3:
	movl	%r12d, %r14d
	cmpl	$1, %r15d
	je	.LBB0_8
.LBB0_6:
	testl	%r15d, %r15d
	jne	.LBB0_9
# %bb.7:
	callq	__ieee754_j0f
	jmp	.LBB0_58
.LBB0_4:
	negl	%r15d
	pxor	.LCPI0_0(%rip), %xmm0
	movl	%r12d, %r14d
	xorl	$-2147483648, %r14d     # imm = 0x80000000
	cmpl	$1, %r15d
	jne	.LBB0_6
.LBB0_8:
	callq	__ieee754_j1f
	jmp	.LBB0_58
.LBB0_9:
	shrl	$31, %r14d
	andl	%r15d, %r14d
	callq	fabsf
	movdqa	%xmm0, %xmm6
	pxor	%xmm0, %xmm0
	andl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	je	.LBB0_56
# %bb.10:
	cmpl	$2139095040, %r12d      # imm = 0x7F800000
	jne	.LBB0_11
.LBB0_56:
	testl	%r14d, %r14d
	je	.LBB0_58
# %bb.57:
	xorps	.LCPI0_0(%rip), %xmm0
.LBB0_58:
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	cvtsi2ss	%r15d, %xmm7
	ucomiss	%xmm7, %xmm6
	jae	.LBB0_12
# %bb.20:
	cmpl	$813694975, %ebx        # imm = 0x307FFFFF
	ja	.LBB0_31
# %bb.21:
	cmpl	$33, %r15d
	jg	.LBB0_56
# %bb.22:
	mulss	.LCPI0_9(%rip), %xmm6
	cmpl	$2, %r15d
	jge	.LBB0_24
# %bb.23:
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm0
	divss	%xmm1, %xmm0
	jmp	.LBB0_56
.LBB0_12:
	movaps	%xmm6, %xmm0
	movaps	%xmm6, -64(%rbp)        # 16-byte Spill
	callq	__ieee754_j0f
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	callq	__ieee754_j1f
	cmpl	$2, %r15d
	jl	.LBB0_56
# %bb.13:
	movss	-36(%rbp), %xmm4        # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movaps	-64(%rbp), %xmm3        # 16-byte Reload
	leal	-1(%r15), %eax
	andl	$1, %eax
	cmpl	$2, %r15d
	jne	.LBB0_15
# %bb.14:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_18
.LBB0_31:
	leal	(%r15,%r15), %eax
	movaps	.LCPI0_2(%rip), %xmm1   # xmm1 = <u,2.0E+0,u,u>
	cvtsi2ss	%eax, %xmm1
	movaps	%xmm6, %xmm0
	shufps	$224, %xmm6, %xmm0      # xmm0 = xmm0[0,0],xmm6[2,3]
	divps	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	shufps	$229, %xmm1, %xmm0      # xmm0 = xmm0[1,1],xmm1[2,3]
	movaps	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	movaps	%xmm1, %xmm4
	mulss	%xmm2, %xmm4
	addss	.LCPI0_3(%rip), %xmm4
	movl	$1, %edx
	movss	.LCPI0_4(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm3
	jbe	.LBB0_34
# %bb.32:                               # %.preheader8
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movaps	%xmm4, %xmm5
	addl	$1, %edx
	addss	%xmm0, %xmm2
	movaps	%xmm2, %xmm4
	mulss	%xmm5, %xmm4
	subss	%xmm1, %xmm4
	ucomiss	%xmm4, %xmm3
	movaps	%xmm5, %xmm1
	ja	.LBB0_33
.LBB0_34:
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
	jne	.LBB0_35
# %bb.36:
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	divss	%xmm6, %xmm1
	movss	.LCPI0_5(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm3
	addl	$-2, %ecx
	jmp	.LBB0_37
.LBB0_15:
	movl	%eax, %ecx
	subl	%r15d, %ecx
	addl	$1, %ecx
	movl	$2, %edx
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movaps	%xmm4, %xmm1
	movaps	%xmm0, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2ss	%edx, %xmm4
	divss	%xmm3, %xmm4
	mulss	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	leal	2(%rdx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2ss	%esi, %xmm0
	divss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	subss	%xmm2, %xmm0
	addl	$4, %edx
	addl	$2, %ecx
	jne	.LBB0_16
# %bb.17:
	xorps	%xmm1, %xmm1
	cvtsi2ss	%edx, %xmm1
.LBB0_18:
	testl	%eax, %eax
	je	.LBB0_56
# %bb.19:
	divss	%xmm3, %xmm1
	mulss	%xmm1, %xmm0
	subss	%xmm4, %xmm0
	jmp	.LBB0_56
.LBB0_35:
	xorps	%xmm3, %xmm3
.LBB0_37:
	cmpl	$2, %edx
	jb	.LBB0_40
# %bb.38:                               # %.preheader6
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	divss	%xmm6, %xmm2
	subss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	leal	-2(%rcx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2ss	%edx, %xmm2
	divss	%xmm6, %xmm2
	subss	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	divss	%xmm2, %xmm3
	addl	$-4, %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_39
.LBB0_40:
	movss	%xmm3, -36(%rbp)        # 4-byte Spill
	movaps	%xmm6, -64(%rbp)        # 16-byte Spill
	mulss	%xmm7, %xmm0
	movss	%xmm7, -68(%rbp)        # 4-byte Spill
	callq	fabsf
	callq	__ieee754_logf
	mulss	-68(%rbp), %xmm0        # 4-byte Folded Reload
	movss	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	leal	-2(%r15,%r15), %eax
	xorps	%xmm6, %xmm6
	cvtsi2ss	%eax, %xmm6
	jbe	.LBB0_41
# %bb.43:
	cmpl	$2, %r15d
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	jl	.LBB0_44
# %bb.45:
	testb	$1, %r15b
	jne	.LBB0_46
# %bb.47:
	movaps	%xmm6, %xmm7
	divss	%xmm0, %xmm7
	subss	-36(%rbp), %xmm7        # 4-byte Folded Reload
	addss	.LCPI0_7(%rip), %xmm6
	leal	-2(%r15), %eax
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_48
.LBB0_41:
	cmpl	$2, %r15d
	jl	.LBB0_42
# %bb.51:                               # %.preheader4
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI0_8(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm4
	movss	-36(%rbp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm7
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_52
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=1
	movaps	%xmm4, %xmm5
	addl	$-1, %r15d
	movaps	%xmm7, %xmm4
	cmpl	$1, %r15d
	jle	.LBB0_55
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	mulss	%xmm6, %xmm7
	divss	%xmm0, %xmm7
	subss	%xmm5, %xmm7
	addss	%xmm2, %xmm6
	ucomiss	%xmm3, %xmm7
	jbe	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=1
	divss	%xmm7, %xmm4
	movss	-36(%rbp), %xmm5        # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	divss	%xmm7, %xmm5
	movss	%xmm5, -36(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm7
	jmp	.LBB0_54
.LBB0_44:
	movss	.LCPI0_5(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB0_55
.LBB0_24:
	leal	-1(%r15), %eax
	leal	-2(%r15), %ecx
	andl	$3, %eax
	cmpl	$3, %ecx
	jae	.LBB0_26
# %bb.25:
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$2, %ecx
	movaps	%xmm6, %xmm0
	jmp	.LBB0_28
.LBB0_42:
	movss	.LCPI0_5(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_55
.LBB0_46:
	leal	-1(%r15), %eax
	movss	.LCPI0_5(%rip), %xmm7   # xmm7 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
.LBB0_48:
	cmpl	$2, %r15d
	je	.LBB0_55
# %bb.49:                               # %.preheader2
	addl	$2, %eax
	movss	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	movaps	%xmm7, %xmm3
	movaps	%xmm7, %xmm4
	mulss	%xmm6, %xmm4
	divss	%xmm0, %xmm4
	subss	%xmm1, %xmm4
	addss	%xmm2, %xmm6
	movaps	%xmm4, %xmm1
	movaps	%xmm4, %xmm7
	mulss	%xmm6, %xmm7
	divss	%xmm0, %xmm7
	subss	%xmm3, %xmm7
	addss	%xmm2, %xmm6
	addl	$-2, %eax
	cmpl	$2, %eax
	jg	.LBB0_50
.LBB0_55:
	movss	%xmm7, -64(%rbp)        # 4-byte Spill
	callq	__ieee754_j0f
	mulss	-36(%rbp), %xmm0        # 4-byte Folded Reload
	divss	-64(%rbp), %xmm0        # 4-byte Folded Reload
	jmp	.LBB0_56
.LBB0_26:
	movl	%eax, %edx
	subl	%r15d, %edx
	addl	$1, %edx
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	$2, %ecx
	movaps	%xmm6, %xmm0
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm1, %xmm2
	mulss	%xmm6, %xmm0
	leal	1(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ss	%esi, %xmm1
	mulss	%xmm2, %xmm1
	leal	2(%rcx), %esi
	xorps	%xmm2, %xmm2
	cvtsi2ss	%esi, %xmm2
	mulss	%xmm6, %xmm0
	mulss	%xmm1, %xmm2
	mulss	%xmm6, %xmm0
	leal	3(%rcx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2ss	%esi, %xmm1
	mulss	%xmm2, %xmm1
	mulss	%xmm6, %xmm0
	movl	%ecx, %esi
	addl	$4, %ecx
	addl	%edx, %esi
	addl	$4, %esi
	cmpl	$2, %esi
	jne	.LBB0_27
.LBB0_28:
	testl	%eax, %eax
	je	.LBB0_30
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2ss	%ecx, %xmm2
	mulss	%xmm2, %xmm1
	mulss	%xmm6, %xmm0
	addl	$1, %ecx
	addl	$-1, %eax
	jne	.LBB0_29
.LBB0_30:
	divss	%xmm1, %xmm0
	jmp	.LBB0_56
.Lfunc_end0:
	.size	__ieee754_jnf, .Lfunc_end0-__ieee754_jnf
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_ynf
.LCPI1_0:
	.long	4286578688              # float -Inf
.LCPI1_1:
	.long	2143289344              # float NaN
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_ynf
	.p2align	4, 0x90
	.type	__ieee754_ynf,@function
__ieee754_ynf:                          # @__ieee754_ynf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %ecx
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2139095041, %eax       # imm = 0x7F800001
	jb	.LBB1_2
# %bb.1:
	addss	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB1_20
.LBB1_2:
	testl	%eax, %eax
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
	callq	__ieee754_y0f
	jmp	.LBB1_20
.LBB1_3:
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_20
.LBB1_5:
	movss	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_20
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
	cvtsi2ss	%r14d, %xmm0
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movdqa	%xmm1, %xmm0
	callq	__ieee754_y1f
	mulss	-20(%rbp), %xmm0        # 4-byte Folded Reload
	jmp	.LBB1_20
.LBB1_12:
	pxor	%xmm0, %xmm0
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	je	.LBB1_20
# %bb.13:
	movdqa	%xmm1, %xmm0
	movd	%xmm1, -20(%rbp)        # 4-byte Folded Spill
	callq	__ieee754_y0f
	movd	%xmm0, -24(%rbp)        # 4-byte Folded Spill
	movd	-20(%rbp), %xmm0        # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__ieee754_y1f
	cmpl	$2, %ebx
	jl	.LBB1_18
# %bb.14:
	movd	%xmm0, %eax
	cmpl	$-8388608, %eax         # imm = 0xFF800000
	je	.LBB1_18
# %bb.15:                               # %.preheader
	movl	$2, %eax
	movl	$2, %ecx
	movss	-20(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movaps	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	divss	%xmm2, %xmm0
	mulss	%xmm3, %xmm0
	subss	%xmm1, %xmm0
	cmpl	%ebx, %ecx
	jge	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	movd	%xmm0, %edx
	addl	$1, %ecx
	addl	$2, %eax
	cmpl	$-8388608, %edx         # imm = 0xFF800000
	jne	.LBB1_16
.LBB1_18:
	testl	%r14d, %r14d
	jg	.LBB1_20
# %bb.19:
	pxor	.LCPI1_2(%rip), %xmm0
.LBB1_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ieee754_ynf, .Lfunc_end1-__ieee754_ynf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
