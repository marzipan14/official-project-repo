	.text
	.file	"dtoa.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _dtoa_r
.LCPI0_0:
	.quad	-4613937818241073152    # double -1.5
.LCPI0_1:
	.quad	4598887322496222049     # double 0.28952965460216801
.LCPI0_2:
	.quad	4595512376519870643     # double 0.1760912590558
.LCPI0_3:
	.quad	4599094494223104507     # double 0.30102999566398098
.LCPI0_4:
	.quad	4607182418800017408     # double 1
.LCPI0_5:
	.quad	4621819117588971520     # double 10
.LCPI0_6:
	.quad	4619567317775286272     # double 7
.LCPI0_7:
	.quad	4602678819172646912     # double 0.5
.LCPI0_8:
	.quad	-4606056518893174784    # double -5
.LCPI0_10:
	.quad	4617315517961601024     # double 5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_9:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	_dtoa_r
	.p2align	4, 0x90
	.type	_dtoa_r,@function
_dtoa_r:                                # @_dtoa_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%esi, %edx
	movq	96(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	104(%rdi), %ecx
	movl	%ecx, 8(%rsi)
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsi)
	movl	%edx, %ebx
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	_Bfree
	movq	-64(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%ebx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	$0, 96(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movq	%xmm0, %rcx
	movq	%rcx, %r13
	shrq	$32, %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB0_4
# %bb.3:
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_4:
	movl	$1, (%r15)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rcx
	movq	%rcx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r13
	shrq	$32, %r13
.LBB0_5:
	movl	%r13d, %eax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jne	.LBB0_10
# %bb.6:
	movl	$9999, (%r12)           # imm = 0x270F
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_8
# %bb.7:
	testl	$1048575, %r13d         # imm = 0xFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %ecx
	movl	$.L.str.1, %eax
	cmoveq	%rcx, %rax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_250
# %bb.9:
	leaq	3(%rax), %rdx
	leaq	8(%rax), %rcx
	cmpb	$0, 3(%rax)
	cmoveq	%rdx, %rcx
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_250
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_11
	jnp	.LBB0_13
.LBB0_11:
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%edx, %ebx
	leaq	-160(%rbp), %rsi
	leaq	-140(%rbp), %rdx
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	__d2b
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	shrq	$52, %rax
	movl	$42, __A_VARIABLE(%rip)
	andl	$2047, %eax             # imm = 0x7FF
	je	.LBB0_15
# %bb.12:
	movabsq	$4503599627370495, %rdx # imm = 0xFFFFFFFFFFFFF
	andq	%rdi, %rdx
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	orq	%rdx, %rcx
	addl	$-1023, %eax            # imm = 0xFC01
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB0_19
.LBB0_13:
	movl	$1, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %eax
	testq	%r14, %r14
	je	.LBB0_250
# %bb.14:
	movq	$.L.str.2+1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_250
.LBB0_15:
	movl	-160(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1041, %eax            # imm = 0xFBEF
	jl	.LBB0_17
# %bb.16:
	movb	$14, %cl
	subb	%al, %cl
	movl	%r13d, %esi
	shll	%cl, %esi
	leal	18(%rax), %ecx
	movl	%edi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	orl	%esi, %edx
	jmp	.LBB0_18
.LBB0_17:
	movb	$-18, %cl
	subb	%al, %cl
	movl	%edi, %edx
	shll	%cl, %edx
.LBB0_18:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	movq	%xmm0, %rdx
	movabsq	$-139611588448485376, %rcx # imm = 0xFE10000000000000
	addq	%rdx, %rcx
	addl	$-1, %eax
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
.LBB0_19:
	movq	%rcx, %xmm1
	addsd	.LCPI0_0(%rip), %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
	addsd	.LCPI0_2(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r10d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_22
# %bb.20:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r10d, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_21
	jnp	.LBB0_22
.LBB0_21:
	addl	$-1, %r10d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r9d
	cmpl	$22, %r10d
	ja	.LBB0_26
# %bb.23:
	movslq	%r10d, %rcx
	movsd	__mprec_tens(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_25
# %bb.24:
	addl	$-1, %r10d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
.LBB0_26:
	movl	%eax, %ecx
	notl	%ecx
	addl	-140(%rbp), %ecx
	movl	%ecx, %edx
	negl	%edx
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	cmovsl	%r8d, %ecx
	cmovnsl	%r8d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	js	.LBB0_28
# %bb.27:
	addl	%r10d, %ecx
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movl	%r10d, %r8d
	jmp	.LBB0_29
.LBB0_28:
	subl	%r10d, %edx
	movl	%r10d, %esi
	negl	%esi
	movl	%esi, -80(%rbp)         # 4-byte Spill
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ebx
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movq	%r14, -192(%rbp)        # 8-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	jb	.LBB0_31
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	movl	$1, %r12d
	xorl	%ebx, %ebx
	movl	$-1, %ecx
	movl	$1, -112(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB0_48
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -112(%rbp)          # 4-byte Folded Spill
	cmpl	$6, %ebx
	jl	.LBB0_33
# %bb.32:
	addl	$-4, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_34
.LBB0_33:
	movl	$1, %r12d
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpl	$5, %ebx
	ja	.LBB0_40
# %bb.35:
	xorl	%eax, %eax
	movl	%ebx, %esi
	movl	$-1, %ecx
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -112(%rbp)          # 4-byte Folded Spill
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	jg	.LBB0_39
# %bb.38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	movl	%esi, %r15d
	movl	%esi, %ecx
	jmp	.LBB0_44
.LBB0_40:
	movl	$-1, %ecx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_44
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -112(%rbp)          # 4-byte Folded Spill
.LBB0_42:
	movl	%r10d, %ecx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addl	%esi, %ecx
	leal	1(%r10,%rsi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_47
# %bb.43:
	movl	%r15d, %eax
.LBB0_44:
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	$0, 104(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r10, %r14
	jb	.LBB0_49
# %bb.45:                               # %.preheader14
	cltq
	movl	$4, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	movl	%esi, 104(%rdi)
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %rdx
	addq	$28, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jbe	.LBB0_46
	jmp	.LBB0_49
.LBB0_47:
	movl	%esi, %eax
.LBB0_48:
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r10, %r14
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 104(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_49:
	callq	_Balloc
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, 96(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r14, %rbx
	movsd	-64(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%r15, %r12
	je	.LBB0_100
# %bb.50:
	cmpl	$14, %r12d
	ja	.LBB0_100
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	jle	.LBB0_54
# %bb.52:
	movl	%ebx, %edx
	andl	$15, %edx
	movl	%ebx, %esi
	shrl	$4, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	testl	$256, %ebx              # imm = 0x100
	jne	.LBB0_60
# %bb.53:
	movapd	%xmm5, %xmm0
	jmp	.LBB0_61
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	testl	%ebx, %ebx
	je	.LBB0_120
# %bb.55:
	movl	%ebx, %esi
	negl	%esi
	movl	%esi, %edx
	andl	$15, %edx
	movsd	__mprec_tens(,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	sarl	$4, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_67
# %bb.56:                               # %.preheader12
	movl	$2, %ecx
	movl	$__mprec_bigtens, %edx
	jmp	.LBB0_58
	.p2align	4, 0x90
.LBB0_57:                               #   in Loop: Header=BB0_58 Depth=1
	sarl	%esi
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_67
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB0_57
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=1
	addl	$1, %ecx
	mulsd	(%rdx), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_57
.LBB0_60:
	andl	$15, %esi
	movapd	%xmm5, %xmm0
	divsd	__mprec_bigtens+32(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %ecx
.LBB0_61:
	movsd	__mprec_tens(,%rdx,8), %xmm1 # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_66
# %bb.62:                               # %.preheader10
	movl	$__mprec_bigtens, %edx
	jmp	.LBB0_64
	.p2align	4, 0x90
.LBB0_63:                               #   in Loop: Header=BB0_64 Depth=1
	sarl	%esi
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_66
.LBB0_64:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB0_63
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=1
	addl	$1, %ecx
	mulsd	(%rdx), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_63
.LBB0_66:
	divsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_72
# %bb.68:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_72
# %bb.69:
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_72
# %bb.70:
	movq	%rbx, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	jle	.LBB0_99
# %bb.71:
	leal	-1(%r9), %r8d
	mulsd	.LCPI0_5(%rip), %xmm0
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdx        # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	jmp	.LBB0_73
.LBB0_72:
	movl	%r12d, %edx
	movq	%rbx, %r9
	movl	%ebx, %r8d
.LBB0_73:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_6(%rip), %xmm1
	movq	%xmm1, %rcx
	movabsq	$-234187180623265792, %rsi # imm = 0xFCC0000000000000
	addq	%rcx, %rsi
	movq	%rsi, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_77
# %bb.74:
	movslq	%edx, %rcx
	movsd	__mprec_tens-8(,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_79
# %bb.75:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm3, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	addb	$48, %cl
	movb	%cl, (%rax)
	ucomisd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_91
# %bb.76:
	movq	%rax, %r14
	addq	$1, %r14
	jmp	.LBB0_96
.LBB0_77:
	addsd	.LCPI0_8(%rip), %xmm0
	ucomisd	%xmm3, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_97
# %bb.78:
	xorl	%r15d, %r15d
	movl	%r8d, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_170
.LBB0_79:
	mulsd	%xmm3, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm0, %ecx
	cvtsi2sd	%ecx, %xmm2
	subsd	%xmm2, %xmm0
	addb	$48, %cl
	leaq	1(%rax), %r14
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	je	.LBB0_86
# %bb.80:
	leal	-2(%rdx), %ecx
	leal	-1(%rdx), %ebx
	andl	$1, %ebx
	testl	%ecx, %ecx
	je	.LBB0_83
# %bb.81:
	movl	%ebx, %esi
	subl	%edx, %esi
	addl	$1, %esi
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB0_82:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm0, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	subsd	%xmm3, %xmm0
	addb	$48, %dl
	movb	%dl, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm0, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	subsd	%xmm3, %xmm0
	addb	$48, %dl
	movb	%dl, 1(%r14)
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %esi
	jne	.LBB0_82
.LBB0_83:
	addq	$2, %rcx
	testl	%ebx, %ebx
	je	.LBB0_85
# %bb.84:
	mulsd	.LCPI0_5(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cvttsd2si	%xmm0, %edx
	leal	48(%rdx), %esi
	movb	%sil, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	subsd	%xmm2, %xmm0
.LBB0_85:
	addq	%rax, %rcx
	movq	%rcx, %r14
.LBB0_86:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_211
# %bb.87:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_99
# %bb.88:                               # %.preheader4
	addq	$1, %r14
	.p2align	4, 0x90
.LBB0_89:                               # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%r14)
	leaq	-1(%r14), %r14
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_89
# %bb.90:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_96
.LBB0_91:                               # %.preheader6
	movl	$1, %r14d
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm3   # xmm3 = mem[0],zero
	.p2align	4, 0x90
.LBB0_92:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_210
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r14d
	jge	.LBB0_99
# %bb.94:                               #   in Loop: Header=BB0_92 Depth=1
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	movl	$42, __A_VARIABLE(%rip)
	subsd	%xmm4, %xmm0
	addb	$48, %cl
	movb	%cl, (%rax,%r14)
	addq	$1, %r14
	ucomisd	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_92
# %bb.95:                               # %.loopexit9
	addq	%rax, %r14
.LBB0_96:
	movl	%r8d, %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_247
.LBB0_97:
	xorpd	.LCPI0_9(%rip), %xmm3
	ucomisd	%xmm0, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_99
# %bb.98:
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_177
.LBB0_99:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rbx
.LBB0_100:
	movl	-160(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %ebx
	movl	-84(%rbp), %edx         # 4-byte Reload
	jg	.LBB0_106
# %bb.101:
	testl	%ecx, %ecx
	js	.LBB0_106
# %bb.102:
	movslq	%ebx, %rcx
	movsd	__mprec_tens(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	-96(%rbp), %rcx         # 8-byte Reload
	jg	.LBB0_109
# %bb.103:
	testl	%ecx, %ecx
	jns	.LBB0_109
# %bb.104:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	js	.LBB0_121
# %bb.105:
	mulsd	.LCPI0_10(%rip), %xmm0
	xorl	%r15d, %r15d
	ucomisd	%xmm5, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jb	.LBB0_170
	jmp	.LBB0_178
.LBB0_106:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_117
# %bb.107:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jg	.LBB0_118
# %bb.108:
	movl	$54, %eax
	subl	-140(%rbp), %eax
	addl	$1075, %ecx             # imm = 0x433
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	cmovnel	%ecx, %eax
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %r14d
	movl	-80(%rbp), %r15d        # 4-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	jmp	.LBB0_124
.LBB0_109:
	movapd	%xmm5, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm5
	leal	48(%rdx), %ecx
	leaq	1(%rax), %r14
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB0_113
# %bb.110:                              # %.preheader
	addl	$-1, %r12d
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB0_111:                              # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm2, %xmm5
	jne	.LBB0_112
	jnp	.LBB0_246
.LBB0_112:                              #   in Loop: Header=BB0_111 Depth=1
	movapd	%xmm5, %xmm3
	divsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm5
	leal	48(%rdx), %ecx
	movb	%cl, (%r14)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	jne	.LBB0_111
.LBB0_113:
	addsd	%xmm5, %xmm5
	ucomisd	%xmm0, %xmm5
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_212
# %bb.114:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_246
	jp	.LBB0_246
# %bb.115:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB0_212
	jmp	.LBB0_246
.LBB0_117:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, -132(%rbp)       # 4-byte Spill
	jmp	.LBB0_126
.LBB0_118:
	leal	-1(%r12), %r8d
	movl	-116(%rbp), %esi        # 4-byte Reload
	movl	%esi, %edx
	movl	-80(%rbp), %ecx         # 4-byte Reload
	subl	%ecx, %edx
	xorl	%eax, %eax
	movl	%ecx, %r15d
	subl	%r8d, %r15d
	leal	-1(%rdx,%r12), %edx
	cmovll	%r8d, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	cmovll	%eax, %r15d
	cmovll	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_123
# %bb.119:
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%r12d, %eax
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %r14d
	jmp	.LBB0_125
.LBB0_120:
	movapd	%xmm5, %xmm0
	jmp	.LBB0_67
.LBB0_121:
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_178
.LBB0_123:
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %r14d
	subl	%r12d, %r14d
.LBB0_124:
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_125:
	addl	%eax, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	addl	%eax, -136(%rbp)        # 4-byte Folded Spill
	movl	$1, %esi
	callq	__i2b
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	%r15d, %ecx
.LBB0_126:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_129
# %bb.127:
	movl	-136(%rbp), %r15d       # 4-byte Reload
	testl	%r15d, %r15d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jle	.LBB0_130
# %bb.128:
	cmpl	%r15d, %r14d
	movl	%r15d, %eax
	cmovlel	%r14d, %eax
	subl	%eax, -132(%rbp)        # 4-byte Folded Spill
	subl	%eax, %r14d
	subl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_130
.LBB0_129:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-136(%rbp), %r15d       # 4-byte Reload
.LBB0_130:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	jle	.LBB0_139
# %bb.131:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_136
# %bb.132:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_134
# %bb.133:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movq	%rdi, %r14
	movl	%r15d, -136(%rbp)       # 4-byte Spill
	movl	%ecx, %r15d
	callq	__pow5mult
	movq	%r14, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__multiply
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_Bfree
	movl	%r15d, %ecx
	movl	-136(%rbp), %r15d       # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_134:
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %edx
	je	.LBB0_138
# %bb.135:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__pow5mult
	movq	%rbx, %rdi
	jmp	.LBB0_137
.LBB0_136:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__pow5mult
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_137:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_139
.LBB0_138:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_139:
	movl	$1, %esi
	movq	%rdi, %rbx
	callq	__i2b
	movl	$42, __A_VARIABLE(%rip)
	movl	-116(%rbp), %edx        # 4-byte Reload
	testl	%edx, %edx
	jle	.LBB0_141
# %bb.140:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__pow5mult
	movl	-116(%rbp), %edx        # 4-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_142
.LBB0_141:
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_142:
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -84(%rbp)           # 4-byte Folded Reload
	movq	-152(%rbp), %rbx        # 8-byte Reload
	jg	.LBB0_145
# %bb.143:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_145
# %bb.174:
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048575, %r13d         # imm = 0xFFFFF
	je	.LBB0_219
.LBB0_145:
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_146:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_148
# %bb.147:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	20(%rcx), %rax
	movl	20(%rcx,%rax,4), %edi
	callq	__hi0bits
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_149
.LBB0_148:
	movl	$1, %ecx
.LBB0_149:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-132(%rbp), %edx        # 4-byte Reload
	addl	%r15d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %ecx
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	je	.LBB0_152
# %bb.150:
	movl	$32, %eax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jb	.LBB0_153
# %bb.151:
	addl	$-4, %eax
	movl	-76(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB0_155
.LBB0_152:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	-76(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB0_154
.LBB0_153:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	movl	-76(%rbp), %r14d        # 4-byte Reload
	je	.LBB0_156
.LBB0_154:
	addl	$28, %eax
.LBB0_155:
	addl	%eax, %edx
	addl	%eax, %r14d
	addl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_156:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB0_158
# %bb.157:
	movq	%r13, %rsi
	callq	__lshift
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB0_158:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_160
# %bb.159:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%r15d, %edx
	callq	__lshift
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_160:
	movq	-72(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -156(%rbp)          # 4-byte Folded Reload
	je	.LBB0_162
# %bb.161:
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_163
.LBB0_162:
	movl	%r12d, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %eax         # 4-byte Reload
	jmp	.LBB0_166
.LBB0_163:
	movq	%rbx, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_165
# %bb.164:
	movq	%rbx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_165:
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%r15, %rbx
	addl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_166:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jl	.LBB0_171
# %bb.167:
	testl	%ecx, %ecx
	jg	.LBB0_171
# %bb.168:
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_176
# %bb.169:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$5, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%r13, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	__mcmp
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	jle	.LBB0_178
.LBB0_170:
	movq	%rax, %r14
	addq	$1, %r14
	movb	$49, (%rax)
	addl	$1, %ebx
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_239
.LBB0_171:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_179
# %bb.172:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	jle	.LBB0_183
# %bb.173:
	movq	%r15, %rsi
	movl	%r14d, %edx
	movq	%rcx, %rbx
	callq	__lshift
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	jmp	.LBB0_184
.LBB0_176:
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_177:
	movq	-96(%rbp), %rcx         # 8-byte Reload
.LBB0_178:
	notl	%ecx
	xorl	%edx, %edx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %ebx
	movq	%rax, %r14
	jmp	.LBB0_239
.LBB0_179:
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rcx, %r14
	callq	quorem
	movq	%r14, %rcx
	movl	%eax, %r15d
	addl	$48, %r15d
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	%r15b, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jl	.LBB0_203
# %bb.180:
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	leal	-2(%rcx), %r14d
	addq	$2, %r14
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %r12d
	movl	$1, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_181:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	quorem
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r15d
	addl	$48, %r15d
	movb	%r15b, (%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpl	%ebx, %r12d
	jne	.LBB0_181
# %bb.182:
	addq	%rcx, %r14
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_204
.LBB0_183:
	movq	%r15, %rbx
.LBB0_184:
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_186
# %bb.185:
	movl	8(%rbx), %esi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	_Balloc
	movq	%rax, %r15
	leaq	16(%rax), %rdi
	leaq	16(%rbx), %rsi
	movslq	20(%rbx), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	callq	__lshift
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_186:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	1(%rdx), %r14
	movq	%r15, %r13
	jmp	.LBB0_188
	.p2align	4, 0x90
.LBB0_187:                              #   in Loop: Header=BB0_188 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addl	$-1, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	addq	$1, %r14
	movq	%rax, %r13
.LBB0_188:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r15
	movq	%r12, %rbx
	movq	%r12, %rdi
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	callq	quorem
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	callq	__mcmp
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	callq	__mdiff
	movq	%rax, %r12
	cmpl	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jne	.LBB0_190
# %bb.189:                              #   in Loop: Header=BB0_188 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__mcmp
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_190:                              #   in Loop: Header=BB0_188 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	leal	48(%rax), %r15d
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_Bfree
	movl	%r13d, %eax
	movl	-84(%rbp), %ecx         # 4-byte Reload
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rax        # 8-byte Reload
	jne	.LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_188 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB0_223
.LBB0_192:                              #   in Loop: Header=BB0_188 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	js	.LBB0_199
# %bb.193:                              #   in Loop: Header=BB0_188 Depth=1
	orl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_188 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB0_199
.LBB0_195:                              #   in Loop: Header=BB0_188 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jg	.LBB0_217
# %bb.196:                              #   in Loop: Header=BB0_188 Depth=1
	movb	%r15b, -1(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB0_204
# %bb.197:                              #   in Loop: Header=BB0_188 Depth=1
	movq	%r13, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	movq	%rdi, %r15
	callq	__multadd
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, %rbx
	movq	%rax, %rbx
	je	.LBB0_187
# %bb.198:                              #   in Loop: Header=BB0_188 Depth=1
	movq	%r15, %rdi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	jmp	.LBB0_187
.LBB0_199:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jle	.LBB0_222
# %bb.200:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1, %edx
	callq	__lshift
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-112(%rbp), %rax        # 8-byte Reload
	jle	.LBB0_231
.LBB0_201:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %r15d
	jne	.LBB0_233
# %bb.202:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_225
.LBB0_203:
	leaq	1(%rax), %r14
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_204:
	movq	%r13, %rsi
	movl	$1, %edx
	callq	__lshift
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jle	.LBB0_206
.LBB0_205:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_226
.LBB0_206:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_208
# %bb.207:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB0_205
.LBB0_208:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_209:                              # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%r14)
	leaq	-1(%r14), %r14
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_209
	jmp	.LBB0_238
.LBB0_210:                              # %.loopexit7
	addq	%rax, %r14
.LBB0_211:
	movl	%r8d, %ebx
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_212:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rcx
	.p2align	4, 0x90
.LBB0_213:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r14
	cmpb	$57, -1(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_216
# %bb.214:                              #   in Loop: Header=BB0_213 Depth=1
	leaq	-1(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB0_213
# %bb.215:
	addl	$1, %ebx
	movq	%rbx, %r12
	movb	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$49, %dl
	movq	%rax, %rcx
	movb	%dl, (%rax)
	jmp	.LBB0_244
.LBB0_216:
	movq	%rbx, %r12
	leaq	-1(%r14), %rcx
	movb	-1(%r14), %dl
	addb	$1, %dl
	movb	%dl, (%rcx)
	jmp	.LBB0_244
.LBB0_217:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %r15d
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB0_225
# %bb.218:
	movq	-112(%rbp), %rax        # 8-byte Reload
	addb	$49, %al
	movb	%al, -1(%r14)
	jmp	.LBB0_238
.LBB0_219:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -172(%rbp)          # 4-byte Folded Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB0_146
# %bb.220:
	addl	$1, -132(%rbp)          # 4-byte Folded Spill
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB0_146
.LBB0_222:
	movq	-56(%rbp), %r13         # 8-byte Reload
	movb	%r15b, -1(%r14)
	jmp	.LBB0_238
.LBB0_223:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %r15d
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_235
# %bb.224:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_225:
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	movb	$57, -1(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_226:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB0_227:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movzbl	-1(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jne	.LBB0_230
# %bb.228:                              #   in Loop: Header=BB0_227 Depth=1
	leaq	-1(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jne	.LBB0_227
# %bb.229:
	addl	$1, %ebx
	movb	$49, (%rcx)
	jmp	.LBB0_239
.LBB0_230:
	addb	$1, %al
	movb	%al, -1(%r14)
	jmp	.LBB0_239
.LBB0_231:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_234
# %bb.232:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB0_201
	jmp	.LBB0_234
.LBB0_233:
	addl	$49, %eax
	movl	%eax, %r15d
.LBB0_234:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movb	%r15b, -1(%r14)
	jmp	.LBB0_238
.LBB0_235:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jle	.LBB0_237
# %bb.236:
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	$49, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
.LBB0_237:
	movb	%r15b, -1(%r14)
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_238:
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_239:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_245
# %bb.240:
	movq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_243
# %bb.241:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rsi
	je	.LBB0_243
# %bb.242:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_Bfree
	movl	$42, __A_VARIABLE(%rip)
.LBB0_243:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_Bfree
	movq	%rbx, %rdi
.LBB0_244:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_247
.LBB0_245:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_246:
	movq	%rbx, %r12
.LBB0_247:
	movq	%r13, %rsi
	callq	_Bfree
	movb	$0, (%r14)
	addl	$1, %r12d
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	%r12d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_249
# %bb.248:
	movq	%r14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_249:
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_250:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_dtoa_r, .Lfunc_end0-_dtoa_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_36
	.quad	.LBB0_41
	.quad	.LBB0_37
	.quad	.LBB0_42
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function quorem
	.type	quorem,@function
quorem:                                 # @quorem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movslq	20(%rsi), %rcx
	xorl	%r13d, %r13d
	cmpl	%ecx, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB1_23
# %bb.1:
	movq	%rdi, %r14
	leaq	24(%rsi), %r15
	leaq	-1(%rcx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(%rsi,%rcx,4), %r12
	addq	$20, %r12
	leaq	24(%rdi), %rbx
	movl	20(%rdi,%rcx,4), %r8d
	movl	20(%rsi,%rcx,4), %r9d
	addl	$1, %r9d
	xorl	%edi, %edi
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %r9d
	ja	.LBB1_13
# %bb.2:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	leaq	(%r14,%rcx,4), %r8
	addq	$20, %r8
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	%r15, %r14
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%r14), %ebx
	addq	$4, %r14
	movzwl	%bx, %ecx
	imull	%r13d, %ecx
	addl	%eax, %ecx
	shrl	$16, %ebx
	imull	%r13d, %ebx
	movzwl	%cx, %r10d
	shrl	$16, %ecx
	addl	%ebx, %ecx
	movzwl	%cx, %r11d
	movl	%ecx, %eax
	shrl	$16, %eax
	movl	(%r9), %ecx
	movzwl	%cx, %ebx
	subl	%r10d, %ebx
	addl	%edi, %ebx
	movzwl	%bx, %edx
	sarl	$16, %ebx
	shrl	$16, %ecx
	subl	%r11d, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %edi
	sarl	$16, %edi
	shll	$16, %ecx
	orl	%ecx, %edx
	movl	%edx, (%r9)
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jbe	.LBB1_3
# %bb.4:
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_6
# %bb.5:
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_13
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpq	%rbx, %r8
	jbe	.LBB1_7
# %bb.8:                                # %.preheader2
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r8
	ja	.LBB1_9
	jmp	.LBB1_11
.LBB1_7:
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%eax, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movq	%r14, %rdi
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_23
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbx, %r10
	movq	%rbx, %rax
	.p2align	4, 0x90
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15), %esi
	addq	$4, %r15
	movzwl	%si, %edi
	addl	%edx, %edi
	shrl	$16, %esi
	movzwl	%di, %r8d
	shrl	$16, %edi
	addl	%esi, %edi
	movzwl	%di, %r9d
	movl	%edi, %edx
	shrl	$16, %edx
	movl	(%rax), %edi
	movzwl	%di, %ebx
	subl	%r8d, %ebx
	addl	%ecx, %ebx
	movzwl	%bx, %esi
	sarl	$16, %ebx
	shrl	$16, %edi
	subl	%r9d, %edi
	addl	%ebx, %edi
	movl	%edi, %ecx
	sarl	$16, %ecx
	shll	$16, %edi
	orl	%edi, %esi
	movl	%esi, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jbe	.LBB1_15
# %bb.16:
	addl	$1, %r13d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rax
	cmpl	$0, 24(%r14,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_23
# %bb.17:
	leaq	(%r14,%rax,4), %rax
	addq	$24, %rax
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rax
	jbe	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_18
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_22:
	movl	%ecx, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	quorem, .Lfunc_end1-quorem
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Infinity"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"NaN"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0"
	.size	.L.str.2, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
