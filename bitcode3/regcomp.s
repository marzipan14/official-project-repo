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
	movl	%edx, %r12d
	movq	%rsi, %r13
	movl	$16, %ebx
	testb	$16, %r12b
	je	.LBB0_2
# %bb.1:
	movl	%r12d, %eax
	andl	$1, %eax
	jne	.LBB0_164
.LBB0_2:
	testb	$32, %r12b
	jne	.LBB0_4
# %bb.3:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r14
	jmp	.LBB0_6
.LBB0_4:
	movq	16(%rdi), %r14
	subq	%r13, %r14
	jb	.LBB0_164
# %bb.5:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_6:
	movl	$423, %edi              # imm = 0x1A7
	callq	malloc
	movl	$12, %ebx
	testq	%rax, %rax
	je	.LBB0_164
# %bb.7:
	movq	%rax, %r15
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
	movl	%r12d, %eax
	andl	$-129, %eax
	movq	%r15, -248(%rbp)
	movq	%r13, -304(%rbp)
	addq	%r13, %r14
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
	movq	$256, 16(%r15)          # imm = 0x100
	movups	%xmm0, 24(%r15)
	movl	%eax, 40(%r15)
	movq	$0, 96(%r15)
	movl	$-1, 104(%r15)
	movups	%xmm0, 112(%r15)
	movl	$0, 128(%r15)
	movq	$0, 136(%r15)
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movdqu	%xmm0, 72(%r15)
	leaq	160(%r15), %rdi
	leaq	288(%r15), %rax
	movq	%rax, 88(%r15)
	xorl	%r14d, %r14d
	movl	$256, %edx              # imm = 0x100
	xorl	%esi, %esi
	callq	memset
	movl	$0, 144(%r15)
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rbx
	cmpq	%rax, %rbx
	jl	.LBB0_14
# %bb.9:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r13
	cmpq	%r13, %rax
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
	movq	%r13, -272(%rbp)
	jmp	.LBB0_14
.LBB0_12:
	movq	%r15, %rdi
	callq	free
	jmp	.LBB0_164
.LBB0_13:
	movl	$12, -288(%rbp)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$12, %r14d
.LBB0_14:
	movq	-280(%rbp), %rax
	leaq	1(%rbx), %rcx
	movq	%rcx, -264(%rbp)
	movq	$134217728, (%rax,%rbx,8) # imm = 0x8000000
	movq	-264(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, 56(%r15)
	testb	$1, %r12b
	je	.LBB0_16
# %bb.15:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	callq	p_ere
	jmp	.LBB0_24
.LBB0_16:
	testb	$16, %r12b
	jne	.LBB0_18
# %bb.17:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	movl	$128, %edx
	callq	p_bre
	jmp	.LBB0_24
.LBB0_18:
	movq	-304(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jae	.LBB0_21
# %bb.19:
	leaq	-304(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, -304(%rbp)
	movsbl	(%rax), %esi
	movq	%rbx, %rdi
	callq	ordinary
	movq	-304(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jb	.LBB0_20
	jmp	.LBB0_24
.LBB0_21:
	testl	%r14d, %r14d
	jne	.LBB0_23
# %bb.22:
	movl	$14, -288(%rbp)
.LBB0_23:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
.LBB0_24:
	cmpl	$0, -288(%rbp)
	movq	-264(%rbp), %rsi
	je	.LBB0_26
# %bb.25:
	leaq	-1(%rsi), %rax
	movq	%rax, 64(%r15)
	jmp	.LBB0_51
.LBB0_26:
	movq	-272(%rbp), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jl	.LBB0_33
# %bb.27:
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB0_33
# %bb.28:
	movq	-280(%rbp), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_30
# %bb.29:
	movq	%rax, -280(%rbp)
	movq	%rbx, -272(%rbp)
	movl	-288(%rbp), %eax
	jmp	.LBB0_33
.LBB0_30:
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB0_32
# %bb.31:
	movl	$12, -288(%rbp)
	movl	$12, %eax
.LBB0_32:
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
.LBB0_33:
	movq	-280(%rbp), %rcx
	movq	-264(%rbp), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, -264(%rbp)
	movq	$134217728, (%rcx,%rdx,8) # imm = 0x8000000
	movq	-264(%rbp), %rsi
	leaq	-1(%rsi), %rcx
	movq	%rcx, 64(%r15)
	testl	%eax, %eax
	jne	.LBB0_51
# %bb.34:                               # %.preheader20
	movq	88(%r15), %r9
	movq	$-128, %r10
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_36 Depth=1
	addq	$1, %r10
	cmpq	$128, %r10
	je	.LBB0_50
.LBB0_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_48 Depth 3
	cmpb	$0, (%r9,%r10)
	jne	.LBB0_35
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=1
	movl	20(%r15), %eax
	leal	7(%rax), %edx
	leal	14(%rax), %ecx
	testl	%edx, %edx
	cmovnsl	%edx, %ecx
	testl	%eax, %eax
	jle	.LBB0_35
# %bb.38:                               #   in Loop: Header=BB0_36 Depth=1
	sarl	$3, %ecx
	movzbl	%r10b, %r14d
	movq	32(%r15), %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_39:                               #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rax,%r14)
	jne	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_39 Depth=2
	addl	$1, %esi
	movslq	16(%r15), %rdi
	addq	%rdi, %rax
	cmpl	%ecx, %esi
	jl	.LBB0_39
	jmp	.LBB0_35
.LBB0_41:                               #   in Loop: Header=BB0_36 Depth=1
	movl	84(%r15), %r8d
	leal	1(%r8), %eax
	movl	%eax, 84(%r15)
	movb	%r8b, (%r9,%r10)
	cmpq	$126, %r10
	jg	.LBB0_35
# %bb.42:                               # %.preheader17
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	%r10, %r11
	jmp	.LBB0_45
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=2
	movb	%r8b, (%r9,%r11)
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=2
	cmpq	$126, %rdi
	jge	.LBB0_35
.LBB0_45:                               #   Parent Loop BB0_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	movq	%r11, %rdi
	addq	$1, %r11
	cmpb	$0, 1(%r9,%rdi)
	jne	.LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=2
	movl	20(%r15), %eax
	leal	7(%rax), %ecx
	leal	14(%rax), %esi
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	testl	%eax, %eax
	jle	.LBB0_43
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=2
	sarl	$3, %esi
	movq	32(%r15), %rax
	movzbl	%r11b, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_48:                               #   Parent Loop BB0_36 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax,%r14), %edx
	cmpb	(%rax,%rbx), %dl
	jne	.LBB0_44
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=3
	addl	$1, %ecx
	movslq	16(%r15), %rdx
	addq	%rdx, %rax
	cmpl	%esi, %ecx
	jl	.LBB0_48
	jmp	.LBB0_43
.LBB0_50:
	movq	-264(%rbp), %rsi
.LBB0_51:
	leaq	128(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, 48(%r15)
	movq	-280(%rbp), %rdi
	shlq	$3, %rsi
	callq	realloc
	movq	%rax, %rbx
	movq	%rax, 8(%r15)
	movl	-288(%rbp), %eax
	testq	%rbx, %rbx
	je	.LBB0_56
# %bb.52:
	testl	%eax, %eax
	movq	-48(%rbp), %r11         # 8-byte Reload
	jne	.LBB0_111
# %bb.53:
	movslq	20(%r15), %r10
	xorl	%r9d, %r9d
	movl	$0, %r12d
	testq	%r10, %r10
	jle	.LBB0_64
# %bb.54:
	movq	24(%r15), %r8
	leaq	-1(%r10), %rcx
	movl	%r10d, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	.LBB0_59
# %bb.55:
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	jmp	.LBB0_61
.LBB0_56:
	testl	%eax, %eax
	jne	.LBB0_58
# %bb.57:
	movl	$12, -288(%rbp)
.LBB0_58:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%r15)
	movq	-48(%rbp), %r11         # 8-byte Reload
	jmp	.LBB0_111
.LBB0_59:
	leaq	120(%r8), %rdi
	subq	%rax, %r10
	xorl	%esi, %esi
	movl	$1, %r9d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_60:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rdi), %rcx
	movq	(%rdi), %rdx
	orq	-96(%rdi), %rcx
	orq	-32(%rdi), %rdx
	orq	%rcx, %rdx
	cmovnel	%r9d, %r12d
	addq	$4, %rsi
	subq	$-128, %rdi
	cmpq	%rsi, %r10
	jne	.LBB0_60
.LBB0_61:
	testq	%rax, %rax
	movl	$0, %r9d
	je	.LBB0_64
# %bb.62:                               # %.preheader12
	shlq	$5, %rsi
	leaq	(%r8,%rsi), %rcx
	addq	$24, %rcx
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rcx)
	cmovnel	%edx, %r12d
	addq	$32, %rcx
	addq	$-1, %rax
	jne	.LBB0_63
.LBB0_64:
	movl	$0, 104(%r15)
	addq	$8, %rbx
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB0_69
.LBB0_79:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, 104(%r15)
	movl	%eax, %r9d
	movq	%rdx, %r13
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=1
	xorl	%esi, %esi
.LBB0_68:                               #   in Loop: Header=BB0_69 Depth=1
	andl	$-134217728, %r14d      # imm = 0xF8000000
	movq	%rdi, %rbx
	cmpl	$134217728, %r14d       # imm = 0x8000000
	je	.LBB0_105
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_75 Depth 2
	leaq	8(%rbx), %rdi
	movq	(%rbx), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	cmpq	$19, %rcx
	ja	.LBB0_88
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_65
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_79
# %bb.73:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, %ecx
	addl	%eax, %r9d
	movl	%r9d, 104(%r15)
	movq	%rdx, %r13
	xorl	%esi, %esi
	movl	%ecx, %eax
	jmp	.LBB0_68
.LBB0_65:                               #   in Loop: Header=BB0_69 Depth=1
	testl	%eax, %eax
	jns	.LBB0_66
	jmp	.LBB0_67
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movl	%eax, %esi
	movl	%r12d, %edx
	callq	altoffset
	movq	%rbx, %rdi
	.p2align	4, 0x90
.LBB0_75:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rcx
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	leaq	(%rdi,%r14,8), %rdi
	movq	(%rcx,%r14,8), %r14
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	je	.LBB0_80
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=2
	cmpl	$-2013265920, %ecx      # imm = 0x88000000
	je	.LBB0_75
# %bb.77:                               #   in Loop: Header=BB0_69 Depth=1
	cmpl	$-1879048192, %ecx      # imm = 0x90000000
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_71
	jmp	.LBB0_104
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=1
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_71
.LBB0_81:                               #   in Loop: Header=BB0_69 Depth=1
	testq	%rsi, %rsi
	cmoveq	%rbx, %rdx
	addq	$1, %rsi
	jmp	.LBB0_68
.LBB0_82:                               #   in Loop: Header=BB0_69 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_91
# %bb.83:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_95
# %bb.84:                               #   in Loop: Header=BB0_69 Depth=1
	addl	%eax, %r9d
	movl	%r9d, 104(%r15)
	movq	%rdx, %r13
	jmp	.LBB0_97
.LBB0_85:                               #   in Loop: Header=BB0_69 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_93
# %bb.86:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	js	.LBB0_98
# %bb.87:                               #   in Loop: Header=BB0_69 Depth=1
	addl	%eax, %r9d
	movl	%r9d, 104(%r15)
	movq	%rdx, %r13
	jmp	.LBB0_100
.LBB0_88:                               #   in Loop: Header=BB0_69 Depth=1
	movslq	(%r11), %rcx
	cmpq	%rcx, %rsi
	jle	.LBB0_103
# %bb.89:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, (%r11)
	testl	%eax, %eax
	jns	.LBB0_101
# %bb.90:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, 104(%r15)
	movl	%eax, %r9d
	jmp	.LBB0_102
.LBB0_91:                               #   in Loop: Header=BB0_69 Depth=1
	testl	%eax, %eax
	js	.LBB0_96
# %bb.92:                               #   in Loop: Header=BB0_69 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_96
.LBB0_93:                               #   in Loop: Header=BB0_69 Depth=1
	testl	%eax, %eax
	js	.LBB0_99
# %bb.94:                               #   in Loop: Header=BB0_69 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_99
.LBB0_95:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, 104(%r15)
	movl	%eax, %r9d
	movq	%rdx, %r13
.LBB0_96:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, %esi
.LBB0_97:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, %eax
	notl	%eax
	shrl	$31, %eax
.LBB0_66:                               #   in Loop: Header=BB0_69 Depth=1
	addl	%esi, %eax
	jmp	.LBB0_67
.LBB0_98:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, 104(%r15)
	movl	%eax, %r9d
	movq	%rdx, %r13
.LBB0_99:                               #   in Loop: Header=BB0_69 Depth=1
	movl	%eax, %esi
.LBB0_100:                              #   in Loop: Header=BB0_69 Depth=1
	movl	%esi, %ecx
	notl	%ecx
	shrl	$31, %ecx
	addl	%esi, %ecx
	cmpl	$1, %r12d
	movl	$0, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	%ecx, %eax
	jmp	.LBB0_67
.LBB0_101:                              #   in Loop: Header=BB0_69 Depth=1
	addl	%eax, %r9d
	movl	%r9d, 104(%r15)
.LBB0_102:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rdx, %r13
.LBB0_103:                              #   in Loop: Header=BB0_69 Depth=1
	xorl	%esi, %esi
	movl	$-1, %eax
	jmp	.LBB0_68
.LBB0_104:
	orb	$4, 72(%r15)
	jmp	.LBB0_111
.LBB0_105:
	movslq	(%r11), %rdi
	testq	%rdi, %rdi
	je	.LBB0_146
# %bb.106:
	addq	$1, %rdi
	callq	malloc
	movq	%rax, 96(%r15)
	testq	%rax, %rax
	je	.LBB0_145
# %bb.107:
	movq	-48(%rbp), %r11         # 8-byte Reload
	movslq	(%r11), %rcx
	testq	%rcx, %rcx
	jle	.LBB0_110
	.p2align	4, 0x90
.LBB0_108:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdx
	addq	$8, %r13
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpl	$268435456, %esi        # imm = 0x10000000
	jne	.LBB0_108
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=1
	movb	%dl, (%rax)
	addq	$1, %rax
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB0_108
.LBB0_110:
	movb	$0, (%rax)
.LBB0_111:
	cmpl	$4, (%r11)
	jl	.LBB0_147
# %bb.112:
	cmpl	$0, -288(%rbp)
	jne	.LBB0_124
# %bb.113:
	movl	$1028, %edi             # imm = 0x404
	callq	malloc
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 112(%r15)
	testq	%rax, %rax
	je	.LBB0_123
# %bb.114:
	leaq	512(%rax), %r8
	movq	%r8, 112(%r15)
	movq	%r15, %rdx
	addq	$129, %rdx
	cmpq	%rdx, %rax
	jae	.LBB0_118
# %bb.115:
	movq	%rax, %rdx
	addq	$1024, %rdx             # imm = 0x400
	cmpq	%rdx, %rcx
	jae	.LBB0_118
# %bb.116:                              # %.preheader7
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_117:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB0_117
	jmp	.LBB0_120
.LBB0_118:
	movd	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_119:                              # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rax,%rdx,4)
	movdqu	%xmm0, 16(%rax,%rdx,4)
	movdqu	%xmm0, 32(%rax,%rdx,4)
	movdqu	%xmm0, 48(%rax,%rdx,4)
	addq	$16, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_119
.LBB0_120:
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB0_123
# %bb.121:
	movq	96(%r15), %rdx
	movl	$-1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_122:                              # =>This Inner Loop Header: Depth=1
	addl	%esi, %eax
	movzbl	(%rdx,%rdi), %ebx
	movl	%eax, (%r8,%rbx,4)
	addq	$1, %rdi
	movslq	(%rcx), %rax
	addl	$-1, %esi
	cmpq	%rax, %rdi
	jl	.LBB0_122
.LBB0_123:
	cmpl	$0, -288(%rbp)
	je	.LBB0_128
.LBB0_124:
	movq	120(%r15), %rax
.LBB0_125:
	testq	%rax, %rax
	jne	.LBB0_147
.LBB0_126:
	movq	112(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_147
# %bb.127:
	callq	free
	movq	$0, 112(%r15)
	jmp	.LBB0_147
.LBB0_128:
	movslq	(%rcx), %rdi
	shlq	$2, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_165
# %bb.129:
	movq	%rax, %r14
	movslq	128(%r15), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 120(%r15)
	testq	%rax, %rax
	je	.LBB0_125
# %bb.130:
	movq	-48(%rbp), %r11         # 8-byte Reload
	movl	(%r11), %r10d
	testl	%r10d, %r10d
	jle	.LBB0_134
# %bb.131:                              # %.preheader5
	movl	$-1, %edx
	xorl	%edi, %edi
.LBB0_132:                              # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%r10,2), %ecx
	movl	%ecx, (%rax,%rdi,4)
	addq	$1, %rdi
	movl	(%r11), %r10d
	movslq	%r10d, %rsi
	addl	$-1, %edx
	cmpq	%rsi, %rdi
	jl	.LBB0_132
# %bb.133:
	testl	%r10d, %r10d
	jg	.LBB0_140
.LBB0_134:
	movl	%r10d, %edx
.LBB0_135:
	testl	%r10d, %r10d
	js	.LBB0_169
# %bb.136:
	leal	1(%r10), %r9d
	movl	%r9d, %r8d
	andl	$1, %r8d
	testl	%r10d, %r10d
	je	.LBB0_166
# %bb.137:
	subq	%r8, %r9
	xorl	%esi, %esi
	movl	%r10d, %edi
.LBB0_138:                              # =>This Inner Loop Header: Depth=1
	addl	%edi, %edx
	movl	(%rax,%rsi,4), %ecx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	4(%rax,%rsi,4), %ecx
	movl	%edx, (%rax,%rsi,4)
	movl	(%r11), %edx
	addl	%edi, %edx
	addl	$-1, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, 4(%rax,%rsi,4)
	addq	$2, %rsi
	movl	(%r11), %edx
	addl	$-2, %edi
	cmpq	%rsi, %r9
	jne	.LBB0_138
	jmp	.LBB0_167
.LBB0_139:                              #   in Loop: Header=BB0_140 Depth=1
	addl	$-1, %r10d
	cmpq	$1, %r8
	jle	.LBB0_135
.LBB0_140:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_142 Depth 2
	movq	%rsi, %r8
	addq	$-1, %rsi
	movl	%r10d, -4(%r14,%r8,4)
	movl	(%r11), %edx
	cmpl	%edx, %r10d
	jge	.LBB0_139
# %bb.141:                              #   in Loop: Header=BB0_140 Depth=1
	movq	96(%r15), %rbx
	.p2align	4, 0x90
.LBB0_142:                              #   Parent Loop BB0_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rsi), %ecx
	movslq	%r10d, %rdi
	cmpb	(%rbx,%rdi), %cl
	je	.LBB0_139
# %bb.143:                              #   in Loop: Header=BB0_142 Depth=2
	movl	(%rax,%rdi,4), %ecx
	subl	%r8d, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, (%rax,%rdi,4)
	movl	(%r14,%rdi,4), %r10d
	movl	(%r11), %edx
	cmpl	%edx, %r10d
	jl	.LBB0_142
	jmp	.LBB0_139
.LBB0_145:
	movl	$0, 128(%r15)
.LBB0_146:
	movl	$-1, 104(%r15)
.LBB0_147:
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	je	.LBB0_149
# %bb.148:
	xorl	%ecx, %ecx
	jmp	.LBB0_157
.LBB0_149:
	movq	8(%r15), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB0_152
	.p2align	4, 0x90
.LBB0_150:                              #   in Loop: Header=BB0_152 Depth=1
	cmpq	%rcx, %rsi
	cmovgeq	%rsi, %rcx
	addq	$-1, %rsi
.LBB0_151:                              #   in Loop: Header=BB0_152 Depth=1
	addq	$8, %rdx
	cmpl	$134217728, %edi        # imm = 0x8000000
	je	.LBB0_155
.LBB0_152:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdi
	andl	$-134217728, %edi       # imm = 0xF8000000
	cmpl	$1342177280, %edi       # imm = 0x50000000
	je	.LBB0_150
# %bb.153:                              #   in Loop: Header=BB0_152 Depth=1
	cmpl	$1207959552, %edi       # imm = 0x48000000
	jne	.LBB0_151
# %bb.154:                              #   in Loop: Header=BB0_152 Depth=1
	addq	$1, %rsi
	jmp	.LBB0_151
.LBB0_155:
	testq	%rsi, %rsi
	je	.LBB0_157
# %bb.156:
	orb	$4, 72(%r15)
.LBB0_157:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, 152(%r15)
	movl	$53829, (%r15)          # imm = 0xD245
	movq	136(%r15), %rcx
	movq	%rcx, 8(%rdi)
	movq	%r15, 24(%rdi)
	movl	$62053, (%rdi)          # imm = 0xF265
	testb	$4, 72(%r15)
	jne	.LBB0_160
# %bb.158:
	testl	%eax, %eax
	jne	.LBB0_163
# %bb.159:
	xorl	%ebx, %ebx
	jmp	.LBB0_164
.LBB0_160:
	testl	%eax, %eax
	jne	.LBB0_162
# %bb.161:
	movl	$15, -288(%rbp)
.LBB0_162:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
.LBB0_163:
	callq	regfree
	movl	-288(%rbp), %ebx
.LBB0_164:
	movl	%ebx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_165:
	movq	$0, 120(%r15)
	jmp	.LBB0_126
.LBB0_166:
	xorl	%esi, %esi
.LBB0_167:
	testq	%r8, %r8
	je	.LBB0_169
# %bb.168:
	movl	(%rax,%rsi,4), %ecx
	movl	%r10d, %edi
	subl	%esi, %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	movl	%edi, (%rax,%rsi,4)
	movl	(%r11), %edx
.LBB0_169:
	cmpl	%edx, %r10d
	jge	.LBB0_179
# %bb.170:                              # %.preheader
	movl	%r10d, %r8d
	jmp	.LBB0_174
.LBB0_171:                              #   in Loop: Header=BB0_174 Depth=1
	movl	(%r11), %edx
	addl	$1, %esi
.LBB0_172:                              #   in Loop: Header=BB0_174 Depth=1
	movl	%esi, %r8d
.LBB0_173:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	%edx, %r8d
	jge	.LBB0_179
.LBB0_174:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_177 Depth 2
	movslq	%r10d, %rcx
	movl	(%r14,%rcx,4), %r10d
	cmpl	%r10d, %r8d
	jg	.LBB0_173
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	%edx, %r8d
	jge	.LBB0_173
# %bb.176:                              #   in Loop: Header=BB0_174 Depth=1
	movslq	%r10d, %rbx
	movslq	%r8d, %rsi
	movl	%r10d, %edi
	subl	%r8d, %edi
	.p2align	4, 0x90
.LBB0_177:                              #   Parent Loop BB0_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %ecx
	addl	%edi, %edx
	cmpl	%edx, %ecx
	cmovlel	%ecx, %edx
	movl	%edx, (%rax,%rsi,4)
	cmpq	%rbx, %rsi
	jge	.LBB0_171
# %bb.178:                              #   in Loop: Header=BB0_177 Depth=2
	addq	$1, %rsi
	movslq	(%r11), %rdx
	addl	$-1, %edi
	cmpq	%rdx, %rsi
	jl	.LBB0_177
	jmp	.LBB0_172
.LBB0_179:
	movq	%r14, %rdi
	callq	free
	jmp	.LBB0_124
.Lfunc_end0:
	.size	regcomp, .Lfunc_end0-regcomp
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_71
	.quad	.LBB0_81
	.quad	.LBB0_71
	.quad	.LBB0_71
	.quad	.LBB0_82
	.quad	.LBB0_85
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_68
	.quad	.LBB0_88
	.quad	.LBB0_74
	.quad	.LBB0_71
	.quad	.LBB0_68
	.quad	.LBB0_68
	.quad	.LBB0_74
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_71
	.quad	.LBB0_71
	.quad	.LBB0_71
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
	jne	.LBB1_9
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	cmpq	%rax, 40(%rdi)
	jl	.LBB1_8
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
.LBB1_8:
	orq	%r15, %r14
	movq	24(%rbx), %rax
	movq	40(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%rbx)
	movq	%r14, (%rax,%rcx,8)
.LBB1_9:
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
	subq	$120, %rsp
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rdi, %r13
	leaq	40(%rdi), %r12
	leaq	16(%rdi), %r8
	leaq	32(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	24(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	40(%rdi), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	(%rdi), %rcx
	movq	8(%rdi), %r15
	cmpq	%r15, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jae	.LBB2_246
# %bb.1:
	movl	$1, -92(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm1       # xmm1 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movdqa	%xmm1, -80(%rbp)        # 16-byte Spill
	movq	%r12, -136(%rbp)        # 8-byte Spill
	jmp	.LBB2_5
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	je	.LBB2_56
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	movq	8(%r13), %r15
	cmpq	%r15, %rcx
	jae	.LBB2_49
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_133 Depth 2
                                        #     Child Loop BB2_216 Depth 2
                                        #     Child Loop BB2_163 Depth 2
	movsbl	(%rcx), %eax
	cmpl	$124, %eax
	je	.LBB2_49
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	-140(%rbp), %eax        # 4-byte Folded Reload
	je	.LBB2_49
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %r14
	movq	%r14, (%r13)
	movsbl	(%rcx), %ebx
	movq	40(%r13), %r9
	leal	-36(%rbx), %eax
	cmpl	$88, %eax
	ja	.LBB2_45
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_9:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_108
# %bb.10:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
	jmp	.LBB2_108
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_78
# %bb.12:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, %r9
	jl	.LBB2_77
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_77
# %bb.14:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, %r15
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_73
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_76
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
	movl	$nuls, %r14d
.LBB2_20:                               #   in Loop: Header=BB2_5 Depth=1
	movq	56(%r13), %rax
	movq	136(%rax), %rdx
	movq	%rdx, %rcx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	leaq	1(%rdx), %r12
	movq	%r12, 136(%rax)
	cmpq	$9, %r12
	jg	.LBB2_21
# %bb.57:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r9, 72(%r13,%rax,8)
	cmpl	$0, (%r8)
	jne	.LBB2_22
.LBB2_58:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, (%rax)
	jl	.LBB2_89
# %bb.59:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB2_89
# %bb.60:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_85
# %bb.61:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movq	(%r13), %r14
	movq	8(%r13), %r15
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_88
.LBB2_23:                               #   in Loop: Header=BB2_5 Depth=1
	movq	56(%r13), %rax
	testb	$8, 40(%rax)
	jne	.LBB2_62
# %bb.24:                               #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
	cmpl	$0, (%r8)
	jne	.LBB2_110
# %bb.25:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, %r9
	jl	.LBB2_233
# %bb.26:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_233
# %bb.27:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_229
# %bb.28:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_232
.LBB2_29:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movq	%r9, %rbx
	callq	p_bracket
	jmp	.LBB2_46
.LBB2_30:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jb	.LBB2_34
# %bb.31:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$5, (%r8)
.LBB2_33:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
.LBB2_34:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%r14), %rax
	movq	%rax, (%r13)
	movsbl	(%r14), %esi
	movq	%r13, %rdi
	movq	%r9, %rbx
	callq	ordinary
	movq	%rbx, %r9
	movq	-48(%rbp), %r8          # 8-byte Reload
	xorl	%r14d, %r14d
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_110
.LBB2_35:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_84
# %bb.36:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, %r9
	jl	.LBB2_83
# %bb.37:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB2_83
# %bb.38:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, %r15
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_79
# %bb.39:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_82
.LBB2_40:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jae	.LBB2_45
# %bb.41:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, %r14
	callq	__locale_ctype_ptr
	movq	%r14, %r9
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	(%rcx), %ecx
	testb	$4, 1(%rax,%rcx)
	je	.LBB2_45
# %bb.42:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rdx)
	jne	.LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%rdx)
.LBB2_44:                               #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
.LBB2_45:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r9, %rbx
	callq	ordinary
.LBB2_46:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %r9
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_109
.LBB2_47:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_108
# %bb.48:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$14, (%r8)
	jmp	.LBB2_108
.LBB2_21:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	je	.LBB2_58
.LBB2_22:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %r14
	jb	.LBB2_90
	jmp	.LBB2_91
.LBB2_49:                               #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %r14
	movq	%r14, %rdx
	subq	-104(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB2_257
# %bb.50:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	%r15, %rcx
	jae	.LBB2_250
# %bb.51:                               #   in Loop: Header=BB2_5 Depth=1
	cmpb	$124, (%rcx)
	jne	.LBB2_250
# %bb.52:                               #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rcx
	movq	%rcx, (%r13)
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	je	.LBB2_54
# %bb.53:                               #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	doinsert
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	40(%r13), %r14
	movq	%rbx, %rax
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%rbx, -112(%rbp)        # 8-byte Spill
.LBB2_54:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	je	.LBB2_63
# %bb.55:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	-1(%r14), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_241
.LBB2_56:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
	jmp	.LBB2_3
.LBB2_62:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	-124(%rbp), %rax
	movq	%rax, (%r13)
	leaq	-121(%rbp), %rax
	movq	%rax, 8(%r13)
	movl	$6097502, -124(%rbp)    # imm = 0x5D0A5E
	movq	%r13, %rdi
	movq	%r9, %rbx
	callq	p_bracket
	movq	%rbx, %r9
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r14, (%r13)
	movq	%r15, 8(%r13)
	jmp	.LBB2_109
.LBB2_63:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r14, %r15
	subq	-112(%rbp), %r15        # 8-byte Folded Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %r14
	jl	.LBB2_67
# %bb.64:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rax
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jge	.LBB2_68
# %bb.65:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_211
# %bb.66:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r14)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
.LBB2_67:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
.LBB2_68:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$2281701376, %eax       # imm = 0x88000000
	addq	$-134217728, %rax       # imm = 0xF8000000
	orq	%rax, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%r12)
	movq	%r15, (%rax,%rdx,8)
	movq	(%r12), %r14
	leaq	-1(%r14), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	testl	%ecx, %ecx
	jne	.LBB2_241
# %bb.69:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %r14
	movq	(%rax,%rdx,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%r14, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movq	(%r12), %r14
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %r14
	jl	.LBB2_240
# %bb.70:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB2_240
# %bb.71:                               #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_237
# %bb.72:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_240
.LBB2_73:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_75
# %bb.74:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_75:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
.LBB2_76:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %r9
.LBB2_77:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movq	$536870912, (%rax,%rcx,8) # imm = 0x20000000
.LBB2_78:                               #   in Loop: Header=BB2_5 Depth=1
	movq	56(%r13), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
	jmp	.LBB2_109
.LBB2_85:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_87
# %bb.86:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_87:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$nuls, %r14d
.LBB2_88:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
.LBB2_89:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r12, %rax
	orq	$1744830464, %rax       # imm = 0x68000000
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rdi)
	movq	%rax, (%rcx,%rdx,8)
	cmpq	%r15, %r14
	jae	.LBB2_91
.LBB2_90:                               #   in Loop: Header=BB2_5 Depth=1
	cmpb	$41, (%r14)
	je	.LBB2_92
.LBB2_91:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movl	$41, %esi
	movq	%r9, %rbx
	callq	p_ere
	movq	%rbx, %r9
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB2_92:                               #   in Loop: Header=BB2_5 Depth=1
	cmpq	$9, %r12
	jg	.LBB2_94
# %bb.93:                               #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 152(%r13,%rcx,8)
.LBB2_94:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_104
# %bb.95:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, (%rbx)
	jl	.LBB2_103
# %bb.96:                               #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB2_103
# %bb.97:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_99
# %bb.98:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_102
.LBB2_79:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_81
# %bb.80:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_81:                               #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
.LBB2_82:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %r9
.LBB2_83:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movq	$402653184, (%rax,%rcx,8) # imm = 0x18000000
.LBB2_84:                               #   in Loop: Header=BB2_5 Depth=1
	movq	56(%r13), %rax
	orl	$1, 72(%rax)
	addl	$1, 76(%rax)
	movl	$1, %r14d
	jmp	.LBB2_110
.LBB2_99:                               #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_101
# %bb.100:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_101:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
.LBB2_102:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
.LBB2_103:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1879048192, %r12       # imm = 0x70000000
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rbx, %rsi
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movq	%r12, (%rax,%rcx,8)
.LBB2_104:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r13), %rax
	cmpq	8(%r13), %rax
	movq	%rbx, %r12
	jae	.LBB2_106
# %bb.105:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, (%r13)
	xorl	%r14d, %r14d
	cmpb	$41, (%rax)
	je	.LBB2_110
.LBB2_106:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_108
# %bb.107:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$8, (%r8)
	.p2align	4, 0x90
.LBB2_108:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_109:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
.LBB2_110:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rax, %rcx
	jae	.LBB2_4
# %bb.111:                              #   in Loop: Header=BB2_5 Depth=1
	movb	(%rcx), %bl
	leal	-42(%rbx), %edx
	cmpb	$2, %dl
	jb	.LBB2_116
# %bb.112:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$63, %bl
	je	.LBB2_116
# %bb.113:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$123, %bl
	jne	.LBB2_4
# %bb.114:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_4
# %bb.115:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, %r15
	callq	__locale_ctype_ptr
	movq	%r15, %r9
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	je	.LBB2_4
	.p2align	4, 0x90
.LBB2_116:                              #   in Loop: Header=BB2_5 Depth=1
	movsbl	%bl, %eax
	addq	$1, %rcx
	movq	%rcx, (%r13)
	testl	%r14d, %r14d
	je	.LBB2_120
# %bb.117:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_119
# %bb.118:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$13, (%r8)
.LBB2_119:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
.LBB2_120:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$62, %eax
	jg	.LBB2_129
# %bb.121:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$42, %eax
	je	.LBB2_137
# %bb.122:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$43, %eax
	jne	.LBB2_205
# %bb.123:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rdx
	subq	%r9, %rdx
	addq	$1, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r9, %rcx
	movq	%r9, %rbx
	callq	doinsert
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, 16(%r13)
	jne	.LBB2_205
# %bb.124:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rax
	movq	40(%r13), %rcx
	movq	%rcx, %rbx
	subq	%rax, %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jl	.LBB2_128
# %bb.125:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB2_128
# %bb.126:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_173
# %bb.127:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
.LBB2_128:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1342177280, %rbx       # imm = 0x50000000
	jmp	.LBB2_204
.LBB2_129:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$63, %eax
	je	.LBB2_139
# %bb.130:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$123, %eax
	jne	.LBB2_205
# %bb.131:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r14d, %r14d
	cmpq	8(%r13), %rcx
	jae	.LBB2_155
# %bb.132:                              # %.preheader2
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_133:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	cmpl	$255, %r14d
	jg	.LBB2_148
# %bb.134:                              #   in Loop: Header=BB2_133 Depth=2
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB2_148
# %bb.135:                              #   in Loop: Header=BB2_133 Depth=2
	leal	(%r14,%r14,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r14d
	addl	$-48, %r14d
	addl	$1, %ebx
	cmpq	8(%r13), %rax
	jb	.LBB2_133
# %bb.136:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
	jmp	.LBB2_149
.LBB2_137:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
	subq	%r9, %rbx
	movq	40(%r13), %rdx
	addq	%rbx, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r9, %rcx
	movq	%r9, %r15
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	je	.LBB2_144
# %bb.138:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %rcx
	jmp	.LBB2_195
.LBB2_139:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rdx
	subq	%r9, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r9, %rcx
	movq	%r9, %r15
	callq	doinsert
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, 16(%r13)
	jne	.LBB2_205
# %bb.140:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %rdi
	movq	40(%r13), %rdx
	movq	%rdx, %rbx
	subq	%r15, %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %rdx
	jl	.LBB2_180
# %bb.141:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB2_180
# %bb.142:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_176
# %bb.143:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_179
.LBB2_144:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, %r14
	subq	%r15, %r14
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	cmpq	%rsi, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	jl	.LBB2_194
# %bb.145:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rsi), %rax
	shrq	$63, %rax
	addq	%rsi, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r15
	cmpq	%r15, %rsi
	jge	.LBB2_194
# %bb.146:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	(%rdx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_190
# %bb.147:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	jmp	.LBB2_193
.LBB2_148:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rcx, %rax
.LBB2_149:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	cmpl	$255, %r14d
	jg	.LBB2_155
# %bb.150:                              #   in Loop: Header=BB2_5 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_155
# %bb.151:                              #   in Loop: Header=BB2_5 Depth=1
	cmpq	8(%r13), %rax
	jae	.LBB2_158
# %bb.152:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$44, (%rax)
	jne	.LBB2_158
# %bb.153:                              #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	movq	%rax, (%r13)
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movl	$256, %r15d             # imm = 0x100
	testb	$4, 1(%rax,%rdx)
	jne	.LBB2_214
# %bb.154:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
	jmp	.LBB2_159
.LBB2_155:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_157
# %bb.156:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%r8)
.LBB2_157:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_158:                              #   in Loop: Header=BB2_5 Depth=1
	movl	%r14d, %r15d
.LBB2_159:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r13, %rdi
	movq	%r9, %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	repeat
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	cmpq	%rcx, %rax
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jae	.LBB2_167
# %bb.160:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$125, (%rax)
	jne	.LBB2_162
# %bb.161:                              #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	movq	%rax, (%r13)
	jmp	.LBB2_205
.LBB2_162:                              # %.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	addq	$1, %rax
	.p2align	4, 0x90
.LBB2_163:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, (%r13)
	cmpq	%rcx, %rax
	jae	.LBB2_167
# %bb.164:                              #   in Loop: Header=BB2_163 Depth=2
	cmpb	$125, (%rax)
	leaq	1(%rax), %rax
	jne	.LBB2_163
# %bb.165:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_170
# %bb.166:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%r8)
	jmp	.LBB2_170
.LBB2_167:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%r8)
	jne	.LBB2_169
# %bb.168:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$9, (%r8)
.LBB2_169:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_170:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	jmp	.LBB2_205
.LBB2_173:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_175
# %bb.174:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_175:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	orq	$1342177280, %rbx       # imm = 0x50000000
	jmp	.LBB2_204
.LBB2_176:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	testl	%ecx, %ecx
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_178
# %bb.177:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
	movl	$12, %ecx
.LBB2_178:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_179:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %rdi
.LBB2_180:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$2281701376, %eax       # imm = 0x88000000
	addq	$-134217728, %rax       # imm = 0xF8000000
	orq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%r12)
	movq	%rbx, (%rax,%rdx,8)
	testl	%ecx, %ecx
	jne	.LBB2_205
# %bb.181:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %rcx
	subq	%rdi, %rcx
	movq	(%rax,%rdi,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	%rcx, %rdx
	movq	%rdx, (%rax,%rdi,8)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, (%r12)
	jl	.LBB2_185
# %bb.182:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB2_185
# %bb.183:                              #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_234
# %bb.184:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movq	%rdx, (%r12)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_205
	jmp	.LBB2_186
.LBB2_185:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
.LBB2_186:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %rcx
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, (%r12)
	jl	.LBB2_245
# %bb.187:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB2_245
# %bb.188:                              #   in Loop: Header=BB2_5 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_242
# %bb.189:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_245
.LBB2_190:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB2_192
# %bb.191:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%rax)
.LBB2_192:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB2_193:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB2_194:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	(%rdx), %rax
	movq	(%r12), %rsi
	leaq	1(%rsi), %rdx
	movq	%rdx, (%r12)
	movq	%r14, (%rax,%rsi,8)
	movq	(%r12), %rax
.LBB2_195:                              #   in Loop: Header=BB2_5 Depth=1
	addq	%rax, %rbx
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rcx, %rbx
	callq	doinsert
	cmpl	$0, 16(%r13)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_205
# %bb.196:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rbx, %rax
	movq	40(%r13), %rcx
	movq	%rcx, %rbx
	subq	%rax, %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	cmpq	%rax, %rcx
	jl	.LBB2_203
# %bb.197:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB2_203
# %bb.198:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_200
# %bb.199:                              #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, (%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_203
.LBB2_200:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_202
# %bb.201:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_202:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
.LBB2_203:                              #   in Loop: Header=BB2_5 Depth=1
	orq	$1610612736, %rbx       # imm = 0x60000000
.LBB2_204:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movq	%rbx, (%rax,%rcx,8)
	.p2align	4, 0x90
.LBB2_205:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	cmpq	%rax, %rcx
	jae	.LBB2_4
# %bb.206:                              #   in Loop: Header=BB2_5 Depth=1
	movb	(%rcx), %dl
	leal	-42(%rdx), %esi
	cmpb	$2, %sil
	jb	.LBB2_2
# %bb.207:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$63, %dl
	je	.LBB2_2
# %bb.208:                              #   in Loop: Header=BB2_5 Depth=1
	cmpb	$123, %dl
	jne	.LBB2_4
# %bb.209:                              #   in Loop: Header=BB2_5 Depth=1
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rdx
	jae	.LBB2_4
# %bb.210:                              #   in Loop: Header=BB2_5 Depth=1
	callq	__locale_ctype_ptr
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB2_2
	jmp	.LBB2_4
.LBB2_211:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	testl	%ecx, %ecx
	jne	.LBB2_213
# %bb.212:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
	movl	$12, %ecx
.LBB2_213:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	jmp	.LBB2_68
.LBB2_214:                              #   in Loop: Header=BB2_5 Depth=1
	xorl	%r15d, %r15d
	cmpq	8(%r13), %rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	jae	.LBB2_222
# %bb.215:                              # %.preheader1
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_216:                              #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	cmpl	$255, %r15d
	jg	.LBB2_220
# %bb.217:                              #   in Loop: Header=BB2_216 Depth=2
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB2_220
# %bb.218:                              #   in Loop: Header=BB2_216 Depth=2
	leal	(%r15,%r15,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %r15d
	addl	$-48, %r15d
	addl	$1, %ebx
	cmpq	8(%r13), %rdx
	jb	.LBB2_216
# %bb.219:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$1, %ebx
.LBB2_220:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	cmpl	$255, %r15d
	jg	.LBB2_222
# %bb.221:                              #   in Loop: Header=BB2_5 Depth=1
	testl	%ebx, %ebx
	jne	.LBB2_225
.LBB2_222:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_224
# %bb.223:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%rax)
.LBB2_224:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
.LBB2_225:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	%r15d, %r14d
	movq	-88(%rbp), %r9          # 8-byte Reload
	jle	.LBB2_159
# %bb.226:                              #   in Loop: Header=BB2_5 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB2_228
# %bb.227:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$10, (%rax)
.LBB2_228:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm0, (%r13)
	jmp	.LBB2_159
.LBB2_229:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_231
# %bb.230:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_231:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
.LBB2_232:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
.LBB2_233:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	jmp	.LBB2_110
.LBB2_234:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	jne	.LBB2_236
# %bb.235:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_236:                              #   in Loop: Header=BB2_5 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r13)
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB2_205
.LBB2_237:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_239
# %bb.238:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_239:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movq	24(%r13), %rax
.LBB2_240:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
.LBB2_241:                              #   in Loop: Header=BB2_5 Depth=1
	movq	40(%r13), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	(%r13), %rcx
	movq	8(%r13), %r15
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	movq	%r14, -120(%rbp)        # 8-byte Spill
	cmpq	%r15, %rcx
	jb	.LBB2_5
	jmp	.LBB2_247
.LBB2_242:                              #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB2_244
# %bb.243:                              #   in Loop: Header=BB2_5 Depth=1
	movl	$12, (%r8)
.LBB2_244:                              #   in Loop: Header=BB2_5 Depth=1
	movdqu	%xmm1, (%r13)
	movq	24(%r13), %rax
.LBB2_245:                              #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movl	$2281701376, %edx       # imm = 0x88000000
	addq	$134217730, %rdx        # imm = 0x8000002
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB2_205
.LBB2_246:
	movl	$1, -92(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB2_247:
	cmpl	$0, (%r8)
	jne	.LBB2_249
.LBB2_248:
	movl	$14, (%r8)
.LBB2_249:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	jmp	.LBB2_251
.LBB2_250:
	movq	%r14, -104(%rbp)        # 8-byte Spill
.LBB2_251:
	movl	-92(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB2_262
# %bb.252:
	cmpl	$0, (%r8)
	jne	.LBB2_262
# %bb.253:
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	subq	%rdx, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%rsi, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movq	(%r12), %rdx
	movq	%rdx, %rbx
	subq	-112(%rbp), %rbx        # 8-byte Folded Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB2_261
# %bb.254:
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	cmpq	%r14, %rcx
	jge	.LBB2_261
# %bb.255:
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_258
# %bb.256:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
	jmp	.LBB2_261
.LBB2_257:
	movq	%r14, -104(%rbp)        # 8-byte Spill
	cmpl	$0, (%r8)
	jne	.LBB2_249
	jmp	.LBB2_248
.LBB2_258:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB2_260
# %bb.259:
	movl	$12, (%rax)
.LBB2_260:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movq	24(%r13), %rax
.LBB2_261:
	movl	$2281701376, %ecx       # imm = 0x88000000
	addq	$134217728, %rcx        # imm = 0x8000000
	orq	%rcx, %rbx
	movq	(%r12), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r12)
	movq	%rbx, (%rax,%rcx,8)
.LBB2_262:
	addq	$120, %rsp
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
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_16
	.quad	.LBB2_106
	.quad	.LBB2_9
	.quad	.LBB2_9
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_23
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_9
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_29
	.quad	.LBB2_30
	.quad	.LBB2_45
	.quad	.LBB2_35
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_45
	.quad	.LBB2_40
	.quad	.LBB2_47
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
	jae	.LBB3_13
# %bb.1:
	cmpb	$94, (%rax)
	jne	.LBB3_13
# %bb.2:
	addq	$1, %rax
	movq	%rax, (%r15)
	cmpl	$0, 16(%r15)
	jne	.LBB3_12
# %bb.3:
	movq	32(%r15), %rdx
	cmpq	%rdx, %rdi
	jl	.LBB3_11
# %bb.4:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rdx
	jge	.LBB3_11
# %bb.5:
	movq	%rdi, %r12
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_7
# %bb.6:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	(%r15), %rax
	movq	8(%r15), %r14
	jmp	.LBB3_10
.LBB3_7:
	cmpl	$0, 16(%r15)
	jne	.LBB3_9
# %bb.8:
	movl	$12, 16(%r15)
.LBB3_9:
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$nuls, %eax
.LBB3_10:
	movq	%r12, %rdi
.LBB3_11:
	movq	24(%r15), %rcx
	movq	40(%r15), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r15)
	movq	$402653184, (%rcx,%rdx,8) # imm = 0x18000000
.LBB3_12:
	movq	56(%r15), %rcx
	orl	$1, 72(%rcx)
	addl	$1, 76(%rcx)
.LBB3_13:
	movq	%r14, %rcx
	cmpq	%r14, %rax
	jae	.LBB3_212
# %bb.14:
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	leaq	16(%r15), %r9
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$nuls, %edi
	movq	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm1       # xmm1 = xmm0[0,1,0,1]
	movl	%r13d, -52(%rbp)        # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movdqa	%xmm1, -80(%rbp)        # 16-byte Spill
	jmp	.LBB3_19
.LBB3_15:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	%r14, %r9
.LBB3_16:                               #   in Loop: Header=BB3_19 Depth=1
	orq	$1610612736, %r13       # imm = 0x60000000
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r13, (%rax,%rcx,8)
	movl	%r12d, %r13d
	.p2align	4, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_19 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %r14
	xorl	%esi, %esi
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	xorl	%edx, %edx
	movq	%r14, %rcx
	cmpq	%r14, %rax
	jae	.LBB3_200
.LBB3_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_104 Depth 2
                                        #     Child Loop BB3_187 Depth 2
                                        #     Child Loop BB3_136 Depth 2
	leaq	1(%rax), %rbx
	cmpq	%rcx, %rbx
	jae	.LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=1
	movsbl	(%rax), %edi
	cmpl	%r13d, %edi
	jne	.LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=1
	movsbl	(%rbx), %edi
	cmpl	-116(%rbp), %edi        # 4-byte Folded Reload
	je	.LBB3_200
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=1
	movq	40(%r15), %r8
	movq	%rbx, (%r15)
	movsbl	(%rax), %r12d
	cmpl	$92, %r12d
	jne	.LBB3_28
# %bb.23:                               #   in Loop: Header=BB3_19 Depth=1
	cmpq	%rcx, %rbx
	jb	.LBB3_27
# %bb.24:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_26
# %bb.25:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$5, (%r9)
.LBB3_26:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$nuls, %ecx
	movl	$nuls, %ebx
.LBB3_27:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rbx), %rax
	movq	%rax, (%r15)
	movsbl	(%rbx), %r12d
	orl	$256, %r12d             # imm = 0x100
	movq	%rax, %rbx
.LBB3_28:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$295, %r12d             # imm = 0x127
	jle	.LBB3_37
# %bb.29:                               #   in Loop: Header=BB3_19 Depth=1
	leal	-296(%r12), %eax
	cmpl	$85, %eax
	ja	.LBB3_57
# %bb.30:                               #   in Loop: Header=BB3_19 Depth=1
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_31:                               #   in Loop: Header=BB3_19 Depth=1
	movl	%r12d, %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movslq	%eax, %r14
	movq	-240(%r15,%r14,8), %rbx
	movl	16(%r15), %eax
	testq	%rbx, %rbx
	je	.LBB3_41
# %bb.32:                               #   in Loop: Header=BB3_19 Depth=1
	addq	$-48, %r14
	testl	%eax, %eax
	movq	%r12, -88(%rbp)         # 8-byte Spill
	jne	.LBB3_75
# %bb.33:                               #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %rax
	cmpq	%rax, %r8
	jl	.LBB3_74
# %bb.34:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_74
# %bb.35:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r8, %r12
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_70
# %bb.36:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB3_73
	.p2align	4, 0x90
.LBB3_37:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$42, %r12d
	je	.LBB3_53
# %bb.38:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$46, %r12d
	je	.LBB3_59
# %bb.39:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$91, %r12d
	jne	.LBB3_57
# %bb.40:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rbx
	movq	%r9, %r14
	callq	p_bracket
	jmp	.LBB3_58
.LBB3_41:                               #   in Loop: Header=BB3_19 Depth=1
	testl	%eax, %eax
	jne	.LBB3_43
# %bb.42:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$6, (%r9)
.LBB3_43:                               #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm1, (%r15)
	jmp	.LBB3_94
.LBB3_46:                               #   in Loop: Header=BB3_19 Depth=1
	movq	56(%r15), %rax
	movq	136(%rax), %r14
	leaq	1(%r14), %r10
	movq	%r10, 136(%rax)
	cmpq	$9, %r10
	jg	.LBB3_48
# %bb.47:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r8, 72(%r15,%r14,8)
.LBB3_48:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	movq	%r12, -88(%rbp)         # 8-byte Spill
	je	.LBB3_66
# %bb.49:                               #   in Loop: Header=BB3_19 Depth=1
	cmpq	%rcx, %rbx
	jb	.LBB3_158
	jmp	.LBB3_162
.LBB3_50:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_52
# %bb.51:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$13, (%r9)
	jmp	.LBB3_52
.LBB3_53:                               #   in Loop: Header=BB3_19 Depth=1
	testl	%edx, %edx
	jne	.LBB3_57
# %bb.54:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_56
# %bb.55:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$13, (%r9)
.LBB3_56:                               #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm1, (%r15)
.LBB3_57:                               #   in Loop: Header=BB3_19 Depth=1
	movsbl	%r12b, %esi
	movq	%r15, %rdi
	movq	%r8, %rbx
	movq	%r9, %r14
	callq	ordinary
.LBB3_58:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r14, %r9
	movq	%rbx, %r8
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB3_95
.LBB3_59:                               #   in Loop: Header=BB3_19 Depth=1
	movq	56(%r15), %rax
	testb	$8, 40(%rax)
	jne	.LBB3_65
# %bb.60:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_95
# %bb.61:                               #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %rax
	cmpq	%rax, %r8
	jl	.LBB3_184
# %bb.62:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_184
# %bb.63:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%r9, %r12
	movq	%r8, %r14
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_180
# %bb.64:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	%r14, %r8
	movq	%r12, %r9
	jmp	.LBB3_183
.LBB3_65:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	-100(%rbp), %rax
	movq	%rax, (%r15)
	leaq	-97(%rbp), %rax
	movq	%rax, 8(%r15)
	movl	$6097502, -100(%rbp)    # imm = 0x5D0A5E
	movq	%r15, %rdi
	movq	%r8, %r13
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%r9, %r12
	callq	p_bracket
	movq	%r12, %r9
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r13, %r8
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	%rbx, (%r15)
	movq	%r14, 8(%r15)
	jmp	.LBB3_95
.LBB3_66:                               #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %rdx
	cmpq	%rdx, 40(%r15)
	jl	.LBB3_157
# %bb.67:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r12
	cmpq	%r12, %rdx
	jge	.LBB3_157
# %bb.68:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movq	%r10, %r14
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_153
# %bb.69:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%r12, 32(%r15)
	movq	(%r15), %rbx
	movq	8(%r15), %rcx
	jmp	.LBB3_156
.LBB3_70:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_72
# %bb.71:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%rax)
.LBB3_72:                               #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r15)
.LBB3_73:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r12, %r8
.LBB3_74:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r14, %rax
	orq	$939524096, %rax        # imm = 0x38000000
	movq	24(%r15), %rcx
	movq	40(%r15), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r15)
	movq	%rax, (%rcx,%rdx,8)
	movq	144(%r15,%r14,8), %rbx
.LBB3_75:                               #   in Loop: Header=BB3_19 Depth=1
	movq	64(%r15,%r14,8), %r12
	addq	$1, %r12
	subq	%r12, %rbx
	je	.LBB3_84
# %bb.76:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r8, -48(%rbp)          # 8-byte Spill
	testq	%rbx, %rbx
	jle	.LBB3_83
# %bb.77:                               #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %r13
	addq	%rbx, %r13
	movq	24(%r15), %rdi
	leaq	(,%r13,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_79
# %bb.78:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%r13, 32(%r15)
	jmp	.LBB3_82
.LBB3_79:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_81
# %bb.80:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
.LBB3_81:                               #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB3_82:                               #   in Loop: Header=BB3_19 Depth=1
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB3_83:                               #   in Loop: Header=BB3_19 Depth=1
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r12,8), %rsi
	leaq	(,%rbx,8), %rdx
	callq	memcpy
	addq	%rbx, 40(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB3_84:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %r9          # 8-byte Reload
	cmpl	$0, (%r9)
	movq	-88(%rbp), %r12         # 8-byte Reload
	jne	.LBB3_94
# %bb.85:                               #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %rax
	cmpq	%rax, 40(%r15)
	jl	.LBB3_93
# %bb.86:                               #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_93
# %bb.87:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r9, %r12
	movq	%r8, %r13
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_89
# %bb.88:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	%r13, %r8
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	%r12, %r9
	jmp	.LBB3_92
.LBB3_89:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r12, %r9
	cmpl	$0, (%r12)
	jne	.LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%r9)
.LBB3_91:                               #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r15)
	movq	%r13, %r8
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB3_92:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB3_93:                               #   in Loop: Header=BB3_19 Depth=1
	orq	$1073741824, %r14       # imm = 0x40000000
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rax,%rcx,8)
.LBB3_94:                               #   in Loop: Header=BB3_19 Depth=1
	movq	56(%r15), %rax
	movl	$1, 144(%rax)
	jmp	.LBB3_95
.LBB3_153:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_155
# %bb.154:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%rax)
.LBB3_155:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$nuls, %ebx
.LBB3_156:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r14, %r10
	movq	-128(%rbp), %r14        # 8-byte Reload
.LBB3_157:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r10, %rax
	orq	$1744830464, %rax       # imm = 0x68000000
	movq	24(%r15), %rdx
	movq	40(%r15), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 40(%r15)
	movq	%rax, (%rdx,%rsi,8)
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
	cmpq	%rcx, %rbx
	jae	.LBB3_162
.LBB3_158:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rbx), %rax
	cmpq	%rcx, %rax
	jae	.LBB3_161
# %bb.159:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$92, (%rbx)
	jne	.LBB3_161
# %bb.160:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$41, (%rax)
	je	.LBB3_162
.LBB3_161:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r15, %rdi
	movl	$92, %esi
	movl	$41, %edx
	movq	%r8, %rbx
	movq	%r9, %r12
	movq	%r10, %r13
	callq	p_bre
	movq	%r13, %r10
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	%r12, %r9
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%rbx, %r8
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
.LBB3_162:                              #   in Loop: Header=BB3_19 Depth=1
	cmpq	$9, %r10
	jg	.LBB3_164
# %bb.163:                              #   in Loop: Header=BB3_19 Depth=1
	movq	40(%r15), %rax
	movq	%rax, 152(%r15,%r14,8)
.LBB3_164:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_174
# %bb.165:                              #   in Loop: Header=BB3_19 Depth=1
	movq	32(%r15), %rax
	cmpq	%rax, 40(%r15)
	jl	.LBB3_173
# %bb.166:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_173
# %bb.167:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r10, %r14
	movq	%r9, %r12
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_169
# %bb.168:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r9
	jmp	.LBB3_172
.LBB3_169:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r12, %r9
	cmpl	$0, (%r12)
	jne	.LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%r9)
.LBB3_171:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r15)
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB3_172:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r14, %r10
.LBB3_173:                              #   in Loop: Header=BB3_19 Depth=1
	orq	$1879048192, %r10       # imm = 0x70000000
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r10, (%rax,%rcx,8)
.LBB3_174:                              #   in Loop: Header=BB3_19 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	cmpq	%rdx, %rax
	jae	.LBB3_44
# %bb.175:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB3_44
# %bb.176:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$92, (%rax)
	jne	.LBB3_44
# %bb.177:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$41, (%rcx)
	jne	.LBB3_44
# %bb.178:                              #   in Loop: Header=BB3_19 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	jmp	.LBB3_95
.LBB3_44:                               #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_52
# %bb.45:                               #   in Loop: Header=BB3_19 Depth=1
	movl	$8, (%r9)
.LBB3_52:                               #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm1, (%r15)
.LBB3_95:                               #   in Loop: Header=BB3_19 Depth=1
	movq	(%r15), %rax
	movq	8(%r15), %r14
	cmpq	%r14, %rax
	jae	.LBB3_108
# %bb.96:                               #   in Loop: Header=BB3_19 Depth=1
	movb	(%rax), %dl
	leaq	1(%rax), %rcx
	cmpb	$42, %dl
	jne	.LBB3_99
# %bb.97:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r9, %r14
	movl	%r13d, %r12d
	movq	%rcx, (%r15)
	movl	$1, %ebx
	subq	%r8, %rbx
	movq	40(%r15), %rdx
	addq	%rbx, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r15, %rdi
	movq	%r8, %rcx
	movq	%r8, %r13
	callq	doinsert
	movq	40(%r15), %rax
	cmpl	$0, 16(%r15)
	je	.LBB3_109
# %bb.98:                               #   in Loop: Header=BB3_19 Depth=1
	movq	%r13, %rcx
	jmp	.LBB3_146
	.p2align	4, 0x90
.LBB3_99:                               #   in Loop: Header=BB3_19 Depth=1
	cmpq	%r14, %rcx
	jae	.LBB3_108
# %bb.100:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$92, %dl
	jne	.LBB3_108
# %bb.101:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$123, (%rcx)
	jne	.LBB3_108
# %bb.102:                              #   in Loop: Header=BB3_19 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	xorl	%r13d, %r13d
	cmpq	%r14, %rax
	jae	.LBB3_121
# %bb.103:                              # %.preheader2
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	%r9, %r12
	movq	%r8, -48(%rbp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_104:                              #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	cmpl	$255, %r13d
	jg	.LBB3_113
# %bb.105:                              #   in Loop: Header=BB3_104 Depth=2
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB3_113
# %bb.106:                              #   in Loop: Header=BB3_104 Depth=2
	leal	(%r13,%r13,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r13d
	addl	$-48, %r13d
	addl	$1, %ebx
	cmpq	8(%r15), %rax
	jb	.LBB3_104
# %bb.107:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$1, %ebx
	jmp	.LBB3_114
	.p2align	4, 0x90
.LBB3_108:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$1, %esi
	cmpl	$36, %r12d
	jne	.LBB3_17
	jmp	.LBB3_18
.LBB3_109:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, %r14
	subq	%r13, %r14
	movq	32(%r15), %rdx
	cmpq	%rdx, %rax
	movq	%r13, %rcx
	jl	.LBB3_145
# %bb.110:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r13
	cmpq	%r13, %rdx
	jge	.LBB3_145
# %bb.111:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_141
# %bb.112:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, 24(%r15)
	movq	%r13, 32(%r15)
	jmp	.LBB3_144
.LBB3_113:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rcx, %rax
.LBB3_114:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r9
	cmpl	$255, %r13d
	jg	.LBB3_121
# %bb.115:                              #   in Loop: Header=BB3_19 Depth=1
	testl	%ebx, %ebx
	je	.LBB3_121
# %bb.116:                              #   in Loop: Header=BB3_19 Depth=1
	movq	8(%r15), %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_124
# %bb.117:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$44, (%rax)
	jne	.LBB3_124
# %bb.118:                              #   in Loop: Header=BB3_19 Depth=1
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$256, %ebx              # imm = 0x100
	cmpq	%rcx, %rax
	jae	.LBB3_125
# %bb.119:                              #   in Loop: Header=BB3_19 Depth=1
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	jne	.LBB3_185
# %bb.120:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB3_125
.LBB3_121:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_123
# %bb.122:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$10, (%r9)
.LBB3_123:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r9, %r12
	movdqu	%xmm1, (%r15)
.LBB3_124:                              #   in Loop: Header=BB3_19 Depth=1
	movl	%r13d, %ebx
.LBB3_125:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	callq	repeat
	movq	(%r15), %rdx
	movq	8(%r15), %rcx
	cmpq	%rcx, %rdx
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	%r12, %r9
	jae	.LBB3_132
# %bb.126:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rdx), %rax
	cmpq	%rcx, %rax
	jae	.LBB3_130
# %bb.127:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$92, (%rdx)
	jne	.LBB3_130
# %bb.128:                              #   in Loop: Header=BB3_19 Depth=1
	cmpb	$125, (%rax)
	jne	.LBB3_130
# %bb.129:                              #   in Loop: Header=BB3_19 Depth=1
	addq	$2, %rdx
	movq	%rdx, (%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB3_17
.LBB3_130:                              #   in Loop: Header=BB3_19 Depth=1
	cmpq	%rcx, %rax
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jb	.LBB3_136
.LBB3_131:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%rax, (%r15)
.LBB3_132:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_134
# %bb.133:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$9, (%r9)
.LBB3_134:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r15)
	movdqu	%xmm1, (%r15)
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_135:                              #   in Loop: Header=BB3_136 Depth=2
	movq	%rax, (%r15)
	addq	$1, %rax
	cmpq	%rcx, %rax
	jae	.LBB3_131
.LBB3_136:                              #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$92, -1(%rax)
	jne	.LBB3_135
# %bb.137:                              #   in Loop: Header=BB3_136 Depth=2
	cmpb	$125, (%rax)
	jne	.LBB3_135
# %bb.138:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%r9)
	jne	.LBB3_140
# %bb.139:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$10, (%r9)
.LBB3_140:                              #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm1, (%r15)
	jmp	.LBB3_17
.LBB3_141:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB3_143
# %bb.142:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%rax)
.LBB3_143:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB3_144:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB3_145:                              #   in Loop: Header=BB3_19 Depth=1
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	24(%r15), %rax
	movq	40(%r15), %rsi
	leaq	1(%rsi), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rax,%rsi,8)
	movq	40(%r15), %rax
	movq	-96(%rbp), %r14         # 8-byte Reload
.LBB3_146:                              #   in Loop: Header=BB3_19 Depth=1
	addq	%rax, %rbx
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%rcx, %rbx
	callq	doinsert
	cmpl	$0, 16(%r15)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movl	%r12d, %r13d
	movq	%r14, %r9
	jne	.LBB3_17
# %bb.147:                              #   in Loop: Header=BB3_19 Depth=1
	movq	40(%r15), %rcx
	movq	%rcx, %r13
	subq	%rbx, %r13
	movq	32(%r15), %rax
	cmpq	%rax, %rcx
	jl	.LBB3_16
# %bb.148:                              #   in Loop: Header=BB3_19 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_16
# %bb.149:                              #   in Loop: Header=BB3_19 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	jne	.LBB3_15
# %bb.150:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r14, %r9
	cmpl	$0, (%r14)
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	jne	.LBB3_152
# %bb.151:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%r9)
.LBB3_152:                              #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm1, (%r15)
	jmp	.LBB3_16
.LBB3_180:                              #   in Loop: Header=BB3_19 Depth=1
	movq	%r12, %r9
	cmpl	$0, (%r12)
	jne	.LBB3_182
# %bb.181:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$12, (%r9)
.LBB3_182:                              #   in Loop: Header=BB3_19 Depth=1
	movdqa	-80(%rbp), %xmm1        # 16-byte Reload
	movdqu	%xmm1, (%r15)
	movq	%r14, %r8
.LBB3_183:                              #   in Loop: Header=BB3_19 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB3_184:                              #   in Loop: Header=BB3_19 Depth=1
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	jmp	.LBB3_95
.LBB3_185:                              #   in Loop: Header=BB3_19 Depth=1
	xorl	%ebx, %ebx
	cmpq	8(%r15), %rcx
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movq	%r12, %rax
	jae	.LBB3_193
# %bb.186:                              # %.preheader1
                                        #   in Loop: Header=BB3_19 Depth=1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB3_187:                              #   Parent Loop BB3_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	cmpl	$255, %ebx
	jg	.LBB3_191
# %bb.188:                              #   in Loop: Header=BB3_187 Depth=2
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	andb	$4, %al
	je	.LBB3_191
# %bb.189:                              #   in Loop: Header=BB3_187 Depth=2
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	addl	$1, %r14d
	cmpq	8(%r15), %rdx
	jb	.LBB3_187
# %bb.190:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$1, %r14d
.LBB3_191:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$255, %ebx
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movq	%r12, %rax
	jg	.LBB3_193
# %bb.192:                              #   in Loop: Header=BB3_19 Depth=1
	testl	%r14d, %r14d
	jne	.LBB3_196
.LBB3_193:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB3_195
# %bb.194:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$10, (%rax)
.LBB3_195:                              #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm0, (%r15)
.LBB3_196:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	%ebx, %r13d
	movq	-48(%rbp), %r8          # 8-byte Reload
	jle	.LBB3_125
# %bb.197:                              #   in Loop: Header=BB3_19 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB3_199
# %bb.198:                              #   in Loop: Header=BB3_19 Depth=1
	movl	$10, (%rax)
.LBB3_199:                              #   in Loop: Header=BB3_19 Depth=1
	movdqu	%xmm0, (%r15)
	jmp	.LBB3_125
.LBB3_200:
	testl	%esi, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	je	.LBB3_212
# %bb.201:
	movq	40(%r15), %rcx
	leaq	-1(%rcx), %rax
	movq	%rax, 40(%r15)
	cmpl	$0, 16(%r15)
	jne	.LBB3_211
# %bb.202:
	movq	32(%r15), %rax
	cmpq	%rax, %rcx
	jle	.LBB3_210
# %bb.203:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB3_210
# %bb.204:
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB3_206
# %bb.205:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB3_209
.LBB3_206:
	cmpl	$0, 16(%r15)
	jne	.LBB3_208
# %bb.207:
	movl	$12, 16(%r15)
.LBB3_208:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
.LBB3_209:
	movq	-112(%rbp), %rdi        # 8-byte Reload
.LBB3_210:
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	$536870912, (%rax,%rcx,8) # imm = 0x20000000
.LBB3_211:
	movq	56(%r15), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
.LBB3_212:
	cmpq	%rdi, 40(%r15)
	jne	.LBB3_216
# %bb.213:
	cmpl	$0, 16(%r15)
	jne	.LBB3_215
# %bb.214:
	movl	$14, 16(%r15)
.LBB3_215:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
.LBB3_216:
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
	.quad	.LBB3_46
	.quad	.LBB3_44
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_31
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_57
	.quad	.LBB3_50
	.quad	.LBB3_57
	.quad	.LBB3_44
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
	subq	$56, %rsp
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
	xorl	%edi, %edi
	jmp	.LBB5_11
.LBB5_8:
	movq	%r15, %rdi
	callq	malloc
	movq	56(%r14), %rdx
	movq	%rax, 32(%rdx)
	jmp	.LBB5_13
.LBB5_9:
	leaq	32(%r8), %rbx
	movq	%r12, %rcx
	subq	%r9, %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	shrl	$3, %esi
	imulq	%r13, %rsi
	addq	%rax, %rsi
	movq	%rsi, -32(%rbx)
	movq	%rsi, (%rbx)
	addq	$2, %rdi
	addq	$64, %rbx
	cmpq	%rdi, %rcx
	jne	.LBB5_10
.LBB5_11:
	testq	%r9, %r9
	je	.LBB5_13
# %bb.12:
	movl	%edi, %ecx
	shrl	$3, %ecx
	imulq	%r13, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	shlq	$5, %rdi
	movq	%rsi, (%r8,%rdi)
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
	xorl	%r12d, %r12d
.LBB5_19:
	movslq	%r12d, %rcx
	movq	%rcx, %rbx
	shlq	$5, %rbx
	leal	7(%rcx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	movq	24(%rdx), %r15
	sarl	$3, %eax
	cltq
	imulq	%r13, %rax
	addq	32(%rdx), %rax
	movq	%rax, (%r15,%rbx)
	andb	$7, %cl
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	movb	%al, 8(%r15,%rbx)
	movw	$0, 10(%r15,%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%r15,%rbx)
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
	je	.LBB5_28
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
	je	.LBB5_38
# %bb.24:
	movq	(%r14), %rdi
	movq	8(%r14), %rax
.LBB5_25:
	cmpq	%rax, %rdi
	jae	.LBB5_33
# %bb.26:
	cmpb	$94, (%rdi)
	jne	.LBB5_33
# %bb.27:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB5_34
.LBB5_33:
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB5_34:
	leaq	(%r15,%rbx), %r13
	leaq	(%r15,%rbx), %r12
	addq	$8, %r12
	cmpq	%rax, %rdi
	jae	.LBB5_44
# %bb.35:
	movb	(%rdi), %al
	cmpb	$45, %al
	je	.LBB5_43
# %bb.36:
	cmpb	$93, %al
	jne	.LBB5_44
# %bb.37:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 93(%rcx)
	addw	$93, 2(%r12)
	jmp	.LBB5_44
.LBB5_28:
	cmpl	$0, 16(%r14)
	jne	.LBB5_304
# %bb.29:
	movq	32(%r14), %rax
	cmpq	%rax, 40(%r14)
	jl	.LBB5_298
# %bb.30:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB5_298
# %bb.31:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_295
# %bb.32:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB5_298
.LBB5_38:
	cmpl	$0, 16(%r14)
	jne	.LBB5_304
# %bb.39:
	movq	32(%r14), %rax
	cmpq	%rax, 40(%r14)
	jl	.LBB5_302
# %bb.40:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB5_302
# %bb.41:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_299
# %bb.42:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB5_302
.LBB5_43:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 45(%rcx)
	addw	$45, 2(%r12)
.LBB5_44:
	movq	(%r14), %rbx
	movq	8(%r14), %rax
	cmpq	%rax, %rbx
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jae	.LBB5_220
# %bb.45:
	leaq	16(%r14), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	jmp	.LBB5_48
	.p2align	4, 0x90
.LBB5_46:                               #   in Loop: Header=BB5_48 Depth=1
	movb	(%r12), %al
	movq	(%r13), %rcx
	movzbl	%bl, %edx
	orb	%al, (%rcx,%rdx)
	addw	%dx, 2(%r12)
.LBB5_47:                               #   in Loop: Header=BB5_48 Depth=1
	movq	(%r14), %rbx
	movq	8(%r14), %rax
	cmpq	%rax, %rbx
	movq	-56(%rbp), %r12         # 8-byte Reload
	jae	.LBB5_220
.LBB5_48:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_136 Depth 2
                                        #     Child Loop BB5_132 Depth 2
                                        #     Child Loop BB5_82 Depth 2
                                        #     Child Loop BB5_180 Depth 2
                                        #     Child Loop BB5_176 Depth 2
                                        #     Child Loop BB5_172 Depth 2
                                        #     Child Loop BB5_168 Depth 2
                                        #     Child Loop BB5_164 Depth 2
                                        #     Child Loop BB5_160 Depth 2
                                        #     Child Loop BB5_156 Depth 2
                                        #     Child Loop BB5_152 Depth 2
                                        #     Child Loop BB5_148 Depth 2
                                        #     Child Loop BB5_144 Depth 2
                                        #     Child Loop BB5_139 Depth 2
                                        #     Child Loop BB5_124 Depth 2
                                        #     Child Loop BB5_88 Depth 2
                                        #     Child Loop BB5_198 Depth 2
	movsbl	(%rbx), %edx
	cmpl	$93, %edx
	je	.LBB5_220
# %bb.49:                               #   in Loop: Header=BB5_48 Depth=1
	leaq	1(%rbx), %rcx
	cmpq	%rax, %rcx
	jae	.LBB5_52
# %bb.50:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$45, %dl
	jne	.LBB5_52
# %bb.51:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$93, (%rcx)
	je	.LBB5_219
.LBB5_52:                               #   in Loop: Header=BB5_48 Depth=1
	cmpl	$45, %edx
	je	.LBB5_93
# %bb.53:                               #   in Loop: Header=BB5_48 Depth=1
	cmpl	$91, %edx
	jne	.LBB5_66
# %bb.54:                               #   in Loop: Header=BB5_48 Depth=1
	cmpq	%rax, %rcx
	jae	.LBB5_66
# %bb.55:                               #   in Loop: Header=BB5_48 Depth=1
	movsbl	(%rcx), %ecx
	cmpl	$61, %ecx
	je	.LBB5_72
# %bb.56:                               #   in Loop: Header=BB5_48 Depth=1
	cmpl	$58, %ecx
	jne	.LBB5_66
# %bb.57:                               #   in Loop: Header=BB5_48 Depth=1
	addq	$2, %rbx
	movq	%rbx, (%r14)
	cmpq	%rax, %rbx
	jb	.LBB5_61
# %bb.58:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_60
# %bb.59:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_60:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$nuls, %ebx
.LBB5_61:                               #   in Loop: Header=BB5_48 Depth=1
	movb	(%rbx), %cl
	cmpb	$93, %cl
	je	.LBB5_63
# %bb.62:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$45, %cl
	jne	.LBB5_81
.LBB5_63:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_65
# %bb.64:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
.LBB5_65:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$nuls, %r15d
	jmp	.LBB5_96
	.p2align	4, 0x90
.LBB5_66:                               #   in Loop: Header=BB5_48 Depth=1
	movq	%r14, %rdi
	callq	p_b_symbol
	movl	%eax, %ebx
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	cmpq	%rcx, %rax
	jae	.LBB5_46
# %bb.67:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$45, (%rax)
	jne	.LBB5_46
# %bb.68:                               #   in Loop: Header=BB5_48 Depth=1
	leaq	1(%rax), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB5_46
# %bb.69:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$93, (%rdx)
	je	.LBB5_46
# %bb.70:                               #   in Loop: Header=BB5_48 Depth=1
	movq	%rdx, (%r14)
	cmpb	$45, (%rdx)
	jne	.LBB5_90
# %bb.71:                               #   in Loop: Header=BB5_48 Depth=1
	addq	$2, %rax
	movq	%rax, (%r14)
	movb	$45, %al
	cmpb	%al, %bl
	je	.LBB5_46
	jmp	.LBB5_91
.LBB5_72:                               #   in Loop: Header=BB5_48 Depth=1
	addq	$2, %rbx
	movq	%rbx, (%r14)
	cmpq	%rax, %rbx
	jb	.LBB5_76
# %bb.73:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_75
# %bb.74:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_75:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$nuls, %ebx
.LBB5_76:                               #   in Loop: Header=BB5_48 Depth=1
	movb	(%rbx), %dl
	cmpb	$93, %dl
	je	.LBB5_78
# %bb.77:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$45, %dl
	jne	.LBB5_84
.LBB5_78:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_80
# %bb.79:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
.LBB5_80:                               #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	jmp	.LBB5_184
.LBB5_81:                               #   in Loop: Header=BB5_48 Depth=1
	cmpq	%rax, %rbx
	jae	.LBB5_95
	.p2align	4, 0x90
.LBB5_82:                               #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r14), %r15
	movzbl	(%r15), %ecx
	testb	$3, 1(%rax,%rcx)
	je	.LBB5_96
# %bb.83:                               #   in Loop: Header=BB5_82 Depth=2
	addq	$1, %r15
	movq	%r15, (%r14)
	cmpq	8(%r14), %r15
	jb	.LBB5_82
	jmp	.LBB5_96
.LBB5_84:                               #   in Loop: Header=BB5_48 Depth=1
	cmpq	%rax, %rbx
	jae	.LBB5_184
# %bb.85:                               #   in Loop: Header=BB5_48 Depth=1
	leaq	1(%rbx), %rcx
	cmpq	%rax, %rcx
	jae	.LBB5_183
	.p2align	4, 0x90
# %bb.86:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$61, %dl
	jne	.LBB5_88
.LBB5_87:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	$93, (%rcx)
	je	.LBB5_196
.LBB5_88:                               #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, (%r14)
	leaq	1(%rcx), %rsi
	cmpq	%rax, %rsi
	jae	.LBB5_182
# %bb.89:                               #   in Loop: Header=BB5_88 Depth=2
	movzbl	(%rcx), %edx
	movq	%rsi, %rcx
	cmpb	$61, %dl
	je	.LBB5_87
	jmp	.LBB5_88
.LBB5_90:                               #   in Loop: Header=BB5_48 Depth=1
	movq	%r14, %rdi
	callq	p_b_symbol
	cmpb	%al, %bl
	je	.LBB5_46
.LBB5_91:                               #   in Loop: Header=BB5_48 Depth=1
	cmpl	$0, __collate_load_error(%rip)
	je	.LBB5_126
# %bb.92:                               #   in Loop: Header=BB5_48 Depth=1
	cmpb	%al, %bl
	jbe	.LBB5_135
	.p2align	4, 0x90
.LBB5_93:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_218
# %bb.94:                               #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$11, (%rax)
	jmp	.LBB5_218
.LBB5_95:                               #   in Loop: Header=BB5_48 Depth=1
	movq	%rbx, %r15
.LBB5_96:                               #   in Loop: Header=BB5_48 Depth=1
	subq	%rbx, %r15
	movl	$.L.str.2, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB5_98
# %bb.97:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses, %ecx
	cmpq	$5, %r15
	je	.LBB5_120
.LBB5_98:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.3, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_100
# %bb.99:                               #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+16, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_100:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_102
# %bb.101:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+32, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_102:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_104
# %bb.103:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+48, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_104:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_106
# %bb.105:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+64, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_106:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_108
# %bb.107:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+80, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_108:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_110
# %bb.109:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+96, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_110:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_112
# %bb.111:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+112, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_112:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_114
# %bb.113:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+128, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_114:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_116
# %bb.115:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+144, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_116:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.12, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$5, %r15
	jne	.LBB5_118
# %bb.117:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+160, %ecx
	testl	%eax, %eax
	je	.LBB5_120
.LBB5_118:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$.L.str.13, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	cmpq	$6, %r15
	jne	.LBB5_205
# %bb.119:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$cclasses+176, %ecx
	testl	%eax, %eax
	jne	.LBB5_205
.LBB5_120:                              #   in Loop: Header=BB5_48 Depth=1
	movl	8(%rcx), %eax
	cmpq	$11, %rax
	ja	.LBB5_208
# %bb.121:                              #   in Loop: Header=BB5_48 Depth=1
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_122:                              # %.preheader13
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_124
	.p2align	4, 0x90
.LBB5_123:                              #   in Loop: Header=BB5_124 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_124:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$7, 1(%rax,%rcx)
	je	.LBB5_123
# %bb.125:                              #   in Loop: Header=BB5_124 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_123
.LBB5_126:                              #   in Loop: Header=BB5_48 Depth=1
	movsbl	%bl, %r12d
	movsbl	%al, %r15d
	movl	%r12d, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jle	.LBB5_130
# %bb.127:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_129
# %bb.128:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$11, (%rax)
.LBB5_129:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
.LBB5_130:                              #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_132
	.p2align	4, 0x90
.LBB5_131:                              #   in Loop: Header=BB5_132 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_47
.LBB5_132:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edi
	movl	%ebx, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jg	.LBB5_131
# %bb.133:                              #   in Loop: Header=BB5_132 Depth=2
	movl	%ebx, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jg	.LBB5_131
# %bb.134:                              #   in Loop: Header=BB5_132 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movzbl	(%rsi), %eax
	movq	(%r13), %rcx
	movzbl	%bl, %edx
	orb	%al, (%rcx,%rdx)
	movzbl	%bl, %eax
	addw	%ax, 2(%rsi)
	jmp	.LBB5_131
.LBB5_135:                              #   in Loop: Header=BB5_48 Depth=1
	movzbl	%al, %eax
	movzbl	%bl, %ecx
	.p2align	4, 0x90
.LBB5_136:                              #   Parent Loop BB5_48 Depth=1
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
	jb	.LBB5_136
	jmp	.LBB5_47
.LBB5_137:                              # %.preheader15
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_139
	.p2align	4, 0x90
.LBB5_138:                              #   in Loop: Header=BB5_139 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_139:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$3, 1(%rax,%rcx)
	je	.LBB5_138
# %bb.140:                              #   in Loop: Header=BB5_139 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_138
.LBB5_141:                              # %.preheader17
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_144
	.p2align	4, 0x90
.LBB5_142:                              #   in Loop: Header=BB5_144 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
.LBB5_143:                              #   in Loop: Header=BB5_144 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_144:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	cmpl	$9, %ecx
	je	.LBB5_142
# %bb.145:                              #   in Loop: Header=BB5_144 Depth=2
	cmpb	$0, 1(%rax,%rcx)
	jns	.LBB5_143
	jmp	.LBB5_142
.LBB5_146:                              # %.preheader19
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_148
	.p2align	4, 0x90
.LBB5_147:                              #   in Loop: Header=BB5_148 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_148:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$32, 1(%rax,%rcx)
	je	.LBB5_147
# %bb.149:                              #   in Loop: Header=BB5_148 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_147
.LBB5_150:                              # %.preheader21
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_152
	.p2align	4, 0x90
.LBB5_151:                              #   in Loop: Header=BB5_152 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_152:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$4, 1(%rax,%rcx)
	je	.LBB5_151
# %bb.153:                              #   in Loop: Header=BB5_152 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_151
.LBB5_154:                              # %.preheader23
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_156
	.p2align	4, 0x90
.LBB5_155:                              #   in Loop: Header=BB5_156 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_156:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$23, 1(%rax,%rcx)
	je	.LBB5_155
# %bb.157:                              #   in Loop: Header=BB5_156 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_155
.LBB5_158:                              # %.preheader25
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_160
	.p2align	4, 0x90
.LBB5_159:                              #   in Loop: Header=BB5_160 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_160:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$2, %al
	jne	.LBB5_159
# %bb.161:                              #   in Loop: Header=BB5_160 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_159
.LBB5_162:                              # %.preheader27
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_164
	.p2align	4, 0x90
.LBB5_163:                              #   in Loop: Header=BB5_164 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_164:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$-105, 1(%rax,%rcx)
	je	.LBB5_163
# %bb.165:                              #   in Loop: Header=BB5_164 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_163
.LBB5_166:                              # %.preheader29
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_168
	.p2align	4, 0x90
.LBB5_167:                              #   in Loop: Header=BB5_168 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_168:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$16, 1(%rax,%rcx)
	je	.LBB5_167
# %bb.169:                              #   in Loop: Header=BB5_168 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_167
.LBB5_170:                              # %.preheader31
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_172
	.p2align	4, 0x90
.LBB5_171:                              #   in Loop: Header=BB5_172 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_172:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$8, 1(%rax,%rcx)
	je	.LBB5_171
# %bb.173:                              #   in Loop: Header=BB5_172 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_171
.LBB5_174:                              # %.preheader33
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_176
	.p2align	4, 0x90
.LBB5_175:                              #   in Loop: Header=BB5_176 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_176:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB5_175
# %bb.177:                              #   in Loop: Header=BB5_176 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_175
.LBB5_178:                              # %.preheader35
                                        #   in Loop: Header=BB5_48 Depth=1
	movl	$-128, %ebx
	jmp	.LBB5_180
	.p2align	4, 0x90
.LBB5_179:                              #   in Loop: Header=BB5_180 Depth=2
	addl	$1, %ebx
	cmpl	$128, %ebx
	je	.LBB5_208
.LBB5_180:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$68, 1(%rax,%rcx)
	je	.LBB5_179
# %bb.181:                              #   in Loop: Header=BB5_180 Depth=2
	movzbl	(%r12), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r12)
	jmp	.LBB5_179
.LBB5_182:                              # %.loopexit40
                                        #   in Loop: Header=BB5_48 Depth=1
	addq	$1, %rcx
.LBB5_183:                              #   in Loop: Header=BB5_48 Depth=1
	movq	%rcx, (%r14)
.LBB5_184:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_186
# %bb.185:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_186:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB5_187:                              #   in Loop: Header=BB5_48 Depth=1
	movb	(%r12), %cl
	movq	(%r13), %rdx
	movzbl	%al, %eax
	orb	%cl, (%rdx,%rax)
	addw	%ax, 2(%r12)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	cmpq	%rdx, %rax
	jae	.LBB5_191
# %bb.188:                              #   in Loop: Header=BB5_48 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB5_194
# %bb.189:                              #   in Loop: Header=BB5_48 Depth=1
	cmpb	$61, (%rax)
	jne	.LBB5_194
# %bb.190:                              #   in Loop: Header=BB5_48 Depth=1
	cmpb	$93, (%rcx)
	jne	.LBB5_194
	jmp	.LBB5_212
.LBB5_191:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_193
# %bb.192:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_193:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
.LBB5_194:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_218
# %bb.195:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
	jmp	.LBB5_218
.LBB5_196:                              #   in Loop: Header=BB5_48 Depth=1
	movq	%rbx, %rax
	notq	%rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movslq	%eax, %r15
	movl	$.L.str.14, %edi
	movl	$cnames+16, %r12d
	jmp	.LBB5_198
.LBB5_197:                              #   in Loop: Header=BB5_198 Depth=2
	movq	(%r12), %rdi
	addq	$16, %r12
	testq	%rdi, %rdi
	je	.LBB5_201
.LBB5_198:                              #   Parent Loop BB5_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB5_197
# %bb.199:                              #   in Loop: Header=BB5_198 Depth=2
	movq	-16(%r12), %rax
	cmpb	$0, (%rax,%r15)
	jne	.LBB5_197
# %bb.200:                              #   in Loop: Header=BB5_48 Depth=1
	movb	-8(%r12), %al
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB5_187
.LBB5_201:                              #   in Loop: Header=BB5_48 Depth=1
	cmpl	$1, -96(%rbp)           # 4-byte Folded Reload
	jne	.LBB5_203
# %bb.202:                              #   in Loop: Header=BB5_48 Depth=1
	movb	(%rbx), %al
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB5_187
.LBB5_203:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB5_186
# %bb.204:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$3, (%rax)
	jmp	.LBB5_186
.LBB5_205:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_207
# %bb.206:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
.LBB5_207:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
.LBB5_208:                              #   in Loop: Header=BB5_48 Depth=1
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	cmpq	%rdx, %rax
	jae	.LBB5_213
# %bb.209:                              #   in Loop: Header=BB5_48 Depth=1
	leaq	1(%rax), %rcx
	cmpq	%rdx, %rcx
	jae	.LBB5_216
# %bb.210:                              #   in Loop: Header=BB5_48 Depth=1
	cmpb	$58, (%rax)
	jne	.LBB5_216
# %bb.211:                              #   in Loop: Header=BB5_48 Depth=1
	cmpb	$93, (%rcx)
	jne	.LBB5_216
.LBB5_212:                              #   in Loop: Header=BB5_48 Depth=1
	addq	$2, %rax
	movq	%rax, (%r14)
	jmp	.LBB5_47
.LBB5_213:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_215
# %bb.214:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
.LBB5_215:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
.LBB5_216:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB5_218
# %bb.217:                              #   in Loop: Header=BB5_48 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$4, (%rax)
	.p2align	4, 0x90
.LBB5_218:                              #   in Loop: Header=BB5_48 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	jmp	.LBB5_47
.LBB5_219:
	movq	%rcx, (%r14)
	movb	(%r12), %al
	movq	(%r13), %rcx
	orb	%al, 45(%rcx)
	addw	$45, 2(%r12)
	movq	(%r14), %rbx
	movq	8(%r14), %rax
.LBB5_220:
	cmpq	%rax, %rbx
	jae	.LBB5_239
# %bb.221:
	leaq	1(%rbx), %rax
	movq	%rax, (%r14)
	cmpb	$93, (%rbx)
	jne	.LBB5_239
# %bb.222:
	cmpl	$0, 16(%r14)
	jne	.LBB5_305
# %bb.223:
	movq	56(%r14), %rax
	testb	$2, 40(%rax)
	je	.LBB5_242
# %bb.224:
	movslq	16(%rax), %rax
	testq	%rax, %rax
	jle	.LBB5_242
# %bb.225:
	movq	%rax, %rbx
	addq	$1, %rbx
	leal	-1(%rax), %r15d
	movq	%r13, -88(%rbp)         # 8-byte Spill
	jmp	.LBB5_227
	.p2align	4, 0x90
.LBB5_226:                              #   in Loop: Header=BB5_227 Depth=1
	addq	$-1, %rbx
	addl	$-1, %r15d
	cmpq	$1, %rbx
	jle	.LBB5_242
.LBB5_227:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movzbl	%r15b, %r12d
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	testb	%cl, (%rax,%r12)
	je	.LBB5_226
# %bb.228:                              #   in Loop: Header=BB5_227 Depth=1
	callq	__locale_ctype_ptr
	testb	$3, -1(%rax,%rbx)
	je	.LBB5_226
# %bb.229:                              #   in Loop: Header=BB5_227 Depth=1
	leaq	-2(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %r13d
	andb	$3, %r13b
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %ecx
	andb	$3, %cl
	cmpb	$1, %r13b
	jne	.LBB5_233
# %bb.230:                              #   in Loop: Header=BB5_227 Depth=1
	cmpb	$1, %cl
	jne	.LBB5_232
# %bb.231:                              #   in Loop: Header=BB5_227 Depth=1
	addl	$32, %r12d
.LBB5_232:                              #   in Loop: Header=BB5_227 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	jmp	.LBB5_236
.LBB5_233:                              #   in Loop: Header=BB5_227 Depth=1
	movl	%r15d, %eax
	cmpb	$2, %cl
	movq	-88(%rbp), %r13         # 8-byte Reload
	jne	.LBB5_237
# %bb.234:                              #   in Loop: Header=BB5_227 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$2, %al
	jne	.LBB5_236
# %bb.235:                              #   in Loop: Header=BB5_227 Depth=1
	addl	$-32, %r12d
.LBB5_236:                              #   in Loop: Header=BB5_227 Depth=1
	movl	%r12d, %eax
.LBB5_237:                              #   in Loop: Header=BB5_227 Depth=1
	movsbl	%al, %ecx
	cmpq	%rcx, -48(%rbp)         # 8-byte Folded Reload
	je	.LBB5_226
# %bb.238:                              #   in Loop: Header=BB5_227 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rdi), %ecx
	movq	(%r13), %rdx
	movzbl	%al, %esi
	orb	%cl, (%rdx,%rsi)
	movzbl	%al, %eax
	addw	%ax, 2(%rdi)
	jmp	.LBB5_226
.LBB5_239:
	cmpl	$0, 16(%r14)
	jne	.LBB5_241
# %bb.240:
	movl	$7, 16(%r14)
.LBB5_241:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	jmp	.LBB5_305
.LBB5_242:
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB5_252
# %bb.243:
	movq	56(%r14), %rcx
	movl	16(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB5_250
# %bb.244:                              # %.preheader9
	addl	$1, %eax
	jmp	.LBB5_247
	.p2align	4, 0x90
.LBB5_245:                              #   in Loop: Header=BB5_247 Depth=1
	orb	%bl, %cl
	movb	%cl, (%rdx,%rsi)
	movzbl	%dil, %edx
	addw	2(%r12), %dx
.LBB5_246:                              #   in Loop: Header=BB5_247 Depth=1
	movw	%dx, 2(%r12)
	addl	$-1, %eax
	cmpl	$1, %eax
	jle	.LBB5_249
.LBB5_247:                              # =>This Inner Loop Header: Depth=1
	leal	-2(%rax), %edi
	movq	(%r13), %rdx
	movzbl	%dil, %esi
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%r12), %ecx
	testb	%bl, %cl
	je	.LBB5_245
# %bb.248:                              #   in Loop: Header=BB5_247 Depth=1
	notb	%cl
	andb	%cl, %bl
	movb	%bl, (%rdx,%rsi)
	movzwl	2(%r12), %edx
	movzbl	%dil, %ecx
	subl	%ecx, %edx
	jmp	.LBB5_246
.LBB5_249:
	movq	56(%r14), %rcx
.LBB5_250:
	testb	$8, 40(%rcx)
	je	.LBB5_252
# %bb.251:
	movb	(%r12), %al
	notb	%al
	movq	(%r13), %rcx
	andb	%al, 10(%rcx)
	addw	$-10, 2(%r12)
.LBB5_252:
	movq	56(%r14), %r8
	movslq	16(%r8), %r15
	testq	%r15, %r15
	je	.LBB5_262
# %bb.253:
	movq	(%r13), %rdx
	movb	(%r12), %r11b
	cmpq	$1, %r15
	movl	$1, %eax
	movl	$1, %r10d
	cmovaq	%r15, %r10
	cmpq	$8, %r10
	jb	.LBB5_255
# %bb.254:
	cmpq	$1, %r15
	cmovaq	%r15, %rax
	addq	$-1, %rax
	cmpq	$255, %rax
	jbe	.LBB5_280
.LBB5_255:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB5_256:                              # =>This Inner Loop Header: Depth=1
	movzbl	%sil, %eax
	movzbl	(%rdx,%rax), %eax
	andb	%r11b, %al
	cmpb	$1, %al
	sbbl	$-1, %ecx
	addq	$1, %rsi
	cmpq	%r15, %rsi
	jb	.LBB5_256
.LBB5_257:
	cmpl	$1, %ecx
	jne	.LBB5_262
# %bb.258:                              # %.preheader5
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_259:                              # =>This Inner Loop Header: Depth=1
	movzbl	%al, %ecx
	testb	%r11b, (%rdx,%rcx)
	jne	.LBB5_274
# %bb.260:                              #   in Loop: Header=BB5_259 Depth=1
	addq	$1, %rax
	addl	$16777216, %esi         # imm = 0x1000000
	cmpq	%r15, %rax
	jb	.LBB5_259
# %bb.261:
	xorl	%esi, %esi
	jmp	.LBB5_275
.LBB5_262:
	movslq	20(%r8), %r10
	testq	%r10, %r10
	jle	.LBB5_273
# %bb.263:                              # %.preheader1
	movzwl	2(%r12), %r9d
	movq	24(%r8), %r11
	shlq	$5, %r10
	addq	%r11, %r10
	jmp	.LBB5_264
.LBB5_283:                              #   in Loop: Header=BB5_264 Depth=1
	xorl	%edi, %edi
	cmpq	%r15, %rdi
	je	.LBB5_284
	.p2align	4, 0x90
.LBB5_272:                              #   in Loop: Header=BB5_264 Depth=1
	addq	$32, %r11
	cmpq	%r10, %r11
	jae	.LBB5_273
.LBB5_264:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_268 Depth 2
	cmpq	%r13, %r11
	je	.LBB5_272
# %bb.265:                              #   in Loop: Header=BB5_264 Depth=1
	cmpw	%r9w, 10(%r11)
	jne	.LBB5_272
# %bb.266:                              #   in Loop: Header=BB5_264 Depth=1
	testl	%r15d, %r15d
	je	.LBB5_283
# %bb.267:                              #   in Loop: Header=BB5_264 Depth=1
	movq	%r12, %rax
	movq	(%r11), %r12
	movb	8(%r11), %dl
	movq	(%r13), %rsi
	movb	(%rax), %al
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_268:                              #   Parent Loop BB5_264 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%dil, %ecx
	testb	%dl, (%r12,%rcx)
	setne	%bl
	testb	%al, (%rsi,%rcx)
	setne	%cl
	xorb	%bl, %cl
	jne	.LBB5_271
# %bb.269:                              #   in Loop: Header=BB5_268 Depth=2
	addq	$1, %rdi
	cmpq	%r15, %rdi
	jb	.LBB5_268
# %bb.270:                              #   in Loop: Header=BB5_264 Depth=1
	movl	%edi, %edi
.LBB5_271:                              #   in Loop: Header=BB5_264 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	cmpq	%r15, %rdi
	jne	.LBB5_272
.LBB5_284:
	testl	%r15d, %r15d
	je	.LBB5_288
# %bb.285:                              # %.preheader
	xorl	%edx, %edx
.LBB5_286:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	notb	%al
	movq	(%r13), %rcx
	movzbl	%dl, %esi
	andb	%al, (%rcx,%rsi)
	movzbl	%dl, %eax
	subw	%ax, 2(%r12)
	addq	$1, %rdx
	cmpq	%r15, %rdx
	jb	.LBB5_286
# %bb.287:
	movq	56(%r14), %r8
.LBB5_288:
	addq	$-32, %r10
	cmpq	%r13, %r10
	jne	.LBB5_290
# %bb.289:
	addl	$-1, 20(%r8)
	jmp	.LBB5_290
.LBB5_273:
	movq	%r13, %r11
.LBB5_290:
	cmpl	$0, 16(%r14)
	jne	.LBB5_305
# %bb.291:
	subq	24(%r8), %r11
	shrq	$5, %r11
	movslq	%r11d, %rbx
	movq	32(%r14), %rax
	cmpq	%rax, 40(%r14)
	jl	.LBB5_313
# %bb.292:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	cmpq	%r15, %rax
	jge	.LBB5_313
# %bb.293:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB5_310
# %bb.294:
	movq	%rax, 24(%r14)
	movq	%r15, 32(%r14)
	jmp	.LBB5_313
.LBB5_274:
	sarl	$24, %esi
.LBB5_275:
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	ordinary
	movq	56(%r14), %rcx
	movslq	20(%rcx), %rax
	shlq	$5, %rax
	addq	24(%rcx), %rax
	movslq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_278
# %bb.276:                              # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_277:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %ebx
	notb	%bl
	movq	(%r13), %rsi
	movzbl	%dl, %edi
	andb	%bl, (%rsi,%rdi)
	movzbl	%dl, %esi
	subw	%si, 2(%r12)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB5_277
.LBB5_278:
	addq	$-32, %rax
	cmpq	%r13, %rax
	jne	.LBB5_305
# %bb.279:
	movq	56(%r14), %rax
	addl	$-1, 20(%rax)
	jmp	.LBB5_305
.LBB5_280:
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
	je	.LBB5_306
# %bb.281:
	movq	%r9, %rdi
	subq	%rax, %rdi
	pxor	%xmm3, %xmm3
	xorl	%ebx, %ebx
	pcmpeqd	%xmm4, %xmm4
	movdqa	.LCPI5_0(%rip), %xmm5   # xmm5 = [1,1,1,1]
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
.LBB5_282:                              # =>This Inner Loop Header: Depth=1
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
	jne	.LBB5_282
	jmp	.LBB5_307
.LBB5_295:
	cmpl	$0, 16(%r14)
	jne	.LBB5_297
# %bb.296:
	movl	$12, 16(%r14)
.LBB5_297:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
.LBB5_298:
	movq	24(%r14), %rax
	movq	40(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	jmp	.LBB5_303
.LBB5_299:
	cmpl	$0, 16(%r14)
	jne	.LBB5_301
# %bb.300:
	movl	$12, 16(%r14)
.LBB5_301:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
.LBB5_302:
	movq	24(%r14), %rax
	movq	40(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	addq	$134217728, %rdx        # imm = 0x8000000
.LBB5_303:
	movq	%rdx, (%rax,%rcx,8)
.LBB5_304:
	addq	$6, (%r14)
.LBB5_305:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_306:
	pxor	%xmm1, %xmm1
	xorl	%ebx, %ebx
	pxor	%xmm2, %xmm2
.LBB5_307:
	testq	%r9, %r9
	je	.LBB5_309
# %bb.308:
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
.LBB5_309:
	paddd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	paddd	%xmm1, %xmm0
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %ecx
	cmpq	%rsi, %r10
	jne	.LBB5_256
	jmp	.LBB5_257
.LBB5_310:
	cmpl	$0, 16(%r14)
	jne	.LBB5_312
# %bb.311:
	movl	$12, 16(%r14)
.LBB5_312:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
.LBB5_313:
	orq	$805306368, %rbx        # imm = 0x30000000
	movq	24(%r14), %rax
	movq	40(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB5_305
.Lfunc_end5:
	.size	p_bracket, .Lfunc_end5-p_bracket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_122
	.quad	.LBB5_137
	.quad	.LBB5_141
	.quad	.LBB5_146
	.quad	.LBB5_150
	.quad	.LBB5_154
	.quad	.LBB5_158
	.quad	.LBB5_162
	.quad	.LBB5_166
	.quad	.LBB5_170
	.quad	.LBB5_174
	.quad	.LBB5_178
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
	movsbl	%al, %eax
	cmpl	%r14d, %eax
	jne	.LBB6_16
.LBB6_2:
	cmpl	$0, 16(%r13)
	jne	.LBB6_19
# %bb.3:
	movq	32(%r13), %rax
	cmpq	%rax, 40(%r13)
	jl	.LBB6_18
# %bb.4:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	cmpq	%rbx, %rax
	jge	.LBB6_18
# %bb.5:
	movq	24(%r13), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
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
	jmp	.LBB6_21
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
.LBB6_18:
	orl	$268435456, %r12d       # imm = 0x10000000
	movq	24(%r13), %rax
	movq	40(%r13), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	movq	%r12, (%rax,%rcx,8)
.LBB6_19:
	movslq	%r14d, %rax
	cmpb	$0, (%r15,%rax)
	jne	.LBB6_21
# %bb.20:
	movq	56(%r13), %rcx
	movl	84(%rcx), %edx
	leal	1(%rdx), %esi
	movl	%esi, 84(%rcx)
	movb	%dl, (%r15,%rax)
.LBB6_21:
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
	subq	$56, %rsp
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	cmpl	$0, 16(%rdi)
	je	.LBB7_1
.LBB7_102:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	16(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	40(%rdi), %rax
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	xorl	%edx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	$256, %ecx              # imm = 0x100
	sete	%dl
	orl	$2, %edx
	cmpl	$2, %ecx
	cmovll	%ecx, %edx
	movq	%rax, %r13
	movq	%r14, %rcx
	movq	%rdx, %r14
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_91:                               #   in Loop: Header=BB7_3 Depth=2
	xorl	%edx, %edx
	movq	%r12, %r13
.LBB7_100:                              #   in Loop: Header=BB7_3 Depth=2
	addl	$-1, %ebx
	movq	%r12, %rcx
	testl	%edx, %edx
	jne	.LBB7_102
.LBB7_3:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %r12
	xorl	%edx, %edx
	cmpl	$256, %ebx              # imm = 0x100
	sete	%dl
	orl	$2, %edx
	cmpl	$2, %ebx
	cmovll	%ebx, %edx
	leal	(%r14,%rdx,8), %edx
	cmpl	$19, %edx
	jne	.LBB7_4
# %bb.90:                               #   in Loop: Header=BB7_3 Depth=2
	movq	%r12, %r13
	subq	%rcx, %r13
	je	.LBB7_91
# %bb.92:                               #   in Loop: Header=BB7_3 Depth=2
	testq	%r13, %r13
	jle	.LBB7_99
# %bb.93:                               #   in Loop: Header=BB7_3 Depth=2
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %r12
	movq	32(%r15), %r14
	addq	%r13, %r14
	movq	24(%r15), %rdi
	leaq	(,%r14,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_94
# %bb.97:                               #   in Loop: Header=BB7_3 Depth=2
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB7_98
.LBB7_94:                               #   in Loop: Header=BB7_3 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_96
# %bb.95:                               #   in Loop: Header=BB7_3 Depth=2
	movl	$12, (%rax)
.LBB7_96:                               #   in Loop: Header=BB7_3 Depth=2
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB7_98:                               #   in Loop: Header=BB7_3 Depth=2
	movq	%r12, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
.LBB7_99:                               #   in Loop: Header=BB7_3 Depth=2
	movq	24(%r15), %rax
	movq	40(%r15), %rdx
	leaq	(%rax,%rdx,8), %rdi
	leaq	(%rax,%rcx,8), %rsi
	leaq	(,%r13,8), %rdx
	callq	memcpy
	addq	40(%r15), %r13
	movq	%r13, 40(%r15)
	movl	16(%r15), %edx
	movq	%r13, %rax
	jmp	.LBB7_100
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	cmpl	$18, %edx
	ja	.LBB7_101
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	movl	%edx, %edx
	jmpq	*.LJTI7_0(,%rdx,8)
.LBB7_33:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, %rdx
	subq	%rcx, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r15, %rdi
	movq	%rcx, %r13
	callq	doinsert
	movq	%r13, %r8
	cmpl	$0, 16(%r15)
	jne	.LBB7_60
# %bb.34:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %rdx
	movq	%rdx, %rbx
	subq	%r8, %rbx
	movq	32(%r15), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %rdx
	jl	.LBB7_42
# %bb.35:                               #   in Loop: Header=BB7_2 Depth=1
	leaq	1(%rax), %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB7_42
# %bb.36:                               #   in Loop: Header=BB7_2 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_37
# %bb.40:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	movl	16(%r15), %ecx
	jmp	.LBB7_41
.LBB7_79:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, %r14
	subq	%rcx, %r14
	je	.LBB7_88
# %bb.80:                               #   in Loop: Header=BB7_2 Depth=1
	testq	%r14, %r14
	jle	.LBB7_87
# %bb.81:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %r12
	movq	32(%r15), %r13
	addq	%r14, %r13
	movq	24(%r15), %rdi
	leaq	(,%r13,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_82
# %bb.85:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 24(%r15)
	movq	%r13, 32(%r15)
	jmp	.LBB7_86
.LBB7_82:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_84
# %bb.83:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$12, (%rax)
.LBB7_84:                               #   in Loop: Header=BB7_2 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB7_86:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB7_87:                               #   in Loop: Header=BB7_2 Depth=1
	movq	24(%r15), %rax
	movq	40(%r15), %rdx
	leaq	(%rax,%rdx,8), %rdi
	leaq	(%rax,%rcx,8), %rsi
	leaq	(,%r14,8), %rdx
	callq	memcpy
	addq	40(%r15), %r14
	movq	%r14, 40(%r15)
	movq	%r14, %rax
.LBB7_88:                               #   in Loop: Header=BB7_2 Depth=1
	addl	$-1, %ebx
	movq	%r12, %r14
	jmp	.LBB7_89
.LBB7_37:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_39:                               #   in Loop: Header=BB7_2 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB7_41:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r13, %r8
.LBB7_42:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$2281701376, %eax       # imm = 0x88000000
	addq	$-134217728, %rax       # imm = 0xF8000000
	orq	%rax, %rbx
	movq	24(%r15), %rax
	movq	40(%r15), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r15)
	movq	%rbx, (%rax,%rdx,8)
	testl	%ecx, %ecx
	jne	.LBB7_60
# %bb.43:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %rcx
	subq	%r8, %rcx
	movq	(%rax,%r8,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	%rcx, %rdx
	movq	%rdx, (%rax,%r8,8)
	movq	32(%r15), %rcx
	cmpq	%rcx, 40(%r15)
	jl	.LBB7_49
# %bb.44:                               #   in Loop: Header=BB7_2 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB7_49
# %bb.45:                               #   in Loop: Header=BB7_2 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_46
# %bb.50:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	cmpl	$0, 16(%r15)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
	movq	%r13, %r8
	jne	.LBB7_60
	jmp	.LBB7_51
.LBB7_49:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
.LBB7_51:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %rcx
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movq	32(%r15), %rcx
	cmpq	%rcx, 40(%r15)
	jl	.LBB7_59
# %bb.52:                               #   in Loop: Header=BB7_2 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB7_59
# %bb.53:                               #   in Loop: Header=BB7_2 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_54
# %bb.57:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB7_58
.LBB7_46:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_48
# %bb.47:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$12, (%rax)
.LBB7_48:                               #   in Loop: Header=BB7_2 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movl	$2281701376, %edx       # imm = 0x88000000
	movq	%rdx, (%rax,%rcx,8)
	movq	%r13, %r8
	jmp	.LBB7_60
.LBB7_54:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_56
# %bb.55:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$12, (%rax)
.LBB7_56:                               #   in Loop: Header=BB7_2 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movq	24(%r15), %rax
.LBB7_58:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r13, %r8
.LBB7_59:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movl	$2281701376, %edx       # imm = 0x88000000
	addq	$134217730, %rdx        # imm = 0x8000002
	movq	%rdx, (%rax,%rcx,8)
.LBB7_60:                               #   in Loop: Header=BB7_2 Depth=1
	movq	40(%r15), %r14
	movl	$1, %ebx
	subq	%r8, %r12
	je	.LBB7_61
# %bb.62:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$1, %r8
	testq	%r12, %r12
	jle	.LBB7_69
# %bb.63:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r12, %rax
	movq	%r8, %r12
	movq	32(%r15), %r14
	movq	%rax, %r13
	addq	%rax, %r14
	movq	24(%r15), %rdi
	leaq	(,%r14,8), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_64
# %bb.67:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB7_68
.LBB7_61:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r14, %rax
	jmp	.LBB7_89
.LBB7_64:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_66
# %bb.65:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$12, (%rax)
.LBB7_66:                               #   in Loop: Header=BB7_2 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
.LBB7_68:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, %r8
	movq	%r13, %r12
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB7_69:                               #   in Loop: Header=BB7_2 Depth=1
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r8,8), %rsi
	leaq	(,%r12,8), %rdx
	callq	memcpy
	addq	40(%r15), %r12
	movq	%r12, 40(%r15)
	movq	%r12, %rax
.LBB7_89:                               #   in Loop: Header=BB7_2 Depth=1
	addl	$-1, -60(%rbp)          # 4-byte Folded Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	$0, (%rcx)
	je	.LBB7_2
	jmp	.LBB7_102
.LBB7_7:
	subq	%rcx, %r12
	addq	$1, %r12
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	doinsert
	leaq	1(%rbx), %rsi
	movq	%r15, %rdi
	movl	$1, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	repeat
	cmpl	$0, 16(%r15)
	jne	.LBB7_102
# %bb.8:
	movq	%rbx, %rdi
	movq	40(%r15), %rdx
	movq	%rdx, %r12
	subq	%rbx, %r12
	movq	32(%r15), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %rdx
	jl	.LBB7_16
# %bb.9:
	leaq	1(%rax), %rdx
	shrq	$63, %rdx
	addq	%rax, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB7_16
# %bb.10:
	movq	24(%r15), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_11
# %bb.14:
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	movl	16(%r15), %ecx
	jmp	.LBB7_15
.LBB7_6:
	movq	%rcx, 40(%r15)
	jmp	.LBB7_102
.LBB7_70:
	subq	%rcx, %r12
	addq	$1, %r12
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	doinsert
	cmpl	$0, 16(%r15)
	jne	.LBB7_102
# %bb.71:
	movq	%rbx, %rax
	movq	40(%r15), %rcx
	movq	%rcx, %rbx
	subq	%rax, %rbx
	movq	32(%r15), %rax
	cmpq	%rax, %rcx
	jl	.LBB7_78
# %bb.72:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	cmpq	%r14, %rax
	jge	.LBB7_78
# %bb.73:
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_74
# %bb.77:
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB7_78
.LBB7_101:
	movl	$15, 16(%r15)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	jmp	.LBB7_102
.LBB7_11:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jne	.LBB7_13
# %bb.12:
	movl	$12, (%rax)
	movl	$12, %ecx
.LBB7_13:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
.LBB7_15:
	movq	%rbx, %rdi
.LBB7_16:
	movl	$2281701376, %r14d      # imm = 0x88000000
	leaq	-134217728(%r14), %rax
	orq	%rax, %r12
	movq	24(%r15), %rax
	movq	40(%r15), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 40(%r15)
	movq	%r12, (%rax,%rdx,8)
	testl	%ecx, %ecx
	jne	.LBB7_102
# %bb.17:
	movq	40(%r15), %rcx
	subq	%rdi, %rcx
	movq	(%rax,%rdi,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	%rcx, %rdx
	movq	%rdx, (%rax,%rdi,8)
	movq	32(%r15), %rcx
	cmpq	%rcx, 40(%r15)
	jl	.LBB7_23
# %bb.18:
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB7_23
# %bb.19:
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_20
# %bb.24:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	cmpl	$0, 16(%r15)
	movq	%r14, (%rax,%rcx,8)
	jne	.LBB7_102
	jmp	.LBB7_25
.LBB7_23:
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rax,%rcx,8)
.LBB7_25:
	movq	40(%r15), %rcx
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movq	32(%r15), %rcx
	cmpq	%rcx, 40(%r15)
	jl	.LBB7_32
# %bb.26:
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	cmpq	%rbx, %rcx
	jge	.LBB7_32
# %bb.27:
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_28
# %bb.31:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB7_32
.LBB7_20:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_22
# %bb.21:
	movl	$12, (%rax)
.LBB7_22:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rax,%rcx,8)
	jmp	.LBB7_102
.LBB7_74:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_76
# %bb.75:
	movl	$12, (%rax)
.LBB7_76:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
.LBB7_78:
	orq	$1342177280, %rbx       # imm = 0x50000000
	movq	24(%r15), %rax
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB7_102
.LBB7_28:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB7_30
# %bb.29:
	movl	$12, (%rax)
.LBB7_30:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movq	24(%r15), %rax
.LBB7_32:
	movq	40(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	addq	$134217730, %r14        # imm = 0x8000002
	movq	%r14, (%rax,%rcx,8)
	jmp	.LBB7_102
.Lfunc_end7:
	.size	repeat, .Lfunc_end7-repeat
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_102
	.quad	.LBB7_33
	.quad	.LBB7_70
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_101
	.quad	.LBB7_79
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_b_symbol
	.type	p_b_symbol,@function
p_b_symbol:                             # @p_b_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpq	%rcx, %rax
	jae	.LBB8_1
# %bb.5:
	leaq	1(%rax), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB8_4
# %bb.6:
	cmpb	$91, (%rax)
	jne	.LBB8_4
# %bb.7:
	cmpb	$46, (%rdx)
	jne	.LBB8_4
# %bb.8:
	leaq	2(%rax), %r14
	movq	%r14, (%rbx)
	cmpq	%rcx, %r14
	jae	.LBB8_15
# %bb.9:
	addq	$3, %rax
	jmp	.LBB8_10
.LBB8_1:
	cmpl	$0, 16(%rbx)
	jne	.LBB8_3
# %bb.2:
	movl	$7, 16(%rbx)
.LBB8_3:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$nuls+1, %edx
.LBB8_4:
	movq	%rdx, (%rbx)
	movb	(%rax), %al
.LBB8_35:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_10 Depth=1
	movq	%rax, (%rbx)
	addq	$1, %rax
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rax
	jae	.LBB8_14
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=1
	cmpb	$46, -1(%rax)
	jne	.LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=1
	cmpb	$93, (%rax)
	jne	.LBB8_13
# %bb.17:
	movq	%r14, %r12
	notq	%r12
	addq	%rax, %r12
	movslq	%r12d, %r15
	movl	$.L.str.14, %edi
	movl	$cnames+16, %r13d
	jmp	.LBB8_18
.LBB8_21:                               #   in Loop: Header=BB8_18 Depth=1
	movq	(%r13), %rdi
	addq	$16, %r13
	testq	%rdi, %rdi
	je	.LBB8_22
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB8_21
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=1
	movq	-16(%r13), %rax
	cmpb	$0, (%rax,%r15)
	jne	.LBB8_21
# %bb.20:
	movb	-8(%r13), %al
	jmp	.LBB8_27
.LBB8_14:
	movq	%rax, (%rbx)
.LBB8_15:
	cmpl	$0, 16(%rbx)
	jne	.LBB8_26
# %bb.16:
	movl	$7, 16(%rbx)
.LBB8_26:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	xorl	%eax, %eax
.LBB8_27:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB8_32
# %bb.28:
	leaq	1(%rcx), %rdx
	cmpq	%rsi, %rdx
	jae	.LBB8_32
# %bb.29:
	cmpb	$46, (%rcx)
	jne	.LBB8_32
# %bb.30:
	cmpb	$93, (%rdx)
	jne	.LBB8_32
# %bb.31:
	addq	$2, %rcx
	movq	%rcx, (%rbx)
	jmp	.LBB8_35
.LBB8_32:
	cmpl	$0, 16(%rbx)
	jne	.LBB8_34
# %bb.33:
	movl	$3, 16(%rbx)
.LBB8_34:
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	jmp	.LBB8_35
.LBB8_22:
	cmpl	$1, %r12d
	jne	.LBB8_24
# %bb.23:
	movb	(%r14), %al
	jmp	.LBB8_27
.LBB8_24:
	cmpl	$0, 16(%rbx)
	jne	.LBB8_26
# %bb.25:
	movl	$3, 16(%rbx)
	jmp	.LBB8_26
.Lfunc_end8:
	.size	p_b_symbol, .Lfunc_end8-p_b_symbol
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
