	.text
	.file	"strtod.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _strtod_l
.LCPI0_0:
	.quad	4611686018427387904     # double 2
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	-4616189618054758400    # double -1
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
.LCPI0_5:
	.quad	4746794007244308480     # double 2147483647
.LCPI0_6:
	.quad	4602678817371207061     # double 0.4999999
.LCPI0_7:
	.quad	4602678820073366837     # double 0.50000009999999995
.LCPI0_8:
	.quad	4598175217743836565     # double 0.24999995
.LCPI0_9:
	.quad	4129800858298744832     # double 1.2325951644078309E-32
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_4:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	_strtod_l
	.p2align	4, 0x90
	.type	_strtod_l,@function
_strtod_l:                              # @_strtod_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	$0, -104(%rbp)
	movq	%rcx, %rdi
	callq	__localeconv_l
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	(%rax), %rdi
	callq	strlen
	leaq	1(%r15), %r13
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %r13
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	leaq	-1(%r13), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	-1(%r13), %ebx
	movsbl	%bl, %edx
	leal	-9(%rdx), %esi
	cmpl	$5, %esi
	jb	.LBB0_1
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$42, %edx
	jg	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	$32, %edx
	je	.LBB0_1
# %bb.5:
	testl	%edx, %edx
	je	.LBB0_19
	jmp	.LBB0_26
.LBB0_6:
	cmpl	$45, %edx
	je	.LBB0_9
# %bb.7:
	cmpl	$43, %edx
	jne	.LBB0_26
# %bb.8:
	xorl	%r9d, %r9d
	jmp	.LBB0_10
.LBB0_9:                                # %.loopexit16
	movl	$1, %r9d
.LBB0_10:
	movq	%r13, -64(%rbp)
	movb	(%r13), %bl
	testb	%bl, %bl
	je	.LBB0_19
# %bb.11:
	cmpb	$48, %bl
	jne	.LBB0_27
.LBB0_12:
	movsbl	1(%r13), %ecx
	addq	$1, %r13
	orl	$32, %ecx
	cmpl	$120, %ecx
	jne	.LBB0_16
# %bb.13:
	movq	%r14, (%rsp)
	leaq	-64(%rbp), %rsi
	leaq	-164(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movl	$_strtod_l.fpi, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %r14d
	callq	__gethex
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %ebx
	andb	$7, %bl
	je	.LBB0_40
# %bb.14:
	cmpb	$6, %bl
	jne	.LBB0_41
# %bb.15:
	movq	%r13, -64(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	movq	%r12, %r14
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, -64(%rbp)
	movzbl	(%r13), %ebx
	addq	$1, %r13
	cmpb	$48, %bl
	je	.LBB0_16
# %bb.17:
	testb	%bl, %bl
	movq	%r12, %r14
	jne	.LBB0_46
.LBB0_18:                               # %.loopexit14
	xorl	%eax, %eax
	jmp	.LBB0_21
.LBB0_19:                               # %.loopexit17
	movq	%r12, %r14
.LBB0_20:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
.LBB0_21:
	testq	%r14, %r14
	je	.LBB0_23
# %bb.22:
	movq	-64(%rbp), %rcx
	movq	%rcx, (%r14)
.LBB0_23:
	movq	%rax, %xmm0
	testl	%r9d, %r9d
	je	.LBB0_25
# %bb.24:
	pxor	.LCPI0_4(%rip), %xmm0
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:                               # %.loopexit15
	xorl	%r9d, %r9d
	movq	%rcx, %r13
	cmpb	$48, %bl
	je	.LBB0_12
.LBB0_27:
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
	movq	%r12, %r14
.LBB0_28:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movsbl	%bl, %r12d
	leal	-48(%r12), %ecx
	cmpb	$9, %cl
	ja	.LBB0_34
# %bb.29:                               # %.preheader12
	leaq	1(%r13), %r14
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_32 Depth=1
	leal	(%rbx,%rbx,4), %edx
	leal	(%r12,%rdx,2), %ebx
	addl	$-48, %ebx
.LBB0_31:                               #   in Loop: Header=BB0_32 Depth=1
	addl	$1, %ecx
	movq	%r14, -64(%rbp)
	movsbl	(%r14), %r12d
	leal	-48(%r12), %edx
	addq	$1, %r14
	cmpb	$10, %dl
	jae	.LBB0_35
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	cmpl	$8, %ecx
	ja	.LBB0_30
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	leal	(%r15,%r15,4), %edx
	leal	(%r12,%rdx,2), %r15d
	addl	$-48, %r15d
	jmp	.LBB0_31
.LBB0_34:
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	%r13, %r14
	jmp	.LBB0_36
.LBB0_35:
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	addq	$-1, %r14
.LBB0_36:
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rsi
	movslq	%eax, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	strncmp
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	testl	%eax, %eax
	je	.LBB0_38
# %bb.37:
	movq	%r14, %r11
	xorl	%r9d, %r9d
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edi
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	jmp	.LBB0_84
.LBB0_38:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %r11
	movq	%r11, -64(%rbp)
	movsbl	(%r14,%rax), %r12d
	xorl	%r10d, %r10d
	movl	-80(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_47
# %bb.39:
	movl	%eax, %edi
	xorl	%ecx, %ecx
	movq	%r13, %r14
	jmp	.LBB0_57
.LBB0_40:
	xorl	%eax, %eax
	movl	%r14d, %r9d
	movq	%r12, %r14
	jmp	.LBB0_21
.LBB0_41:
	movq	-104(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB0_43
# %bb.42:
	leaq	-184(%rbp), %rdi
	movl	$53, %esi
	movq	%rax, %r13
	callq	__copybits
	movq	-104(%rbp), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	_Bfree
	movq	%r13, %rax
.LBB0_43:
	addb	$-1, %bl
	cmpb	$4, %bl
	ja	.LBB0_52
# %bb.44:
	movzbl	%bl, %ecx
	movl	%r14d, %r9d
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_45:
	movl	-164(%rbp), %esi
	movl	-184(%rbp), %ecx
	movl	$-1048577, %edx         # imm = 0xFFEFFFFF
	andl	-180(%rbp), %edx
	shll	$20, %esi
	addl	$1127219200, %esi       # imm = 0x43300000
	orl	%edx, %esi
	shlq	$32, %rsi
	orq	%rcx, %rsi
	jmp	.LBB0_56
.LBB0_46:                               # %.loopexit13
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	addq	$-1, %r13
	movl	$1, -128(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_28
.LBB0_47:
	xorl	%edi, %edi
	movl	$0, %r8d
	cmpb	$48, %r12b
	jne	.LBB0_51
# %bb.48:                               # %.preheader11
	movslq	%ecx, %rax
	leaq	(%rax,%r14), %r11
	addq	$1, %r11
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %r8d
	movq	%r11, -64(%rbp)
	movsbl	(%r11), %r12d
	addq	$1, %r11
	cmpl	$48, %r12d
	je	.LBB0_49
# %bb.50:
	addq	$-1, %r11
.LBB0_51:
	leal	-49(%r12), %edx
	movl	$1, %r9d
	movl	$0, %eax
	movq	%r11, %r14
	movl	$0, %r10d
	movl	%r8d, %ecx
	cmpl	$9, %edx
	jae	.LBB0_84
	jmp	.LBB0_59
.LBB0_52:
	xorl	%esi, %esi
	movl	%r14d, %r9d
	jmp	.LBB0_56
.LBB0_53:
	movq	-184(%rbp), %rsi
	jmp	.LBB0_56
.LBB0_54:
	movabsq	$9218868437227405312, %rsi # imm = 0x7FF0000000000000
	jmp	.LBB0_56
.LBB0_55:
	movabsq	$9223372036854775807, %rsi # imm = 0x7FFFFFFFFFFFFFFF
.LBB0_56:
	movq	%r12, %r14
	andl	$8, %eax
	shlq	$60, %rax
	orq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_21
.LBB0_57:
	leal	-48(%r12), %eax
	cmpl	$9, %eax
	ja	.LBB0_83
# %bb.58:
	movl	%r10d, %r8d
	movl	%ecx, %eax
.LBB0_59:
	leal	1(%rax), %ecx
	addl	$-48, %r12d
	je	.LBB0_63
# %bb.60:
	addl	%ecx, %r8d
	leal	1(%rdi), %esi
	cmpl	$9, %edi
	setl	%dl
	testl	%eax, %eax
	jle	.LBB0_64
# %bb.61:
	movl	%eax, %r9d
	andl	$1, %r9d
	cmpl	$1, %eax
	jne	.LBB0_67
# %bb.62:
	movl	%edi, %ecx
	jmp	.LBB0_75
.LBB0_63:
	movl	%edi, %esi
	jmp	.LBB0_82
.LBB0_64:
	cmpl	$8, %edi
	jle	.LBB0_81
.LBB0_65:
	xorl	%ecx, %ecx
	cmpl	$15, %edi
	jg	.LBB0_82
# %bb.66:
	leal	(%rbx,%rbx,4), %eax
	leal	(%r12,%rax,2), %ebx
	jmp	.LBB0_82
.LBB0_67:
	movl	%r9d, %esi
	subl	%eax, %esi
	movq	%rdi, %r10
	movl	%edi, %ecx
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=1
	addl	%r15d, %r15d
	leal	(%r15,%r15,4), %r15d
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$8, %edi
	setl	%dl
	addl	$2, %ecx
	addl	$2, %esi
	je	.LBB0_74
.LBB0_70:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %edi
	testb	$1, %dl
	je	.LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	addl	%r15d, %r15d
	leal	(%r15,%r15,4), %r15d
	cmpl	$9, %edi
	jl	.LBB0_68
	jmp	.LBB0_73
	.p2align	4, 0x90
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=1
	leal	(%rbx,%rbx), %edx
	cmpl	$16, %ecx
	leal	(%rdx,%rdx,4), %edx
	cmovll	%edx, %ebx
	cmpl	$9, %edi
	jl	.LBB0_68
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=1
	leal	(%rbx,%rbx), %edx
	cmpl	$16, %edi
	leal	(%rdx,%rdx,4), %edx
	cmovll	%edx, %ebx
	jmp	.LBB0_69
.LBB0_74:                               # %.loopexit10
	leal	1(%rcx), %esi
	movq	%r10, %rdi
.LBB0_75:
	addl	%eax, %edi
	testl	%r9d, %r9d
	je	.LBB0_80
# %bb.76:
	testb	%dl, %dl
	je	.LBB0_78
# %bb.77:
	addl	%r15d, %r15d
	leal	(%r15,%r15,4), %r15d
	jmp	.LBB0_79
.LBB0_78:
	leal	(%rbx,%rbx), %eax
	cmpl	$16, %ecx
	leal	(%rax,%rax,4), %eax
	cmovll	%eax, %ebx
.LBB0_79:
	cmpl	$9, %esi
	setl	%dl
.LBB0_80:
	leal	1(%rdi), %esi
	testb	$1, %dl
	je	.LBB0_65
.LBB0_81:
	leal	(%r15,%r15,4), %eax
	leal	(%r12,%rax,2), %r15d
	xorl	%ecx, %ecx
.LBB0_82:
	movsbl	1(%r11), %r12d
	addq	$1, %r11
	movq	%r11, -64(%rbp)
	movl	%esi, %edi
	movl	%r8d, %r10d
	jmp	.LBB0_57
.LBB0_83:
	movl	$1, %r9d
	movq	%r14, %r13
.LBB0_84:
	movl	%r12d, %eax
	orl	$32, %eax
	cmpl	$101, %eax
	jne	.LBB0_101
# %bb.85:
	movl	%ecx, %eax
	orl	-128(%rbp), %eax        # 4-byte Folded Reload
	orl	%edi, %eax
	movq	-48(%rbp), %r14         # 8-byte Reload
	je	.LBB0_20
# %bb.86:
	leaq	1(%r11), %rdx
	movq	%rdx, -64(%rbp)
	movsbl	1(%r11), %r12d
	xorl	%r8d, %r8d
	cmpl	$43, %r12d
	je	.LBB0_89
# %bb.87:
	cmpl	$45, %r12d
	jne	.LBB0_90
# %bb.88:
	movl	$1, %r8d
.LBB0_89:
	leaq	2(%r11), %rdx
	movq	%rdx, -64(%rbp)
	movsbl	2(%r11), %r12d
.LBB0_90:
	leal	-48(%r12), %eax
	cmpl	$9, %eax
	ja	.LBB0_111
# %bb.91:
	cmpl	$48, %r12d
	jne	.LBB0_95
# %bb.92:                               # %.preheader9
	addq	$1, %rdx
	.p2align	4, 0x90
.LBB0_93:                               # =>This Inner Loop Header: Depth=1
	movq	%rdx, -64(%rbp)
	movsbl	(%rdx), %r12d
	addq	$1, %rdx
	cmpl	$48, %r12d
	je	.LBB0_93
# %bb.94:
	addq	$-1, %rdx
.LBB0_95:
	leal	-49(%r12), %eax
	xorl	%esi, %esi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	cmpl	$8, %eax
	ja	.LBB0_112
# %bb.96:
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	movq	%rdi, %r9
	leal	-48(%r12), %r14d
	leaq	1(%rdx), %rdi
	movq	%rdi, -64(%rbp)
	movsbl	1(%rdx), %r8d
	leal	-48(%r8), %eax
	cmpb	$9, %al
	ja	.LBB0_100
# %bb.97:                               # %.preheader8
	leaq	2(%rdx), %rdi
	.p2align	4, 0x90
.LBB0_98:                               # =>This Inner Loop Header: Depth=1
	leal	(%r14,%r14,4), %esi
	movl	%r8d, %eax
	leal	(%rax,%rsi,2), %r14d
	addl	$-48, %r14d
	movq	%rdi, -64(%rbp)
	movsbl	(%rdi), %r8d
	leal	-48(%r8), %r12d
	addq	$1, %rdi
	cmpb	$10, %r12b
	jb	.LBB0_98
# %bb.99:
	leal	(%rax,%rsi,2), %r12d
	addq	$-1, %rdi
.LBB0_100:
	subq	%rdx, %rdi
	cmpq	$8, %rdi
	movl	$19999, %eax            # imm = 0x4E1F
	cmovgl	%eax, %r14d
	cmpl	$20047, %r12d           # imm = 0x4E4F
	cmovgl	%eax, %r14d
	movl	%r14d, %eax
	negl	%eax
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	cmovel	%r14d, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%r8d, %r12d
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r9, %rdi
	movl	-96(%rbp), %r9d         # 4-byte Reload
	testl	%edi, %edi
	jne	.LBB0_102
	jmp	.LBB0_113
.LBB0_101:
	movq	-48(%rbp), %r14         # 8-byte Reload
	testl	%edi, %edi
	je	.LBB0_113
.LBB0_102:
	movl	-80(%rbp), %r8d         # 4-byte Reload
	testl	%r8d, %r8d
	cmovel	%edi, %r8d
	cmpl	$17, %edi
	movl	$16, %eax
	cmovll	%edi, %eax
	movl	%r15d, %ecx
	cvtsi2sd	%rcx, %xmm0
	cmpl	$10, %eax
	jl	.LBB0_104
# %bb.103:
	movslq	%eax, %rcx
	mulsd	__mprec_tens-72(,%rcx,8), %xmm0
	movl	%ebx, %ecx
	cvtsi2sd	%rcx, %xmm1
	addsd	%xmm1, %xmm0
.LBB0_104:
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movq	-144(%rbp), %r12        # 8-byte Reload
	subl	%r10d, %r12d
	movq	%xmm0, %rsi
	cmpl	$15, %edi
	jg	.LBB0_125
# %bb.105:
	testl	%r12d, %r12d
	je	.LBB0_122
# %bb.106:
	jle	.LBB0_123
# %bb.107:
	cmpl	$22, %r12d
	jle	.LBB0_110
# %bb.108:
	movl	$37, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %r12d
	jg	.LBB0_125
# %bb.109:
	movl	$15, %eax
	subl	%edi, %eax
	subl	%eax, %r12d
	cltq
	mulsd	__mprec_tens(,%rax,8), %xmm0
.LBB0_110:
	movslq	%r12d, %rax
	mulsd	__mprec_tens(,%rax,8), %xmm0
	movq	%xmm0, %rax
	jmp	.LBB0_21
.LBB0_111:
	movq	%r11, -64(%rbp)
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_112:
	movq	%r11, -56(%rbp)         # 8-byte Spill
	testl	%edi, %edi
	jne	.LBB0_102
.LBB0_113:
	orl	-128(%rbp), %ecx        # 4-byte Folded Reload
	je	.LBB0_115
# %bb.114:
	xorl	%eax, %eax
	movl	-68(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_21
.LBB0_115:
	testl	%r9d, %r9d
	jne	.LBB0_20
# %bb.116:
	addl	$-73, %r12d
	cmpl	$37, %r12d
	ja	.LBB0_20
# %bb.117:
	jmpq	*.LJTI0_1(,%r12,8)
.LBB0_118:
	leaq	-64(%rbp), %rdi
	movl	$.L.str, %esi
	callq	__match
	testl	%eax, %eax
	je	.LBB0_20
# %bb.119:
	movabsq	$9218868437227405312, %rbx # imm = 0x7FF0000000000000
	addq	$-1, -64(%rbp)
	leaq	-64(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	__match
	testl	%eax, %eax
	jne	.LBB0_121
# %bb.120:
	addq	$1, -64(%rbp)
.LBB0_121:
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movq	%rbx, %rax
	jmp	.LBB0_21
.LBB0_122:
	movq	%rsi, %rax
	jmp	.LBB0_21
.LBB0_123:
	cmpl	$-22, %r12d
	jl	.LBB0_125
# %bb.124:
	negl	%r12d
	movslq	%r12d, %rax
	divsd	__mprec_tens(,%rax,8), %xmm0
	movq	%xmm0, %rax
	jmp	.LBB0_21
.LBB0_125:
	movabsq	$9218868437227405312, %rcx # imm = 0x7FF0000000000000
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	%edi, %ecx
	subl	%eax, %ecx
	addl	%r12d, %ecx
	jle	.LBB0_135
# %bb.126:
	movl	%ecx, %eax
	andl	$15, %eax
	je	.LBB0_128
# %bb.127:
	movl	%eax, %eax
	mulsd	__mprec_tens(,%rax,8), %xmm0
	movq	%xmm0, %rsi
.LBB0_128:
	movl	%ecx, %eax
	andl	$-16, %eax
	je	.LBB0_137
# %bb.129:
	cmpl	$308, %eax              # imm = 0x134
	jg	.LBB0_231
# %bb.130:
	cmpl	$32, %ecx
	jb	.LBB0_147
# %bb.131:
	shrl	$4, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_133
	.p2align	4, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_133 Depth=1
	addq	$1, %rax
	movl	%ecx, %edx
	shrl	%edx
	cmpl	$3, %ecx
	movl	%edx, %ecx
	jbe	.LBB0_148
.LBB0_133:                              # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	je	.LBB0_132
# %bb.134:                              #   in Loop: Header=BB0_133 Depth=1
	mulsd	__mprec_bigtens(,%rax,8), %xmm0
	movq	%xmm0, %rsi
	jmp	.LBB0_132
.LBB0_135:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	testl	%ecx, %ecx
	js	.LBB0_138
.LBB0_136:
	movq	%rdi, %rcx
	movl	%r9d, %ebx
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_166
.LBB0_137:
	movq	%rdi, %rcx
	movl	%r9d, %ebx
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	jmp	.LBB0_165
.LBB0_138:
	movl	%ecx, %eax
	negl	%eax
	movl	%eax, %edx
	andl	$15, %edx
	je	.LBB0_140
# %bb.139:
	movl	%edx, %edx
	divsd	__mprec_tens(,%rdx,8), %xmm0
	movq	%xmm0, %rsi
.LBB0_140:
	movl	%eax, %edx
	sarl	$4, %edx
	je	.LBB0_136
# %bb.141:
	cmpl	$-511, %ecx             # imm = 0xFE01
	jl	.LBB0_238
# %bb.142:
	cmpl	$-16, %ecx
	jg	.LBB0_154
# %bb.143:                              # %.preheader6
	movl	$tinytens, %ecx
	jmp	.LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_145 Depth=1
	shrl	%edx
	addq	$8, %rcx
	testl	%edx, %edx
	je	.LBB0_154
.LBB0_145:                              # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	je	.LBB0_144
# %bb.146:                              #   in Loop: Header=BB0_145 Depth=1
	mulsd	(%rcx), %xmm0
	movq	%xmm0, %rsi
	jmp	.LBB0_144
.LBB0_147:
	xorl	%eax, %eax
.LBB0_148:
	movabsq	$-238690780250636288, %rcx # imm = 0xFCB0000000000000
	addq	%rsi, %rcx
	movl	%eax, %eax
	movq	%rcx, %xmm0
	mulsd	__mprec_bigtens(,%rax,8), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
	andl	$2146435072, %esi       # imm = 0x7FF00000
	cmpl	$2090860544, %esi       # imm = 0x7CA00000
	ja	.LBB0_231
# %bb.149:
	movq	%rdi, %rcx
	movl	%r9d, %ebx
	movabsq	$238690780250636288, %rdx # imm = 0x350000000000000
	addq	%rdx, %rax
	movabsq	$9218868437227405312, %rdx # imm = 0x7FF0000000000000
	addq	$-1, %rdx
	cmpl	$2089811968, %esi       # imm = 0x7C900000
	cmovbeq	%rax, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	jmp	.LBB0_165
.LBB0_150:
	leaq	-64(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	__match
	testl	%eax, %eax
	je	.LBB0_20
# %bb.151:
	movabsq	$-2251799813685248, %rax # imm = 0xFFF8000000000000
	movq	-64(%rbp), %rcx
	cmpb	$40, (%rcx)
	jne	.LBB0_159
# %bb.152:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	leaq	-228(%rbp), %rdx
	movl	$_strtod_l.fpinan, %esi
	callq	__hexnan
	cmpl	$5, %eax
	movl	-68(%rbp), %r9d         # 4-byte Reload
	jne	.LBB0_160
# %bb.153:
	movl	$2146435072, %ecx       # imm = 0x7FF00000
	orl	-224(%rbp), %ecx
	shlq	$32, %rcx
	movl	-228(%rbp), %eax
	orq	%rcx, %rax
	jmp	.LBB0_21
.LBB0_154:
	testl	$256, %eax              # imm = 0x100
	je	.LBB0_163
# %bb.155:
	movq	%rsi, %rdx
	shrq	$52, %rdx
	andl	$2047, %edx             # imm = 0x7FF
	movl	$107, %ecx
	subl	%edx, %ecx
	jle	.LBB0_163
# %bb.156:
	cmpl	$32, %ecx
	jl	.LBB0_161
# %bb.157:
	cmpl	$52, %ecx
	jle	.LBB0_162
# %bb.158:
	movq	%rdi, %rcx
	movl	%r9d, %ebx
	movl	$106, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$247697979505377280, %rax # imm = 0x370000000000000
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_166
.LBB0_159:
	movl	-68(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_21
.LBB0_160:
	movq	%rbx, %rax
	jmp	.LBB0_21
.LBB0_161:
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	andq	%rsi, %rdx
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	shrl	%cl, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	orq	%rsi, %rdx
	movq	%rdx, %rsi
	jmp	.LBB0_163
.LBB0_162:
	shrq	$32, %rsi
	shrl	%cl, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	shlq	$32, %rsi
.LBB0_163:
	movq	%rsi, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_164
	jnp	.LBB0_238
.LBB0_164:
	movq	%rdi, %rcx
	movl	%r9d, %ebx
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	shll	$23, %eax
	sarl	$31, %eax
	andl	$106, %eax
                                        # kill: def $eax killed $eax def $rax
.LBB0_165:
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_166:
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	movl	%r8d, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r15d, %r8d
	callq	__s2b
	testq	%rax, %rax
	movl	%ebx, %r9d
	je	.LBB0_231
# %bb.167:
	movq	%rax, %r13
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movl	8(%rax), %esi
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	callq	_Balloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_232
# %bb.168:
	movq	%r13, %rsi
	addq	$16, %rsi
	movl	%r12d, %ecx
	negl	%ecx
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
	cmovnsl	%eax, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	addq	$16, %rdi
	movslq	20(%r13), %rax
	leaq	8(,%rax,4), %rdx
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-184(%rbp), %rsi
	leaq	-164(%rbp), %rdx
	movq	%r15, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	__d2b
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB0_233
# %bb.169:                              # %.preheader
	movq	-88(%rbp), %rax         # 8-byte Reload
	addl	%r12d, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	%r13, -160(%rbp)        # 8-byte Spill
.LBB0_170:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$1, %esi
	callq	__i2b
	movq	%rax, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_240
# %bb.171:                              #   in Loop: Header=BB0_170 Depth=1
	movl	-184(%rbp), %eax
	movl	%eax, %r14d
	negl	%r14d
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovnsl	%esi, %r14d
	movl	$0, %r13d
	cmovnsl	%eax, %r13d
	movl	-220(%rbp), %edx        # 4-byte Reload
	addl	%edx, %r13d
	subl	-88(%rbp), %eax         # 4-byte Folded Reload
	movl	-164(%rbp), %ecx
	addl	%ecx, %eax
	movl	$54, %r15d
	subl	%ecx, %r15d
	movl	$1, %edi
	cmpl	$-1022, %eax            # imm = 0xFC02
	jg	.LBB0_175
# %bb.172:                              #   in Loop: Header=BB0_170 Depth=1
	movl	$-1021, %ecx            # imm = 0xFC03
	subl	%eax, %ecx
	subl	%ecx, %r15d
	movl	$1, %edi
	cmpl	$31, %ecx
	jg	.LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_170 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	jmp	.LBB0_175
.LBB0_174:                              #   in Loop: Header=BB0_170 Depth=1
	movl	$1, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=1
	addl	-216(%rbp), %r14d       # 4-byte Folded Reload
	addl	%r15d, %r14d
	addl	%r13d, %r15d
	cmpl	%r14d, %r15d
	movl	%r14d, %eax
	cmovlel	%r15d, %eax
	cmpl	%r13d, %eax
	cmovgl	%r13d, %eax
	testl	%eax, %eax
	jle	.LBB0_177
# %bb.176:                              #   in Loop: Header=BB0_170 Depth=1
	subl	%eax, %r15d
	subl	%eax, %r14d
	subl	%eax, %r13d
.LBB0_177:                              #   in Loop: Header=BB0_170 Depth=1
	movl	%edi, -212(%rbp)        # 4-byte Spill
	movl	%esi, -208(%rbp)        # 4-byte Spill
	testl	%edx, %edx
	jle	.LBB0_181
# %bb.178:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__pow5mult
	testq	%rax, %rax
	je	.LBB0_258
# %bb.179:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-104(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	__multiply
	testq	%rax, %rax
	je	.LBB0_259
# %bb.180:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rax, %rbx
	movq	-104(%rbp), %rsi
	movq	%r12, %rdi
	callq	_Bfree
	movq	%rbx, -104(%rbp)
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB0_181:                              #   in Loop: Header=BB0_170 Depth=1
	testl	%r15d, %r15d
	jle	.LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-104(%rbp), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%r15d, %edx
	callq	__lshift
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	je	.LBB0_260
.LBB0_183:                              #   in Loop: Header=BB0_170 Depth=1
	testl	%r12d, %r12d
	jle	.LBB0_189
# %bb.184:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	__pow5mult
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_239
# %bb.185:                              #   in Loop: Header=BB0_170 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_190
.LBB0_186:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	__lshift
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_239
# %bb.187:                              #   in Loop: Header=BB0_170 Depth=1
	testl	%r13d, %r13d
	jle	.LBB0_191
.LBB0_188:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	__lshift
	movq	%rax, %rbx
	testq	%rax, %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_192
	jmp	.LBB0_261
.LBB0_189:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-152(%rbp), %r15        # 8-byte Reload
	testl	%r14d, %r14d
	jg	.LBB0_186
.LBB0_190:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	testl	%r13d, %r13d
	jg	.LBB0_188
.LBB0_191:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_192:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-104(%rbp), %rsi
	movq	%r15, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	__mdiff
	testq	%rax, %rax
	movq	-160(%rbp), %r13        # 8-byte Reload
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB0_241
# %bb.193:                              #   in Loop: Header=BB0_170 Depth=1
	movl	16(%rax), %r12d
	movl	$0, 16(%rax)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__mcmp
	testl	%eax, %eax
	js	.LBB0_242
# %bb.194:                              #   in Loop: Header=BB0_170 Depth=1
	je	.LBB0_248
# %bb.195:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__ratio
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_200
# %bb.196:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm3
	testl	%r12d, %r12d
	jne	.LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_170 Depth=1
	xorpd	.LCPI0_4(%rip), %xmm3
.LBB0_198:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-128(%rbp), %r14        # 8-byte Reload
.LBB0_199:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm0, %xmm2
	jmp	.LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm3
	testl	%r12d, %r12d
	movq	-128(%rbp), %r14        # 8-byte Reload
	je	.LBB0_211
.LBB0_201:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%r14, %rbx
	shrq	$32, %rbx
	andl	$2146435072, %ebx       # imm = 0x7FF00000
	cmpl	$2145386496, %ebx       # imm = 0x7FE00000
	jne	.LBB0_204
# %bb.202:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movq	-80(%rbp), %r13         # 8-byte Reload
	movabsq	$-238690780250636288, %rax # imm = 0xFCB0000000000000
	addq	%r14, %rax
	movq	%rax, %xmm0
	movq	%xmm0, -136(%rbp)       # 8-byte Folded Spill
	movaps	%xmm3, -128(%rbp)       # 16-byte Spill
	callq	__ulp
	movapd	-128(%rbp), %xmm1       # 16-byte Reload
	mulsd	%xmm0, %xmm1
	addsd	-136(%rbp), %xmm1       # 8-byte Folded Reload
	movq	%xmm1, %rax
	movq	%rax, %rcx
	movabsq	$9214364837600034816, %rdx # imm = 0x7FE0000000000000
	andq	%rdx, %rcx
	movabsq	$8980177652681801729, %rdx # imm = 0x7C9FFFFF00000001
	cmpq	%rdx, %rcx
	jb	.LBB0_210
# %bb.203:                              #   in Loop: Header=BB0_170 Depth=1
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	addq	$-1, %rax
	cmpq	%rax, %r14
	movq	%rax, %rdx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%r13, %rbx
	movq	-160(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_226
	jmp	.LBB0_235
.LBB0_204:                              #   in Loop: Header=BB0_170 Depth=1
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB0_215
# %bb.205:                              #   in Loop: Header=BB0_170 Depth=1
	cmpl	$111149056, %ebx        # imm = 0x6A00000
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ja	.LBB0_216
# %bb.206:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jb	.LBB0_209
# %bb.207:                              #   in Loop: Header=BB0_170 Depth=1
	cvttsd2si	%xmm2, %rax
	testl	%eax, %eax
	movl	$1, %ecx
	cmovel	%ecx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	movapd	%xmm2, %xmm3
	testl	%r12d, %r12d
	jne	.LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_170 Depth=1
	xorpd	.LCPI0_4(%rip), %xmm3
.LBB0_209:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movq	%xmm3, %rax
	movl	%eax, %ecx
	shrq	$32, %rax
	subl	%ebx, %eax
	addl	$112197632, %eax        # imm = 0x6B00000
	shlq	$32, %rax
	orq	%rax, %rcx
	movq	%rcx, %xmm1
	movdqa	%xmm1, -128(%rbp)       # 16-byte Spill
	jmp	.LBB0_218
.LBB0_210:                              #   in Loop: Header=BB0_170 Depth=1
	movabsq	$238690780250636288, %rcx # imm = 0x350000000000000
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	-160(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_219
.LBB0_211:                              #   in Loop: Header=BB0_170 Depth=1
	cmpl	$1, %r14d
	je	.LBB0_228
# %bb.212:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	testl	%r14d, %r14d
	jne	.LBB0_201
# %bb.213:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movabsq	$4503595332403200, %rax # imm = 0xFFFFF00000000
	testq	%rax, %r14
	jne	.LBB0_201
# %bb.214:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	cmpltsd	.LCPI0_1(%rip), %xmm0
	movapd	%xmm0, %xmm2
	andpd	%xmm3, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	xorpd	.LCPI0_4(%rip), %xmm3
	jmp	.LBB0_199
.LBB0_215:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
.LBB0_217:                              #   in Loop: Header=BB0_170 Depth=1
	movapd	%xmm3, -128(%rbp)       # 16-byte Spill
.LBB0_218:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	__ulp
	mulsd	-128(%rbp), %xmm0       # 16-byte Folded Reload
	addsd	-136(%rbp), %xmm0       # 8-byte Folded Reload
	movq	%xmm0, %rdx
.LBB0_219:                              #   in Loop: Header=BB0_170 Depth=1
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	movapd	-208(%rbp), %xmm1       # 16-byte Reload
	jne	.LBB0_225
# %bb.220:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$2146435072, %ecx       # imm = 0x7FF00000
	cmpl	%ecx, %ebx
	jne	.LBB0_225
# %bb.221:                              #   in Loop: Header=BB0_170 Depth=1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	testl	%r12d, %r12d
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_223
# %bb.222:                              #   in Loop: Header=BB0_170 Depth=1
	andl	$1048575, %eax          # imm = 0xFFFFF
	orl	%edx, %eax
	je	.LBB0_229
.LBB0_223:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	-48(%rbp), %r14         # 8-byte Reload
	ja	.LBB0_230
# %bb.224:                              #   in Loop: Header=BB0_170 Depth=1
	ucomisd	.LCPI0_7(%rip), %xmm1
	jbe	.LBB0_226
	jmp	.LBB0_230
.LBB0_225:                              #   in Loop: Header=BB0_170 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB0_226:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rsi
	movq	%r15, %rdi
	callq	_Bfree
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_Bfree
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movl	8(%r13), %esi
	movq	%r15, %rdi
	callq	_Balloc
	testq	%rax, %rax
	je	.LBB0_257
# %bb.227:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	addq	$16, %rdi
	movslq	20(%r13), %rax
	leaq	8(,%rax,4), %rdx
	movq	-240(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r15, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	leaq	-184(%rbp), %rsi
	leaq	-164(%rbp), %rdx
	callq	__d2b
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	jne	.LBB0_170
	jmp	.LBB0_235
.LBB0_228:                              #   in Loop: Header=BB0_170 Depth=1
	movq	%r14, %rax
	shrq	$32, %rax
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	jne	.LBB0_201
	jmp	.LBB0_288
.LBB0_229:                              #   in Loop: Header=BB0_170 Depth=1
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	-48(%rbp), %r14         # 8-byte Reload
	jbe	.LBB0_226
.LBB0_230:
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_236
.LBB0_231:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$34, (%rax)
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	jmp	.LBB0_21
.LBB0_232:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB0_234
.LBB0_233:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_234:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_235:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$34, (%r15)
.LBB0_236:
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_237:
	movq	-104(%rbp), %rsi
	movq	%r15, %rdi
	callq	_Bfree
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_Bfree
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_Bfree
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movq	-176(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_21
.LBB0_238:
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$34, (%rax)
	jmp	.LBB0_18
.LBB0_239:
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-160(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_235
.LBB0_240:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_235
.LBB0_241:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_235
.LBB0_242:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	orl	%edi, %r12d
	jne	.LBB0_281
# %bb.243:
	movq	%rdi, %rax
	shrq	$32, %rax
	testl	$1048575, %eax          # imm = 0xFFFFF
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_282
# %bb.244:
	andl	$2146435072, %eax       # imm = 0x7FF00000
	cmpl	$112197633, %eax        # imm = 0x6B00001
	jb	.LBB0_282
# %bb.245:
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 24(%rsi)
	jne	.LBB0_274
# %bb.246:
	cmpl	$2, 20(%rsi)
	jge	.LBB0_274
# %bb.247:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_282
.LBB0_248:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	testl	%r12d, %r12d
	je	.LBB0_263
# %bb.249:
	cmpl	$1048575, %ecx          # imm = 0xFFFFF
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-208(%rbp), %edx        # 4-byte Reload
	jne	.LBB0_264
# %bb.250:
	movl	$-1, %r8d
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB0_253
# %bb.251:
	movl	%eax, %esi
	andl	$2146435072, %esi       # imm = 0x7FF00000
	cmpl	$111149056, %esi        # imm = 0x6A00000
	ja	.LBB0_253
# %bb.252:
	shrl	$20, %esi
	movb	$107, %cl
	subb	%sil, %cl
	movl	$-1, %r8d
	shll	%cl, %r8d
.LBB0_253:
	cmpl	%edi, %r8d
	jne	.LBB0_264
# %bb.254:
	cmpl	$-1, %edi
	jne	.LBB0_280
# %bb.255:
	cmpl	$2146435071, %eax       # imm = 0x7FEFFFFF
	jne	.LBB0_280
# %bb.256:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_235
.LBB0_257:
	xorl	%ebx, %ebx
	jmp	.LBB0_235
.LBB0_258:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_259:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r12, %r15
	jmp	.LBB0_262
.LBB0_260:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	-160(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_235
.LBB0_261:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_262:
	movq	-160(%rbp), %r13        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_235
.LBB0_263:
	orl	%edi, %ecx
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-208(%rbp), %edx        # 4-byte Reload
	je	.LBB0_275
.LBB0_264:
	testl	%edx, %edx
	je	.LBB0_266
# %bb.265:
	testl	%eax, %edx
	jne	.LBB0_267
	jmp	.LBB0_281
.LBB0_266:
	testl	%edi, -212(%rbp)        # 4-byte Folded Reload
	je	.LBB0_281
.LBB0_267:
	callq	__ulp
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB0_270
# %bb.268:
	movq	-128(%rbp), %rcx        # 8-byte Reload
	shrq	$52, %rcx
	andl	$2047, %ecx             # imm = 0x7FF
	movl	$107, %eax
	subl	%ecx, %eax
	jle	.LBB0_270
# %bb.269:
	shll	$20, %eax
	addl	$1072693248, %eax       # imm = 0x3FF00000
	shlq	$32, %rax
	movq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
.LBB0_270:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_272
# %bb.271:
	addsd	-136(%rbp), %xmm0       # 8-byte Folded Reload
	movq	%xmm0, %rdi
	jmp	.LBB0_281
.LBB0_272:
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	movq	-48(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_273
	jnp	.LBB0_289
.LBB0_273:
	movapd	%xmm1, %xmm0
	movq	%xmm1, %rdi
	jmp	.LBB0_282
.LBB0_274:
	movq	%r15, %rdi
	movl	$1, %edx
	callq	__lshift
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__mcmp
	testl	%eax, %eax
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jg	.LBB0_276
	jmp	.LBB0_282
.LBB0_275:
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_276:
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	movabsq	$9218868437227405312, %rcx # imm = 0x7FF0000000000000
	je	.LBB0_279
# %bb.277:
	movq	%rdi, %rax
	shrq	$32, %rax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	cmpl	$112197632, %eax        # imm = 0x6B00000
	ja	.LBB0_279
# %bb.278:
	cmpl	$57671680, %eax         # imm = 0x3700000
	ja	.LBB0_284
	jmp	.LBB0_289
.LBB0_279:
	andq	%rcx, %rdi
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	addq	%rdi, %rax
	movabsq	$4503599627370495, %rdi # imm = 0xFFFFFFFFFFFFF
	orq	%rax, %rdi
	jmp	.LBB0_282
.LBB0_280:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	andq	%rax, %rdi
	movabsq	$4503599627370495, %rax # imm = 0xFFFFFFFFFFFFF
	addq	%rax, %rdi
	addq	$1, %rdi
.LBB0_281:
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_282:
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB0_287
# %bb.283:
	movq	%rdi, %xmm0
.LBB0_284:
	mulsd	.LCPI0_9(%rip), %xmm0
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jne	.LBB0_237
# %bb.285:
	testl	%ecx, %ecx
	jne	.LBB0_237
# %bb.286:
	movl	$34, (%r15)
	jmp	.LBB0_237
.LBB0_287:
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_237
.LBB0_288:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_289:
	movl	$34, (%r15)
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_237
.Lfunc_end0:
	.size	_strtod_l, .Lfunc_end0-_strtod_l
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_45
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_45
.LJTI0_1:
	.quad	.LBB0_118
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_150
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_118
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_150
                                        # -- End function
	.text
	.globl	_strtod_r               # -- Begin function _strtod_r
	.p2align	4, 0x90
	.type	_strtod_r,@function
_strtod_r:                              # @_strtod_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_strtod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_strtod_r, .Lfunc_end1-_strtod_r
                                        # -- End function
	.globl	strtod_l                # -- Begin function strtod_l
	.p2align	4, 0x90
	.type	strtod_l,@function
strtod_l:                               # @strtod_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_strtod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtod_l, .Lfunc_end2-strtod_l
                                        # -- End function
	.globl	strtod                  # -- Begin function strtod
	.p2align	4, 0x90
	.type	strtod,@function
strtod:                                 # @strtod
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_strtod_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtod, .Lfunc_end3-strtod
                                        # -- End function
	.globl	strtof_l                # -- Begin function strtof_l
	.p2align	4, 0x90
	.type	strtof_l,@function
strtof_l:                               # @strtof_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_strtod_l
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB4_1
# %bb.2:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	cmpl	$1, %eax
	jne	.LBB4_5
# %bb.3:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	cmpl	$1, %eax
	je	.LBB4_5
# %bb.4:
	callq	__getreent
	movl	$34, (%rax)
.LBB4_5:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB4_6
.LBB4_1:
	xorl	%edi, %edi
	callq	nanf
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	strtof_l, .Lfunc_end4-strtof_l
                                        # -- End function
	.globl	strtof                  # -- Begin function strtof
	.p2align	4, 0x90
	.type	strtof,@function
strtof:                                 # @strtof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB5_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_strtod_l
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB5_3
# %bb.4:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	cmpl	$1, %eax
	jne	.LBB5_7
# %bb.5:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	cmpl	$1, %eax
	je	.LBB5_7
# %bb.6:
	callq	__getreent
	movl	$34, (%rax)
.LBB5_7:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB5_8
.LBB5_3:
	xorl	%edi, %edi
	callq	nanf
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	strtof, .Lfunc_end5-strtof
                                        # -- End function
	.type	_strtod_l.fpi,@object   # @_strtod_l.fpi
	.section	.rodata,"a",@progbits
	.p2align	2
_strtod_l.fpi:
	.long	53                      # 0x35
	.long	4294966222              # 0xfffffbce
	.long	971                     # 0x3cb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	_strtod_l.fpi, 20

	.type	_strtod_l.fpinan,@object # @_strtod_l.fpinan
	.p2align	2
_strtod_l.fpinan:
	.long	52                      # 0x34
	.long	4294966222              # 0xfffffbce
	.long	971                     # 0x3cb
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	_strtod_l.fpinan, 20

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nf"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"inity"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"an"
	.size	.L.str.2, 3

	.type	tinytens,@object        # @tinytens
	.section	.rodata,"a",@progbits
	.p2align	4
tinytens:
	.quad	4367597403136100796     # double 9.9999999999999997E-17
	.quad	4128101167230658355     # double 1.0000000000000001E-32
	.quad	3649340653511681853     # double 9.9999999999999997E-65
	.quad	2691949749288605597     # double 1.0000000000000001E-128
	.quad	1254259266780163907     # double 8.112963841460668E-225
	.size	tinytens, 40

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
