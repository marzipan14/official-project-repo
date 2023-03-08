	.text
	.file	"memmem.c"
	.globl	memmem                  # -- Begin function memmem
	.p2align	4, 0x90
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2072, %rsp             # imm = 0x818
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.1:
	movq	%rcx, %r15
	movq	%rsi, %r13
	movq	%rsi, %rax
	subq	%rcx, %rax
	jae	.LBB0_4
.LBB0_2:
	xorl	%r11d, %r11d
	jmp	.LBB0_111
.LBB0_3:
	movq	%rdi, %r11
	jmp	.LBB0_111
.LBB0_4:
	movq	%rdx, %r12
	cmpq	$31, %r15
	ja	.LBB0_9
# %bb.5:
	movzbl	(%r12), %esi
	movq	%rdi, %rbx
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %r11
	cmpq	$1, %r15
	je	.LBB0_111
# %bb.6:
	testq	%r11, %r11
	je	.LBB0_111
# %bb.7:
	subq	%r11, %rbx
	addq	%r13, %rbx
	subq	%r15, %rbx
	jb	.LBB0_2
# %bb.65:                               # %.preheader7
	movq	$-1, %r13
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$1, %r8d
	movl	$1, %ecx
	jmp	.LBB0_68
	.p2align	4, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_68 Depth=1
	movq	%rdx, %r8
	subq	%r13, %r8
	movl	$1, %ecx
.LBB0_67:                               #   in Loop: Header=BB0_68 Depth=1
	movq	%rdx, %rsi
	addq	%rcx, %rdx
	cmpq	%r15, %rdx
	jae	.LBB0_74
.LBB0_68:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%r13), %rax
	movzbl	(%r12,%rax), %eax
	cmpb	%al, (%r12,%rdx)
	jb	.LBB0_66
# %bb.69:                               #   in Loop: Header=BB0_68 Depth=1
	jne	.LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_68 Depth=1
	cmpq	%r8, %rcx
	jne	.LBB0_73
# %bb.71:                               #   in Loop: Header=BB0_68 Depth=1
	addq	%r8, %rsi
	movl	$1, %ecx
	movq	%rsi, %rdx
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_72:                               #   in Loop: Header=BB0_68 Depth=1
	movl	$1, %ecx
	movq	%rsi, %r13
	leaq	1(%rsi), %rdx
	movl	$1, %r8d
	jmp	.LBB0_67
.LBB0_73:                               #   in Loop: Header=BB0_68 Depth=1
	addq	$1, %rcx
	movq	%rsi, %rdx
	jmp	.LBB0_67
.LBB0_9:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	$-1, %r8
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$1, %edx
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rsi, %r9
	subq	%r8, %r9
	movl	$1, %edx
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rsi, %rcx
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_18
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdx), %rax
	movzbl	(%r12,%rax), %eax
	cmpb	%al, (%r12,%rsi)
	jb	.LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	jne	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	cmpq	%r9, %rdx
	jne	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	addq	%r9, %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	$1, %edx
	movq	%rcx, %r8
	leaq	1(%rcx), %rsi
	movl	$1, %r9d
	jmp	.LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=1
	addq	$1, %rdx
	movq	%rcx, %rsi
	jmp	.LBB0_11
.LBB0_18:                               # %.preheader18
	movq	$-1, %r13
	movl	$1, %esi
	xorl	%ebx, %ebx
	movl	$1, %r14d
	movl	$1, %edx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rsi, %r14
	subq	%r13, %r14
	movl	$1, %edx
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rsi, %rbx
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_27
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rsi), %eax
	leaq	(%rdx,%r13), %rcx
	movzbl	(%r12,%rcx), %ecx
	cmpb	%al, %cl
	jb	.LBB0_19
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	cmpb	%cl, %al
	jne	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	cmpq	%r14, %rdx
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	addq	%r14, %rbx
	movl	$1, %edx
	movq	%rbx, %rsi
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	movl	$1, %edx
	movq	%rbx, %r13
	leaq	1(%rbx), %rsi
	movl	$1, %r14d
	jmp	.LBB0_20
.LBB0_26:                               #   in Loop: Header=BB0_21 Depth=1
	addq	$1, %rdx
	movq	%rbx, %rsi
	jmp	.LBB0_20
.LBB0_27:
	addq	$1, %r13
	addq	$1, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -2112(%rbp,%rdx,8)
	movdqa	%xmm0, -2096(%rbp,%rdx,8)
	movdqa	%xmm0, -2080(%rbp,%rdx,8)
	movdqa	%xmm0, -2064(%rbp,%rdx,8)
	movdqa	%xmm0, -2048(%rbp,%rdx,8)
	movdqa	%xmm0, -2032(%rbp,%rdx,8)
	movdqa	%xmm0, -2016(%rbp,%rdx,8)
	movdqa	%xmm0, -2000(%rbp,%rdx,8)
	movdqa	%xmm0, -1984(%rbp,%rdx,8)
	movdqa	%xmm0, -1968(%rbp,%rdx,8)
	movdqa	%xmm0, -1952(%rbp,%rdx,8)
	movdqa	%xmm0, -1936(%rbp,%rdx,8)
	movdqa	%xmm0, -1920(%rbp,%rdx,8)
	movdqa	%xmm0, -1904(%rbp,%rdx,8)
	movdqa	%xmm0, -1888(%rbp,%rdx,8)
	movdqa	%xmm0, -1872(%rbp,%rdx,8)
	addq	$32, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_28
# %bb.29:
	cmpq	%r8, %r13
	cmovbq	%r9, %r14
	leaq	-1(%r15), %rax
	movl	%r15d, %r9d
	andl	$3, %r9d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpq	$3, %rax
	jae	.LBB0_31
# %bb.30:
	xorl	%edx, %edx
	jmp	.LBB0_34
.LBB0_31:
	leaq	3(%r12), %rsi
	movq	%r15, %rcx
	subq	%r9, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rdx), %rax
	addq	$-1, %rax
	movzbl	-3(%rsi), %ebx
	movq	%rax, -2112(%rbp,%rbx,8)
	leaq	-2(%r15,%rdx), %rax
	movzbl	-2(%rsi), %ebx
	movq	%rax, -2112(%rbp,%rbx,8)
	leaq	-3(%r15,%rdx), %rax
	movzbl	-1(%rsi), %ebx
	movq	%rax, -2112(%rbp,%rbx,8)
	leaq	(%r15,%rdx), %rax
	addq	$-4, %rax
	movzbl	(%rsi), %ebx
	movq	%rax, -2112(%rbp,%rbx,8)
	addq	$-4, %rdx
	addq	$4, %rsi
	movq	%rcx, %rax
	addq	%rdx, %rax
	jne	.LBB0_32
# %bb.33:                               # %.loopexit17
	negq	%rdx
.LBB0_34:
	movq	%rdi, %rbx
	testq	%r9, %r9
	je	.LBB0_37
# %bb.35:                               # %.preheader15
	leaq	(%r12,%rdx), %rsi
	notq	%rdx
	addq	%r15, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %eax
	movq	%rdx, -2112(%rbp,%rax,8)
	addq	$1, %rdi
	addq	$-1, %rdx
	cmpq	%rdi, %r9
	jne	.LBB0_36
.LBB0_37:
	cmpq	%r8, %r13
	cmovbq	%r8, %r13
	leaq	(%r12,%r14), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_52
# %bb.38:
	subq	%r13, %r15
	cmpq	%r15, %r13
	cmovaeq	%r13, %r15
	leaq	(%r12,%r13), %rax
	movq	%rbx, %r9
	leaq	-1(%rbx), %r8
	xorl	%r11d, %r11d
	xorl	%edx, %edx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_41 Depth=1
	addq	%rcx, %rdx
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rdx
	ja	.LBB0_110
.LBB0_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	leaq	(%rdx,%rbx), %rcx
	movzbl	(%r9,%rcx), %ecx
	movq	-2112(%rbp,%rcx,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_39
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=1
	cmpq	%rbx, %r13
	jae	.LBB0_46
# %bb.43:                               # %.preheader12
                                        #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r9,%rdx), %rdi
	addq	%r13, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_44:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rsi), %ecx
	cmpb	(%rdi,%rsi), %cl
	jne	.LBB0_50
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=2
	leaq	(%rsi,%r13), %rcx
	addq	$1, %rcx
	addq	$1, %rsi
	cmpq	%rbx, %rcx
	jb	.LBB0_44
.LBB0_46:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r8,%rdx), %rsi
	movq	%r13, %rcx
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_47:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rdi
	jb	.LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=2
	movzbl	-1(%r12,%rcx), %ebx
	cmpb	(%rsi,%rcx), %bl
	movq	%rdi, %rcx
	je	.LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r15, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_50:                               #   in Loop: Header=BB0_41 Depth=1
	addq	%rsi, %rdx
	addq	$1, %rdx
	jmp	.LBB0_40
.LBB0_51:
	addq	%rdx, %r9
	movq	%r9, %r11
	jmp	.LBB0_110
.LBB0_52:
	subq	%r14, %r15
	movl	$1, %r8d
	subq	%r13, %r8
	movq	%rbx, %r10
	leaq	-1(%rbx), %r9
	xorl	%r11d, %r11d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_55 Depth=1
	cmpq	%r14, %rax
	movq	%rax, %rdi
	cmovbq	%r15, %rdi
	testq	%rsi, %rsi
	cmoveq	%rax, %rdi
	xorl	%esi, %esi
.LBB0_54:                               #   in Loop: Header=BB0_55 Depth=1
	addq	%rdi, %rdx
	cmpq	%rcx, %rdx
	ja	.LBB0_110
.LBB0_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_58 Depth 2
                                        #     Child Loop BB0_61 Depth 2
	leaq	(%rdx,%rbx), %rax
	movzbl	(%r10,%rax), %eax
	movq	-2112(%rbp,%rax,8), %rax
	testq	%rax, %rax
	jne	.LBB0_53
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=1
	cmpq	%rsi, %r13
	movq	%r13, %rdi
	cmovbq	%rsi, %rdi
	cmpq	%rbx, %rdi
	jae	.LBB0_60
# %bb.57:                               # %.preheader8
                                        #   in Loop: Header=BB0_55 Depth=1
	leaq	(%r10,%rdx), %rax
	.p2align	4, 0x90
.LBB0_58:                               #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%rdi), %ecx
	cmpb	(%rax,%rdi), %cl
	jne	.LBB0_64
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=2
	addq	$1, %rdi
	cmpq	%rbx, %rdi
	jb	.LBB0_58
.LBB0_60:                               #   in Loop: Header=BB0_55 Depth=1
	leaq	(%r9,%rdx), %rdi
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	cmpq	%rcx, %rsi
	jae	.LBB0_63
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=2
	leaq	-1(%rax), %rcx
	movzbl	-1(%r12,%rax), %ebx
	cmpb	(%rdi,%rax), %bl
	je	.LBB0_61
.LBB0_63:                               #   in Loop: Header=BB0_55 Depth=1
	addq	$1, %rsi
	movq	%r14, %rdi
	cmpq	%rsi, %rax
	movq	%r15, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jae	.LBB0_54
	jmp	.LBB0_107
.LBB0_64:                               #   in Loop: Header=BB0_55 Depth=1
	addq	%r8, %rdi
	xorl	%esi, %esi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_54
.LBB0_74:                               # %.preheader6
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movq	$-1, %r9
	movl	$1, %esi
	xorl	%edi, %edi
	movl	$1, %r14d
	movl	$1, %edx
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_77 Depth=1
	movq	%rsi, %r14
	subq	%r9, %r14
	movl	$1, %edx
.LBB0_76:                               #   in Loop: Header=BB0_77 Depth=1
	movq	%rsi, %rdi
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_83
.LBB0_77:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rsi), %eax
	leaq	(%r9,%rdx), %rcx
	movzbl	(%r12,%rcx), %ecx
	cmpb	%al, %cl
	jb	.LBB0_75
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=1
	cmpb	%cl, %al
	jne	.LBB0_81
# %bb.79:                               #   in Loop: Header=BB0_77 Depth=1
	cmpq	%r14, %rdx
	jne	.LBB0_82
# %bb.80:                               #   in Loop: Header=BB0_77 Depth=1
	addq	%r14, %rdi
	movl	$1, %edx
	movq	%rdi, %rsi
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_77 Depth=1
	movl	$1, %edx
	movq	%rdi, %r9
	leaq	1(%rdi), %rsi
	movl	$1, %r14d
	jmp	.LBB0_76
.LBB0_82:                               #   in Loop: Header=BB0_77 Depth=1
	addq	$1, %rdx
	movq	%rdi, %rsi
	jmp	.LBB0_76
.LBB0_83:
	addq	$1, %r9
	addq	$1, %r13
	cmpq	%r13, %r9
	cmovbq	%r8, %r14
	cmovaeq	%r9, %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%r14), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_96
# %bb.84:
	movq	%r15, %r9
	subq	%r13, %r9
	cmpq	%r9, %r13
	cmovaeq	%r13, %r9
	leaq	(%r12,%r13), %rcx
	movq	-48(%rbp), %r11         # 8-byte Reload
	leaq	-1(%r11), %r8
	xorl	%esi, %esi
	movq	%rbx, %r10
.LBB0_85:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_90 Depth 2
	cmpq	%r15, %r13
	jae	.LBB0_89
# %bb.86:                               # %.preheader3
                                        #   in Loop: Header=BB0_85 Depth=1
	leaq	(%r11,%rsi), %rdx
	addq	%r13, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_87:                               #   Parent Loop BB0_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx,%rdi), %eax
	cmpb	(%rdx,%rdi), %al
	jne	.LBB0_93
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=2
	leaq	(%rdi,%r13), %rax
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	%r15, %rax
	jb	.LBB0_87
.LBB0_89:                               #   in Loop: Header=BB0_85 Depth=1
	leaq	(%r8,%rsi), %rdx
	movq	%r13, %rax
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_90:                               #   Parent Loop BB0_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rdi
	jb	.LBB0_109
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	movzbl	-1(%r12,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	movq	%rdi, %rax
	je	.LBB0_90
# %bb.92:                               #   in Loop: Header=BB0_85 Depth=1
	movq	%r9, %rdi
.LBB0_93:                               #   in Loop: Header=BB0_85 Depth=1
	addq	%rdi, %rsi
	addq	$1, %rsi
	cmpq	%r10, %rsi
	jbe	.LBB0_85
.LBB0_94:
	xorl	%r11d, %r11d
	jmp	.LBB0_110
.LBB0_96:
	movl	$1, %r8d
	subq	%r13, %r8
	movq	%r15, %r10
	subq	%r14, %r10
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	-1(%rax), %r9
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	%rbx, %r11
	jmp	.LBB0_99
	.p2align	4, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_99 Depth=1
	addq	$1, %rdi
	movq	%r14, %rax
	cmpq	%rdi, %rdx
	movq	%r10, %rdi
	jb	.LBB0_108
.LBB0_98:                               #   in Loop: Header=BB0_99 Depth=1
	addq	%rax, %rsi
	cmpq	%r11, %rsi
	ja	.LBB0_94
.LBB0_99:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_101 Depth 2
                                        #     Child Loop BB0_104 Depth 2
	cmpq	%rdi, %r13
	movq	%r13, %rax
	cmovbq	%rdi, %rax
	cmpq	%r15, %rax
	jae	.LBB0_103
# %bb.100:                              # %.preheader
                                        #   in Loop: Header=BB0_99 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %rdx
	.p2align	4, 0x90
.LBB0_101:                              #   Parent Loop BB0_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	jne	.LBB0_106
# %bb.102:                              #   in Loop: Header=BB0_101 Depth=2
	addq	$1, %rax
	cmpq	%r15, %rax
	jb	.LBB0_101
.LBB0_103:                              #   in Loop: Header=BB0_99 Depth=1
	leaq	(%r9,%rsi), %rax
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB0_104:                              #   Parent Loop BB0_99 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	cmpq	%rcx, %rdi
	jae	.LBB0_97
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=2
	leaq	-1(%rdx), %rcx
	movzbl	-1(%r12,%rdx), %ebx
	cmpb	(%rax,%rdx), %bl
	je	.LBB0_104
	jmp	.LBB0_97
.LBB0_106:                              #   in Loop: Header=BB0_99 Depth=1
	addq	%r8, %rax
	xorl	%edi, %edi
	jmp	.LBB0_98
.LBB0_107:
	addq	%rdx, %r10
	movq	%r10, %r11
	jmp	.LBB0_110
.LBB0_108:
	movq	-48(%rbp), %r11         # 8-byte Reload
.LBB0_109:
	addq	%rsi, %r11
.LBB0_110:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_111:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rax
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	memmem, .Lfunc_end0-memmem
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
