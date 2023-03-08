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
	subq	$168, %rsp
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %r13
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	96(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	movl	104(%rbx), %ecx
	movl	%ecx, 8(%rsi)
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsi)
	movq	%rbx, %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	_Bfree
	movq	-80(%rbp), %xmm0        # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	$0, 96(%rbx)
.LBB0_2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%xmm0, %rbx
	movq	%rbx, %rcx
	shrq	$32, %rcx
	testl	%ecx, %ecx
	js	.LBB0_4
# %bb.3:
	movl	$0, (%r12)
	jmp	.LBB0_5
.LBB0_4:
	movl	$1, (%r12)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rbx
	movq	%rbx, %xmm0
	movq	%rbx, %rcx
	shrq	$32, %rcx
.LBB0_5:
	movl	%ecx, %r12d
	andl	$2146435072, %r12d      # imm = 0x7FF00000
	cmpl	$2146435072, %r12d      # imm = 0x7FF00000
	jne	.LBB0_10
# %bb.6:
	movl	$9999, (%r13)           # imm = 0x270F
	movl	$.L.str.1, %eax
	testl	%ebx, %ebx
	jne	.LBB0_8
# %bb.7:
	testl	$1048575, %ecx          # imm = 0xFFFFF
	movl	$.L.str, %ecx
	movl	$.L.str.1, %eax
	cmoveq	%rcx, %rax
.LBB0_8:
	testq	%r15, %r15
	je	.LBB0_164
# %bb.9:
	leaq	3(%rax), %rdx
	cmpb	$0, 3(%rax)
	leaq	8(%rax), %rcx
	cmoveq	%rdx, %rcx
	movq	%rcx, (%r15)
	jmp	.LBB0_164
.LBB0_10:
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_11
	jnp	.LBB0_13
.LBB0_11:
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	leaq	-172(%rbp), %rsi
	leaq	-164(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	__d2b
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rax
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	movq	%rbx, -192(%rbp)        # 8-byte Spill
	je	.LBB0_15
# %bb.12:
	movabsq	$4503599627370495, %rdx # imm = 0xFFFFFFFFFFFFF
	andq	%rbx, %rdx
	movabsq	$4607182418800017408, %rcx # imm = 0x3FF0000000000000
	orq	%rdx, %rcx
	addl	$-1023, %eax            # imm = 0xFC01
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB0_19
.LBB0_13:
	movl	$1, (%r13)
	movl	$.L.str.2, %eax
	testq	%r15, %r15
	je	.LBB0_164
# %bb.14:
	movq	$.L.str.2+1, (%r15)
	jmp	.LBB0_164
.LBB0_15:
	movl	-172(%rbp), %eax
	addl	-164(%rbp), %eax
	cmpl	$-1041, %eax            # imm = 0xFBEF
	jl	.LBB0_17
# %bb.16:
	movb	$14, %cl
	subb	%al, %cl
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %esi
	shll	%cl, %esi
	leal	18(%rax), %ecx
	movl	%ebx, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	orl	%esi, %edx
	jmp	.LBB0_18
.LBB0_17:
	movb	$-18, %cl
	subb	%al, %cl
	movl	%ebx, %edx
	shll	%cl, %edx
.LBB0_18:
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%edx, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	movq	%xmm0, %rdx
	movabsq	$-139611588448485376, %rcx # imm = 0xFE10000000000000
	addq	%rdx, %rcx
	addl	$-1, %eax
	movl	$1, -72(%rbp)           # 4-byte Folded Spill
.LBB0_19:
	movq	%rcx, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	addsd	.LCPI0_2(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI0_3(%rip), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	seta	%cl
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	ucomisd	%xmm0, %xmm1
	setp	%dl
	setne	%bl
	orb	%dl, %bl
	andb	%cl, %bl
	movzbl	%bl, %ecx
	subl	%ecx, %esi
	movl	$1, %ecx
	cmpl	$22, %esi
	movq	%r15, -144(%rbp)        # 8-byte Spill
	ja	.LBB0_22
# %bb.20:
	movslq	%esi, %rcx
	movsd	__mprec_tens(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_22
# %bb.21:
	addl	$-1, %esi
.LBB0_22:
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%eax, %r15d
	notl	%r15d
	addl	-164(%rbp), %r15d
	movl	%r15d, %ecx
	negl	%ecx
	xorl	%edi, %edi
	testl	%r15d, %r15d
	cmovsl	%edi, %r15d
	cmovnsl	%edi, %ecx
	testl	%esi, %esi
	movl	%r12d, -168(%rbp)       # 4-byte Spill
	js	.LBB0_24
# %bb.23:
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	addl	%esi, %r15d
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	%esi, %edi
	jmp	.LBB0_25
.LBB0_24:
	subl	%esi, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
	negl	%ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB0_25:
	xorl	%ecx, %ecx
	cmpl	$9, %r14d
	cmoval	%ecx, %r14d
	cmpl	$6, %r14d
	setl	%r12b
	leal	-4(%r14), %edx
	cmpl	$5, %r14d
	cmovlel	%r14d, %edx
	movl	$1, -112(%rbp)          # 4-byte Folded Spill
	movl	$-1, %r14d
	cmpl	$5, %edx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r13, -208(%rbp)        # 8-byte Spill
	movl	%edi, -156(%rbp)        # 4-byte Spill
	ja	.LBB0_29
# %bb.26:
	movl	$-1, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_27:
	movl	$0, -112(%rbp)          # 4-byte Folded Spill
.LBB0_28:
	movq	-136(%rbp), %rcx        # 8-byte Reload
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovgl	%ecx, %eax
	movl	%eax, %r14d
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_32
.LBB0_29:
	movl	$-1, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_32
.LBB0_30:
	movl	$0, -112(%rbp)          # 4-byte Folded Spill
.LBB0_31:
	movl	%esi, %ecx
	movq	-136(%rbp), %rax        # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	leal	1(%rsi,%rax), %r14d
	movl	%eax, %ecx
	movl	%r14d, %eax
	js	.LBB0_34
.LBB0_32:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$0, 104(%rcx)
	xorl	%esi, %esi
	cmpl	$32, %eax
	jae	.LBB0_35
# %bb.33:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_38
.LBB0_34:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$0, 104(%rbx)
	xorl	%esi, %esi
	movl	%ecx, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_38
.LBB0_35:                               # %.preheader16
	cltq
	movl	$4, %ecx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	addl	%ecx, %ecx
	movslq	%ecx, %rdx
	addq	$28, %rdx
	cmpq	%rax, %rdx
	jbe	.LBB0_36
# %bb.37:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%esi, 104(%rbx)
.LBB0_38:
	movq	%rbx, %rdi
	callq	_Balloc
	movq	%rax, %r9
	movq	%rax, 96(%rbx)
	cmpl	$14, %r14d
	seta	%al
	xorb	$1, %r12b
	orb	%al, %r12b
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movsd	-80(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jne	.LBB0_89
# %bb.39:
	testl	%r8d, %r8d
	jle	.LBB0_42
# %bb.40:
	movl	%r8d, %edx
	andl	$15, %edx
	movl	%r8d, %eax
	shrl	$4, %eax
	movl	$2, %ecx
	testl	$256, %r8d              # imm = 0x100
	jne	.LBB0_48
# %bb.41:
	movapd	%xmm5, %xmm0
	jmp	.LBB0_49
.LBB0_42:
	movl	$2, %ecx
	testl	%r8d, %r8d
	je	.LBB0_60
# %bb.43:
	movl	%r8d, %eax
	negl	%eax
	movl	%eax, %edx
	andl	$15, %edx
	movsd	__mprec_tens(,%rdx,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	sarl	$4, %eax
	je	.LBB0_55
# %bb.44:                               # %.preheader14
	movl	$2, %ecx
	movl	$__mprec_bigtens, %edx
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_46 Depth=1
	sarl	%eax
	addq	$8, %rdx
	testl	%eax, %eax
	je	.LBB0_55
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	addl	$1, %ecx
	mulsd	(%rdx), %xmm0
	jmp	.LBB0_45
.LBB0_48:
	andl	$15, %eax
	movapd	%xmm5, %xmm0
	divsd	__mprec_bigtens+32(%rip), %xmm0
	movl	$3, %ecx
.LBB0_49:
	movsd	__mprec_tens(,%rdx,8), %xmm1 # xmm1 = mem[0],zero
	testl	%eax, %eax
	je	.LBB0_54
# %bb.50:                               # %.preheader12
	movl	$__mprec_bigtens, %edx
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_52 Depth=1
	sarl	%eax
	addq	$8, %rdx
	testl	%eax, %eax
	je	.LBB0_54
.LBB0_52:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	je	.LBB0_51
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=1
	addl	$1, %ecx
	mulsd	(%rdx), %xmm1
	jmp	.LBB0_51
.LBB0_54:
	divsd	%xmm1, %xmm0
.LBB0_55:
	cmpl	$0, -160(%rbp)          # 4-byte Folded Reload
	je	.LBB0_61
.LBB0_56:
	testl	%r14d, %r14d
	jle	.LBB0_61
# %bb.57:
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_61
# %bb.58:
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	jle	.LBB0_89
# %bb.59:
	leal	-1(%r8), %eax
	mulsd	.LCPI0_5(%rip), %xmm0
	addl	$1, %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	jmp	.LBB0_62
.LBB0_60:
	movapd	%xmm5, %xmm0
	cmpl	$0, -160(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_56
.LBB0_61:
	movl	%r14d, %edx
	movl	%r8d, %eax
.LBB0_62:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_6(%rip), %xmm1
	movq	%xmm1, %rcx
	movabsq	$-234187180623265792, %rsi # imm = 0xFCC0000000000000
	addq	%rcx, %rsi
	movq	%rsi, %xmm3
	testl	%edx, %edx
	je	.LBB0_66
# %bb.63:
	movslq	%edx, %rcx
	movsd	__mprec_tens-8(,%rcx,8), %xmm1 # xmm1 = mem[0],zero
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_68
# %bb.64:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm0, %ecx
	subsd	%xmm3, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	addb	$48, %cl
	movb	%cl, (%r9)
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_80
# %bb.65:
	movq	%r9, %r12
	addq	$1, %r12
	jmp	.LBB0_85
.LBB0_66:
	addsd	.LCPI0_8(%rip), %xmm0
	ucomisd	%xmm3, %xmm0
	jbe	.LBB0_87
# %bb.67:
	xorl	%ebx, %ebx
	movl	%eax, %r8d
	xorl	%ecx, %ecx
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_149
.LBB0_68:
	cvttsd2si	%xmm0, %ecx
	mulsd	%xmm3, %xmm1
	cvtsi2sd	%ecx, %xmm2
	subsd	%xmm2, %xmm0
	addb	$48, %cl
	leaq	1(%r9), %r12
	movb	%cl, (%r9)
	cmpl	$1, %edx
	je	.LBB0_75
# %bb.69:
	leal	-2(%rdx), %ecx
	leal	-1(%rdx), %esi
	andl	$1, %esi
	testl	%ecx, %ecx
	je	.LBB0_72
# %bb.70:
	movl	%esi, %edi
	subl	%edx, %edi
	addl	$1, %edi
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB0_71:                               # =>This Inner Loop Header: Depth=1
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	subsd	%xmm3, %xmm0
	addb	$48, %dl
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ebx
	movb	%dl, (%r12)
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ebx, %xmm3
	subsd	%xmm3, %xmm0
	addb	$48, %bl
	movb	%bl, 1(%r12)
	addq	$2, %r12
	addl	$2, %edi
	jne	.LBB0_71
.LBB0_72:
	addq	$2, %rcx
	testl	%esi, %esi
	je	.LBB0_74
# %bb.73:
	mulsd	.LCPI0_5(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
	leal	48(%rdx), %esi
	movb	%sil, (%r12)
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	subsd	%xmm2, %xmm0
.LBB0_74:
	addq	%r9, %rcx
	movq	%rcx, %r12
.LBB0_75:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	ja	.LBB0_138
# %bb.76:
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_89
# %bb.77:                               # %.preheader5
	addq	$1, %r12
	movq	-144(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_78:                               # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%r12)
	leaq	-1(%r12), %r12
	je	.LBB0_78
# %bb.79:
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_86
.LBB0_80:                               # %.preheader8
	movl	$1, %r12d
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm3   # xmm3 = mem[0],zero
	.p2align	4, 0x90
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	ucomisd	%xmm4, %xmm2
	ja	.LBB0_137
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=1
	cmpl	%edx, %r12d
	jge	.LBB0_89
# %bb.83:                               #   in Loop: Header=BB0_81 Depth=1
	mulsd	%xmm3, %xmm2
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	subsd	%xmm4, %xmm0
	addb	$48, %cl
	movb	%cl, (%r9,%r12)
	addq	$1, %r12
	ucomisd	%xmm0, %xmm2
	jbe	.LBB0_81
# %bb.84:                               # %.loopexit11
	addq	%r9, %r12
.LBB0_85:
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-144(%rbp), %rbx        # 8-byte Reload
.LBB0_86:
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_161
.LBB0_87:
	xorpd	.LCPI0_9(%rip), %xmm3
	ucomisd	%xmm0, %xmm3
	jbe	.LBB0_89
# %bb.88:
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_154
.LBB0_89:
	movl	-172(%rbp), %ecx
	cmpl	$14, %r8d
	jg	.LBB0_95
# %bb.90:
	testl	%ecx, %ecx
	js	.LBB0_95
# %bb.91:
	movslq	%r8d, %rax
	movsd	__mprec_tens(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	testl	%r14d, %r14d
	jg	.LBB0_98
# %bb.92:
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	jns	.LBB0_98
# %bb.93:
	testl	%r14d, %r14d
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	js	.LBB0_136
# %bb.94:
	mulsd	.LCPI0_10(%rip), %xmm0
	ucomisd	%xmm5, %xmm0
	movl	$0, %r14d
	movl	$0, %ecx
	movl	$0, %ebx
	jb	.LBB0_149
	jmp	.LBB0_154
.LBB0_95:
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_105
# %bb.96:
	cmpl	$1, -152(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_106
# %bb.97:
	movl	$54, %eax
	subl	-164(%rbp), %eax
	addl	$1075, %ecx             # imm = 0x433
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	cmovnel	%ecx, %eax
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %r12d
	movl	-64(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB0_107
.LBB0_98:
	movapd	%xmm5, %xmm1
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm5
	leal	48(%rax), %ecx
	leaq	1(%r9), %r12
	movb	%cl, (%r9)
	cmpl	$1, %r14d
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB0_102
# %bb.99:                               # %.preheader
	addl	$-1, %r14d
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB0_100:                              # =>This Inner Loop Header: Depth=1
	mulsd	%xmm1, %xmm5
	ucomisd	%xmm2, %xmm5
	jne	.LBB0_101
	jnp	.LBB0_161
.LBB0_101:                              #   in Loop: Header=BB0_100 Depth=1
	movapd	%xmm5, %xmm3
	divsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm5
	leal	48(%rax), %ecx
	movb	%cl, (%r12)
	addq	$1, %r12
	addl	$-1, %r14d
	jne	.LBB0_100
.LBB0_102:
	addsd	%xmm5, %xmm5
	ucomisd	%xmm0, %xmm5
	ja	.LBB0_139
# %bb.103:
	testb	$1, %al
	je	.LBB0_161
# %bb.104:
	ucomisd	%xmm0, %xmm5
	jne	.LBB0_161
	jnp	.LBB0_139
	jmp	.LBB0_161
.LBB0_105:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	-64(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %r13d
	jmp	.LBB0_108
.LBB0_106:
	leal	-1(%r14), %ecx
	movl	-64(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	subl	%ecx, %edx
	negl	%edx
	xorl	%eax, %eax
	movl	%ebx, %esi
	subl	%ecx, %esi
	cmovll	%ecx, %ebx
	cmovll	%eax, %esi
	movl	%esi, -116(%rbp)        # 4-byte Spill
	cmovgel	%eax, %edx
	addl	%edx, -156(%rbp)        # 4-byte Folded Spill
	testl	%r14d, %r14d
	cmovnsl	%r14d, %eax
	movl	%r14d, %ecx
	sarl	$31, %ecx
	andl	%r14d, %ecx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %r12d
	subl	%ecx, %r12d
.LBB0_107:
	movl	%edx, %r13d
	addl	%eax, %r13d
	addl	%eax, %r15d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	__i2b
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r12d, %ecx
	movl	-116(%rbp), %edx        # 4-byte Reload
.LBB0_108:
	testl	%ecx, %ecx
	jle	.LBB0_111
# %bb.109:
	testl	%r15d, %r15d
	jle	.LBB0_111
# %bb.110:
	cmpl	%r15d, %ecx
	movl	%r15d, %eax
	cmovlel	%ecx, %eax
	subl	%eax, %r13d
	subl	%eax, %ecx
	subl	%eax, %r15d
.LBB0_111:
	testl	%ebx, %ebx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jle	.LBB0_118
# %bb.112:
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_116
# %bb.113:
	testl	%edx, %edx
	jle	.LBB0_115
# %bb.114:
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %edx        # 4-byte Reload
	callq	__pow5mult
	movq	%r12, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__multiply
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	-64(%rbp), %ebx         # 4-byte Reload
	callq	_Bfree
	movl	-116(%rbp), %edx        # 4-byte Reload
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_115:
	subl	%edx, %ebx
	je	.LBB0_118
.LBB0_116:
	movl	%ebx, %edx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__pow5mult
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_119
.LBB0_118:
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB0_119:
	movl	$1, %ebx
	movq	%r12, %rdi
	movl	$1, %esi
	callq	__i2b
	movl	-156(%rbp), %edx        # 4-byte Reload
	testl	%edx, %edx
	movq	%r13, -80(%rbp)         # 8-byte Spill
	jle	.LBB0_121
# %bb.120:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	__pow5mult
	movl	-156(%rbp), %edx        # 4-byte Reload
.LBB0_121:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpl	$1, %eax
	setg	%al
	andl	$1048575, %ecx          # imm = 0xFFFFF
	orl	-192(%rbp), %ecx        # 4-byte Folded Reload
	setne	%cl
	testl	%esi, %esi
	sete	%r12b
	orb	%al, %r12b
	orb	%cl, %r12b
	movl	%r12d, %eax
	xorb	$1, %al
	movzbl	%al, %r13d
	addl	%r13d, %r15d
	testl	%edx, %edx
	je	.LBB0_123
# %bb.122:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	20(%rcx), %rax
	movl	20(%rcx,%rax,4), %edi
	callq	__hi0bits
	movl	$32, %ebx
	subl	%eax, %ebx
.LBB0_123:
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addl	%r13d, %edx
	addl	%r15d, %ebx
	andl	$31, %ebx
	movl	$32, %eax
	subl	%ebx, %eax
	testl	%ebx, %ebx
	cmovel	%ebx, %eax
	cmpl	$5, %eax
	jb	.LBB0_125
# %bb.124:
	addl	%eax, %edx
	addl	$-4, %edx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leal	-4(%rax,%rcx), %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	addl	%eax, %r15d
	addl	$-4, %r15d
	movq	-96(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_127
.LBB0_125:
	cmpl	$4, %eax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_127
# %bb.126:
	addl	%eax, %edx
	addl	$28, %edx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addl	%eax, %ecx
	addl	$28, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	addl	%eax, %r15d
	addl	$28, %r15d
.LBB0_127:
	testl	%edx, %edx
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	jle	.LBB0_129
# %bb.128:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	__lshift
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_129:
	movq	%r14, %rbx
	testl	%r15d, %r15d
	jle	.LBB0_131
# %bb.130:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%r15d, %edx
	callq	__lshift
	movq	%rax, %r14
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	-160(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB0_132
	jmp	.LBB0_133
.LBB0_131:
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	-160(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_133
.LBB0_132:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__mcmp
	testl	%eax, %eax
	js	.LBB0_134
.LBB0_133:
	movl	%ebx, %esi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	cmpl	$3, %eax
	jge	.LBB0_146
	jmp	.LBB0_150
.LBB0_134:
	movq	-88(%rbp), %rax         # 8-byte Reload
	addl	$-1, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r15
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB0_144
# %bb.135:
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %rbx
	movq	-152(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_145
.LBB0_136:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB0_154
.LBB0_137:                              # %.loopexit9
	addq	%r9, %r12
.LBB0_138:
	movl	%eax, %r8d
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_139:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB0_140:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	movzbl	-1(%rax), %eax
	cmpb	$57, %al
	jne	.LBB0_143
# %bb.141:                              #   in Loop: Header=BB0_140 Depth=1
	leaq	-1(%r12), %rax
	cmpq	%rax, %r9
	jne	.LBB0_140
# %bb.142:
	addl	$1, %r8d
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movb	$48, (%r9)
	movb	$49, %al
	movb	%al, (%r9)
	jmp	.LBB0_161
.LBB0_143:
	movq	%r8, -88(%rbp)          # 8-byte Spill
	addb	$1, %al
	leaq	-1(%r12), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_161
.LBB0_144:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB0_145:
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpl	$3, %eax
	jl	.LBB0_150
.LBB0_146:
	testl	%esi, %esi
	jg	.LBB0_150
# %bb.147:
	js	.LBB0_153
# %bb.148:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$5, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r14
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	__mcmp
	movq	%r14, %rcx
	testl	%eax, %eax
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	jle	.LBB0_154
.LBB0_149:
	movq	%r9, %r12
	addq	$1, %r12
	movb	$49, (%r9)
	addl	$1, %r8d
	movq	%r8, -88(%rbp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %r14
	jmp	.LBB0_155
.LBB0_150:
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	movq	%r14, -64(%rbp)         # 8-byte Spill
	je	.LBB0_165
# %bb.151:
	movq	-128(%rbp), %rdx        # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB0_169
# %bb.152:
	movq	%r13, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	__lshift
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rbx
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_170
.LBB0_153:
	movq	-104(%rbp), %r9         # 8-byte Reload
.LBB0_154:
	movq	-136(%rbp), %rax        # 8-byte Reload
	notl	%eax
	xorl	%ecx, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r9, %r12
.LBB0_155:
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_Bfree
	testq	%rbx, %rbx
	je	.LBB0_160
# %bb.156:
	movq	-80(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_159
# %bb.157:
	cmpq	%rbx, %rsi
	je	.LBB0_159
# %bb.158:
	movq	%r13, %rdi
	callq	_Bfree
.LBB0_159:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_Bfree
.LBB0_160:
	movq	-144(%rbp), %rbx        # 8-byte Reload
.LBB0_161:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	_Bfree
	movb	$0, (%r12)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	testq	%rbx, %rbx
	je	.LBB0_163
# %bb.162:
	movq	%r12, (%rbx)
.LBB0_163:
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_164:
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_165:
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%rsi, %rbx
	movq	%r14, %rsi
	callq	quorem
	movq	%r15, %rsi
	movl	%eax, %r15d
	addl	$48, %r15d
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	%r15b, (%rax)
	cmpl	$2, %ebx
	jl	.LBB0_191
# %bb.166:
	leal	-2(%rbx), %r12d
	addq	$2, %r12
	movq	%rsi, %r13
	movl	%ebx, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	movq	-64(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_167:                              # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	quorem
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r15d
	addl	$48, %r15d
	movb	%r15b, (%rcx,%rbx)
	addq	$1, %rbx
	cmpl	%ebx, -80(%rbp)         # 4-byte Folded Reload
	jne	.LBB0_167
# %bb.168:
	addq	%rcx, %r12
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r13, %rsi
	jmp	.LBB0_192
.LBB0_169:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
.LBB0_170:
	movq	-104(%rbp), %rcx        # 8-byte Reload
	testb	%r12b, %r12b
	jne	.LBB0_172
# %bb.171:
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, %r12
	movl	8(%rbx), %esi
	movq	%r13, %rdi
	callq	_Balloc
	movq	%rax, %r13
	leaq	16(%rax), %rdi
	leaq	16(%rbx), %rsi
	movslq	20(%rbx), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$1, %edx
	callq	__lshift
	movq	%r12, %rsi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %rbx
.LBB0_172:
	addl	$-1, %esi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	leaq	1(%rcx), %r12
	jmp	.LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_174 Depth=1
	addl	$-1, %ebx
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	addq	$1, %r12
	movq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r13, %r15
	movq	%r14, %r13
	movq	%rax, %r14
.LBB0_174:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	quorem
	movq	%r15, %rdi
	movl	%eax, %r15d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__mcmp
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdx
	callq	__mdiff
	movq	%r13, %r14
	movq	%rax, %r13
	movl	$1, %ebx
	cmpl	$0, 16(%rax)
	jne	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__mcmp
	movl	%eax, %ebx
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r15, -112(%rbp)        # 8-byte Spill
	addl	$48, %r15d
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_Bfree
	movq	-192(%rbp), %rcx        # 8-byte Reload
	testb	$1, %cl
	movq	-152(%rbp), %rdx        # 8-byte Reload
	jne	.LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_174 Depth=1
	movl	%ebx, %eax
	orl	%edx, %eax
	je	.LBB0_197
.LBB0_178:                              #   in Loop: Header=BB0_174 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	js	.LBB0_185
# %bb.179:                              #   in Loop: Header=BB0_174 Depth=1
	testb	$1, %cl
	jne	.LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_174 Depth=1
	orl	%edx, %eax
	je	.LBB0_185
.LBB0_181:                              #   in Loop: Header=BB0_174 Depth=1
	testl	%ebx, %ebx
	jg	.LBB0_199
# %bb.182:                              #   in Loop: Header=BB0_174 Depth=1
	movb	%r15b, -1(%r12)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	testl	%ebx, %ebx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_192
# %bb.183:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r14, %rdi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rsi, %r15
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB0_173
# %bb.184:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r14, %rdi
	movl	$10, %edx
	xorl	%ecx, %ecx
	callq	__multadd
	jmp	.LBB0_173
.LBB0_185:
	testl	%ebx, %ebx
	jle	.LBB0_207
# %bb.186:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, %r14
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$1, %edx
	callq	__lshift
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__mcmp
	testl	%eax, %eax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	jg	.LBB0_189
# %bb.187:
	testb	$1, %r15b
	je	.LBB0_212
# %bb.188:
	testl	%eax, %eax
	jne	.LBB0_212
.LBB0_189:
	cmpl	$57, %r15d
	jne	.LBB0_211
# %bb.190:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r13, %r15
	movq	%r14, %r13
	movq	%rax, %r14
	jmp	.LBB0_201
.LBB0_191:
	leaq	1(%rax), %r12
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_192:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$1, %edx
	callq	__lshift
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__mcmp
	testl	%eax, %eax
	jle	.LBB0_194
# %bb.193:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_196
.LBB0_194:
	testb	$1, %r15b
	movq	-88(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_208
# %bb.195:
	testl	%eax, %eax
	jne	.LBB0_208
.LBB0_196:
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r13, %r15
	movq	%rax, %r13
	jmp	.LBB0_202
.LBB0_197:
	cmpl	$57, %r15d
	jne	.LBB0_213
# %bb.198:
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_200
.LBB0_199:
	cmpl	$57, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_214
.LBB0_200:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_201:
	movb	$57, -1(%r12)
.LBB0_202:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB0_203:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	movzbl	-1(%rax), %eax
	cmpb	$57, %al
	jne	.LBB0_206
# %bb.204:                              #   in Loop: Header=BB0_203 Depth=1
	leaq	-1(%r12), %rax
	cmpq	%rax, %rdx
	jne	.LBB0_203
# %bb.205:
	addl	$1, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movb	$49, (%rdx)
	jmp	.LBB0_155
.LBB0_206:
	addb	$1, %al
	movb	%al, -1(%r12)
	jmp	.LBB0_155
.LBB0_207:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_212
.LBB0_208:                              # %.preheader2
	addq	$1, %r12
.LBB0_209:                              # =>This Inner Loop Header: Depth=1
	cmpb	$48, -2(%r12)
	leaq	-1(%r12), %r12
	je	.LBB0_209
# %bb.210:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r13, %r15
	movq	%rax, %r13
	jmp	.LBB0_155
.LBB0_211:
	addl	$49, %ecx
	movl	%ecx, %r15d
.LBB0_212:
	movb	%r15b, -1(%r12)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r13, %r15
	movq	%r14, %r13
	movq	%rax, %r14
	jmp	.LBB0_155
.LBB0_213:
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	$49, %eax
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	movzbl	%al, %eax
	cmovgl	%eax, %r15d
	movb	%r15b, -1(%r12)
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_215
.LBB0_214:
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	$49, %eax
	movb	%al, -1(%r12)
.LBB0_215:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_155
.Lfunc_end0:
	.size	_dtoa_r, .Lfunc_end0-_dtoa_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_34
	.quad	.LBB0_34
	.quad	.LBB0_27
	.quad	.LBB0_30
	.quad	.LBB0_28
	.quad	.LBB0_31
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
	jl	.LBB1_21
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
	cmpl	%r8d, %r9d
	ja	.LBB1_12
# %bb.2:                                # %.preheader5
	movq	%r14, -56(%rbp)         # 8-byte Spill
	leaq	(%r14,%rcx,4), %r8
	addq	$20, %r8
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
	cmpq	%r12, %r14
	jbe	.LBB1_3
# %bb.4:
	cmpl	$0, (%r8)
	je	.LBB1_6
# %bb.5:
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_12
.LBB1_6:
	addq	$-4, %r8
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpq	%rbx, %r8
	jbe	.LBB1_7
# %bb.8:                                # %.preheader2
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r8)
	jne	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	addl	$-1, %eax
	addq	$-4, %r8
	cmpq	%rbx, %r8
	ja	.LBB1_9
	jmp	.LBB1_11
.LBB1_7:
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB1_11:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%eax, 20(%r14)
.LBB1_12:
	movq	%r14, %rdi
	callq	__mcmp
	testl	%eax, %eax
	js	.LBB1_21
# %bb.13:                               # %.preheader1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%rbx, %r10
	movq	%rbx, %rax
	.p2align	4, 0x90
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
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
	cmpq	%r12, %r15
	jbe	.LBB1_14
# %bb.15:
	addl	$1, %r13d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	%ecx, %rax
	cmpl	$0, 24(%r14,%rax,4)
	jne	.LBB1_21
# %bb.16:
	leaq	(%r14,%rax,4), %rax
	addq	$24, %rax
	.p2align	4, 0x90
.LBB1_17:                               # =>This Inner Loop Header: Depth=1
	addq	$-4, %rax
	cmpq	%r10, %rax
	jbe	.LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_17 Depth=1
	addl	$-1, %ecx
	jmp	.LBB1_17
.LBB1_20:
	movl	%ecx, 20(%r14)
.LBB1_21:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
