	.text
	.file	"regcomp.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function regcomp
.LCPI0_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.text
	.globl	regcomp
	.p2align	4, 0x90
	.type	regcomp,@function
regcomp:                                # @regcomp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%edx, %r15d
	movq	%rsi, %r12
	movl	$16, %ebx
	testb	$16, %r15b
	je	.LBB0_2
# %bb.1:
	movl	%r15d, %eax
	andl	$1, %eax
	jne	.LBB0_153
.LBB0_2:
	testb	$32, %r15b
	jne	.LBB0_4
# %bb.3:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r14
	jmp	.LBB0_6
.LBB0_4:
	movq	16(%rdi), %r14
	subq	%r12, %r14
	jb	.LBB0_153
# %bb.5:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_6:
	movl	$423, %edi              # imm = 0x1A7
	callq	malloc
	movl	$12, %ebx
	testq	%rax, %rax
	je	.LBB0_153
# %bb.7:
	movq	%rax, %r13
	movq	%r14, %rax
	shrq	%rax
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rax,%rax,2), %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)
	leaq	8(,%rcx,8), %rdi
	callq	malloc
	movq	%rax, -280(%rbp)
	movq	$0, -264(%rbp)
	testq	%rax, %rax
	je	.LBB0_12
# %bb.8:
	movl	%r15d, %eax
	andl	$-129, %eax
	movq	%r13, -248(%rbp)
	movq	%r12, -304(%rbp)
	addq	%r12, %r14
	movq	%r14, -296(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -256(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -144(%rbp)
	movq	$0, -128(%rbp)
	movaps	%xmm0, -208(%rbp)
	movups	%xmm0, -120(%rbp)
	movaps	%xmm0, -192(%rbp)
	movups	%xmm0, -104(%rbp)
	movaps	%xmm0, -176(%rbp)
	movq	$0, -88(%rbp)
	movq	$256, 16(%r13)          # imm = 0x100
	movups	%xmm0, 24(%r13)
	movl	%eax, 40(%r13)
	movq	$0, 96(%r13)
	movl	$-1, 104(%r13)
	movups	%xmm0, 112(%r13)
	movl	$0, 128(%r13)
	movq	$0, 136(%r13)
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movdqu	%xmm0, 72(%r13)
	leaq	160(%r13), %rdi
	leaq	288(%r13), %rax
	movq	%rax, 88(%r13)
	xorl	%r14d, %r14d
	movl	$256, %edx              # imm = 0x100
	xorl	%esi, %esi
	callq	memset
	movl	$0, 144(%r13)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rbx
	cmpq	%rax, %rbx
	jl	.LBB0_15
# %bb.9:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r12
	xorl	%r14d, %r14d
	cmpq	%r12, %rax
	jge	.LBB0_14
# %bb.10:
	movq	-280(%rbp), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_13
# %bb.11:
	movq	%rax, -280(%rbp)
	movq	%r12, -272(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	movq	%r13, %rdi
	callq	free
	jmp	.LBB0_153
.LBB0_13:
	movl	$12, -288(%rbp)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %r14d
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movq	-280(%rbp), %rax
	leaq	1(%rbx), %rcx
	movq	%rcx, -264(%rbp)
	movq	$134217728, (%rax,%rbx,8) # imm = 0x8000000
	movq	-264(%rbp), %rax
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 56(%r13)
	testb	$1, %r15b
	je	.LBB0_17
# %bb.16:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	callq	p_ere
	jmp	.LBB0_26
.LBB0_17:
	testb	$16, %r15b
	jne	.LBB0_19
# %bb.18:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	movl	$128, %edx
	callq	p_bre
	jmp	.LBB0_26
.LBB0_19:
	movq	-304(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jae	.LBB0_22
# %bb.20:
	leaq	-304(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -304(%rbp)
	movsbl	(%rax), %esi
	movq	%rbx, %rdi
	callq	ordinary
	movq	-304(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jb	.LBB0_21
	jmp	.LBB0_25
.LBB0_22:
	testl	%r14d, %r14d
	jne	.LBB0_24
# %bb.23:
	movl	$14, -288(%rbp)
.LBB0_24:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB0_36
# %bb.27:
	movq	-272(%rbp), %rcx
	movq	-264(%rbp), %rdx
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	jl	.LBB0_35
# %bb.28:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	leaq	(%rcx,%rax), %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	jge	.LBB0_34
# %bb.29:
	movq	-280(%rbp), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_31
# %bb.30:
	movq	%rax, -280(%rbp)
	movq	%rbx, -272(%rbp)
	movl	-288(%rbp), %eax
	jmp	.LBB0_34
.LBB0_31:
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB0_33
# %bb.32:
	movl	$12, -288(%rbp)
	movl	$12, %eax
.LBB0_33:
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	-264(%rbp), %rdx
.LBB0_35:
	movq	-280(%rbp), %rcx
	leaq	1(%rdx), %rsi
	movq	%rsi, -264(%rbp)
	movq	$134217728, (%rcx,%rdx,8) # imm = 0x8000000
.LBB0_36:
	movl	$42, __A_VARIABLE(%rip)
	movq	-264(%rbp), %rsi
	leaq	-1(%rsi), %rcx
	movq	%rcx, 64(%r13)
	testl	%eax, %eax
	jne	.LBB0_56
# %bb.37:                               # %.preheader19
	movq	88(%r13), %r9
	movq	$-128, %r10
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=1
	addq	$1, %r10
	cmpq	$128, %r10
	je	.LBB0_55
.LBB0_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #       Child Loop BB0_52 Depth 3
	cmpb	$0, (%r9,%r10)
	jne	.LBB0_39
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	movl	20(%r13), %eax
	leal	7(%rax), %edx
	leal	14(%rax), %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	testl	%eax, %eax
	jle	.LBB0_38
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=1
	sarl	$3, %ecx
	movzbl	%r10b, %r14d
	movq	32(%r13), %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_43:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rax,%r14)
	jne	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	addl	$1, %esi
	movslq	16(%r13), %rdi
	addq	%rdi, %rax
	cmpl	%ecx, %esi
	jl	.LBB0_43
	jmp	.LBB0_38
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	84(%r13), %r8d
	leal	1(%r8), %eax
	movl	%eax, 84(%r13)
	movb	%r8b, (%r9,%r10)
	cmpq	$126, %r10
	jg	.LBB0_39
# %bb.46:                               # %.preheader16
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	%r10, %r11
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	%r8b, (%r9,%r11)
.LBB0_48:                               #   in Loop: Header=BB0_49 Depth=2
	cmpq	$126, %rdi
	jge	.LBB0_39
.LBB0_49:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
	movq	%r11, %rdi
	addq	$1, %r11
	cmpb	$0, 1(%r9,%rdi)
	jne	.LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=2
	movl	20(%r13), %eax
	leal	7(%rax), %ecx
	leal	14(%rax), %esi
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	testl	%eax, %eax
	jle	.LBB0_47
# %bb.51:                               #   in Loop: Header=BB0_49 Depth=2
	sarl	$3, %esi
	movq	32(%r13), %rax
	movzbl	%r11b, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_52:                               #   Parent Loop BB0_40 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax,%r14), %edx
	cmpb	(%rax,%rbx), %dl
	jne	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_52 Depth=3
	addl	$1, %ecx
	movslq	16(%r13), %rdx
	addq	%rdx, %rax
	cmpl	%esi, %ecx
	jl	.LBB0_52
	jmp	.LBB0_47
.LBB0_54:                               #   in Loop: Header=BB0_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_48
.LBB0_55:
	movq	-264(%rbp), %rsi
.LBB0_56:
	leaq	128(%r13), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, 48(%r13)
	movq	-280(%rbp), %rdi
	shlq	$3, %rsi
	callq	realloc
	movq	%rax, %r12
	movq	%rax, 8(%r13)
	movl	-288(%rbp), %eax
	testq	%r12, %r12
	je	.LBB0_61
# %bb.57:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %r11         # 8-byte Reload
	jne	.LBB0_119
# %bb.58:
	movslq	20(%r13), %r10
	xorl	%eax, %eax
	movl	$0, %r15d
	testq	%r10, %r10
	jle	.LBB0_69
# %bb.59:
	movq	24(%r13), %r8
	leaq	-1(%r10), %rdx
	movl	%r10d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB0_64
# %bb.60:
	xorl	%edi, %edi
	xorl	%r15d, %r15d
	jmp	.LBB0_66
.LBB0_61:
	testl	%eax, %eax
	jne	.LBB0_63
# %bb.62:
	movl	$12, -288(%rbp)
.LBB0_63:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_118:
	movq	-48(%rbp), %r11         # 8-byte Reload
	jmp	.LBB0_119
.LBB0_64:
	leaq	120(%r8), %rbx
	subq	%rcx, %r10
	xorl	%edi, %edi
	movl	$1, %r9d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbx), %rdx
	movq	(%rbx), %rsi
	orq	-96(%rbx), %rdx
	orq	-32(%rbx), %rsi
	orq	%rdx, %rsi
	cmovnel	%r9d, %r15d
	addq	$4, %rdi
	subq	$-128, %rbx
	cmpq	%rdi, %r10
	jne	.LBB0_65
.LBB0_66:
	testq	%rcx, %rcx
	je	.LBB0_69
# %bb.67:                               # %.preheader12
	shlq	$5, %rdi
	leaq	(%r8,%rdi), %rdx
	addq	$24, %rdx
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rdx)
	cmovnel	%esi, %r15d
	addq	$32, %rdx
	addq	$-1, %rcx
	jne	.LBB0_68
.LBB0_69:
	movl	$0, 104(%r13)
	addq	$8, %r12
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB0_74
.LBB0_84:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, 104(%r13)
	movq	%rdx, %rbx
.LBB0_72:                               #   in Loop: Header=BB0_74 Depth=1
	xorl	%esi, %esi
.LBB0_73:                               #   in Loop: Header=BB0_74 Depth=1
	andl	$-134217728, %r14d      # imm = 0xF8000000
	movq	%rdi, %r12
	cmpl	$134217728, %r14d       # imm = 0x8000000
	je	.LBB0_110
.LBB0_74:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	leaq	8(%r12), %rdi
	movq	(%r12), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	cmpq	$19, %rcx
	ja	.LBB0_93
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_70
# %bb.77:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_84
# %bb.78:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, %ecx
	addl	%eax, 104(%r13)
	movq	%rdx, %rbx
	xorl	%esi, %esi
	movl	%ecx, %eax
	jmp	.LBB0_73
.LBB0_70:                               #   in Loop: Header=BB0_74 Depth=1
	testl	%eax, %eax
	jns	.LBB0_71
	jmp	.LBB0_72
.LBB0_79:                               #   in Loop: Header=BB0_74 Depth=1
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%r15d, %edx
	callq	altoffset
                                        # kill: def $eax killed $eax def $rax
	movq	%r12, %rdi
	.p2align	4, 0x90
.LBB0_80:                               #   Parent Loop BB0_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rcx
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	leaq	(%rdi,%r14,8), %rdi
	movq	(%rcx,%r14,8), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	je	.LBB0_85
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	cmpl	$-2013265920, %ecx      # imm = 0x88000000
	je	.LBB0_80
# %bb.82:                               #   in Loop: Header=BB0_74 Depth=1
	cmpl	$-1879048192, %ecx      # imm = 0x90000000
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_76
	jmp	.LBB0_109
.LBB0_85:                               #   in Loop: Header=BB0_74 Depth=1
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_76
.LBB0_86:                               #   in Loop: Header=BB0_74 Depth=1
	testq	%rsi, %rsi
	cmoveq	%r12, %rdx
	addq	$1, %rsi
	jmp	.LBB0_73
.LBB0_87:                               #   in Loop: Header=BB0_74 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_96
# %bb.88:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_100
# %bb.89:                               #   in Loop: Header=BB0_74 Depth=1
	addl	%eax, 104(%r13)
	movq	%rdx, %rbx
	jmp	.LBB0_102
.LBB0_90:                               #   in Loop: Header=BB0_74 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_98
# %bb.91:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_103
# %bb.92:                               #   in Loop: Header=BB0_74 Depth=1
	addl	%eax, 104(%r13)
	movq	%rdx, %rbx
	jmp	.LBB0_105
.LBB0_93:                               #   in Loop: Header=BB0_74 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_108
# %bb.94:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	jns	.LBB0_106
# %bb.95:                               #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, 104(%r13)
	jmp	.LBB0_107
.LBB0_96:                               #   in Loop: Header=BB0_74 Depth=1
	testl	%eax, %eax
	js	.LBB0_101
# %bb.97:                               #   in Loop: Header=BB0_74 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_101
.LBB0_98:                               #   in Loop: Header=BB0_74 Depth=1
	testl	%eax, %eax
	js	.LBB0_104
# %bb.99:                               #   in Loop: Header=BB0_74 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_104
.LBB0_100:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, 104(%r13)
	movq	%rdx, %rbx
.LBB0_101:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, %esi
.LBB0_102:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, %eax
	notl	%eax
	shrl	$31, %eax
.LBB0_71:                               #   in Loop: Header=BB0_74 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_72
.LBB0_103:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, 104(%r13)
	movq	%rdx, %rbx
.LBB0_104:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%eax, %esi
.LBB0_105:                              #   in Loop: Header=BB0_74 Depth=1
	movl	%esi, %ecx
	notl	%ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	cmpl	$1, %r15d
	movl	$0, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%ecx, %eax
	jmp	.LBB0_72
.LBB0_106:                              #   in Loop: Header=BB0_74 Depth=1
	addl	%eax, 104(%r13)
.LBB0_107:                              #   in Loop: Header=BB0_74 Depth=1
	movq	%rdx, %rbx
.LBB0_108:                              #   in Loop: Header=BB0_74 Depth=1
	xorl	%esi, %esi
	movl	$-1, %eax
	jmp	.LBB0_73
.LBB0_109:
	orb	$4, 72(%r13)
	jmp	.LBB0_119
.LBB0_110:
	movslq	(%r11), %rdi
	testq	%rdi, %rdi
	je	.LBB0_116
# %bb.111:
	addq	$1, %rdi
	callq	malloc
	movq	%rax, 96(%r13)
	testq	%rax, %rax
	je	.LBB0_117
# %bb.112:
	movq	-48(%rbp), %r11         # 8-byte Reload
	movslq	(%r11), %rcx
	testq	%rcx, %rcx
	jle	.LBB0_115
	.p2align	4, 0x90
.LBB0_113:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	addq	$8, %rbx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpl	$268435456, %esi        # imm = 0x10000000
	jne	.LBB0_113
# %bb.114:                              #   in Loop: Header=BB0_113 Depth=1
	movb	%dl, (%rax)
	addq	$1, %rax
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB0_113
.LBB0_115:
	movb	$0, (%rax)
	jmp	.LBB0_119
.LBB0_116:
	movl	$-1, 104(%r13)
.LBB0_119:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, (%r11)
	jl	.LBB0_136
# %bb.120:
	cmpl	$0, -288(%rbp)
	je	.LBB0_122
# %bb.121:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_133
.LBB0_122:
	movl	$1028, %edi             # imm = 0x404
	callq	malloc
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 112(%r13)
	testq	%rax, %rax
	je	.LBB0_132
# %bb.123:
	leaq	512(%rax), %r8
	movq	%r8, 112(%r13)
	movq	%r13, %rdx
	addq	$129, %rdx
	cmpq	%rdx, %rax
	jae	.LBB0_127
# %bb.124:
	movq	%rax, %rdx
	addq	$1024, %rdx             # imm = 0x400
	cmpq	%rdx, %rcx
	jae	.LBB0_127
# %bb.125:                              # %.preheader7
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_126:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %esi
	movl	%esi, (%rax,%rdx,4)
	movl	(%rcx), %esi
	movl	%esi, 4(%rax,%rdx,4)
	movl	(%rcx), %esi
	movl	%esi, 8(%rax,%rdx,4)
	movl	(%rcx), %esi
	movl	%esi, 12(%rax,%rdx,4)
	addq	$4, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_126
	jmp	.LBB0_129
.LBB0_127:
	movd	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_128:                              # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rax,%rdx,4)
	movdqu	%xmm0, 16(%rax,%rdx,4)
	movdqu	%xmm0, 32(%rax,%rdx,4)
	movdqu	%xmm0, 48(%rax,%rdx,4)
	addq	$16, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_128
.LBB0_129:
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB0_132
# %bb.130:
	movq	96(%r13), %rdx
	movl	$-1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_131:                              # =>This Inner Loop Header: Depth=1
	addl	%esi, %eax
	movzbl	(%rdx,%rdi), %ebx
	movl	%eax, (%r8,%rbx,4)
	addq	$1, %rdi
	movslq	(%rcx), %rax
	addl	$-1, %esi
	cmpq	%rax, %rdi
	jl	.LBB0_131
.LBB0_132:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -288(%rbp)
	je	.LBB0_154
.LBB0_133:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 120(%r13)
	jne	.LBB0_136
# %bb.134:
	movq	112(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB0_136
# %bb.135:
	callq	free
	movq	$0, 112(%r13)
.LBB0_136:
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	je	.LBB0_138
# %bb.137:
	xorl	%ecx, %ecx
	jmp	.LBB0_146
.LBB0_138:
	movq	8(%r13), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB0_141
	.p2align	4, 0x90
.LBB0_139:                              #   in Loop: Header=BB0_141 Depth=1
	cmpq	%rcx, %rsi
	cmovgeq	%rsi, %rcx
	addq	$-1, %rsi
.LBB0_140:                              #   in Loop: Header=BB0_141 Depth=1
	addq	$8, %rdx
	cmpl	$134217728, %edi        # imm = 0x8000000
	je	.LBB0_144
.LBB0_141:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdi
	andl	$-134217728, %edi       # imm = 0xF8000000
	cmpl	$1342177280, %edi       # imm = 0x50000000
	je	.LBB0_139
# %bb.142:                              #   in Loop: Header=BB0_141 Depth=1
	cmpl	$1207959552, %edi       # imm = 0x48000000
	jne	.LBB0_140
# %bb.143:                              #   in Loop: Header=BB0_141 Depth=1
	addq	$1, %rsi
	jmp	.LBB0_140
.LBB0_144:
	testq	%rsi, %rsi
	je	.LBB0_146
# %bb.145:
	orb	$4, 72(%r13)
.LBB0_146:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 152(%r13)
	movl	$53829, (%r13)          # imm = 0xD245
	movq	136(%r13), %rcx
	movq	%rcx, 8(%rdi)
	movq	%r13, 24(%rdi)
	movl	$62053, (%rdi)          # imm = 0xF265
	testb	$4, 72(%r13)
	jne	.LBB0_149
# %bb.147:
	testl	%eax, %eax
	jne	.LBB0_152
# %bb.148:
	xorl	%ebx, %ebx
	jmp	.LBB0_153
.LBB0_149:
	testl	%eax, %eax
	jne	.LBB0_151
# %bb.150:
	movl	$15, -288(%rbp)
.LBB0_151:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_152:
	callq	regfree
	movl	-288(%rbp), %ebx
.LBB0_153:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_154:
	movslq	(%rcx), %rdi
	shlq	$2, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_170
# %bb.155:
	movq	%rax, %r15
	movslq	128(%r13), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 120(%r13)
	testq	%rax, %rax
	movq	-48(%rbp), %r10         # 8-byte Reload
	je	.LBB0_133
# %bb.156:
	movl	(%r10), %r9d
	testl	%r9d, %r9d
	jle	.LBB0_160
# %bb.157:                              # %.preheader5
	movl	$-1, %edx
	xorl	%edi, %edi
.LBB0_158:                              # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%r9,2), %ecx
	movl	%ecx, (%rax,%rdi,4)
	addq	$1, %rdi
	movl	(%r10), %r9d
	movslq	%r9d, %rsi
	addl	$-1, %edx
	cmpq	%rsi, %rdi
	jl	.LBB0_158
# %bb.159:
	testl	%r9d, %r9d
	jg	.LBB0_166
.LBB0_160:
	movl	%r9d, %edx
.LBB0_161:
	testl	%r9d, %r9d
	js	.LBB0_174
# %bb.162:
	leal	1(%r9), %edi
	movl	%edi, %r8d
	andl	$1, %r8d
	testl	%r9d, %r9d
	je	.LBB0_171
# %bb.163:
	subq	%r8, %rdi
	xorl	%esi, %esi
	movl	%r9d, %ebx
.LBB0_164:                              # =>This Inner Loop Header: Depth=1
	addl	%ebx, %edx
	movl	(%rax,%rsi,4), %ecx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	4(%rax,%rsi,4), %ecx
	movl	%edx, (%rax,%rsi,4)
	movl	(%r10), %edx
	addl	%ebx, %edx
	addl	$-1, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, 4(%rax,%rsi,4)
	addq	$2, %rsi
	movl	(%r10), %edx
	addl	$-2, %ebx
	cmpq	%rsi, %rdi
	jne	.LBB0_164
	jmp	.LBB0_172
.LBB0_165:                              #   in Loop: Header=BB0_166 Depth=1
	addl	$-1, %r9d
	cmpq	$1, %r8
	jle	.LBB0_161
.LBB0_166:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_168 Depth 2
	movq	%rsi, %r8
	addq	$-1, %rsi
	movl	%r9d, -4(%r15,%r8,4)
	movl	(%r10), %edx
	cmpl	%edx, %r9d
	jge	.LBB0_165
# %bb.167:                              #   in Loop: Header=BB0_166 Depth=1
	movq	96(%r13), %rbx
	.p2align	4, 0x90
.LBB0_168:                              #   Parent Loop BB0_166 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rsi), %ecx
	movslq	%r9d, %rdi
	cmpb	(%rbx,%rdi), %cl
	je	.LBB0_165
# %bb.169:                              #   in Loop: Header=BB0_168 Depth=2
	movl	(%rax,%rdi,4), %ecx
	subl	%r8d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, (%rax,%rdi,4)
	movl	(%r15,%rdi,4), %r9d
	movl	(%r10), %edx
	cmpl	%edx, %r9d
	jl	.LBB0_168
	jmp	.LBB0_165
.LBB0_117:
	movl	$0, 128(%r13)
	movl	$-1, 104(%r13)
	jmp	.LBB0_118
.LBB0_170:
	movq	$0, 120(%r13)
	jmp	.LBB0_133
.LBB0_171:
	xorl	%esi, %esi
.LBB0_172:
	testq	%r8, %r8
	je	.LBB0_174
# %bb.173:
	movl	(%rax,%rsi,4), %ecx
	movl	%r9d, %edi
	subl	%esi, %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	movl	%edi, (%rax,%rsi,4)
	movl	(%r10), %edx
.LBB0_174:
	cmpl	%edx, %r9d
	jge	.LBB0_184
# %bb.175:                              # %.preheader
	movl	%r9d, %r8d
	jmp	.LBB0_179
.LBB0_176:                              #   in Loop: Header=BB0_179 Depth=1
	movl	(%r10), %edx
	addl	$1, %esi
.LBB0_177:                              #   in Loop: Header=BB0_179 Depth=1
	movl	%esi, %r8d
.LBB0_178:                              #   in Loop: Header=BB0_179 Depth=1
	cmpl	%edx, %r8d
	jge	.LBB0_184
.LBB0_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_182 Depth 2
	movslq	%r9d, %rcx
	movl	(%r15,%rcx,4), %r9d
	cmpl	%r9d, %r8d
	jg	.LBB0_178
# %bb.180:                              #   in Loop: Header=BB0_179 Depth=1
	cmpl	%edx, %r8d
	jge	.LBB0_178
# %bb.181:                              #   in Loop: Header=BB0_179 Depth=1
	movslq	%r9d, %rbx
	movslq	%r8d, %rsi
	movl	%r9d, %edi
	subl	%r8d, %edi
	.p2align	4, 0x90
.LBB0_182:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %ecx
	addl	%edi, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, (%rax,%rsi,4)
	cmpq	%rbx, %rsi
	jge	.LBB0_176
# %bb.183:                              #   in Loop: Header=BB0_182 Depth=2
	addq	$1, %rsi
	movslq	(%r10), %rdx
	addl	$-1, %edi
	cmpq	%rdx, %rsi
	jl	.LBB0_182
	jmp	.LBB0_177
.LBB0_184:
	movq	%r15, %rdi
	callq	free
	jmp	.LBB0_133
.Lfunc_end0:
	.size	regcomp, .Lfunc_end0-regcomp
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_76
	.quad	.LBB0_86
	.quad	.LBB0_76
	.quad	.LBB0_76
	.quad	.LBB0_87
	.quad	.LBB0_90
	.quad	.LBB0_93
	.quad	.LBB0_93
	.quad	.LBB0_73
	.quad	.LBB0_93
	.quad	.LBB0_79
	.quad	.LBB0_76
	.quad	.LBB0_73
	.quad	.LBB0_73
	.quad	.LBB0_79
	.quad	.LBB0_93
	.quad	.LBB0_93
	.quad	.LBB0_76
	.quad	.LBB0_76
	.quad	.LBB0_76
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function doemit
	.type	doemit,@function
doemit:                                 # @doemit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpl	$0, 16(%rdi)
	jne	.LBB1_10
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	movq	40(%rdi), %rcx
	cmpq	%rax, %rcx
	jl	.LBB1_9
# %bb.2:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r12
	cmpq	%r12, %rax
	jge	.LBB1_8
# %bb.3:
	movq	24(%rbx), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_4
# %bb.7:
	movq	%rax, 24(%rbx)
	movq	%r12, 32(%rbx)
	jmp	.LBB1_8
.LBB1_4:
	cmpl	$0, 16(%rbx)
	jne	.LBB1_6
# %bb.5:
	movl	$12, 16(%rbx)
.LBB1_6:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rbx), %rcx
.LBB1_9:
	orq	%r15, %r14
	movq	24(%rbx), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%rbx)
	movq	%r14, (%rax,%rcx,8)
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	doemit, .Lfunc_end1-doemit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function p_ere
	.type	p_ere,@function
p_ere:                                  # @p_ere
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movq	%rdi, %r13
	leaq	40(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	16(%rdi), %r8
	leaq	32(%rdi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	24(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	40(%rdi), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	(%rdi), %rcx
	movq	8(%rdi), %r15
	cmpq	%r15, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jae	.LBB2_259
# %bb.1:
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm1       # xmm1 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movdqa	%xmm1, -96(%rbp)        # 16-byte Spill
	jmp	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	je	.LBB2_58
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13), %r15
	cmpq	%r15, %rcx
	jae	.LBB2_51
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_128 Depth 2
                                        #     Child Loop BB2_151 Depth 2
                                        #     Child Loop BB2_172 Depth 2
	movsbl	(%rcx), %eax
	cmpl	$124, %eax
	je	.LBB2_51
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	-136(%rbp), %eax        # 4-byte Folded Reload
	je	.LBB2_51
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %r14
	movq	%r14, (%r13)
	movsbl	(%rcx), %ebx
	movq	40(%r13), %r12
	leal	-36(%rbx), %eax
	cmpl	$88, %eax
	ja	.LBB2_47
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_9:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_103
# %bb.10:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
	jmp	.LBB2_103
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_72
# %bb.12:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB2_71
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_70
# %bb.14:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_67
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_70
.LBB2_16:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jb	.LBB2_20
# %bb.17:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$8, (%r8)
.LBB2_19:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r14d
.LBB2_20:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	56(%r13), %rax
	movq	136(%rax), %rbx
	leaq	1(%rbx), %r12
	movq	%r12, 136(%rax)
	cmpq	$9, %r12
	jg	.LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 72(%r13,%rbx,8)
.LBB2_22:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_84
# %bb.23:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB2_64
# %bb.24:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB2_83
.LBB2_25:                               #   in Loop: Header=BB2_5 Depth=1
	movq	56(%r13), %rax
	testb	$8, 40(%rax)
	jne	.LBB2_59
# %bb.26:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_104
# %bb.27:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB2_230
# %bb.28:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_229
# %bb.29:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_226
# %bb.30:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_229
.LBB2_31:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	callq	p_bracket
	jmp	.LBB2_48
.LBB2_32:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jb	.LBB2_36
# %bb.33:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$5, (%r8)
.LBB2_35:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%r14), %rax
	movq	%rax, (%r13)
	movsbl	(%r14), %esi
	movq	%r13, %rdi
	callq	ordinary
	movq	-48(%rbp), %r8          # 8-byte Reload
	xorl	%r14d, %r14d
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_106
.LBB2_37:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_78
# %bb.38:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB2_77
# %bb.39:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_76
# %bb.40:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_73
# %bb.41:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_76
.LBB2_42:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jae	.LBB2_47
# %bb.43:                               #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	(%rcx), %ecx
	testb	$4, 1(%rax,%rcx)
	je	.LBB2_47
# %bb.44:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rdx)
	jne	.LBB2_46
# %bb.45:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%rdx)
.LBB2_46:                               #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_47:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	ordinary
.LBB2_48:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_105
.LBB2_49:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_103
# %bb.50:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$14, (%r8)
	jmp	.LBB2_103
.LBB2_51:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%rsi, %rdx
	subq	-120(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB2_269
# %bb.52:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %rcx
	jae	.LBB2_263
# %bb.53:                               #   in Loop: Header=BB2_5 Depth=1
	cmpb	$124, (%rcx)
	jne	.LBB2_263
# %bb.54:                               #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rcx
	movq	%rcx, (%r13)
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	je	.LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	doinsert
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	40(%r13), %rsi
	movq	%rbx, %r10
	movq	%rbx, -128(%rbp)        # 8-byte Spill
.LBB2_56:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	je	.LBB2_60
# %bb.57:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_219
.LBB2_58:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
	jmp	.LBB2_3
.LBB2_59:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	-132(%rbp), %rax
	movq	%rax, (%r13)
	leaq	-129(%rbp), %rax
	movq	%rax, 8(%r13)
	movl	$6097502, -132(%rbp)    # imm = 0x5D0A5E
	movq	%r13, %rdi
	callq	p_bracket
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r14, (%r13)
	movq	%r15, 8(%r13)
	jmp	.LBB2_104
.LBB2_60:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rsi, %r12
	subq	-128(%rbp), %r12        # 8-byte Folded Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%r9d, %r9d
	cmpq	%rcx, %rsi
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jl	.LBB2_218
# %bb.61:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	leaq	(%rcx,%rax), %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	xorl	%r9d, %r9d
	cmpq	%r14, %rcx
	jge	.LBB2_217
# %bb.62:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r10, %rbx
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_214
# %bb.63:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %r9d
	movq	%rbx, %r10
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_217
.LBB2_64:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_82
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rdx, %r14
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_79
# %bb.66:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, 24(%r13)
	movq	%r14, 32(%r13)
	movq	(%r13), %r14
	movq	8(%r13), %r15
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_82
.LBB2_67:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_69
# %bb.68:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_69:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_70:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB2_71:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$536870912, (%rax,%rcx,8) # imm = 0x20000000
.LBB2_72:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
	jmp	.LBB2_105
.LBB2_73:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_75:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_76:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB2_77:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$402653184, (%rax,%rcx,8) # imm = 0x18000000
.LBB2_78:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rax
	orl	$1, 72(%rax)
	addl	$1, 76(%rax)
	movl	$1, %r14d
	jmp	.LBB2_106
.LBB2_79:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_81
# %bb.80:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_81:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r14d
.LBB2_82:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
.LBB2_83:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r12, %rcx
	orq	$1744830464, %rcx       # imm = 0x68000000
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, (%rdi)
	movq	%rcx, (%rdx,%rax,8)
.LBB2_84:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB2_86
# %bb.85:                               #   in Loop: Header=BB2_5 Depth=1
	cmpb	$41, (%r14)
	je	.LBB2_87
.LBB2_86:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movl	$41, %esi
	callq	p_ere
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB2_87:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	$9, %r12
	jg	.LBB2_89
# %bb.88:                               #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	%rax, 152(%r13,%rbx,8)
.LBB2_89:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_99
# %bb.90:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB2_98
# %bb.91:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB2_97
# %bb.92:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_94
# %bb.93:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_97
.LBB2_94:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_96
# %bb.95:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_96:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_97:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
.LBB2_98:                               #   in Loop: Header=BB2_5 Depth=1
	orq	$1879048192, %r12       # imm = 0x70000000
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rsi)
	movq	%r12, (%rcx,%rax,8)
.LBB2_99:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	cmpq	8(%r13), %rax
	movq	-144(%rbp), %r12        # 8-byte Reload
	jae	.LBB2_101
# %bb.100:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r13)
	xorl	%r14d, %r14d
	cmpb	$41, (%rax)
	je	.LBB2_106
.LBB2_101:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_103
# %bb.102:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$8, (%r8)
	.p2align	4, 0x90
.LBB2_103:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_104:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_105:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
.LBB2_106:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rax, %rcx
	jae	.LBB2_4
# %bb.107:                              #   in Loop: Header=BB2_5 Depth=1
	movb	(%rcx), %bl
	leal	-42(%rbx), %edx
	cmpb	$2, %dl
	jb	.LBB2_112
# %bb.108:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$63, %bl
	je	.LBB2_112
# %bb.109:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$123, %bl
	jne	.LBB2_4
# %bb.110:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_4
# %bb.111:                              #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	je	.LBB2_4
	.p2align	4, 0x90
.LBB2_112:                              #   in Loop: Header=BB2_5 Depth=1
	movsbl	%bl, %eax
	addq	$1, %rcx
	movq	%rcx, (%r13)
	testl	%r14d, %r14d
	je	.LBB2_116
# %bb.113:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_115
# %bb.114:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
.LBB2_115:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_116:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$62, %eax
	jg	.LBB2_124
# %bb.117:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$42, %eax
	je	.LBB2_132
# %bb.118:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$43, %eax
	jne	.LBB2_253
# %bb.119:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rdx
	subq	%r12, %rdx
	addq	$1, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	cmpl	$0, 16(%r13)
	jne	.LBB2_187
# %bb.120:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jl	.LBB2_186
# %bb.121:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB2_185
# %bb.122:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%rdx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	movq	%rdx, %r15
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_182
# %bb.123:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	%r15, %rdx
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_185
.LBB2_124:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$63, %eax
	je	.LBB2_137
# %bb.125:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$123, %eax
	jne	.LBB2_253
# %bb.126:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
	cmpq	8(%r13), %rcx
	jae	.LBB2_164
# %bb.127:                              # %.preheader2
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_128:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	cmpl	$255, %r14d
	jg	.LBB2_143
# %bb.129:                              #   in Loop: Header=BB2_128 Depth=2
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB2_143
# %bb.130:                              #   in Loop: Header=BB2_128 Depth=2
	leal	(%r14,%r14,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r14d
	addl	$-48, %r14d
	addl	$1, %ebx
	cmpq	8(%r13), %rax
	jb	.LBB2_128
# %bb.131:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
	jmp	.LBB2_144
.LBB2_132:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
	subq	%r12, %rbx
	movq	40(%r13), %rdx
	addq	%rbx, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	jne	.LBB2_193
# %bb.133:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jl	.LBB2_192
# %bb.134:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r15
	cmpq	%r15, %rcx
	jge	.LBB2_191
# %bb.135:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%rdx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_188
# %bb.136:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	jmp	.LBB2_191
.LBB2_137:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rdx
	subq	%r12, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	cmpl	$0, 16(%r13)
	je	.LBB2_139
# %bb.138:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_203
.LBB2_139:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jl	.LBB2_202
# %bb.140:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	xorl	%ecx, %ecx
	cmpq	%r14, %rdx
	jge	.LBB2_201
# %bb.141:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_198
# %bb.142:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_201
.LBB2_143:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rcx, %rax
.LBB2_144:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	cmpl	$255, %r14d
	jg	.LBB2_164
# %bb.145:                              #   in Loop: Header=BB2_5 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_164
# %bb.146:                              #   in Loop: Header=BB2_5 Depth=1
	cmpq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_167
# %bb.147:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$44, (%rax)
	jne	.LBB2_167
# %bb.148:                              #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	movq	%rax, (%r13)
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movl	$256, %r15d             # imm = 0x100
	testb	$4, 1(%rax,%rdx)
	je	.LBB2_168
# %bb.149:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r15d, %r15d
	cmpq	8(%r13), %rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	jae	.LBB2_157
# %bb.150:                              # %.preheader1
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_151:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	cmpl	$255, %r15d
	jg	.LBB2_155
# %bb.152:                              #   in Loop: Header=BB2_151 Depth=2
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB2_155
# %bb.153:                              #   in Loop: Header=BB2_151 Depth=2
	leal	(%r15,%r15,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %r15d
	addl	$-48, %r15d
	addl	$1, %ebx
	cmpq	8(%r13), %rdx
	jb	.LBB2_151
# %bb.154:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
.LBB2_155:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	cmpl	$255, %r15d
	jg	.LBB2_157
# %bb.156:                              #   in Loop: Header=BB2_5 Depth=1
	testl	%ebx, %ebx
	jne	.LBB2_160
.LBB2_157:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_159
# %bb.158:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%rax)
.LBB2_159:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_160:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r14d
	jle	.LBB2_168
# %bb.161:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_163
# %bb.162:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%rax)
.LBB2_163:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_168
.LBB2_164:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_166
# %bb.165:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%r8)
.LBB2_166:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_167:                              #   in Loop: Header=BB2_5 Depth=1
	movl	%r14d, %r15d
.LBB2_168:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	repeat
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rcx, %rax
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jae	.LBB2_176
# %bb.169:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$125, (%rax)
	jne	.LBB2_171
# %bb.170:                              #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	movq	%rax, (%r13)
	jmp	.LBB2_253
.LBB2_171:                              # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	.p2align	4, 0x90
.LBB2_172:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13)
	cmpq	%rcx, %rax
	jae	.LBB2_176
# %bb.173:                              #   in Loop: Header=BB2_172 Depth=2
	cmpb	$125, (%rax)
	leaq	1(%rax), %rax
	jne	.LBB2_172
# %bb.174:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_179
# %bb.175:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%r8)
	jmp	.LBB2_179
.LBB2_176:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_178
# %bb.177:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$9, (%r8)
.LBB2_178:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_179:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	jmp	.LBB2_252
.LBB2_182:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_184
# %bb.183:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%rax)
.LBB2_184:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB2_185:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB2_186:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1342177280, %rbx       # imm = 0x50000000
	movq	(%rdx), %rcx
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%rbx, (%rcx,%rax,8)
.LBB2_187:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_253
.LBB2_188:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	jne	.LBB2_190
# %bb.189:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%rax)
.LBB2_190:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB2_191:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB2_192:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	(%rdx), %rcx
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%r14, (%rcx,%rax,8)
	movq	(%rsi), %rax
.LBB2_193:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	doinsert
	cmpl	$0, 16(%r13)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_252
# %bb.194:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB2_213
# %bb.195:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB2_212
# %bb.196:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_209
# %bb.197:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_212
.LBB2_198:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	testl	%ecx, %ecx
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_200
# %bb.199:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
	movl	$12, %ecx
.LBB2_200:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_201:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB2_202:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$2281701376, %edx       # imm = 0x88000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	orq	%rdx, %rbx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	1(%rax), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB2_204
.LBB2_203:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_252
.LBB2_204:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	subq	%r12, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	cmpq	%rdx, %rsi
	jge	.LBB2_206
# %bb.205:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rsi), %rcx
	movq	%rcx, (%rdi)
	movl	$2281701376, %ecx       # imm = 0x88000000
	movq	%rcx, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_237
.LBB2_206:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rdx), %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	addq	$1, %rsi
	sarq	%rsi
	leaq	(%rsi,%rsi,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB2_235
# %bb.207:                              #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_232
# %bb.208:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_235
.LBB2_209:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_211
# %bb.210:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_211:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_212:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB2_213:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1610612736, %rbx       # imm = 0x60000000
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%rbx, (%rcx,%rax,8)
	jmp	.LBB2_252
.LBB2_214:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %r9d
	testl	%r9d, %r9d
	jne	.LBB2_216
# %bb.215:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
	movl	$12, %r9d
.LBB2_216:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r10
.LBB2_217:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
.LBB2_218:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$2281701376, %eax       # imm = 0x88000000
	leaq	-134217728(%rax), %rcx
	orq	%rcx, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	leaq	1(%rsi), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	%r12, (%rcx,%rsi,8)
	movq	(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB2_221
.LBB2_219:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -112(%rbp)        # 8-byte Spill
.LBB2_220:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	(%r13), %rcx
	movq	8(%r13), %r15
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	cmpq	%r15, %rcx
	jb	.LBB2_5
	jmp	.LBB2_260
.LBB2_221:                              #   in Loop: Header=BB2_5 Depth=1
	subq	%r10, %rsi
	movq	(%rax), %rax
	movq	(%rax,%r10,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%rsi, %rcx
	movq	%rcx, (%rax,%r10,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rbx
	jge	.LBB2_223
# %bb.222:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_246
.LBB2_223:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB2_245
# %bb.224:                              #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_242
# %bb.225:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_245
.LBB2_226:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_228
# %bb.227:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_228:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_229:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB2_230:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	jmp	.LBB2_104
.LBB2_232:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	testl	%ecx, %ecx
	jne	.LBB2_234
# %bb.233:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
	movl	$12, %ecx
.LBB2_234:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB2_235:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rdi)
	movl	$2281701376, %esi       # imm = 0x88000000
	movq	%rsi, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB2_237
# %bb.236:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_252
.LBB2_237:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_239
# %bb.238:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_251
.LBB2_239:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB2_250
# %bb.240:                              #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_247
# %bb.241:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_250
.LBB2_242:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_244
# %bb.243:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_244:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB2_245:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
.LBB2_246:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB2_220
.LBB2_247:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_249
# %bb.248:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_249:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB2_250:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
.LBB2_251:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movl	$2281701376, %edx       # imm = 0x88000000
	addq	$134217730, %rdx        # imm = 0x8000002
	movq	%rdx, (%rax,%rcx,8)
.LBB2_252:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_253:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rax, %rcx
	jae	.LBB2_4
# %bb.254:                              #   in Loop: Header=BB2_5 Depth=1
	movb	(%rcx), %dl
	leal	-42(%rdx), %esi
	cmpb	$2, %sil
	jb	.LBB2_2
# %bb.255:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$63, %dl
	je	.LBB2_2
# %bb.256:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$123, %dl
	jne	.LBB2_4
# %bb.257:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_4
# %bb.258:                              #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movdqa	-96(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB2_2
	jmp	.LBB2_4
.LBB2_259:
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB2_260:
	cmpl	$0, (%r8)
	jne	.LBB2_262
.LBB2_261:
	movl	$14, (%r8)
.LBB2_262:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_264
.LBB2_263:
	movq	%rsi, -120(%rbp)        # 8-byte Spill
.LBB2_264:
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	-100(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB2_279
# %bb.265:
	cmpl	$0, (%r8)
	je	.LBB2_267
# %bb.266:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_278
.LBB2_267:
	movq	-120(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%rsi, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, %rbx
	subq	-128(%rbp), %rbx        # 8-byte Folded Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB2_270
# %bb.268:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_277
.LBB2_269:
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	cmpl	$0, (%r8)
	jne	.LBB2_262
	jmp	.LBB2_261
.LBB2_270:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	cmpq	%r14, %rdx
	jge	.LBB2_276
# %bb.271:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_273
# %bb.272:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
	jmp	.LBB2_276
.LBB2_273:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB2_275
# %bb.274:
	movl	$12, (%rax)
.LBB2_275:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB2_276:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rcx
.LBB2_277:
	movl	$2281701376, %edx       # imm = 0x88000000
	addq	$134217728, %rdx        # imm = 0x8000000
	orq	%rdx, %rbx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, (%rax,%rcx,8)
.LBB2_278:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_279:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	p_ere, .Lfunc_end2-p_ere
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_11
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_16
	.quad	.LBB2_101
	.quad	.LBB2_9
	.quad	.LBB2_9
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_25
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_9
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_47
	.quad	.LBB2_37
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_47
	.quad	.LBB2_42
	.quad	.LBB2_49
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_bre
	.type	p_bre,@function
p_bre:                                  # @p_bre
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%esi, %r13d
	movq	%rdi, %r15
	movq	40(%rdi), %rdi
	movq	(%r15), %rax
	movq	8(%r15), %r14
	cmpq	%r14, %rax
	jae	.LBB3_15
# %bb.1:
	cmpb	$94, (%rax)
	jne	.LBB3_15
# %bb.2:
	addq	$1, %rax
	movq	%rax, (%r15)
	cmpl	$0, 16(%r15)
	jne	.LBB3_14
# %bb.3:
	movq	32(%r15), %rdx
	cmpq	%rdx, %rdi
	jge	.LBB3_5
# %bb.4:
	movq	%rdi, %rcx
	jmp	.LBB3_13
.LBB3_5:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB3_12
# %bb.6:
	movq	%rdi, %r12
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_8
# %bb.7:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	(%r15), %rax
	movq	8(%r15), %r14
	jmp	.LBB3_11
.LBB3_8:
	cmpl	$0, 16(%r15)
	jne	.LBB3_10
# %bb.9:
	movl	$12, 16(%r15)
.LBB3_10:
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
.LBB3_11:
	movq	%r12, %rdi
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB3_13:
	movq	24(%r15), %rdx
	leaq	1(%rcx), %rsi
	movq	%rsi, 40(%r15)
	movq	$402653184, (%rdx,%rcx,8) # imm = 0x18000000
.LBB3_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rcx
	orl	$1, 72(%rcx)
	addl	$1, 76(%rcx)
.LBB3_15:
	movq	%r14, %rcx
	cmpq	%r14, %rax
	jae	.LBB3_224
# %bb.16:
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	leaq	16(%r15), %r12
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$nuls, %edi
	movq	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -96(%rbp)        # 16-byte Spill
	movl	%r13d, -52(%rbp)        # 4-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_23
.LBB3_17:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
.LBB3_18:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB3_19:                               #   in Loop: Header=BB3_23 Depth=1
	orq	$1610612736, %r13       # imm = 0x60000000
	movq	24(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	%r13, (%rcx,%rax,8)
.LBB3_20:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %r14
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB3_21:                               #   in Loop: Header=BB3_23 Depth=1
	xorl	%esi, %esi
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movq	%r14, %rcx
	cmpq	%r14, %rax
	jae	.LBB3_211
.LBB3_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_140 Depth 2
                                        #     Child Loop BB3_198 Depth 2
                                        #     Child Loop BB3_167 Depth 2
	leaq	1(%rax), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB3_26
# %bb.24:                               #   in Loop: Header=BB3_23 Depth=1
	movsbl	(%rax), %edi
	cmpl	%r13d, %edi
	jne	.LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_23 Depth=1
	movsbl	(%rbx), %edi
	cmpl	-116(%rbp), %edi        # 4-byte Folded Reload
	je	.LBB3_211
.LBB3_26:                               #   in Loop: Header=BB3_23 Depth=1
	movq	40(%r15), %r8
	movq	%rbx, (%r15)
	movsbl	(%rax), %r9d
	cmpl	$92, %r9d
	jne	.LBB3_32
# %bb.27:                               #   in Loop: Header=BB3_23 Depth=1
	cmpq	%rcx, %rbx
	jb	.LBB3_31
# %bb.28:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_30
# %bb.29:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$5, (%r12)
.LBB3_30:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %ecx
	movl	$nuls, %ebx
.LBB3_31:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rbx), %rax
	movq	%rax, (%r15)
	movsbl	(%rbx), %r9d
	orl	$256, %r9d              # imm = 0x100
	movq	%rax, %rbx
.LBB3_32:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$295, %r9d              # imm = 0x127
	jle	.LBB3_41
# %bb.33:                               #   in Loop: Header=BB3_23 Depth=1
	leal	-296(%r9), %eax
	cmpl	$85, %eax
	ja	.LBB3_62
# %bb.34:                               #   in Loop: Header=BB3_23 Depth=1
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_35:                               #   in Loop: Header=BB3_23 Depth=1
	movl	%r9d, %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movslq	%eax, %r14
	movq	-240(%r15,%r14,8), %rbx
	movl	16(%r15), %eax
	testq	%rbx, %rbx
	je	.LBB3_45
# %bb.36:                               #   in Loop: Header=BB3_23 Depth=1
	addq	$-48, %r14
	testl	%eax, %eax
	jne	.LBB3_77
# %bb.37:                               #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %rax
	movq	%r8, %rcx
	cmpq	%rax, %r8
	jl	.LBB3_76
# %bb.38:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_75
# %bb.39:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movl	%r13d, %r12d
	movq	%r8, %r13
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_71
# %bb.40:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_74
	.p2align	4, 0x90
.LBB3_41:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$42, %r9d
	je	.LBB3_58
# %bb.42:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$46, %r9d
	je	.LBB3_64
# %bb.43:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$91, %r9d
	jne	.LBB3_62
# %bb.44:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r15, %rdi
	movq	%r8, %r14
	movq	%r9, %rbx
	callq	p_bracket
	jmp	.LBB3_63
.LBB3_45:                               #   in Loop: Header=BB3_23 Depth=1
	testl	%eax, %eax
	jne	.LBB3_47
# %bb.46:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$6, (%r12)
.LBB3_47:                               #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	jmp	.LBB3_97
.LBB3_49:                               #   in Loop: Header=BB3_23 Depth=1
	movq	56(%r15), %rax
	movq	136(%rax), %r11
	leaq	1(%r11), %r10
	movq	%r10, 136(%rax)
	cmpq	$9, %r10
	jg	.LBB3_51
# %bb.50:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r8, 72(%r15,%r11,8)
.LBB3_51:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_104
# %bb.52:                               #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %rdx
	movq	40(%r15), %rax
	cmpq	%rdx, %rax
	jl	.LBB3_103
# %bb.53:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r12
	cmpq	%r12, %rdx
	jge	.LBB3_102
# %bb.54:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movq	%r10, %r14
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_98
# %bb.55:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r12, 32(%r15)
	movq	(%r15), %rbx
	movq	8(%r15), %rcx
	jmp	.LBB3_101
.LBB3_56:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_129
# %bb.57:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$13, (%r12)
	jmp	.LBB3_129
.LBB3_58:                               #   in Loop: Header=BB3_23 Depth=1
	testl	%edx, %edx
	jne	.LBB3_62
# %bb.59:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_61
# %bb.60:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$13, (%r12)
.LBB3_61:                               #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_62:                               #   in Loop: Header=BB3_23 Depth=1
	movsbl	%r9b, %esi
	movq	%r15, %rdi
	movq	%r8, %r14
	movq	%r9, %rbx
	callq	ordinary
.LBB3_63:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rbx, %r9
	movq	%r14, %r8
	jmp	.LBB3_131
.LBB3_64:                               #   in Loop: Header=BB3_23 Depth=1
	movq	56(%r15), %rax
	testb	$8, 40(%rax)
	jne	.LBB3_70
# %bb.65:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_130
# %bb.66:                               #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %rax
	movq	%r8, %rcx
	cmpq	%rax, %r8
	jl	.LBB3_195
# %bb.67:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_194
# %bb.68:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, %r14
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_190
# %bb.69:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_193
.LBB3_70:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	-100(%rbp), %rax
	movq	%rax, (%r15)
	leaq	-97(%rbp), %rax
	movq	%rax, 8(%r15)
	movl	$6097502, -100(%rbp)    # imm = 0x5D0A5E
	movq	%r15, %rdi
	movq	%r8, %r13
	movq	%r9, %r12
	callq	p_bracket
	movq	%r12, %r9
	movq	%r13, %r8
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	jmp	.LBB3_130
.LBB3_71:                               #   in Loop: Header=BB3_23 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_73
# %bb.72:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%rax)
.LBB3_73:                               #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_74:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r13, %r8
	movl	%r12d, %r13d
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB3_75:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB3_76:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r14, %rax
	orq	$939524096, %rax        # imm = 0x38000000
	movq	24(%r15), %rdx
	leaq	1(%rcx), %rsi
	movq	%rsi, 40(%r15)
	movq	%rax, (%rdx,%rcx,8)
	movq	144(%r15,%r14,8), %rbx
.LBB3_77:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15,%r14,8), %r12
	addq	$1, %r12
	subq	%r12, %rbx
	je	.LBB3_86
# %bb.78:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	testq	%rbx, %rbx
	jle	.LBB3_85
# %bb.79:                               #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %r13
	addq	%rbx, %r13
	movq	24(%r15), %rdi
	leaq	(,%r13,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_81
# %bb.80:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r13, 32(%r15)
	jmp	.LBB3_84
.LBB3_81:                               #   in Loop: Header=BB3_23 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_83
# %bb.82:                               #   in Loop: Header=BB3_23 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
.LBB3_83:                               #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_84:                               #   in Loop: Header=BB3_23 Depth=1
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB3_85:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r12,8), %rsi
	leaq	(,%rbx,8), %rdx
	callq	memcpy
	addq	%rbx, 40(%r15)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB3_86:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r12         # 8-byte Reload
	cmpl	$0, (%r12)
	jne	.LBB3_97
# %bb.87:                               #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	cmpq	%rax, %rcx
	jl	.LBB3_96
# %bb.88:                               #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_95
# %bb.89:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, %r13
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_94
.LBB3_91:                               #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_93
# %bb.92:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%r12)
.LBB3_93:                               #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_94:                               #   in Loop: Header=BB3_23 Depth=1
	movq	%r13, %r8
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB3_95:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB3_96:                               #   in Loop: Header=BB3_23 Depth=1
	orq	$1073741824, %r14       # imm = 0x40000000
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rax,%rcx,8)
.LBB3_97:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rax
	movl	$1, 144(%rax)
	jmp	.LBB3_131
.LBB3_98:                               #   in Loop: Header=BB3_23 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_100
# %bb.99:                               #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%rax)
.LBB3_100:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %ebx
.LBB3_101:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r14, %r10
	movq	-128(%rbp), %r11        # 8-byte Reload
.LBB3_102:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB3_103:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%r10, %rdx
	orq	$1744830464, %rdx       # imm = 0x68000000
	movq	24(%r15), %rsi
	leaq	1(%rax), %rdi
	movq	%rdi, 40(%r15)
	movq	%rdx, (%rsi,%rax,8)
.LBB3_104:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB3_109
# %bb.105:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rbx), %rax
	cmpq	%rcx, %rax
	jae	.LBB3_108
# %bb.106:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$92, (%rbx)
	jne	.LBB3_108
# %bb.107:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$41, (%rax)
	je	.LBB3_109
.LBB3_108:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%r15, %rdi
	movl	$92, %esi
	movl	$41, %edx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%r9, %r14
	movq	%r10, %r13
	movq	%r11, %rbx
	callq	p_bre
	movq	%rbx, %r11
	movq	%r13, %r10
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	%r14, %r9
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB3_109:                              #   in Loop: Header=BB3_23 Depth=1
	cmpq	$9, %r10
	jg	.LBB3_111
# %bb.110:                              #   in Loop: Header=BB3_23 Depth=1
	movq	40(%r15), %rax
	movq	%rax, 152(%r15,%r11,8)
.LBB3_111:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_122
# %bb.112:                              #   in Loop: Header=BB3_23 Depth=1
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	cmpq	%rax, %rcx
	jl	.LBB3_121
# %bb.113:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_120
# %bb.114:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%r10, %r14
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_116
# %bb.115:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_119
.LBB3_116:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_118
# %bb.117:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%r12)
.LBB3_118:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_119:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r14, %r10
.LBB3_120:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB3_121:                              #   in Loop: Header=BB3_23 Depth=1
	orq	$1879048192, %r10       # imm = 0x70000000
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r10, (%rax,%rcx,8)
.LBB3_122:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	cmpq	%rdx, %rax
	jae	.LBB3_127
# %bb.123:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB3_127
# %bb.124:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$92, (%rax)
	jne	.LBB3_127
# %bb.125:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$41, (%rcx)
	jne	.LBB3_127
# %bb.126:                              #   in Loop: Header=BB3_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	jmp	.LBB3_131
.LBB3_127:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$8, (%r12)
.LBB3_129:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB3_130:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_131:                              #   in Loop: Header=BB3_23 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %r14
	cmpq	%r14, %rax
	jae	.LBB3_144
# %bb.132:                              #   in Loop: Header=BB3_23 Depth=1
	movb	(%rax), %dl
	leaq	1(%rax), %rcx
	cmpb	$42, %dl
	jne	.LBB3_135
# %bb.133:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rcx, (%r15)
	movl	$1, %r13d
	subq	%r8, %r13
	movq	40(%r15), %rdx
	addq	%r13, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r15, %rdi
	movq	%r8, %rcx
	movq	%r8, %rbx
	callq	doinsert
	movq	40(%r15), %rax
	cmpl	$0, 16(%r15)
	je	.LBB3_145
# %bb.134:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rbx, %rcx
	jmp	.LBB3_183
	.p2align	4, 0x90
.LBB3_135:                              #   in Loop: Header=BB3_23 Depth=1
	cmpq	%r14, %rcx
	jae	.LBB3_144
# %bb.136:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$92, %dl
	jne	.LBB3_144
# %bb.137:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$123, (%rcx)
	jne	.LBB3_144
# %bb.138:                              #   in Loop: Header=BB3_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	xorl	%r13d, %r13d
	cmpq	%r14, %rax
	jae	.LBB3_157
# %bb.139:                              # %.preheader2
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	%r8, -48(%rbp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_140:                              #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	cmpl	$255, %r13d
	jg	.LBB3_149
# %bb.141:                              #   in Loop: Header=BB3_140 Depth=2
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB3_149
# %bb.142:                              #   in Loop: Header=BB3_140 Depth=2
	leal	(%r13,%r13,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r13d
	addl	$-48, %r13d
	addl	$1, %ebx
	cmpq	8(%r15), %rax
	jb	.LBB3_140
# %bb.143:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$1, %ebx
	jmp	.LBB3_150
	.p2align	4, 0x90
.LBB3_144:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$1, %esi
	cmpl	$36, %r9d
	jne	.LBB3_21
	jmp	.LBB3_22
.LBB3_145:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, %r14
	subq	%rbx, %r14
	movq	32(%r15), %rdx
	cmpq	%rdx, %rax
	movq	%rbx, %rcx
	jl	.LBB3_182
# %bb.146:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB3_181
# %bb.147:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_177
# %bb.148:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_180
.LBB3_149:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rcx, %rax
.LBB3_150:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$255, %r13d
	jg	.LBB3_157
# %bb.151:                              #   in Loop: Header=BB3_23 Depth=1
	testl	%ebx, %ebx
	je	.LBB3_157
# %bb.152:                              #   in Loop: Header=BB3_23 Depth=1
	movq	8(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB3_160
# %bb.153:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$44, (%rax)
	jne	.LBB3_160
# %bb.154:                              #   in Loop: Header=BB3_23 Depth=1
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$256, %ebx              # imm = 0x100
	cmpq	%rcx, %rax
	jae	.LBB3_161
# %bb.155:                              #   in Loop: Header=BB3_23 Depth=1
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB3_196
# %bb.156:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB3_161
.LBB3_157:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_159
# %bb.158:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$10, (%r12)
.LBB3_159:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_160:                              #   in Loop: Header=BB3_23 Depth=1
	movl	%r13d, %ebx
.LBB3_161:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	callq	repeat
	movq	(%r15), %rax
	movq	8(%r15), %r14
	cmpq	%r14, %rax
	movl	-52(%rbp), %r13d        # 4-byte Reload
	jae	.LBB3_173
# %bb.162:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%r14, %rcx
	jae	.LBB3_167
# %bb.163:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$92, (%rax)
	jne	.LBB3_167
# %bb.164:                              #   in Loop: Header=BB3_23 Depth=1
	cmpb	$125, (%rcx)
	jne	.LBB3_167
# %bb.165:                              #   in Loop: Header=BB3_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	jmp	.LBB3_21
	.p2align	4, 0x90
.LBB3_166:                              #   in Loop: Header=BB3_167 Depth=2
	movq	%rcx, (%r15)
	addq	$1, %rcx
.LBB3_167:                              #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rcx
	jae	.LBB3_172
# %bb.168:                              #   in Loop: Header=BB3_167 Depth=2
	cmpb	$92, -1(%rcx)
	jne	.LBB3_166
# %bb.169:                              #   in Loop: Header=BB3_167 Depth=2
	cmpb	$125, (%rcx)
	jne	.LBB3_166
# %bb.170:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_176
# %bb.171:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$10, (%r12)
	jmp	.LBB3_176
.LBB3_172:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%rcx, (%r15)
.LBB3_173:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_175
# %bb.174:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$9, (%r12)
.LBB3_175:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_176:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
	jmp	.LBB3_21
.LBB3_177:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_179
# %bb.178:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%rax)
.LBB3_179:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_180:                              #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB3_181:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB3_182:                              #   in Loop: Header=BB3_23 Depth=1
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	24(%r15), %rsi
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rsi,%rax,8)
	movq	40(%r15), %rax
.LBB3_183:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r13
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%rcx, %rbx
	callq	doinsert
	cmpl	$0, 16(%r15)
	jne	.LBB3_20
# %bb.184:                              #   in Loop: Header=BB3_23 Depth=1
	movq	40(%r15), %rax
	movq	%rax, %r13
	subq	%rbx, %r13
	movq	32(%r15), %rcx
	cmpq	%rcx, %rax
	jl	.LBB3_19
# %bb.185:                              #   in Loop: Header=BB3_23 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB3_18
# %bb.186:                              #   in Loop: Header=BB3_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	jne	.LBB3_17
# %bb.187:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_189
# %bb.188:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%r12)
.LBB3_189:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_18
.LBB3_190:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_192
# %bb.191:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$12, (%r12)
.LBB3_192:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_193:                              #   in Loop: Header=BB3_23 Depth=1
	movq	%r14, %r8
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB3_194:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB3_195:                              #   in Loop: Header=BB3_23 Depth=1
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	jmp	.LBB3_130
.LBB3_196:                              #   in Loop: Header=BB3_23 Depth=1
	xorl	%ebx, %ebx
	cmpq	8(%r15), %rcx
	jae	.LBB3_204
# %bb.197:                              # %.preheader1
                                        #   in Loop: Header=BB3_23 Depth=1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB3_198:                              #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	cmpl	$255, %ebx
	jg	.LBB3_202
# %bb.199:                              #   in Loop: Header=BB3_198 Depth=2
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB3_202
# %bb.200:                              #   in Loop: Header=BB3_198 Depth=2
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	addl	$1, %r14d
	cmpq	8(%r15), %rdx
	jb	.LBB3_198
# %bb.201:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$1, %r14d
.LBB3_202:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$255, %ebx
	jg	.LBB3_204
# %bb.203:                              #   in Loop: Header=BB3_23 Depth=1
	testl	%r14d, %r14d
	jne	.LBB3_207
.LBB3_204:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_206
# %bb.205:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$10, (%r12)
.LBB3_206:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_207:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	movq	-48(%rbp), %r8          # 8-byte Reload
	jle	.LBB3_161
# %bb.208:                              #   in Loop: Header=BB3_23 Depth=1
	cmpl	$0, (%r12)
	jne	.LBB3_210
# %bb.209:                              #   in Loop: Header=BB3_23 Depth=1
	movl	$10, (%r12)
.LBB3_210:                              #   in Loop: Header=BB3_23 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_161
.LBB3_211:
	testl	%esi, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	je	.LBB3_224
# %bb.212:
	movq	40(%r15), %rdx
	leaq	-1(%rdx), %rax
	movq	%rax, 40(%r15)
	cmpl	$0, 16(%r15)
	jne	.LBB3_223
# %bb.213:
	movq	32(%r15), %rcx
	cmpq	%rcx, %rdx
	jle	.LBB3_222
# %bb.214:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB3_221
# %bb.215:
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_217
# %bb.216:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_220
.LBB3_217:
	cmpl	$0, 16(%r15)
	jne	.LBB3_219
# %bb.218:
	movl	$12, 16(%r15)
.LBB3_219:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_220:
	movq	-112(%rbp), %rdi        # 8-byte Reload
.LBB3_221:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB3_222:
	movq	24(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	$536870912, (%rcx,%rax,8) # imm = 0x20000000
.LBB3_223:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
.LBB3_224:
	cmpq	%rdi, 40(%r15)
	jne	.LBB3_228
# %bb.225:
	cmpl	$0, 16(%r15)
	jne	.LBB3_227
# %bb.226:
	movl	$14, 16(%r15)
.LBB3_227:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_228:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	p_bre, .Lfunc_end3-p_bre
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_49
	.quad	.LBB3_127
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_62
	.quad	.LBB3_56
	.quad	.LBB3_62
	.quad	.LBB3_127
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function doinsert
	.type	doinsert,@function
doinsert:                               # @doinsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpl	$0, 16(%rdi)
	jne	.LBB4_38
# %bb.1:
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	40(%rdi), %r15
	callq	doemit
	movq	24(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	(%rax,%r15,8), %r15
	cmpq	%r14, %rcx
	jl	.LBB4_3
# %bb.2:
	addq	$1, %rcx
	movq	%rcx, 72(%rbx)
.LBB4_3:
	movq	152(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_5
# %bb.4:
	addq	$1, %rcx
	movq	%rcx, 152(%rbx)
.LBB4_5:
	movq	80(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_7
# %bb.6:
	addq	$1, %rcx
	movq	%rcx, 80(%rbx)
.LBB4_7:
	movq	160(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_9
# %bb.8:
	addq	$1, %rcx
	movq	%rcx, 160(%rbx)
.LBB4_9:
	movq	88(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_11
# %bb.10:
	addq	$1, %rcx
	movq	%rcx, 88(%rbx)
.LBB4_11:
	movq	168(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_13
# %bb.12:
	addq	$1, %rcx
	movq	%rcx, 168(%rbx)
.LBB4_13:
	movq	96(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_15
# %bb.14:
	addq	$1, %rcx
	movq	%rcx, 96(%rbx)
.LBB4_15:
	movq	176(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_17
# %bb.16:
	addq	$1, %rcx
	movq	%rcx, 176(%rbx)
.LBB4_17:
	movq	104(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_19
# %bb.18:
	addq	$1, %rcx
	movq	%rcx, 104(%rbx)
.LBB4_19:
	movq	184(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_21
# %bb.20:
	addq	$1, %rcx
	movq	%rcx, 184(%rbx)
.LBB4_21:
	movq	112(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_23
# %bb.22:
	addq	$1, %rcx
	movq	%rcx, 112(%rbx)
.LBB4_23:
	movq	192(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_25
# %bb.24:
	addq	$1, %rcx
	movq	%rcx, 192(%rbx)
.LBB4_25:
	movq	120(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_27
# %bb.26:
	addq	$1, %rcx
	movq	%rcx, 120(%rbx)
.LBB4_27:
	movq	200(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_29
# %bb.28:
	addq	$1, %rcx
	movq	%rcx, 200(%rbx)
.LBB4_29:
	movq	128(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_31
# %bb.30:
	addq	$1, %rcx
	movq	%rcx, 128(%rbx)
.LBB4_31:
	movq	208(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_33
# %bb.32:
	addq	$1, %rcx
	movq	%rcx, 208(%rbx)
.LBB4_33:
	movq	136(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_35
# %bb.34:
	addq	$1, %rcx
	movq	%rcx, 136(%rbx)
.LBB4_35:
	movq	216(%rbx), %rcx
	cmpq	%r14, %rcx
	jl	.LBB4_37
# %bb.36:
	addq	$1, %rcx
	movq	%rcx, 216(%rbx)
.LBB4_37:
	leaq	(%rax,%r14,8), %rdi
	addq	$8, %rdi
	leaq	(%rax,%r14,8), %rsi
	movq	%r14, %rdx
	notq	%rdx
	addq	40(%rbx), %rdx
	shlq	$3, %rdx
	callq	memmove
	movq	24(%rbx), %rax
	movq	%r15, (%rax,%r14,8)
.LBB4_38:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	doinsert, .Lfunc_end4-doinsert
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function p_bracket
.LCPI5_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.p2align	4, 0x90
	.type	p_bracket,@function
p_bracket:                              # @p_bracket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r14
	movq	56(%rdi), %rdx
	movl	20(%rdx), %r12d
	leal	1(%r12), %eax
	movl	%eax, 20(%rdx)
	movslq	16(%rdx), %r13
	movslq	48(%rdi), %rsi
	cmpl	%esi, %r12d
	jl	.LBB5_19
# %bb.1:
	addq	$8, %rsi
	movl	%esi, 48(%r14)
	movq	%rsi, %r15
	shrq	$3, %r15
	movq	24(%rdx), %rdi
	shlq	$5, %rsi
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	reallocf
	jmp	.LBB5_4
.LBB5_3:
	movq	%rsi, %rdi
	callq	malloc
.LBB5_4:
	imulq	%r13, %r15
	movq	56(%r14), %rcx
	movq	%rax, 24(%rcx)
	movq	32(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_8
# %bb.5:
	movq	%r15, %rsi
	callq	reallocf
	movq	56(%r14), %rdx
	movq	%rax, 32(%rdx)
	testl	%r12d, %r12d
	jle	.LBB5_13
# %bb.6:
	movq	24(%rdx), %r8
	movl	%r12d, %r9d
	andl	$1, %r9d
	cmpl	$1, %r12d
	jne	.LBB5_9
# %bb.7:
	xorl	%ebx, %ebx
	jmp	.LBB5_11
.LBB5_8:
	movq	%r15, %rdi
	callq	malloc
	movq	56(%r14), %rdx
	movq	%rax, 32(%rdx)
	jmp	.LBB5_13
.LBB5_9:
	leaq	32(%r8), %rcx
	movq	%r12, %rdi
	subq	%r9, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	shrl	$3, %esi
	imulq	%r13, %rsi
	addq	%rax, %rsi
	movq	%rsi, -32(%rcx)
	movq	%rsi, (%rcx)
	addq	$2, %rbx
	addq	$64, %rcx
	cmpq	%rbx, %rdi
	jne	.LBB5_10
.LBB5_11:
	testq	%r9, %r9
	je	.LBB5_13
# %bb.12:
	movl	%ebx, %ecx
	shrl	$3, %ecx
	imulq	%r13, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	shlq	$5, %rbx
	movq	%rsi, (%r8,%rbx)
.LBB5_13:
	testq	%rax, %rax
	je	.LBB5_16
# %bb.14:
	cmpq	$0, 24(%rdx)
	je	.LBB5_16
# %bb.15:
	subq	%r13, %r15
	addq	%r15, %rax
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movq	56(%r14), %rdx
	jmp	.LBB5_19
.LBB5_16:
	cmpl	$0, 16(%r14)
	jne	.LBB5_18
# %bb.17:
	movl	$12, 16(%r14)
.LBB5_18:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB5_19:
	movslq	%r12d, %rcx
	movq	%rcx, %r15
	shlq	$5, %r15
	leal	7(%rcx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	cltq
	imulq	%r13, %rax
	addq	32(%rdx), %rax
	movq	24(%rdx), %rbx
	movq	%rax, (%rbx,%r15)
	andb	$7, %cl
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	movb	%al, 8(%rbx,%r15)
	movw	$0, 10(%rbx,%r15)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%rbx,%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	leaq	5(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	.LBB5_22
# %bb.20:
	movl	$.L.str, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_29
# %bb.21:
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	leaq	5(%rdi), %rcx
.LBB5_22:
	cmpq	%rax, %rcx
	jae	.LBB5_25
# %bb.23:
	movl	$.L.str.1, %esi
	movl	$6, %edx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB5_39
# %bb.24:
	movq	(%r14), %rdi
	movq	8(%r14), %rax
.LBB5_25:
	cmpq	%rax, %rdi
	jae	.LBB5_34
# %bb.26:
	cmpb	$94, (%rdi)
	jne	.LBB5_34
# %bb.27:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB5_35
.LBB5_34:
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB5_35:
	leaq	(%rbx,%r15), %r13
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	leaq	(%rbx,%r15), %r12
	addq	$8, %r12
	cmpq	%rax, %rdi
	jae	.LBB5_45
# %bb.36:
	movb	(%rdi), %al
	cmpb	$45, %al
	je	.LBB5_44
# %bb.37:
	cmpb	$93, %al
	jne	.LBB5_45
# %bb.38:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 93(%rcx)
	addw	$93, 2(%r12)
	jmp	.LBB5_45
.LBB5_29:
	cmpl	$0, 16(%r14)
	jne	.LBB5_318
# %bb.30:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	cmpq	%rax, %rcx
	jl	.LBB5_312
# %bb.31:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB5_311
# %bb.32:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_308
# %bb.33:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB5_311
.LBB5_39:
	cmpl	$0, 16(%r14)
	jne	.LBB5_318
# %bb.40:
	movq	32(%r14), %rcx
	movq	40(%r14), %rax
	cmpq	%rcx, %rax
	jl	.LBB5_317
# %bb.41:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB5_316
# %bb.42:
	movq	24(%r14), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_313
# %bb.43:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB5_316
.LBB5_44:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 45(%rcx)
	addw	$45, 2(%r12)
.LBB5_45:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	(%r14), %rbx
	movq	8(%r14), %rax
	cmpq	%rax, %rbx
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jae	.LBB5_225
# %bb.46:
	leaq	16(%r14), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	jmp	.LBB5_51
.LBB5_47:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB5_97
.LBB5_48:                               #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB5_49:                               #   in Loop: Header=BB5_51 Depth=1
	movb	(%r12), %al
	movq	(%r13), %rcx
	movzbl	%bl, %edx
	orb	%al, (%rcx,%rdx)
	addw	%dx, 2(%r12)
.LBB5_50:                               #   in Loop: Header=BB5_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rbx
	movq	8(%r14), %rax
	cmpq	%rax, %rbx
	movq	-56(%rbp), %r12         # 8-byte Reload
	jae	.LBB5_225
.LBB5_51:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_209 Depth 2
                                        #     Child Loop BB5_205 Depth 2
                                        #     Child Loop BB5_104 Depth 2
                                        #     Child Loop BB5_189 Depth 2
                                        #     Child Loop BB5_185 Depth 2
                                        #     Child Loop BB5_181 Depth 2
                                        #     Child Loop BB5_177 Depth 2
                                        #     Child Loop BB5_173 Depth 2
                                        #     Child Loop BB5_169 Depth 2
                                        #     Child Loop BB5_165 Depth 2
                                        #     Child Loop BB5_161 Depth 2
                                        #     Child Loop BB5_157 Depth 2
                                        #     Child Loop BB5_153 Depth 2
                                        #     Child Loop BB5_148 Depth 2
                                        #     Child Loop BB5_144 Depth 2
	movsbl	(%rbx), %edx
	cmpl	$93, %edx
	je	.LBB5_225
# %bb.52:                               #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rbx), %rcx
	cmpq	%rax, %rcx
	jae	.LBB5_55
# %bb.53:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$45, %dl
	jne	.LBB5_55
# %bb.54:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rcx)
	je	.LBB5_224
.LBB5_55:                               #   in Loop: Header=BB5_51 Depth=1
	cmpl	$45, %edx
	je	.LBB5_197
# %bb.56:                               #   in Loop: Header=BB5_51 Depth=1
	cmpl	$91, %edx
	jne	.LBB5_69
# %bb.57:                               #   in Loop: Header=BB5_51 Depth=1
	cmpq	%rax, %rcx
	jae	.LBB5_77
# %bb.58:                               #   in Loop: Header=BB5_51 Depth=1
	movsbl	(%rcx), %esi
	cmpl	$61, %esi
	je	.LBB5_84
# %bb.59:                               #   in Loop: Header=BB5_51 Depth=1
	cmpl	$58, %esi
	jne	.LBB5_69
# %bb.60:                               #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rbx
	movq	%rbx, (%r14)
	cmpq	%rax, %rbx
	jb	.LBB5_64
# %bb.61:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_63
# %bb.62:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_63:                               #   in Loop: Header=BB5_51 Depth=1
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %ebx
.LBB5_64:                               #   in Loop: Header=BB5_51 Depth=1
	movb	(%rbx), %cl
	cmpb	$93, %cl
	je	.LBB5_66
# %bb.65:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$45, %cl
	jne	.LBB5_103
.LBB5_66:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_68
# %bb.67:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
.LBB5_68:                               #   in Loop: Header=BB5_51 Depth=1
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r15d
	jmp	.LBB5_116
	.p2align	4, 0x90
.LBB5_69:                               #   in Loop: Header=BB5_51 Depth=1
	cmpq	%rax, %rcx
	jae	.LBB5_77
# %bb.70:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$91, %dl
	jne	.LBB5_77
# %bb.71:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$46, (%rcx)
	jne	.LBB5_77
# %bb.72:                               #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rbx
	movq	%rbx, (%r14)
	movq	%r14, %rdi
	movl	$46, %esi
	callq	p_b_coll_elem
	movl	%eax, %ebx
	movq	(%r14), %rcx
	movq	8(%r14), %rax
	cmpq	%rax, %rcx
	jae	.LBB5_47
# %bb.73:                               #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB5_47
# %bb.74:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$46, (%rcx)
	jne	.LBB5_47
# %bb.75:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rdx)
	jne	.LBB5_47
# %bb.76:                               #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rcx
	movq	%rcx, (%r14)
	jmp	.LBB5_78
	.p2align	4, 0x90
.LBB5_77:                               #   in Loop: Header=BB5_51 Depth=1
	movq	%rcx, (%r14)
	movb	(%rbx), %bl
.LBB5_78:                               #   in Loop: Header=BB5_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB5_49
# %bb.79:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$45, (%rcx)
	jne	.LBB5_49
# %bb.80:                               #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB5_49
# %bb.81:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rdx)
	je	.LBB5_49
# %bb.82:                               #   in Loop: Header=BB5_51 Depth=1
	movq	%rdx, (%r14)
	movb	1(%rcx), %dil
	leaq	2(%rcx), %rsi
	cmpb	$45, %dil
	jne	.LBB5_106
# %bb.83:                               #   in Loop: Header=BB5_51 Depth=1
	movq	%rsi, (%r14)
	movb	$45, %al
	cmpb	%al, %bl
	je	.LBB5_49
	jmp	.LBB5_195
.LBB5_84:                               #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rbx
	movq	%rbx, (%r14)
	cmpq	%rax, %rbx
	jb	.LBB5_88
# %bb.85:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_87
# %bb.86:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_87:                               #   in Loop: Header=BB5_51 Depth=1
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_88:                               #   in Loop: Header=BB5_51 Depth=1
	movb	(%rbx), %al
	cmpb	$93, %al
	je	.LBB5_90
# %bb.89:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$45, %al
	jne	.LBB5_93
.LBB5_90:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_92
# %bb.91:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
.LBB5_92:                               #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_93:                               #   in Loop: Header=BB5_51 Depth=1
	movq	%r14, %rdi
	movl	$61, %esi
	callq	p_b_coll_elem
	movb	(%r12), %cl
	movq	(%r13), %rdx
	movzbl	%al, %eax
	orb	%cl, (%rdx,%rax)
	addw	%ax, 2(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	cmpq	%rdx, %rax
	jae	.LBB5_98
# %bb.94:                               #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB5_101
# %bb.95:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$61, (%rax)
	jne	.LBB5_101
# %bb.96:                               #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rcx)
	jne	.LBB5_101
	jmp	.LBB5_217
.LBB5_97:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
	jmp	.LBB5_48
.LBB5_98:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_100
# %bb.99:                               #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_100:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_101:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_223
# %bb.102:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
	jmp	.LBB5_223
.LBB5_103:                              #   in Loop: Header=BB5_51 Depth=1
	cmpq	%rax, %rbx
	jae	.LBB5_115
	.p2align	4, 0x90
.LBB5_104:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r14), %r15
	movzbl	(%r15), %ecx
	testb	$3, 1(%rax,%rcx)
	je	.LBB5_116
# %bb.105:                              #   in Loop: Header=BB5_104 Depth=2
	addq	$1, %r15
	movq	%r15, (%r14)
	cmpq	8(%r14), %r15
	jb	.LBB5_104
	jmp	.LBB5_116
.LBB5_106:                              #   in Loop: Header=BB5_51 Depth=1
	cmpq	%rax, %rsi
	jae	.LBB5_114
# %bb.107:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$91, %dil
	jne	.LBB5_114
# %bb.108:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$46, (%rsi)
	jne	.LBB5_114
# %bb.109:                              #   in Loop: Header=BB5_51 Depth=1
	addq	$3, %rcx
	movq	%rcx, (%r14)
	movq	%r14, %rdi
	movl	$46, %esi
	callq	p_b_coll_elem
	movq	(%r14), %rcx
	movq	8(%r14), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB5_191
# %bb.110:                              #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rsi, %rdx
	jae	.LBB5_191
# %bb.111:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$46, (%rcx)
	jne	.LBB5_191
# %bb.112:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rdx)
	jne	.LBB5_191
# %bb.113:                              #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rcx
	movq	%rcx, (%r14)
	jmp	.LBB5_194
.LBB5_114:                              #   in Loop: Header=BB5_51 Depth=1
	movq	%rsi, (%r14)
	movb	(%rdx), %al
	jmp	.LBB5_194
.LBB5_115:                              #   in Loop: Header=BB5_51 Depth=1
	movq	%rbx, %r15
.LBB5_116:                              #   in Loop: Header=BB5_51 Depth=1
	subq	%rbx, %r15
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB5_118
# %bb.117:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses, %ecx
	cmpq	$5, %r15
	je	.LBB5_140
.LBB5_118:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_120
# %bb.119:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+16, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_120:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_122
# %bb.121:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+32, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_122:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_124
# %bb.123:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+48, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_124:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_126
# %bb.125:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+64, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_126:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_128
# %bb.127:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+80, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_128:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_130
# %bb.129:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+96, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_130:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_132
# %bb.131:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+112, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_132:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_134
# %bb.133:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+128, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_134:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_136
# %bb.135:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+144, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_136:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.12, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_138
# %bb.137:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+160, %ecx
	testl	%eax, %eax
	je	.LBB5_140
.LBB5_138:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$.L.str.13, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$6, %r15
	jne	.LBB5_210
# %bb.139:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$cclasses+176, %ecx
	testl	%eax, %eax
	jne	.LBB5_210
.LBB5_140:                              #   in Loop: Header=BB5_51 Depth=1
	movl	8(%rcx), %eax
	cmpq	$11, %rax
	ja	.LBB5_213
# %bb.141:                              #   in Loop: Header=BB5_51 Depth=1
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_142:                              # %.preheader12
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_144
	.p2align	4, 0x90
.LBB5_143:                              #   in Loop: Header=BB5_144 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_144:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$7, 1(%rax,%rcx)
	je	.LBB5_143
# %bb.145:                              #   in Loop: Header=BB5_144 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_143
.LBB5_146:                              # %.preheader14
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_148
	.p2align	4, 0x90
.LBB5_147:                              #   in Loop: Header=BB5_148 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_148:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$3, 1(%rax,%rcx)
	je	.LBB5_147
# %bb.149:                              #   in Loop: Header=BB5_148 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_147
.LBB5_150:                              # %.preheader16
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_153
	.p2align	4, 0x90
.LBB5_151:                              #   in Loop: Header=BB5_153 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
.LBB5_152:                              #   in Loop: Header=BB5_153 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_153:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	cmpl	$9, %ecx
	je	.LBB5_151
# %bb.154:                              #   in Loop: Header=BB5_153 Depth=2
	cmpb	$0, 1(%rax,%rcx)
	jns	.LBB5_152
	jmp	.LBB5_151
.LBB5_155:                              # %.preheader18
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_157
	.p2align	4, 0x90
.LBB5_156:                              #   in Loop: Header=BB5_157 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_157:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$32, 1(%rax,%rcx)
	je	.LBB5_156
# %bb.158:                              #   in Loop: Header=BB5_157 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_156
.LBB5_159:                              # %.preheader20
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_161
	.p2align	4, 0x90
.LBB5_160:                              #   in Loop: Header=BB5_161 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_161:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$4, 1(%rax,%rcx)
	je	.LBB5_160
# %bb.162:                              #   in Loop: Header=BB5_161 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_160
.LBB5_163:                              # %.preheader22
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_165
	.p2align	4, 0x90
.LBB5_164:                              #   in Loop: Header=BB5_165 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_165:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$23, 1(%rax,%rcx)
	je	.LBB5_164
# %bb.166:                              #   in Loop: Header=BB5_165 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_164
.LBB5_167:                              # %.preheader24
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_169
	.p2align	4, 0x90
.LBB5_168:                              #   in Loop: Header=BB5_169 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_169:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$2, %al
	jne	.LBB5_168
# %bb.170:                              #   in Loop: Header=BB5_169 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_168
.LBB5_171:                              # %.preheader26
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_173
	.p2align	4, 0x90
.LBB5_172:                              #   in Loop: Header=BB5_173 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_173:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$-105, 1(%rax,%rcx)
	je	.LBB5_172
# %bb.174:                              #   in Loop: Header=BB5_173 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_172
.LBB5_175:                              # %.preheader28
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_177
	.p2align	4, 0x90
.LBB5_176:                              #   in Loop: Header=BB5_177 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_177:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$16, 1(%rax,%rcx)
	je	.LBB5_176
# %bb.178:                              #   in Loop: Header=BB5_177 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_176
.LBB5_179:                              # %.preheader30
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_181
	.p2align	4, 0x90
.LBB5_180:                              #   in Loop: Header=BB5_181 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_181:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$8, 1(%rax,%rcx)
	je	.LBB5_180
# %bb.182:                              #   in Loop: Header=BB5_181 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_180
.LBB5_183:                              # %.preheader32
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_185
	.p2align	4, 0x90
.LBB5_184:                              #   in Loop: Header=BB5_185 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_185:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB5_184
# %bb.186:                              #   in Loop: Header=BB5_185 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_184
.LBB5_187:                              # %.preheader34
                                        #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_189
	.p2align	4, 0x90
.LBB5_188:                              #   in Loop: Header=BB5_189 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_213
.LBB5_189:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$68, 1(%rax,%rcx)
	je	.LBB5_188
# %bb.190:                              #   in Loop: Header=BB5_189 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_188
.LBB5_191:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	$0, (%rcx)
	jne	.LBB5_193
# %bb.192:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$3, (%rcx)
.LBB5_193:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_194:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %bl
	je	.LBB5_49
.LBB5_195:                              #   in Loop: Header=BB5_51 Depth=1
	cmpl	$0, __collate_load_error(%rip)
	je	.LBB5_199
# %bb.196:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	%al, %bl
	jbe	.LBB5_208
	.p2align	4, 0x90
.LBB5_197:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_223
# %bb.198:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$11, (%rax)
	jmp	.LBB5_223
.LBB5_199:                              #   in Loop: Header=BB5_51 Depth=1
	movsbl	%bl, %r12d
	movsbl	%al, %r15d
	movl	%r12d, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jle	.LBB5_203
# %bb.200:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_202
# %bb.201:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$11, (%rax)
.LBB5_202:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_203:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_205
	.p2align	4, 0x90
.LBB5_204:                              #   in Loop: Header=BB5_205 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_50
.LBB5_205:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edi
	movl	%ebx, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jg	.LBB5_204
# %bb.206:                              #   in Loop: Header=BB5_205 Depth=2
	movl	%ebx, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jg	.LBB5_204
# %bb.207:                              #   in Loop: Header=BB5_205 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movzbl	(%rsi), %eax
	movq	(%r13), %rcx
	movzbl	%bl, %edx
	orb	%al, (%rcx,%rdx)
	movzbl	%bl, %eax
	addw	%ax, 2(%rsi)
	jmp	.LBB5_204
.LBB5_208:                              #   in Loop: Header=BB5_51 Depth=1
	movzbl	%al, %eax
	movzbl	%bl, %ecx
	.p2align	4, 0x90
.LBB5_209:                              #   Parent Loop BB5_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movzbl	(%rbx), %edx
	movq	(%r13), %rsi
	movzbl	%cl, %edi
	orb	%dl, (%rsi,%rdi)
	movzbl	%cl, %edx
	addw	%dx, 2(%rbx)
	leal	1(%rcx), %edx
	cmpl	%eax, %ecx
	movl	%edx, %ecx
	jb	.LBB5_209
	jmp	.LBB5_50
.LBB5_210:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_212
# %bb.211:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
.LBB5_212:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_213:                              #   in Loop: Header=BB5_51 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	cmpq	%rdx, %rax
	jae	.LBB5_218
# %bb.214:                              #   in Loop: Header=BB5_51 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB5_221
# %bb.215:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$58, (%rax)
	jne	.LBB5_221
# %bb.216:                              #   in Loop: Header=BB5_51 Depth=1
	cmpb	$93, (%rcx)
	jne	.LBB5_221
.LBB5_217:                              #   in Loop: Header=BB5_51 Depth=1
	addq	$2, %rax
	movq	%rax, (%r14)
	jmp	.LBB5_50
.LBB5_218:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_220
# %bb.219:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_220:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_221:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_223
# %bb.222:                              #   in Loop: Header=BB5_51 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
	.p2align	4, 0x90
.LBB5_223:                              #   in Loop: Header=BB5_51 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_50
.LBB5_224:
	movq	%rcx, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 45(%rcx)
	addw	$45, 2(%r12)
	movq	(%r14), %rbx
	movq	8(%r14), %rax
.LBB5_225:
	cmpq	%rax, %rbx
	jae	.LBB5_244
# %bb.226:
	leaq	1(%rbx), %rax
	movq	%rax, (%r14)
	cmpb	$93, (%rbx)
	jne	.LBB5_244
# %bb.227:
	cmpl	$0, 16(%r14)
	jne	.LBB5_319
# %bb.228:
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r8
	addq	$24, %r8
	movq	56(%r14), %rax
	testb	$2, 40(%rax)
	je	.LBB5_250
# %bb.229:
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movslq	16(%rax), %rax
	testq	%rax, %rax
	jle	.LBB5_248
# %bb.230:
	movq	%rax, %rbx
	addq	$1, %rbx
	leal	-1(%rax), %r12d
	movq	%r13, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_232
	.p2align	4, 0x90
.LBB5_231:                              #   in Loop: Header=BB5_232 Depth=1
	addq	$-1, %rbx
	addl	$-1, %r12d
	cmpq	$1, %rbx
	jle	.LBB5_248
.LBB5_232:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movzbl	%r12b, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	testb	%cl, (%rax,%r15)
	je	.LBB5_231
# %bb.233:                              #   in Loop: Header=BB5_232 Depth=1
	callq	__locale_ctype_ptr
	testb	$3, -1(%rax,%rbx)
	je	.LBB5_231
# %bb.234:                              #   in Loop: Header=BB5_232 Depth=1
	leaq	-2(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %r13d
	andb	$3, %r13b
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %ecx
	andb	$3, %cl
	cmpb	$1, %r13b
	jne	.LBB5_238
# %bb.235:                              #   in Loop: Header=BB5_232 Depth=1
	cmpb	$1, %cl
	jne	.LBB5_237
# %bb.236:                              #   in Loop: Header=BB5_232 Depth=1
	addl	$32, %r15d
.LBB5_237:                              #   in Loop: Header=BB5_232 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	jmp	.LBB5_241
.LBB5_238:                              #   in Loop: Header=BB5_232 Depth=1
	movl	%r12d, %eax
	cmpb	$2, %cl
	movq	-88(%rbp), %r13         # 8-byte Reload
	jne	.LBB5_242
# %bb.239:                              #   in Loop: Header=BB5_232 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %eax
	andb	$3, %al
	cmpb	$2, %al
	jne	.LBB5_241
# %bb.240:                              #   in Loop: Header=BB5_232 Depth=1
	addl	$-32, %r15d
.LBB5_241:                              #   in Loop: Header=BB5_232 Depth=1
	movl	%r15d, %eax
.LBB5_242:                              #   in Loop: Header=BB5_232 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %ecx
	cmpq	%rcx, -48(%rbp)         # 8-byte Folded Reload
	je	.LBB5_231
# %bb.243:                              #   in Loop: Header=BB5_232 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rdi), %ecx
	movq	(%r13), %rdx
	movzbl	%al, %esi
	orb	%cl, (%rdx,%rsi)
	movzbl	%al, %eax
	addw	%ax, 2(%rdi)
	jmp	.LBB5_231
.LBB5_244:
	cmpl	$0, 16(%r14)
	jne	.LBB5_246
# %bb.245:
	movl	$7, 16(%r14)
.LBB5_246:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
.LBB5_247:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_319
.LBB5_248:
	movq	-80(%rbp), %r8          # 8-byte Reload
	cmpq	$0, (%r8)
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB5_250
# %bb.249:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_250:
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB5_262
# %bb.251:
	movq	56(%r14), %rcx
	movl	16(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB5_258
# %bb.252:                              # %.preheader8
	addl	$1, %eax
	jmp	.LBB5_255
	.p2align	4, 0x90
.LBB5_253:                              #   in Loop: Header=BB5_255 Depth=1
	orb	%bl, %cl
	movb	%cl, (%rdx,%rsi)
	movzbl	%dil, %edx
	addw	2(%r12), %dx
.LBB5_254:                              #   in Loop: Header=BB5_255 Depth=1
	movw	%dx, 2(%r12)
	addl	$-1, %eax
	cmpl	$1, %eax
	jle	.LBB5_257
.LBB5_255:                              # =>This Inner Loop Header: Depth=1
	leal	-2(%rax), %edi
	movq	(%r13), %rdx
	movzbl	%dil, %esi
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%r12), %ecx
	testb	%bl, %cl
	je	.LBB5_253
# %bb.256:                              #   in Loop: Header=BB5_255 Depth=1
	notb	%cl
	andb	%cl, %bl
	movb	%bl, (%rdx,%rsi)
	movzwl	2(%r12), %edx
	movzbl	%dil, %ecx
	subl	%ecx, %edx
	jmp	.LBB5_254
.LBB5_257:
	movq	56(%r14), %rcx
.LBB5_258:
	testb	$8, 40(%rcx)
	je	.LBB5_260
# %bb.259:
	movb	(%r12), %al
	notb	%al
	movq	(%r13), %rcx
	andb	%al, 10(%rcx)
	addw	$-10, 2(%r12)
.LBB5_260:
	cmpq	$0, (%r8)
	je	.LBB5_262
# %bb.261:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_262:
	movq	56(%r14), %r8
	movslq	16(%r8), %r15
	testq	%r15, %r15
	je	.LBB5_272
# %bb.263:
	movq	(%r13), %rdx
	movb	(%r12), %r11b
	cmpq	$1, %r15
	movl	$1, %eax
	movl	$1, %r10d
	cmovaq	%r15, %r10
	cmpq	$8, %r10
	jb	.LBB5_265
# %bb.264:
	cmpq	$1, %r15
	cmovaq	%r15, %rax
	addq	$-1, %rax
	cmpq	$255, %rax
	jbe	.LBB5_293
.LBB5_265:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB5_266:                              # =>This Inner Loop Header: Depth=1
	movzbl	%sil, %eax
	movzbl	(%rdx,%rax), %eax
	andb	%r11b, %al
	cmpb	$1, %al
	sbbl	$-1, %ecx
	addq	$1, %rsi
	cmpq	%r15, %rsi
	jb	.LBB5_266
.LBB5_267:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB5_273
# %bb.268:
	movb	(%r12), %cl
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_269:                              # =>This Inner Loop Header: Depth=1
	movzbl	%al, %edi
	testb	%cl, (%rdx,%rdi)
	jne	.LBB5_287
# %bb.270:                              #   in Loop: Header=BB5_269 Depth=1
	addq	$1, %rax
	addl	$16777216, %esi         # imm = 0x1000000
	cmpq	%r15, %rax
	jb	.LBB5_269
# %bb.271:
	xorl	%esi, %esi
	jmp	.LBB5_288
.LBB5_272:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_273:
	leaq	24(%r8), %r9
	movslq	20(%r8), %r11
	testq	%r11, %r11
	jle	.LBB5_286
# %bb.274:                              # %.preheader1
	movzwl	2(%r12), %r10d
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	24(%r8), %r12
	shlq	$5, %r11
	addq	%r12, %r11
	jmp	.LBB5_276
.LBB5_275:                              #   in Loop: Header=BB5_276 Depth=1
	xorl	%ebx, %ebx
	cmpq	%r15, %rbx
	je	.LBB5_296
	.p2align	4, 0x90
.LBB5_284:                              #   in Loop: Header=BB5_276 Depth=1
	addq	$32, %r12
	cmpq	%r11, %r12
	jae	.LBB5_286
.LBB5_276:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_280 Depth 2
	cmpq	%r13, %r12
	je	.LBB5_284
# %bb.277:                              #   in Loop: Header=BB5_276 Depth=1
	cmpw	%r10w, 10(%r12)
	jne	.LBB5_284
# %bb.278:                              #   in Loop: Header=BB5_276 Depth=1
	testl	%r15d, %r15d
	je	.LBB5_275
# %bb.279:                              #   in Loop: Header=BB5_276 Depth=1
	movq	(%r12), %rsi
	movq	%r13, %rax
	movb	8(%r12), %r13b
	movq	%rax, %r8
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_280:                              #   Parent Loop BB5_276 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bl, %edx
	testb	%r13b, (%rsi,%rdx)
	setne	%cl
	testb	%al, (%rdi,%rdx)
	setne	%dl
	xorb	%cl, %dl
	jne	.LBB5_283
# %bb.281:                              #   in Loop: Header=BB5_280 Depth=2
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jb	.LBB5_280
# %bb.282:                              #   in Loop: Header=BB5_276 Depth=1
	movl	%ebx, %ebx
.LBB5_283:                              #   in Loop: Header=BB5_276 Depth=1
	movq	%r8, %r13
	cmpq	%r15, %rbx
	jne	.LBB5_284
.LBB5_296:
	testl	%r15d, %r15d
	movq	-48(%rbp), %r9          # 8-byte Reload
	je	.LBB5_300
# %bb.297:                              # %.preheader
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB5_298:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	notb	%al
	movq	(%r13), %rdx
	movzbl	%cl, %esi
	andb	%al, (%rdx,%rsi)
	movzbl	%cl, %eax
	subw	%ax, 2(%rdi)
	addq	$1, %rcx
	cmpq	%r15, %rcx
	jb	.LBB5_298
# %bb.299:
	movq	56(%r14), %r9
.LBB5_300:
	addq	$-32, %r11
	cmpq	%r13, %r11
	jne	.LBB5_302
# %bb.301:
	addl	$-1, 20(%r9)
.LBB5_302:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r9
	jmp	.LBB5_303
.LBB5_286:
	movq	%r13, %r12
.LBB5_303:
	subq	(%r9), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 16(%r14)
	jne	.LBB5_247
# %bb.304:
	shrq	$5, %r12
	movslq	%r12d, %rbx
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	cmpq	%rax, %rcx
	jl	.LBB5_328
# %bb.305:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	cmpq	%r15, %rax
	jge	.LBB5_327
# %bb.306:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_324
# %bb.307:
	movq	%rax, 24(%r14)
	movq	%r15, 32(%r14)
	jmp	.LBB5_327
.LBB5_287:
	sarl	$24, %esi
.LBB5_288:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	ordinary
	movq	56(%r14), %rcx
	movslq	20(%rcx), %rax
	shlq	$5, %rax
	addq	24(%rcx), %rax
	movslq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_291
# %bb.289:                              # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_290:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ebx
	notb	%bl
	movq	(%r13), %rsi
	movzbl	%dl, %edi
	andb	%bl, (%rsi,%rdi)
	movzbl	%dl, %esi
	subw	%si, 2(%r12)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB5_290
.LBB5_291:
	addq	$-32, %rax
	cmpq	%r13, %rax
	jne	.LBB5_247
# %bb.292:
	movq	56(%r14), %rax
	addl	$-1, 20(%rax)
	jmp	.LBB5_247
.LBB5_293:
	movq	%r10, %rsi
	andq	$-8, %rsi
	movzbl	%r11b, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3,4,5,6,7]
	leaq	-8(%rsi), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$1, %rax
	movl	%eax, %r9d
	andl	$1, %r9d
	testq	%rcx, %rcx
	je	.LBB5_320
# %bb.294:
	movq	%r9, %rdi
	subq	%rax, %rdi
	pxor	%xmm3, %xmm3
	xorl	%ebx, %ebx
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LCPI5_0(%rip), %xmm5   # xmm5 = [1,1,1,1]
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
.LBB5_295:                              # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	andl	$240, %ecx
	movd	(%rdx,%rcx), %xmm7      # xmm7 = mem[0],zero,zero,zero
	movd	4(%rdx,%rcx), %xmm6     # xmm6 = mem[0],zero,zero,zero
	pand	%xmm0, %xmm7
	pand	%xmm0, %xmm6
	pcmpeqb	%xmm3, %xmm7
	pxor	%xmm4, %xmm7
	punpcklbw	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7    # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	pand	%xmm5, %xmm7
	paddd	%xmm1, %xmm7
	pcmpeqb	%xmm3, %xmm6
	pxor	%xmm4, %xmm6
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	pand	%xmm5, %xmm6
	paddd	%xmm2, %xmm6
	movd	8(%rdx,%rcx), %xmm1     # xmm1 = mem[0],zero,zero,zero
	movd	12(%rdx,%rcx), %xmm2    # xmm2 = mem[0],zero,zero,zero
	pand	%xmm0, %xmm1
	pand	%xmm0, %xmm2
	pcmpeqb	%xmm3, %xmm1
	pxor	%xmm4, %xmm1
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pand	%xmm5, %xmm1
	paddd	%xmm7, %xmm1
	pcmpeqb	%xmm3, %xmm2
	pxor	%xmm4, %xmm2
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	pand	%xmm5, %xmm2
	paddd	%xmm6, %xmm2
	addq	$16, %rbx
	addq	$2, %rdi
	jne	.LBB5_295
	jmp	.LBB5_321
.LBB5_308:
	cmpl	$0, 16(%r14)
	jne	.LBB5_310
# %bb.309:
	movl	$12, 16(%r14)
.LBB5_310:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_311:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
.LBB5_312:
	movq	24(%r14), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB5_318
.LBB5_313:
	cmpl	$0, 16(%r14)
	jne	.LBB5_315
# %bb.314:
	movl	$12, 16(%r14)
.LBB5_315:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_316:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rax
.LBB5_317:
	movq	24(%r14), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	addq	$134217728, %rdx        # imm = 0x8000000
	movq	%rdx, (%rcx,%rax,8)
.LBB5_318:
	movl	$42, __A_VARIABLE(%rip)
	addq	$6, (%r14)
.LBB5_319:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_320:
	pxor	%xmm1, %xmm1
	xorl	%ebx, %ebx
	pxor	%xmm2, %xmm2
.LBB5_321:
	testq	%r9, %r9
	je	.LBB5_323
# %bb.322:
	andl	$248, %ebx
	movd	4(%rdx,%rbx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	pand	%xmm0, %xmm3
	pxor	%xmm4, %xmm4
	pcmpeqb	%xmm4, %xmm3
	pcmpeqd	%xmm5, %xmm5
	pxor	%xmm5, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	movdqa	.LCPI5_0(%rip), %xmm6   # xmm6 = [1,1,1,1]
	pand	%xmm6, %xmm3
	paddd	%xmm3, %xmm2
	movd	(%rdx,%rbx), %xmm3      # xmm3 = mem[0],zero,zero,zero
	pand	%xmm0, %xmm3
	pcmpeqb	%xmm4, %xmm3
	pxor	%xmm5, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	pand	%xmm6, %xmm3
	paddd	%xmm3, %xmm1
.LBB5_323:
	paddd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	cmpq	%rsi, %r10
	jne	.LBB5_266
	jmp	.LBB5_267
.LBB5_324:
	cmpl	$0, 16(%r14)
	jne	.LBB5_326
# %bb.325:
	movl	$12, 16(%r14)
.LBB5_326:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_327:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
.LBB5_328:
	orq	$805306368, %rbx        # imm = 0x30000000
	movq	24(%r14), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB5_247
.Lfunc_end5:
	.size	p_bracket, .Lfunc_end5-p_bracket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_142
	.quad	.LBB5_146
	.quad	.LBB5_150
	.quad	.LBB5_155
	.quad	.LBB5_159
	.quad	.LBB5_163
	.quad	.LBB5_167
	.quad	.LBB5_171
	.quad	.LBB5_175
	.quad	.LBB5_179
	.quad	.LBB5_183
	.quad	.LBB5_187
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function ordinary
	.type	ordinary,@function
ordinary:                               # @ordinary
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r13
	movq	56(%rdi), %rax
	movq	88(%rax), %r15
	testb	$2, 40(%rax)
	jne	.LBB6_9
# %bb.1:
	movzbl	%r14b, %r12d
	jmp	.LBB6_2
.LBB6_9:
	callq	__locale_ctype_ptr
	movzbl	%r14b, %r12d
	testb	$3, 1(%rax,%r12)
	je	.LBB6_2
# %bb.10:
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %bl
	andb	$3, %bl
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %cl
	andb	$3, %cl
	cmpb	$1, %bl
	jne	.LBB6_12
# %bb.11:
	leal	32(%r12), %eax
	cmpb	$1, %cl
	jmp	.LBB6_14
.LBB6_12:
	movl	%r14d, %eax
	cmpb	$2, %cl
	jne	.LBB6_15
# %bb.13:
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %cl
	andb	$3, %cl
	leal	-32(%r12), %eax
	cmpb	$2, %cl
.LBB6_14:
	cmovnel	%r12d, %eax
.LBB6_15:
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %eax
	cmpl	%r14d, %eax
	jne	.LBB6_16
.LBB6_2:
	cmpl	$0, 16(%r13)
	jne	.LBB6_20
# %bb.3:
	movq	32(%r13), %rcx
	movq	40(%r13), %rax
	cmpq	%rcx, %rax
	jl	.LBB6_19
# %bb.4:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB6_18
# %bb.5:
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB6_6
# %bb.17:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	jmp	.LBB6_18
.LBB6_16:
	movups	(%r13), %xmm0
	movaps	%xmm0, -64(%rbp)        # 16-byte Spill
	leaq	-43(%rbp), %rax
	movq	%rax, (%r13)
	leaq	-41(%rbp), %rax
	movq	%rax, 8(%r13)
	movb	%r14b, -43(%rbp)
	movw	$93, -42(%rbp)
	movq	%r13, %rdi
	callq	p_bracket
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_22
.LBB6_6:
	cmpl	$0, 16(%r13)
	jne	.LBB6_8
# %bb.7:
	movl	$12, 16(%r13)
.LBB6_8:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB6_19:
	orl	$268435456, %r12d       # imm = 0x10000000
	movq	24(%r13), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r13)
	movq	%r12, (%rcx,%rax,8)
.LBB6_20:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rax
	cmpb	$0, (%r15,%rax)
	jne	.LBB6_22
# %bb.21:
	movq	56(%r13), %rcx
	movl	84(%rcx), %edx
	leal	1(%rdx), %esi
	movl	%esi, 84(%rcx)
	movb	%dl, (%r15,%rax)
.LBB6_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ordinary, .Lfunc_end6-ordinary
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function repeat
	.type	repeat,@function
repeat:                                 # @repeat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$0, 16(%rdi)
	jne	.LBB7_88
# %bb.1:
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movq	%rdi, %r13
	xorl	%eax, %eax
	cmpl	$256, %edx              # imm = 0x100
	sete	%al
	orl	$2, %eax
	cmpl	$2, %edx
	cmovll	%edx, %eax
	xorl	%ecx, %ecx
	cmpl	$256, %r15d             # imm = 0x100
	sete	%cl
	orl	$2, %ecx
	cmpl	$2, %r15d
	cmovll	%r15d, %ecx
	leal	(%rcx,%rax,8), %eax
	cmpl	$19, %eax
	ja	.LBB7_10
# %bb.2:
	movq	%rsi, %r14
	movq	40(%r13), %r12
	leaq	16(%r13), %rcx
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_3:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	subq	%r14, %r12
	addq	$1, %r12
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	doinsert
	leaq	1(%r14), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	movl	%r15d, %ecx
	callq	repeat
	cmpl	$0, 16(%r13)
	je	.LBB7_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_48
.LBB7_5:
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rdx
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	jl	.LBB7_47
# %bb.6:
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r15
	xorl	%ecx, %ecx
	cmpq	%r15, %rdx
	jge	.LBB7_46
# %bb.7:
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_43
# %bb.8:
	movq	%rax, 24(%r13)
	movq	%r15, 32(%r13)
	movl	16(%r13), %ecx
	jmp	.LBB7_46
.LBB7_9:
	movq	%r14, 40(%r13)
	jmp	.LBB7_88
.LBB7_10:
	movl	$15, 16(%r13)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	jmp	.LBB7_50
.LBB7_11:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rdx
	subq	%r14, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	doinsert
	cmpl	$0, 16(%r13)
	je	.LBB7_26
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_75
.LBB7_13:
	movq	%rcx, %r15
	subq	%r14, %r12
	addq	$1, %r12
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	doinsert
	cmpl	$0, 16(%r13)
	jne	.LBB7_50
# %bb.14:
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rcx
	cmpq	%rcx, %rax
	jl	.LBB7_69
# %bb.15:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB7_68
# %bb.16:
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_65
# %bb.17:
	movq	%rax, 24(%r13)
	movq	%r14, 32(%r13)
	jmp	.LBB7_68
.LBB7_18:
	movq	%r12, %rdx
	subq	%r14, %rdx
	je	.LBB7_35
# %bb.19:
	testq	%rdx, %rdx
	jle	.LBB7_34
# %bb.20:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	32(%r13), %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	addq	%rdx, %rax
	movq	24(%r13), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_30
# %bb.21:
	movq	%rax, 24(%r13)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r13)
	jmp	.LBB7_33
.LBB7_22:
	movq	%r12, %rdx
	subq	%r14, %rdx
	je	.LBB7_41
# %bb.23:
	testq	%rdx, %rdx
	jle	.LBB7_40
# %bb.24:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	32(%r13), %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	addq	%rdx, %rax
	movq	24(%r13), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_36
# %bb.25:
	movq	%rax, 24(%r13)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r13)
	jmp	.LBB7_39
.LBB7_26:
	movq	40(%r13), %rax
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rdx
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	jl	.LBB7_74
# %bb.27:
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	jge	.LBB7_73
# %bb.28:
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_70
# %bb.29:
	movq	%rax, 24(%r13)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r13)
	movl	16(%r13), %ecx
	jmp	.LBB7_73
.LBB7_30:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_32
# %bb.31:
	movl	$12, (%rax)
.LBB7_32:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_33:
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB7_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r14,8), %rsi
	movq	%rdx, %r14
	leaq	(,%rdx,8), %rdx
	callq	memcpy
	addq	%r14, 40(%r13)
.LBB7_35:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	addl	$-1, %r15d
	jmp	.LBB7_42
.LBB7_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_38
# %bb.37:
	movl	$12, (%rax)
.LBB7_38:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_39:
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB7_40:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r14,8), %rsi
	movq	%rdx, %r14
	leaq	(,%rdx,8), %rdx
	callq	memcpy
	addq	%r14, 40(%r13)
.LBB7_41:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
.LBB7_42:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%ebx, %edx
	jmp	.LBB7_87
.LBB7_43:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_45
# %bb.44:
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_45:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB7_47:
	movl	$2281701376, %r15d      # imm = 0x88000000
	leaq	-134217728(%r15), %rdx
	orq	%rdx, %rbx
	movq	24(%r13), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%r13)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB7_51
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_49:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_50:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_88
.LBB7_51:
	movq	24(%r13), %rax
	movq	40(%r13), %rdx
	subq	%r14, %rdx
	movq	(%rax,%r14,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rsi
	cmpq	%rdx, %rsi
	jge	.LBB7_53
# %bb.52:
	leaq	1(%rsi), %rcx
	movq	%rcx, 40(%r13)
	movq	%r15, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_61
.LBB7_53:
	leaq	1(%rdx), %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	addq	$1, %rsi
	sarq	%rsi
	leaq	(%rsi,%rsi,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB7_59
# %bb.54:
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_56
# %bb.55:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	16(%r13), %ecx
	jmp	.LBB7_59
.LBB7_56:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_58
# %bb.57:
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_58:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB7_59:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r13)
	movq	%r15, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB7_49
.LBB7_61:
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB7_98
# %bb.62:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB7_97
# %bb.63:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_94
# %bb.64:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	jmp	.LBB7_97
.LBB7_65:
	cmpl	$0, (%r15)
	jne	.LBB7_67
# %bb.66:
	movl	$12, (%r15)
.LBB7_67:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_68:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB7_69:
	orq	$1342177280, %rbx       # imm = 0x50000000
	movq	24(%r13), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r13)
	movq	%rbx, (%rcx,%rax,8)
	jmp	.LBB7_50
.LBB7_70:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_72
# %bb.71:
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_72:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_73:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB7_74:
	movl	$2281701376, %edi       # imm = 0x88000000
	leaq	-134217728(%rdi), %rdx
	orq	%rdx, %rbx
	movq	24(%r13), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%r13)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB7_89
.LBB7_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_76:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_77:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rbx
	subq	%r14, %r12
	je	.LBB7_86
# %bb.78:
	addq	$1, %r14
	testq	%r12, %r12
	jle	.LBB7_85
# %bb.79:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	32(%r13), %rbx
	addq	%r12, %rbx
	movq	24(%r13), %rdi
	leaq	(,%rbx,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_81
# %bb.80:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	jmp	.LBB7_84
.LBB7_81:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_83
# %bb.82:
	movl	$12, (%rax)
.LBB7_83:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_84:
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB7_85:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r14,8), %rsi
	leaq	(,%r12,8), %rdx
	callq	memcpy
	addq	%r12, 40(%r13)
.LBB7_86:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
.LBB7_87:
	movl	%r15d, %ecx
	callq	repeat
.LBB7_88:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_89:
	movq	24(%r13), %rax
	movq	40(%r13), %rdx
	subq	%r14, %rdx
	movq	(%rax,%r14,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rsi
	cmpq	%rdx, %rsi
	jge	.LBB7_91
# %bb.90:
	leaq	1(%rsi), %rcx
	movq	%rcx, 40(%r13)
	movq	%rdi, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_104
.LBB7_91:
	leaq	1(%rdx), %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	addq	$1, %rsi
	sarq	%rsi
	leaq	(%rsi,%rsi,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB7_102
# %bb.92:
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_99
# %bb.93:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	16(%r13), %ecx
	movl	$2281701376, %edi       # imm = 0x88000000
	jmp	.LBB7_102
.LBB7_94:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_96
# %bb.95:
	movl	$12, (%rax)
.LBB7_96:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB7_97:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB7_98:
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	addq	$134217730, %r15        # imm = 0x8000002
	movq	%r15, (%rax,%rcx,8)
	jmp	.LBB7_50
.LBB7_99:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	$2281701376, %edi       # imm = 0x88000000
	jne	.LBB7_101
# %bb.100:
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_101:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB7_102:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r13)
	movq	%rdi, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB7_76
.LBB7_104:
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB7_112
# %bb.105:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB7_111
# %bb.106:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_108
# %bb.107:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	$2281701376, %edi       # imm = 0x88000000
	jmp	.LBB7_111
.LBB7_108:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$2281701376, %edi       # imm = 0x88000000
	jne	.LBB7_110
# %bb.109:
	movl	$12, (%rax)
.LBB7_110:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB7_111:
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB7_112:
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	addq	$134217730, %rdi        # imm = 0x8000002
	movq	%rdi, (%rax,%rcx,8)
	jmp	.LBB7_77
.Lfunc_end7:
	.size	repeat, .Lfunc_end7-repeat
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_9
	.quad	.LBB7_3
	.quad	.LBB7_3
	.quad	.LBB7_3
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_88
	.quad	.LBB7_11
	.quad	.LBB7_13
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_10
	.quad	.LBB7_18
	.quad	.LBB7_22
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_b_coll_elem
	.type	p_b_coll_elem,@function
p_b_coll_elem:                          # @p_b_coll_elem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	movq	(%rdi), %r14
	movq	8(%rdi), %rcx
	cmpq	%rcx, %r14
	jae	.LBB8_7
# %bb.1:
	leaq	1(%r14), %rax
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	movq	%rax, (%r13)
	addq	$1, %rax
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	jae	.LBB8_6
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movsbl	-1(%rax), %edx
	cmpl	%esi, %edx
	jne	.LBB8_5
# %bb.4:                                #   in Loop: Header=BB8_2 Depth=1
	cmpb	$93, (%rax)
	jne	.LBB8_5
# %bb.9:
	movq	%r14, %r12
	notq	%r12
	addq	%rax, %r12
	movslq	%r12d, %r15
	movl	$.L.str.14, %edi
	movl	$cnames+16, %ebx
	jmp	.LBB8_10
	.p2align	4, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_10 Depth=1
	movq	(%rbx), %rdi
	addq	$16, %rbx
	testq	%rdi, %rdi
	je	.LBB8_14
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB8_13
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=1
	movq	-16(%rbx), %rax
	cmpb	$0, (%rax,%r15)
	jne	.LBB8_13
# %bb.12:
	movb	-8(%rbx), %al
	jmp	.LBB8_19
.LBB8_6:
	movq	%rax, (%r13)
.LBB8_7:
	cmpl	$0, 16(%r13)
	jne	.LBB8_18
# %bb.8:
	movl	$7, 16(%r13)
.LBB8_18:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB8_19:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_14:
	cmpl	$1, %r12d
	jne	.LBB8_16
# %bb.15:
	movb	(%r14), %al
	jmp	.LBB8_19
.LBB8_16:
	cmpl	$0, 16(%r13)
	jne	.LBB8_18
# %bb.17:
	movl	$3, 16(%r13)
	jmp	.LBB8_18
.Lfunc_end8:
	.size	p_b_coll_elem, .Lfunc_end8-p_b_coll_elem
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function altoffset
	.type	altoffset,@function
altoffset:                              # @altoffset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r12d
	movl	$-1, %edx
	cmpl	$-1, %esi
	je	.LBB9_16
# %bb.1:
	movl	%esi, %r15d
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	jmp	.LBB9_2
.LBB9_12:                               #   in Loop: Header=BB9_2 Depth=1
	testl	%r12d, %r12d
	jne	.LBB9_16
.LBB9_13:                               #   in Loop: Header=BB9_2 Depth=1
	addl	$1, %eax
.LBB9_14:                               #   in Loop: Header=BB9_2 Depth=1
	movq	%rdi, %rbx
	cmpl	$-1, %eax
	je	.LBB9_16
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
	movq	(%rbx), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	cmpl	$-1879048192, %ecx      # imm = 0x90000000
	je	.LBB9_15
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	cmpl	$1610612736, %ecx       # imm = 0x60000000
	je	.LBB9_15
# %bb.4:                                #   in Loop: Header=BB9_2 Depth=1
	addq	$-268435456, %rcx       # imm = 0xF0000000
	shrq	$27, %rcx
	cmpq	$18, %rcx
	ja	.LBB9_16
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	leaq	8(%rbx), %rdi
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_7:                                #   in Loop: Header=BB9_2 Depth=1
	movl	%eax, %esi
	movl	%r12d, %edx
	callq	altoffset
	movl	$-1, %edx
	cmpl	$-1, %eax
	je	.LBB9_16
	.p2align	4, 0x90
.LBB9_8:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rcx
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	leaq	(%rbx,%r14,8), %rbx
	movq	(%rcx,%r14,8), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	je	.LBB9_11
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=2
	cmpl	$-2013265920, %ecx      # imm = 0x88000000
	je	.LBB9_8
# %bb.10:                               #   in Loop: Header=BB9_2 Depth=1
	cmpl	$-1879048192, %ecx      # imm = 0x90000000
	jne	.LBB9_16
.LBB9_11:                               #   in Loop: Header=BB9_2 Depth=1
	addq	$8, %rbx
	movq	%rbx, %rdi
	jmp	.LBB9_14
.LBB9_6:                                #   in Loop: Header=BB9_2 Depth=1
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	xorl	%eax, %eax
	jmp	.LBB9_14
.LBB9_15:
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	addl	%r15d, %r13d
	movl	%r13d, %edx
.LBB9_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	altoffset, .Lfunc_end9-altoffset
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_13
	.quad	.LBB9_16
	.quad	.LBB9_16
	.quad	.LBB9_13
	.quad	.LBB9_12
	.quad	.LBB9_16
	.quad	.LBB9_16
	.quad	.LBB9_16
	.quad	.LBB9_16
	.quad	.LBB9_7
	.quad	.LBB9_16
	.quad	.LBB9_14
	.quad	.LBB9_14
	.quad	.LBB9_7
	.quad	.LBB9_6
	.quad	.LBB9_14
	.quad	.LBB9_16
	.quad	.LBB9_14
	.quad	.LBB9_14
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[:<:]]"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"[:>:]]"
	.size	.L.str.1, 7

	.type	cclasses,@object        # @cclasses
	.section	.rodata,"a",@progbits
	.p2align	4
cclasses:
	.quad	.L.str.2
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.8
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.9
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.10
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.11
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.12
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.13
	.long	11                      # 0xb
	.zero	4
	.zero	16
	.size	cclasses, 208

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"alnum"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"alpha"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"blank"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cntrl"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"digit"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"graph"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"lower"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"print"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"punct"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"space"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"upper"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"xdigit"
	.size	.L.str.13, 7

	.type	cnames,@object          # @cnames
	.section	.rodata,"a",@progbits
	.p2align	4
cnames:
	.quad	.L.str.14
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.15
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.16
	.byte	2                       # 0x2
	.zero	7
	.quad	.L.str.17
	.byte	3                       # 0x3
	.zero	7
	.quad	.L.str.18
	.byte	4                       # 0x4
	.zero	7
	.quad	.L.str.19
	.byte	5                       # 0x5
	.zero	7
	.quad	.L.str.20
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.21
	.byte	7                       # 0x7
	.zero	7
	.quad	.L.str.22
	.byte	7                       # 0x7
	.zero	7
	.quad	.L.str.23
	.byte	8                       # 0x8
	.zero	7
	.quad	.L.str.24
	.byte	8                       # 0x8
	.zero	7
	.quad	.L.str.25
	.byte	9                       # 0x9
	.zero	7
	.quad	.L.str.26
	.byte	9                       # 0x9
	.zero	7
	.quad	.L.str.27
	.byte	10                      # 0xa
	.zero	7
	.quad	.L.str.28
	.byte	10                      # 0xa
	.zero	7
	.quad	.L.str.29
	.byte	11                      # 0xb
	.zero	7
	.quad	.L.str.30
	.byte	11                      # 0xb
	.zero	7
	.quad	.L.str.31
	.byte	12                      # 0xc
	.zero	7
	.quad	.L.str.32
	.byte	12                      # 0xc
	.zero	7
	.quad	.L.str.33
	.byte	13                      # 0xd
	.zero	7
	.quad	.L.str.34
	.byte	13                      # 0xd
	.zero	7
	.quad	.L.str.35
	.byte	14                      # 0xe
	.zero	7
	.quad	.L.str.36
	.byte	15                      # 0xf
	.zero	7
	.quad	.L.str.37
	.byte	16                      # 0x10
	.zero	7
	.quad	.L.str.38
	.byte	17                      # 0x11
	.zero	7
	.quad	.L.str.39
	.byte	18                      # 0x12
	.zero	7
	.quad	.L.str.40
	.byte	19                      # 0x13
	.zero	7
	.quad	.L.str.41
	.byte	20                      # 0x14
	.zero	7
	.quad	.L.str.42
	.byte	21                      # 0x15
	.zero	7
	.quad	.L.str.43
	.byte	22                      # 0x16
	.zero	7
	.quad	.L.str.44
	.byte	23                      # 0x17
	.zero	7
	.quad	.L.str.45
	.byte	24                      # 0x18
	.zero	7
	.quad	.L.str.46
	.byte	25                      # 0x19
	.zero	7
	.quad	.L.str.47
	.byte	26                      # 0x1a
	.zero	7
	.quad	.L.str.48
	.byte	27                      # 0x1b
	.zero	7
	.quad	.L.str.49
	.byte	28                      # 0x1c
	.zero	7
	.quad	.L.str.50
	.byte	28                      # 0x1c
	.zero	7
	.quad	.L.str.51
	.byte	29                      # 0x1d
	.zero	7
	.quad	.L.str.52
	.byte	29                      # 0x1d
	.zero	7
	.quad	.L.str.53
	.byte	30                      # 0x1e
	.zero	7
	.quad	.L.str.54
	.byte	30                      # 0x1e
	.zero	7
	.quad	.L.str.55
	.byte	31                      # 0x1f
	.zero	7
	.quad	.L.str.56
	.byte	31                      # 0x1f
	.zero	7
	.quad	.L.str.11
	.byte	32                      # 0x20
	.zero	7
	.quad	.L.str.57
	.byte	33                      # 0x21
	.zero	7
	.quad	.L.str.58
	.byte	34                      # 0x22
	.zero	7
	.quad	.L.str.59
	.byte	35                      # 0x23
	.zero	7
	.quad	.L.str.60
	.byte	36                      # 0x24
	.zero	7
	.quad	.L.str.61
	.byte	37                      # 0x25
	.zero	7
	.quad	.L.str.62
	.byte	38                      # 0x26
	.zero	7
	.quad	.L.str.63
	.byte	39                      # 0x27
	.zero	7
	.quad	.L.str.64
	.byte	40                      # 0x28
	.zero	7
	.quad	.L.str.65
	.byte	41                      # 0x29
	.zero	7
	.quad	.L.str.66
	.byte	42                      # 0x2a
	.zero	7
	.quad	.L.str.67
	.byte	43                      # 0x2b
	.zero	7
	.quad	.L.str.68
	.byte	44                      # 0x2c
	.zero	7
	.quad	.L.str.69
	.byte	45                      # 0x2d
	.zero	7
	.quad	.L.str.70
	.byte	45                      # 0x2d
	.zero	7
	.quad	.L.str.71
	.byte	46                      # 0x2e
	.zero	7
	.quad	.L.str.72
	.byte	46                      # 0x2e
	.zero	7
	.quad	.L.str.73
	.byte	47                      # 0x2f
	.zero	7
	.quad	.L.str.74
	.byte	47                      # 0x2f
	.zero	7
	.quad	.L.str.75
	.byte	48                      # 0x30
	.zero	7
	.quad	.L.str.76
	.byte	49                      # 0x31
	.zero	7
	.quad	.L.str.77
	.byte	50                      # 0x32
	.zero	7
	.quad	.L.str.78
	.byte	51                      # 0x33
	.zero	7
	.quad	.L.str.79
	.byte	52                      # 0x34
	.zero	7
	.quad	.L.str.80
	.byte	53                      # 0x35
	.zero	7
	.quad	.L.str.81
	.byte	54                      # 0x36
	.zero	7
	.quad	.L.str.82
	.byte	55                      # 0x37
	.zero	7
	.quad	.L.str.83
	.byte	56                      # 0x38
	.zero	7
	.quad	.L.str.84
	.byte	57                      # 0x39
	.zero	7
	.quad	.L.str.85
	.byte	58                      # 0x3a
	.zero	7
	.quad	.L.str.86
	.byte	59                      # 0x3b
	.zero	7
	.quad	.L.str.87
	.byte	60                      # 0x3c
	.zero	7
	.quad	.L.str.88
	.byte	61                      # 0x3d
	.zero	7
	.quad	.L.str.89
	.byte	62                      # 0x3e
	.zero	7
	.quad	.L.str.90
	.byte	63                      # 0x3f
	.zero	7
	.quad	.L.str.91
	.byte	64                      # 0x40
	.zero	7
	.quad	.L.str.92
	.byte	91                      # 0x5b
	.zero	7
	.quad	.L.str.93
	.byte	92                      # 0x5c
	.zero	7
	.quad	.L.str.94
	.byte	92                      # 0x5c
	.zero	7
	.quad	.L.str.95
	.byte	93                      # 0x5d
	.zero	7
	.quad	.L.str.96
	.byte	94                      # 0x5e
	.zero	7
	.quad	.L.str.97
	.byte	94                      # 0x5e
	.zero	7
	.quad	.L.str.98
	.byte	95                      # 0x5f
	.zero	7
	.quad	.L.str.99
	.byte	95                      # 0x5f
	.zero	7
	.quad	.L.str.100
	.byte	96                      # 0x60
	.zero	7
	.quad	.L.str.101
	.byte	123                     # 0x7b
	.zero	7
	.quad	.L.str.102
	.byte	123                     # 0x7b
	.zero	7
	.quad	.L.str.103
	.byte	124                     # 0x7c
	.zero	7
	.quad	.L.str.104
	.byte	125                     # 0x7d
	.zero	7
	.quad	.L.str.105
	.byte	125                     # 0x7d
	.zero	7
	.quad	.L.str.106
	.byte	126                     # 0x7e
	.zero	7
	.quad	.L.str.107
	.byte	127                     # 0x7f
	.zero	7
	.zero	16
	.size	cnames, 1536

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"NUL"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"SOH"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"STX"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ETX"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"EOT"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ENQ"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ACK"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"BEL"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"alert"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BS"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"backspace"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"HT"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tab"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"LF"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"newline"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"VT"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"vertical-tab"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FF"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"form-feed"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"CR"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"carriage-return"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SO"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"SI"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"DLE"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"DC1"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"DC2"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"DC3"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"DC4"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"NAK"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"SYN"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"ETB"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"CAN"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"EM"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"SUB"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ESC"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"IS4"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"FS"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"IS3"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"GS"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"IS2"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"RS"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"IS1"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"US"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"exclamation-mark"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"quotation-mark"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"number-sign"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"dollar-sign"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"percent-sign"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ampersand"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"apostrophe"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"left-parenthesis"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"right-parenthesis"
	.size	.L.str.65, 18

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"asterisk"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"plus-sign"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"comma"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"hyphen"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"hyphen-minus"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"period"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"full-stop"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"slash"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"solidus"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"zero"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"one"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"two"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"three"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"four"
	.size	.L.str.79, 5

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"five"
	.size	.L.str.80, 5

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"six"
	.size	.L.str.81, 4

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"seven"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"eight"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"nine"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"colon"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"semicolon"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"less-than-sign"
	.size	.L.str.87, 15

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"equals-sign"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"greater-than-sign"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"question-mark"
	.size	.L.str.90, 14

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"commercial-at"
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"left-square-bracket"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"backslash"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"reverse-solidus"
	.size	.L.str.94, 16

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"right-square-bracket"
	.size	.L.str.95, 21

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"circumflex"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"circumflex-accent"
	.size	.L.str.97, 18

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"underscore"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"low-line"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"grave-accent"
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"left-brace"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"left-curly-bracket"
	.size	.L.str.102, 19

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"vertical-line"
	.size	.L.str.103, 14

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"right-brace"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"right-curly-bracket"
	.size	.L.str.105, 20

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"tilde"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"DEL"
	.size	.L.str.107, 4

	.type	nuls,@object            # @nuls
	.local	nuls
	.comm	nuls,10,1
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
