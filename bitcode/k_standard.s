	.text
	.file	"k_standard.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function __kernel_standard
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI0_1:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
.LCPI0_3:
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI0_6:
	.quad	-4503599627370496       # double -Inf
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	9221120237041090560     # double NaN
.LCPI0_4:
	.quad	-4503599627370496       # double -Inf
.LCPI0_5:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	__kernel_standard
	.p2align	4, 0x90
	.type	__kernel_standard,@function
__kernel_standard:                      # @__kernel_standard
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
                                        # kill: def $edi killed $edi def $rdi
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	$0, -16(%rbp)
	leal	-1(%rdi), %eax
	cmpl	$141, %eax
	ja	.LBB0_64
# %bb.1:
	movapd	%xmm0, %xmm2
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.12, %eax
	movl	$.L.str.13, %ecx
	jmp	.LBB0_20
.LBB0_3:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.14, %eax
	movl	$.L.str.15, %ecx
	jmp	.LBB0_20
.LBB0_4:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.16, %eax
	movl	$.L.str.17, %ecx
	jmp	.LBB0_20
.LBB0_5:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str, %eax
	movl	$.L.str.1, %ecx
	jmp	.LBB0_8
.LBB0_6:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %ecx
	jmp	.LBB0_8
.LBB0_7:
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -32(%rbp)
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %ecx
.LBB0_8:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_46
	jmp	.LBB0_45
.LBB0_9:
	movl	$3, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.6, %eax
	movl	$.L.str.7, %ecx
	jmp	.LBB0_58
.LBB0_10:
	movl	$3, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.8, %eax
	movl	$.L.str.9, %ecx
	jmp	.LBB0_58
.LBB0_11:
	movl	$3, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.10, %eax
	movl	$.L.str.11, %ecx
	jmp	.LBB0_58
.LBB0_12:
	movl	$4, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.10, %eax
	movl	$.L.str.11, %ecx
	jmp	.LBB0_55
.LBB0_13:
	movl	$3, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.18, %eax
	movl	$.L.str.19, %ecx
	jmp	.LBB0_58
.LBB0_14:
	movl	$2, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.18, %eax
	movl	$.L.str.19, %ecx
	jmp	.LBB0_66
.LBB0_15:
	movl	$2, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.20, %eax
	movl	$.L.str.21, %ecx
	jmp	.LBB0_18
.LBB0_16:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.20, %eax
	movl	$.L.str.21, %ecx
	jmp	.LBB0_20
.LBB0_17:
	movl	$2, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.22, %eax
	movl	$.L.str.23, %ecx
.LBB0_18:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_6(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	cmpl	$2, %eax
	jne	.LBB0_45
	jmp	.LBB0_61
.LBB0_19:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.22, %eax
	movl	$.L.str.23, %ecx
.LBB0_20:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_6(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
.LBB0_21:
	movsd	%xmm0, -24(%rbp)
.LBB0_22:
	cmpl	$2, %eax
	jne	.LBB0_45
	jmp	.LBB0_46
.LBB0_23:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	$0, -24(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	jne	.LBB0_69
	jmp	.LBB0_45
.LBB0_24:
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	cmovlq	%rax, %rcx
	movl	$3, -56(%rbp)
	movq	%rcx, -48(%rbp)
	cmpl	$0, __fdlib_version(%rip)
	je	.LBB0_70
# %bb.25:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -24(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_56
# %bb.26:
	mulsd	.LCPI0_5(%rip), %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	rint
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_27
	jnp	.LBB0_56
.LBB0_27:
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	jmp	.LBB0_73
.LBB0_28:
	movl	$4, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	jmp	.LBB0_55
.LBB0_29:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_21
# %bb.30:
	movsd	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_21
.LBB0_31:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	jmp	.LBB0_32
.LBB0_34:
	cmpl	$100, %edi
	movl	$.L.str.26, %eax
	movl	$.L.str.27, %ecx
	cmovlq	%rax, %rcx
	movl	$3, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_74
# %bb.35:
	xorl	%ecx, %ecx
	ucomisd	%xmm0, %xmm2
	seta	%cl
	movsd	.LCPI0_1(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_59
.LBB0_36:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.28, %eax
	movl	$.L.str.29, %ecx
.LBB0_32:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB0_21
# %bb.33:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB0_21
.LBB0_37:
	cmpl	$100, %edi
	movl	$.L.str.30, %eax
	movl	$.L.str.31, %ecx
	cmovlq	%rax, %rcx
	movl	$1, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	testl	%eax, %eax
	je	.LBB0_75
# %bb.38:
	movabsq	$9221120237041090560, %rcx # imm = 0x7FF8000000000000
	movq	%rcx, -24(%rbp)
	jmp	.LBB0_22
.LBB0_39:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.32, %eax
	movl	$.L.str.33, %ecx
	jmp	.LBB0_42
.LBB0_40:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.34, %eax
	movl	$.L.str.35, %ecx
	jmp	.LBB0_42
.LBB0_41:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %ecx
.LBB0_42:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, -24(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_46
	jmp	.LBB0_45
.LBB0_43:
	movl	$2, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.36, %eax
	movl	$.L.str.37, %ecx
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	xorpd	%xmm0, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -24(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_46
	jmp	.LBB0_45
.LBB0_47:
	cmpl	$100, %edi
	movl	$.L.str.38, %eax
	movl	$.L.str.39, %ecx
	cmovlq	%rax, %rcx
	movl	$3, -56(%rbp)
	movq	%rcx, -48(%rbp)
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm2
	seta	%al
	movsd	.LCPI0_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB0_56
.LBB0_48:
	movl	$4, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.38, %eax
	movl	$.L.str.39, %ecx
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	xorpd	%xmm0, %xmm0
	movapd	%xmm2, %xmm1
	callq	copysign
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB0_56
.LBB0_49:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.40, %eax
	movl	$.L.str.41, %ecx
	jmp	.LBB0_55
.LBB0_50:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.12, %eax
	movl	$.L.str.13, %ecx
	jmp	.LBB0_55
.LBB0_51:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.42, %eax
	movl	$.L.str.43, %ecx
	jmp	.LBB0_55
.LBB0_52:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.14, %eax
	movl	$.L.str.15, %ecx
	jmp	.LBB0_55
.LBB0_53:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.44, %eax
	movl	$.L.str.45, %ecx
	jmp	.LBB0_55
.LBB0_54:
	movl	$5, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.16, %eax
	movl	$.L.str.17, %ecx
.LBB0_55:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	$0, -24(%rbp)
.LBB0_56:
	cmpl	$2, __fdlib_version(%rip)
	jne	.LBB0_60
	jmp	.LBB0_61
.LBB0_57:
	movl	$3, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.46, %eax
	movl	$.L.str.47, %ecx
.LBB0_58:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
.LBB0_59:
	movsd	%xmm0, -24(%rbp)
	cmpl	$2, %eax
	je	.LBB0_61
.LBB0_60:
	leaq	-56(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_62
.LBB0_61:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB0_62
.LBB0_65:
	movl	$2, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.46, %eax
	movl	$.L.str.47, %ecx
.LBB0_66:
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI0_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_21
.LBB0_67:
	movl	$1, -56(%rbp)
	cmpl	$100, %edi
	movl	$.L.str.24, %eax
	movl	$.L.str.25, %ecx
	cmovlq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movsd	%xmm2, -24(%rbp)
	movl	__fdlib_version(%rip), %eax
	cmpl	$2, %eax
	je	.LBB0_69
# %bb.68:
	cmpl	$-1, %eax
	jne	.LBB0_45
.LBB0_69:
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, -24(%rbp)
	jmp	.LBB0_62
.LBB0_70:
	movabsq	$5183643170566569984, %rax # imm = 0x47EFFFFFE0000000
	movq	%rax, -24(%rbp)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_56
# %bb.71:
	mulsd	.LCPI0_5(%rip), %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	rint
	ucomisd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	jne	.LBB0_72
	jnp	.LBB0_56
.LBB0_72:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
.LBB0_73:
	movq	%rax, -24(%rbp)
	jmp	.LBB0_56
.LBB0_74:
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm2
	seta	%al
	movsd	.LCPI0_3(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB0_60
.LBB0_75:
	movsd	%xmm2, -24(%rbp)
.LBB0_45:
	leaq	-56(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_62
.LBB0_46:
	callq	__errno
	movl	$33, (%rax)
.LBB0_62:
	movl	-16(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_64
# %bb.63:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_64:
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__kernel_standard, .Lfunc_end0-__kernel_standard
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_2
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_19
	.quad	.LBB0_23
	.quad	.LBB0_24
	.quad	.LBB0_28
	.quad	.LBB0_29
	.quad	.LBB0_31
	.quad	.LBB0_34
	.quad	.LBB0_36
	.quad	.LBB0_37
	.quad	.LBB0_39
	.quad	.LBB0_40
	.quad	.LBB0_41
	.quad	.LBB0_43
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_57
	.quad	.LBB0_65
	.quad	.LBB0_67
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_64
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_2
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_19
	.quad	.LBB0_23
	.quad	.LBB0_24
	.quad	.LBB0_28
	.quad	.LBB0_29
	.quad	.LBB0_31
	.quad	.LBB0_34
	.quad	.LBB0_36
	.quad	.LBB0_37
	.quad	.LBB0_39
	.quad	.LBB0_40
	.quad	.LBB0_41
	.quad	.LBB0_43
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_57
	.quad	.LBB0_65
	.quad	.LBB0_67
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"acos"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"acosf"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"asin"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"asinf"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"atan2"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"atan2f"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hypot"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hypotf"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cosh"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"coshf"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"exp"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"expf"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"y0"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"y0f"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"y1"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"y1f"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"yn"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ynf"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"lgamma"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"lgammaf"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"log"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"logf"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"log10"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"log10f"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"pow"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"powf"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"sinh"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"sinhf"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sqrt"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"sqrtf"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"fmod"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"fmodf"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"remainder"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"remainderf"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"acosh"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"acoshf"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"atanh"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"atanhf"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"scalb"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"scalbf"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"j0"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"j0f"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"j1"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"j1f"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"jn"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"jnf"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gamma"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gammaf"
	.size	.L.str.47, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
