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
	subq	$200, %rsp
	movq	%rcx, %r12
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	$0, -112(%rbp)
	movq	%rcx, %rdi
	callq	__localeconv_l
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	(%rax), %rdi
	callq	strlen
	leaq	1(%r15), %r13
	movq	%r15, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %r13
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	leaq	-1(%r13), %rcx
	movq	%rcx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%r13), %ebx
	movsbl	%bl, %edx
	movl	$42, __A_VARIABLE(%rip)
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
	je	.LBB0_117
	jmp	.LBB0_11
.LBB0_6:
	cmpl	$43, %edx
	je	.LBB0_9
# %bb.7:
	cmpl	$45, %edx
	jne	.LBB0_11
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB0_10
.LBB0_9:                                # %.loopexit11
	xorl	%r15d, %r15d
.LBB0_10:
	movq	%r13, -72(%rbp)
	movb	(%r13), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB0_12
	jmp	.LBB0_117
.LBB0_11:                               # %.loopexit10
	xorl	%r15d, %r15d
	movq	%rcx, %r13
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %bl
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_17
# %bb.13:
	movsbl	1(%r13), %ecx
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	orl	$32, %ecx
	cmpl	$120, %ecx
	jne	.LBB0_30
# %bb.14:
	movq	%r12, (%rsp)
	leaq	-72(%rbp), %rsi
	leaq	-124(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movl	$_strtod_l.fpi, %edx
	movq	%r14, %rdi
	movl	%r15d, %r9d
	callq	__gethex
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ebx
	andb	$7, %bl
	je	.LBB0_34
# %bb.15:
	cmpb	$6, %bl
	jne	.LBB0_35
# %bb.16:
	movq	%r13, -72(%rbp)
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_56
.LBB0_17:
	movl	$0, -104(%rbp)          # 4-byte Folded Spill
.LBB0_18:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%bl, %r14d
	leal	-48(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %cl
	ja	.LBB0_24
# %bb.19:                               # %.preheader9
	leaq	1(%r13), %rbx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_22 Depth=1
	leal	(%r12,%r12,4), %edx
	leal	(%r14,%rdx,2), %r12d
	addl	$-48, %r12d
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ecx
	movq	%rbx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%rbx), %r14d
	leal	-48(%r14), %edx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %dl
	jae	.LBB0_25
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	ja	.LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	leal	(%r15,%r15,4), %edx
	leal	(%r14,%rdx,2), %r15d
	addl	$-48, %r15d
	jmp	.LBB0_21
.LBB0_24:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movq	%r13, %rbx
	jmp	.LBB0_26
.LBB0_25:
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	addq	$-1, %rbx
.LBB0_26:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	movslq	%eax, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	strncmp
	xorl	%r9d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_28
# %bb.27:
	movq	%rbx, %r11
	xorl	%edi, %edi
	movl	-48(%rbp), %eax         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	xorl	%r10d, %r10d
	xorl	%edx, %edx
	jmp	.LBB0_78
.LBB0_28:
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %r11
	movq	%r11, -72(%rbp)
	movsbl	(%rbx,%rax), %r14d
	xorl	%r10d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_40
# %bb.29:
                                        # kill: def $eax killed $eax def $rax
	xorl	%edx, %edx
	jmp	.LBB0_58
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, -72(%rbp)
	movzbl	(%r13), %ebx
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %bl
	je	.LBB0_31
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_46
# %bb.33:
	addq	$-1, %r13
	movl	$1, -104(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_18
.LBB0_34:
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_57
.LBB0_35:
	movq	-112(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_37
# %bb.36:
	leaq	-144(%rbp), %rdi
	movl	$53, %esi
	callq	__copybits
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	_Bfree
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	movl	-124(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %bl
	cmpb	$5, %bl
	movq	-56(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_48
# %bb.38:
	movzbl	%bl, %ecx
	xorl	%ebx, %ebx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_39:
	movl	-144(%rbp), %ecx
	movl	$-1048577, %edx         # imm = 0xFFEFFFFF
	andl	-140(%rbp), %edx
	shll	$20, %eax
	addl	$1127219200, %eax       # imm = 0x43300000
	orl	%edx, %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movq	%rax, %rbx
	jmp	.LBB0_52
.LBB0_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	cmpb	$48, %r14b
	jne	.LBB0_44
# %bb.41:                               # %.preheader8
	movslq	%ecx, %rax
	leaq	(%rax,%rbx), %r11
	addq	$1, %r11
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	movq	%r11, -72(%rbp)
	movsbl	(%r11), %r14d
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %r14d
	je	.LBB0_42
# %bb.43:
	addq	$-1, %r11
.LBB0_44:
	leal	-49(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	cmpl	$8, %eax
	ja	.LBB0_47
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	xorl	%edx, %edx
	movq	%r11, %r13
	jmp	.LBB0_60
.LBB0_46:
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_230
.LBB0_47:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	movl	%esi, %edx
	jmp	.LBB0_78
.LBB0_48:
	xorl	%ebx, %ebx
	jmp	.LBB0_53
.LBB0_49:
	movq	-144(%rbp), %rbx
	jmp	.LBB0_52
.LBB0_50:
	movabsq	$9218868437227405312, %rbx # imm = 0x7FF0000000000000
	jmp	.LBB0_52
.LBB0_51:
	movabsq	$9223372036854775807, %rbx # imm = 0x7FFFFFFFFFFFFFFF
.LBB0_52:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r14b
	je	.LBB0_55
# %bb.54:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	addq	$1, %rax
	orq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_230
.LBB0_58:
	leal	-48(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB0_77
# %bb.59:
	movl	%r10d, %esi
.LBB0_60:
	leal	1(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	addl	$-48, %r14d
	je	.LBB0_76
# %bb.61:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	setl	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB0_71
# %bb.62:
	leal	(%rax,%rdx), %r8d
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_63:                               #   in Loop: Header=BB0_66 Depth=1
	addl	%r15d, %r15d
	leal	(%r15,%r15,4), %r15d
.LBB0_64:                               #   in Loop: Header=BB0_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	setl	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addl	$-1, %edx
	je	.LBB0_69
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %ecx
	testb	$1, %bl
	jne	.LBB0_63
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %eax
	jg	.LBB0_65
# %bb.68:                               #   in Loop: Header=BB0_66 Depth=1
	addl	%r12d, %r12d
	leal	(%r12,%r12,4), %r12d
	jmp	.LBB0_64
.LBB0_69:
	leal	1(%r8), %edx
	cmpl	$9, %ecx
	jge	.LBB0_72
.LBB0_70:
	leal	(%r15,%r15,4), %eax
	leal	(%r14,%rax,2), %r15d
	jmp	.LBB0_74
.LBB0_71:
	leal	1(%rax), %edx
	movl	%eax, %r8d
	cmpl	$8, %eax
	jle	.LBB0_70
.LBB0_72:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %r8d
	jg	.LBB0_75
# %bb.73:
	leal	(%r12,%r12,4), %eax
	leal	(%r14,%rax,2), %r12d
.LBB0_74:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_75:
	addl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movl	%edx, %eax
.LBB0_76:
	movsbl	1(%r11), %r14d
	addq	$1, %r11
	movq	%r11, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %r10d
	movl	%edi, %edx
	jmp	.LBB0_58
.LBB0_77:
	movl	$1, %edi
.LBB0_78:
	movl	%r14d, %ecx
	orl	$32, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %ecx
	jne	.LBB0_102
# %bb.79:
	movl	%edx, %ecx
	orl	-104(%rbp), %ecx        # 4-byte Folded Reload
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_117
# %bb.80:
	leaq	1(%r11), %rsi
	movq	%rsi, -72(%rbp)
	movsbl	1(%r11), %r14d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	cmpl	$43, %r14d
	je	.LBB0_83
# %bb.81:
	cmpl	$45, %r14d
	jne	.LBB0_84
# %bb.82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
.LBB0_83:
	leaq	2(%r11), %rsi
	movq	%rsi, -72(%rbp)
	movsbl	2(%r11), %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_84:
	leal	-48(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB0_89
# %bb.85:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %r14d
	jne	.LBB0_90
# %bb.86:                               # %.preheader7
	addq	$1, %rsi
	.p2align	4, 0x90
.LBB0_87:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, -72(%rbp)
	movsbl	(%rsi), %ebx
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ebx
	je	.LBB0_87
# %bb.88:
	addq	$-1, %rsi
	jmp	.LBB0_91
.LBB0_89:
	movq	%r11, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	jmp	.LBB0_99
.LBB0_90:
	movl	%r14d, %ebx
.LBB0_91:
	leal	-49(%rbx), %ecx
	xorl	%r9d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	ja	.LBB0_98
# %bb.92:
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movl	%edi, -88(%rbp)         # 4-byte Spill
	leal	-48(%rbx), %r8d
	leaq	1(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movsbl	1(%rsi), %r14d
	leal	-48(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$9, %cl
	ja	.LBB0_96
# %bb.93:                               # %.preheader6
	leaq	2(%rsi), %rdi
	movq	%r8, %r9
	.p2align	4, 0x90
.LBB0_94:                               # =>This Inner Loop Header: Depth=1
	leal	(%r9,%r9,4), %ecx
	movl	%r14d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rbx,%rcx,2), %r9d
	addl	$-48, %r9d
	movq	%rdi, -72(%rbp)
	movsbl	(%rdi), %r14d
	leal	-48(%r14), %r8d
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %r8b
	jb	.LBB0_94
# %bb.95:
	movq	%r9, %r8
	leal	(%rbx,%rcx,2), %ebx
	addq	$-1, %rdi
.LBB0_96:
	subq	%rsi, %rdi
	cmpq	$8, %rdi
	movl	$19999, %ecx            # imm = 0x4E1F
	cmovgl	%ecx, %r8d
	cmpl	$20047, %ebx            # imm = 0x4E4F
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%ecx, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	je	.LBB0_100
# %bb.97:
	negl	%r8d
	movq	%r8, %r9
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_101
.LBB0_98:
	movl	%ebx, %r14d
.LBB0_99:
	movq	%r11, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_102
.LBB0_100:
	movq	%r8, %r9
.LBB0_101:
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movl	-88(%rbp), %edi         # 4-byte Reload
.LBB0_102:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_114
# %bb.103:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r8d         # 4-byte Reload
	testl	%r8d, %r8d
	jne	.LBB0_105
# %bb.104:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r8d
.LBB0_105:
	cmpl	$17, %eax
	movl	$16, %edx
	cmovll	%eax, %edx
	movl	%r15d, %ecx
	cvtsi2sd	%rcx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	movq	-64(%rbp), %r14         # 8-byte Reload
	jl	.LBB0_107
# %bb.106:
	movslq	%edx, %rcx
	mulsd	__mprec_tens-72(,%rcx,8), %xmm0
	movl	%r12d, %ecx
	cvtsi2sd	%rcx, %xmm1
	addsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
.LBB0_107:
	movq	%r9, %r12
	subl	%r10d, %r12d
	movq	%xmm0, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %eax
	jg	.LBB0_121
# %bb.108:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_229
# %bb.109:
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_118
# %bb.110:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$22, %r12d
	jle	.LBB0_113
# %bb.111:
	movl	$37, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r12d
	jg	.LBB0_121
# %bb.112:
	movl	$15, %ecx
	subl	%eax, %ecx
	subl	%ecx, %r12d
	movslq	%ecx, %rax
	mulsd	__mprec_tens(,%rax,8), %xmm0
.LBB0_113:
	movslq	%r12d, %rax
	mulsd	__mprec_tens(,%rax,8), %xmm0
	jmp	.LBB0_120
.LBB0_114:
	orl	-104(%rbp), %edx        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_116
# %bb.115:
	xorl	%ebx, %ebx
	jmp	.LBB0_229
.LBB0_116:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_143
.LBB0_117:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_230
.LBB0_118:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-22, %r12d
	jl	.LBB0_121
# %bb.119:
	negl	%r12d
	movslq	%r12d, %rax
	divsd	__mprec_tens(,%rax,8), %xmm0
.LBB0_120:
	movq	%xmm0, %rbx
	jmp	.LBB0_228
.LBB0_121:
	movl	%eax, %ecx
	subl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r12d, %ecx
	jle	.LBB0_131
# %bb.122:
	movl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %edx
	je	.LBB0_124
# %bb.123:
	movl	%edx, %edx
	mulsd	__mprec_tens(,%rdx,8), %xmm0
	movq	%xmm0, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_124:
	movl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	andl	$-16, %edx
	je	.LBB0_158
# %bb.125:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$308, %edx              # imm = 0x134
	jg	.LBB0_227
# %bb.126:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jb	.LBB0_149
# %bb.127:
	shrl	$4, %ecx
	xorl	%edx, %edx
	jmp	.LBB0_129
	.p2align	4, 0x90
.LBB0_128:                              #   in Loop: Header=BB0_129 Depth=1
	addq	$1, %rdx
	movl	%ecx, %esi
	shrl	%esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	movl	%esi, %ecx
	jbe	.LBB0_150
.LBB0_129:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB0_128
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=1
	mulsd	__mprec_bigtens(,%rdx,8), %xmm0
	movq	%xmm0, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_128
.LBB0_131:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jns	.LBB0_159
# %bb.132:
	movl	%ecx, %esi
	negl	%esi
	movl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %edx
	je	.LBB0_134
# %bb.133:
	movl	%edx, %edx
	divsd	__mprec_tens(,%rdx,8), %xmm0
	movq	%xmm0, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_134:
	movl	%esi, %edx
	sarl	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_159
# %bb.135:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-511, %ecx             # imm = 0xFE01
	jl	.LBB0_286
# %bb.136:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %esi              # imm = 0x100
	je	.LBB0_138
# %bb.137:
	movl	$42, __A_VARIABLE(%rip)
	movl	$106, -48(%rbp)         # 4-byte Folded Spill
.LBB0_138:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-16, %ecx
	jg	.LBB0_236
# %bb.139:                              # %.preheader
	movl	$tinytens, %ecx
	jmp	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_141 Depth=1
	shrl	%edx
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_236
.LBB0_141:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_140
# %bb.142:                              #   in Loop: Header=BB0_141 Depth=1
	mulsd	(%rcx), %xmm0
	movq	%xmm0, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_140
.LBB0_143:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-73, %r14d
	cmpl	$37, %r14d
	ja	.LBB0_117
# %bb.144:
	jmpq	*.LJTI0_1(,%r14,8)
.LBB0_145:
	leaq	-72(%rbp), %rdi
	movl	$.L.str, %esi
	callq	__match
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_117
# %bb.146:
	addq	$-1, -72(%rbp)
	leaq	-72(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	__match
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_148
# %bb.147:
	addq	$1, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_148:
	movabsq	$9218868437227405312, %rbx # imm = 0x7FF0000000000000
	jmp	.LBB0_228
.LBB0_149:
	xorl	%edx, %edx
.LBB0_150:
	movabsq	$-238690780250636288, %rcx # imm = 0xFCB0000000000000
	addq	%rbx, %rcx
	movl	%edx, %edx
	movq	%rcx, %xmm0
	mulsd	__mprec_bigtens(,%rdx,8), %xmm0
	movq	%xmm0, %rbx
	movq	%rbx, %rcx
	shrq	$32, %rcx
	andl	$2146435072, %ecx       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2090860544, %ecx       # imm = 0x7CA00000
	ja	.LBB0_227
# %bb.151:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2089811969, %ecx       # imm = 0x7C900001
	jb	.LBB0_157
# %bb.152:
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$9218868437227405312, %rbx # imm = 0x7FF0000000000000
	addq	$-1, %rbx
	jmp	.LBB0_158
.LBB0_153:
	leaq	-72(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	__match
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_117
# %bb.154:
	movq	-72(%rbp), %rax
	cmpb	$40, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_243
# %bb.155:
	leaq	-72(%rbp), %rdi
	leaq	-216(%rbp), %rdx
	movl	$_strtod_l.fpinan, %esi
	callq	__hexnan
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB0_243
# %bb.156:
	movl	$2146435072, %eax       # imm = 0x7FF00000
	orl	-212(%rbp), %eax
	shlq	$32, %rax
	movl	-216(%rbp), %ebx
	orq	%rax, %rbx
	jmp	.LBB0_228
.LBB0_157:
	movabsq	$238690780250636288, %rcx # imm = 0x350000000000000
	addq	%rcx, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_158:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB0_159:
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%r8d, %edx
	movl	%eax, %ecx
	movl	%r15d, %r8d
	callq	__s2b
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_227
# %bb.160:
	movq	%rax, %r13
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	8(%r13), %esi
	movq	%r14, %rdi
	callq	_Balloc
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_235
# %bb.161:
	movq	%r13, %rdx
	addq	$16, %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%r12d, %edx
	negl	%edx
	testl	%r12d, %r12d
	cmovsl	%ecx, %r12d
	cmovnsl	%ecx, %edx
	movl	%edx, -188(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	%r12, -152(%rbp)        # 8-byte Spill
	movq	%r13, -96(%rbp)         # 8-byte Spill
.LBB0_162:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	16(%rax), %rdi
	movslq	20(%r13), %rax
	leaq	8(,%rax,4), %rdx
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	%rbx, %xmm0
	movq	%r14, %rdi
	movq	%xmm0, -120(%rbp)       # 8-byte Folded Spill
	leaq	-144(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	callq	__d2b
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_245
# %bb.163:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%r14, %rdi
	movl	$1, %esi
	callq	__i2b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB0_241
# %bb.164:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%rbx, -184(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-144(%rbp), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movl	%eax, %ecx
	cmovnsl	%ebx, %ecx
	movl	$0, %r13d
	cmovnsl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $r12d killed $r12d killed $r12
	subl	%ecx, %r12d
	movl	-188(%rbp), %edx        # 4-byte Reload
	addl	%edx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	subl	-48(%rbp), %eax         # 4-byte Folded Reload
	movl	-124(%rbp), %ecx
	addl	%ecx, %eax
	movl	$54, %r14d
	subl	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	cmpl	$-1022, %eax            # imm = 0xFC02
	jg	.LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$-1021, %ecx            # imm = 0xFC03
	subl	%eax, %ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	movl	$1, %esi
	shll	%cl, %esi
	subl	%ecx, %r14d
	cmpl	$32, %ecx
	movl	$1, %eax
	cmovgel	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmovll	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_166:                              #   in Loop: Header=BB0_162 Depth=1
	addl	-48(%rbp), %r12d        # 4-byte Folded Reload
	addl	%r14d, %r12d
	addl	%r13d, %r14d
	cmpl	%r12d, %r14d
	movl	%r12d, %eax
	cmovlel	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %eax
	jle	.LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
.LBB0_168:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_162 Depth=1
	subl	%eax, %r14d
	subl	%eax, %r12d
	subl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_170:                              #   in Loop: Header=BB0_162 Depth=1
	movl	%esi, -208(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movl	%ebx, -176(%rbp)        # 4-byte Spill
	jle	.LBB0_174
# %bb.171:                              #   in Loop: Header=BB0_162 Depth=1
	movl	%r13d, %ebx
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__pow5mult
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_260
# %bb.172:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-112(%rbp), %rdx
	movq	%r13, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	__multiply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_261
# %bb.173:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%rax, %r15
	movq	-112(%rbp), %rsi
	movq	%r13, %rdi
	callq	_Bfree
	movq	%r15, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movl	%ebx, %r13d
.LBB0_174:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-112(%rbp), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %edx
	callq	__lshift
	movq	%rax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_258
.LBB0_176:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-152(%rbp), %rdx        # 8-byte Reload
	testl	%edx, %edx
	jle	.LBB0_178
# %bb.177:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	__pow5mult
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_179
	jmp	.LBB0_242
.LBB0_178:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
.LBB0_179:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	%r12d, %edx
	callq	__lshift
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_182
	jmp	.LBB0_242
.LBB0_181:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB0_182:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jle	.LBB0_184
# %bb.183:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	__lshift
	movq	%rax, %rbx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	-184(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_185
	jmp	.LBB0_241
.LBB0_184:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-184(%rbp), %r13        # 8-byte Reload
.LBB0_185:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-112(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	__mdiff
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	je	.LBB0_244
# %bb.186:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%rax, %r12
	movl	16(%rax), %r14d
	movl	$0, 16(%rax)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r12, -104(%rbp)        # 8-byte Spill
	js	.LBB0_246
# %bb.187:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_248
# %bb.188:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__ratio
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_192
# %bb.189:                              #   in Loop: Header=BB0_162 Depth=1
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	testl	%r14d, %r14d
	movq	-56(%rbp), %r12         # 8-byte Reload
	movapd	%xmm0, %xmm3
	jne	.LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_162 Depth=1
	xorpd	.LCPI0_4(%rip), %xmm3
.LBB0_191:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm0, %xmm2
	jmp	.LBB0_193
.LBB0_192:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	movapd	%xmm1, %xmm3
	testl	%r14d, %r14d
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB0_206
.LBB0_193:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	shrq	$32, %rbx
	movl	%ebx, %r15d
	andl	$2146435072, %r15d      # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2145386496, %r15d      # imm = 0x7FE00000
	jne	.LBB0_198
# %bb.194:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movabsq	$-238690780250636288, %rcx # imm = 0xFCB0000000000000
	leaq	(%rcx,%r13), %rax
	movq	%rax, %xmm0
	movq	%xmm0, -120(%rbp)       # 8-byte Folded Spill
	movapd	%xmm3, -176(%rbp)       # 16-byte Spill
	callq	__ulp
	movapd	-176(%rbp), %xmm1       # 16-byte Reload
	mulsd	%xmm0, %xmm1
	addsd	-120(%rbp), %xmm1       # 8-byte Folded Reload
	movq	%xmm1, %rax
	movq	%rax, %rcx
	movabsq	$9214364837600034816, %rdx # imm = 0x7FE0000000000000
	andq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$8980177652681801729, %rdx # imm = 0x7C9FFFFF00000001
	cmpq	%rdx, %rcx
	jb	.LBB0_205
# %bb.195:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %ebx       # imm = 0x7FEFFFFF
	jne	.LBB0_197
# %bb.196:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, -184(%rbp)         # 4-byte Folded Reload
	je	.LBB0_289
.LBB0_197:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	leaq	-1(%rax), %rbx
	jmp	.LBB0_220
.LBB0_198:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_209
# %bb.199:                              #   in Loop: Header=BB0_162 Depth=1
	cmpl	$111149056, %r15d       # imm = 0x6A00000
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ja	.LBB0_210
# %bb.200:                              #   in Loop: Header=BB0_162 Depth=1
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_204
# %bb.201:                              #   in Loop: Header=BB0_162 Depth=1
	cvttsd2si	%xmm2, %rax
	testl	%eax, %eax
	movl	$1, %ecx
	cmovel	%ecx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	movapd	%xmm2, %xmm3
	testl	%r14d, %r14d
	jne	.LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_162 Depth=1
	xorpd	.LCPI0_4(%rip), %xmm3
.LBB0_203:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_204:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movq	%xmm3, %rax
	movl	%eax, %ecx
	shrq	$32, %rax
	subl	%r15d, %eax
	addl	$112197632, %eax        # imm = 0x6B00000
	shlq	$32, %rax
	orq	%rax, %rcx
	movq	%rcx, %xmm1
	movdqa	%xmm1, -176(%rbp)       # 16-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_212
.LBB0_205:                              #   in Loop: Header=BB0_162 Depth=1
	movabsq	$238690780250636288, %rcx # imm = 0x350000000000000
	addq	%rcx, %rax
	movq	%rax, %rbx
	jmp	.LBB0_213
.LBB0_206:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB0_222
# %bb.207:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	cmpl	$1, %r13d
	jne	.LBB0_193
# %bb.208:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%r13, %rax
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	jne	.LBB0_193
	jmp	.LBB0_306
.LBB0_209:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm2, -208(%rbp)       # 16-byte Spill
.LBB0_211:                              #   in Loop: Header=BB0_162 Depth=1
	movapd	%xmm3, -176(%rbp)       # 16-byte Spill
.LBB0_212:                              #   in Loop: Header=BB0_162 Depth=1
	callq	__ulp
	mulsd	-176(%rbp), %xmm0       # 16-byte Folded Reload
	addsd	-120(%rbp), %xmm0       # 8-byte Folded Reload
	movq	%xmm0, %rbx
.LBB0_213:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	movapd	-208(%rbp), %xmm1       # 16-byte Reload
	jne	.LBB0_220
# %bb.214:                              #   in Loop: Header=BB0_162 Depth=1
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$2146435072, %ecx       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r15d
	jne	.LBB0_220
# %bb.215:                              #   in Loop: Header=BB0_162 Depth=1
	cvttsd2si	%xmm1, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	subsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jne	.LBB0_218
# %bb.216:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048575, %eax          # imm = 0xFFFFF
	je	.LBB0_225
.LBB0_218:                              #   in Loop: Header=BB0_162 Depth=1
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	ja	.LBB0_226
# %bb.219:                              #   in Loop: Header=BB0_162 Depth=1
	ucomisd	.LCPI0_7(%rip), %xmm1
	jbe	.LBB0_221
	jmp	.LBB0_226
.LBB0_220:                              #   in Loop: Header=BB0_162 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_221:                              #   in Loop: Header=BB0_162 Depth=1
	movq	-112(%rbp), %rsi
	movq	%r14, %rdi
	callq	_Bfree
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r14, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r14, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	_Bfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r13         # 8-byte Reload
	movl	8(%r13), %esi
	movq	%r14, %rdi
	callq	_Balloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-152(%rbp), %r12        # 8-byte Reload
	jne	.LBB0_162
	jmp	.LBB0_257
.LBB0_222:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$4503595332403200, %rax # imm = 0xFFFFF00000000
	testq	%rax, %r13
	je	.LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm3   # xmm3 = mem[0],zero
	jmp	.LBB0_193
.LBB0_224:                              #   in Loop: Header=BB0_162 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm1
	cmpltsd	.LCPI0_1(%rip), %xmm0
	movapd	%xmm0, %xmm2
	andpd	%xmm3, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm0, %xmm3
	jmp	.LBB0_190
.LBB0_225:                              #   in Loop: Header=BB0_162 Depth=1
	movsd	.LCPI0_8(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jbe	.LBB0_221
.LBB0_226:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_265
.LBB0_227:
	movabsq	$9218868437227405312, %rbx # imm = 0x7FF0000000000000
	movl	$34, (%r14)
.LBB0_228:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_229:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_230:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_232
# %bb.231:
	movq	-72(%rbp), %rax
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_232:
	movq	%rbx, %xmm0
	testl	%r15d, %r15d
	je	.LBB0_234
# %bb.233:
	pxor	.LCPI0_4(%rip), %xmm0
.LBB0_234:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_235:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_264
.LBB0_236:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_285
# %bb.237:
	movq	%rbx, %rdx
	shrq	$52, %rdx
	andl	$2047, %edx             # imm = 0x7FF
	movl	$107, %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %ecx
	jle	.LBB0_285
# %bb.238:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jl	.LBB0_272
# %bb.239:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$53, %ecx
	jl	.LBB0_284
# %bb.240:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$247697979505377280, %rbx # imm = 0x370000000000000
	jmp	.LBB0_159
.LBB0_241:
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_245
.LBB0_242:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_245
.LBB0_243:
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-2251799813685248, %rbx # imm = 0xFFF8000000000000
	jmp	.LBB0_229
.LBB0_244:
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_245:
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_263
.LBB0_246:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_266
# %bb.247:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r13, %rdi
	jmp	.LBB0_300
.LBB0_248:
	movq	%r13, %rdi
	movq	%r13, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$1048575, %ecx          # imm = 0xFFFFF
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_273
# %bb.249:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1048575, %ecx          # imm = 0xFFFFF
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB0_275
# %bb.250:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_253
# %bb.251:
	movl	%eax, %esi
	andl	$2146435072, %esi       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$111149056, %esi        # imm = 0x6A00000
	ja	.LBB0_253
# %bb.252:
	shrl	$20, %esi
	movb	$107, %cl
	subb	%sil, %cl
	movl	$-1, %edx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_253:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	jne	.LBB0_275
# %bb.254:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435071, %eax       # imm = 0x7FEFFFFF
	jne	.LBB0_256
# %bb.255:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB0_258
.LBB0_256:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	andq	%rax, %rdi
	movabsq	$4503599627370495, %rax # imm = 0xFFFFFFFFFFFFF
	addq	%rax, %rdi
	addq	$1, %rdi
	jmp	.LBB0_297
.LBB0_257:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_264
.LBB0_258:
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_259:
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_263
.LBB0_260:
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_262
.LBB0_261:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_262:
	movq	%r13, %r14
.LBB0_263:
	movq	-96(%rbp), %r13         # 8-byte Reload
.LBB0_264:
	movl	$34, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_265:
	movq	-112(%rbp), %rsi
	movq	%r14, %rdi
	callq	_Bfree
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r14, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	_Bfree
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	_Bfree
	movq	%r14, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	_Bfree
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_230
.LBB0_266:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	testl	%edi, %edi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_300
# %bb.267:
	movq	%rdi, %rax
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048575, %eax          # imm = 0xFFFFF
	jne	.LBB0_300
# %bb.268:
	andl	$2146435072, %eax       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112197633, %eax        # imm = 0x6B00001
	jb	.LBB0_300
# %bb.269:
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpl	$0, 24(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_291
# %bb.270:
	cmpl	$2, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB0_291
# %bb.271:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r13, %rdi
	jmp	.LBB0_300
.LBB0_272:
	movl	%ebx, %edx
	shrl	%cl, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	andq	%rbx, %rcx
	orq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
	jmp	.LBB0_285
.LBB0_273:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jne	.LBB0_275
# %bb.274:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_292
.LBB0_275:
	movl	$42, __A_VARIABLE(%rip)
	movl	-176(%rbp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB0_278
# %bb.276:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %ecx
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_279
	jmp	.LBB0_299
.LBB0_278:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, -208(%rbp)        # 4-byte Folded Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB0_299
.LBB0_279:
	callq	__ulp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_282
# %bb.280:
	shrq	$52, %r13
	andl	$2047, %r13d            # imm = 0x7FF
	movl	$107, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %eax
	jle	.LBB0_282
# %bb.281:
	shll	$20, %eax
	addl	$1072693248, %eax       # imm = 0x3FF00000
	shlq	$32, %rax
	movq	%rax, %xmm1
	mulsd	%xmm1, %xmm0
.LBB0_282:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_287
# %bb.283:
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_288
.LBB0_284:
	shrq	$32, %rbx
	shrl	%cl, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	shlq	$32, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_285:
	movq	%rbx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_159
	jp	.LBB0_159
.LBB0_286:
	movl	$34, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_229
.LBB0_287:
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movq	-64(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_288
	jnp	.LBB0_307
.LBB0_288:
	movq	%xmm0, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_300
.LBB0_289:
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_259
.LBB0_291:
	movq	%r14, %rdi
	movl	$1, %edx
	callq	__lshift
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__mcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r13, %rdi
	jle	.LBB0_308
.LBB0_292:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_296
# %bb.293:
	movq	%rdi, %rax
	shrq	$32, %rax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112197632, %eax        # imm = 0x6B00000
	ja	.LBB0_296
# %bb.294:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57671681, %eax         # imm = 0x3700001
	jb	.LBB0_305
# %bb.295:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-120(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_302
.LBB0_296:
	movabsq	$9218868437227405312, %rax # imm = 0x7FF0000000000000
	andq	%rax, %rdi
	movabsq	$-4503599627370496, %rax # imm = 0xFFF0000000000000
	addq	%rdi, %rax
	movabsq	$4503599627370495, %rdi # imm = 0xFFFFFFFFFFFFF
	orq	%rax, %rdi
.LBB0_297:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_298:
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_299:
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_300:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_304
# %bb.301:
	movq	%rdi, %xmm0
.LBB0_302:
	mulsd	.LCPI0_9(%rip), %xmm0
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB0_265
# %bb.303:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_265
	jmp	.LBB0_264
.LBB0_304:
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_265
.LBB0_305:
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_306:
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_307:
	movl	$34, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_265
.LBB0_308:
	movq	%r12, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_298
.Lfunc_end0:
	.size	_strtod_l, .Lfunc_end0-_strtod_l
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_39
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_39
	.quad	.LBB0_52
.LJTI0_1:
	.quad	.LBB0_145
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_153
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_145
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_153
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_1
# %bb.2:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB4_5
# %bb.3:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB4_5
# %bb.4:
	callq	__getreent
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_5:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB4_6
.LBB4_1:
	xorl	%edi, %edi
	callq	nanf
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB5_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_3
# %bb.4:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB5_7
# %bb.5:
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB5_7
# %bb.6:
	callq	__getreent
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB5_8
.LBB5_3:
	xorl	%edi, %edi
	callq	nanf
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
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
