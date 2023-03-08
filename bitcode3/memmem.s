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
	jae	.LBB0_5
.LBB0_2:
	xorl	%eax, %eax
	jmp	.LBB0_4
.LBB0_3:
	movq	%rdi, %rax
.LBB0_4:
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	movq	%rdx, %r14
	cmpq	$31, %r15
	ja	.LBB0_10
# %bb.6:
	movzbl	(%r14), %esi
	movq	%rdi, %rbx
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %rcx
	cmpq	$1, %r15
	je	.LBB0_66
# %bb.7:
	movq	%rcx, %rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.8:
	movq	%rbx, %r9
	subq	-48(%rbp), %r9          # 8-byte Folded Reload
	addq	%r13, %r9
	subq	%r15, %r9
	jb	.LBB0_2
# %bb.67:                               # %.preheader7
	movq	$-1, %r13
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$1, %r8d
	movl	$1, %ecx
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_68:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rdx, %r8
	subq	%r13, %r8
	movl	$1, %ecx
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rdx, %rsi
	addq	%rcx, %rdx
	cmpq	%r15, %rdx
	jae	.LBB0_76
.LBB0_70:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%r13), %rax
	movzbl	(%r14,%rax), %eax
	cmpb	%al, (%r14,%rdx)
	jb	.LBB0_68
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	jne	.LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=1
	cmpq	%r8, %rcx
	jne	.LBB0_75
# %bb.73:                               #   in Loop: Header=BB0_70 Depth=1
	addq	%r8, %rsi
	movl	$1, %ecx
	movq	%rsi, %rdx
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=1
	movl	$1, %ecx
	movq	%rsi, %r13
	leaq	1(%rsi), %rdx
	movl	$1, %r8d
	jmp	.LBB0_69
.LBB0_75:                               #   in Loop: Header=BB0_70 Depth=1
	addq	$1, %rcx
	movq	%rsi, %rdx
	jmp	.LBB0_69
.LBB0_10:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	$-1, %r8
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$1, %edx
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rsi, %r9
	subq	%r8, %r9
	movl	$1, %edx
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rsi, %rcx
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_19
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdx), %rax
	movzbl	(%r14,%rax), %eax
	cmpb	%al, (%r14,%rsi)
	jb	.LBB0_11
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	jne	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	cmpq	%r9, %rdx
	jne	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	addq	%r9, %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	movl	$1, %edx
	movq	%rcx, %r8
	leaq	1(%rcx), %rsi
	movl	$1, %r9d
	jmp	.LBB0_12
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	addq	$1, %rdx
	movq	%rcx, %rsi
	jmp	.LBB0_12
.LBB0_19:                               # %.preheader18
	movq	$-1, %r12
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$1, %r13d
	movl	$1, %edx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_22 Depth=1
	movq	%rsi, %r13
	subq	%r12, %r13
	movl	$1, %edx
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	movq	%rsi, %rcx
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_28
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rsi), %ebx
	leaq	(%r12,%rdx), %rax
	movzbl	(%r14,%rax), %eax
	cmpb	%bl, %al
	jb	.LBB0_20
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	cmpb	%al, %bl
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	cmpq	%r13, %rdx
	jne	.LBB0_27
# %bb.25:                               #   in Loop: Header=BB0_22 Depth=1
	addq	%r13, %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$1, %edx
	movq	%rcx, %r12
	leaq	1(%rcx), %rsi
	movl	$1, %r13d
	jmp	.LBB0_21
.LBB0_27:                               #   in Loop: Header=BB0_22 Depth=1
	addq	$1, %rdx
	movq	%rcx, %rsi
	jmp	.LBB0_21
.LBB0_28:
	addq	$1, %r12
	addq	$1, %r8
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB0_29
# %bb.30:
	cmpq	%r8, %r12
	cmovbq	%r9, %r13
	leaq	-1(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%r15d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB0_32
# %bb.31:
	xorl	%edx, %edx
	jmp	.LBB0_35
.LBB0_32:
	leaq	3(%r14), %rsi
	movq	%r15, %rcx
	subq	%r9, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB0_33
# %bb.34:                               # %.loopexit17
	negq	%rdx
.LBB0_35:
	movq	%rdi, %rbx
	testq	%r9, %r9
	je	.LBB0_38
# %bb.36:                               # %.preheader15
	leaq	(%r14,%rdx), %rsi
	notq	%rdx
	addq	%r15, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %eax
	movq	%rdx, -2112(%rbp,%rax,8)
	addq	$1, %rdi
	addq	$-1, %rdx
	cmpq	%rdi, %r9
	jne	.LBB0_37
.LBB0_38:
	cmpq	%r8, %r12
	cmovbq	%r8, %r12
	leaq	(%r14,%r13), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_53
# %bb.39:
	subq	%r12, %r15
	cmpq	%r15, %r12
	cmovaeq	%r12, %r15
	leaq	(%r14,%r12), %r9
	movq	%rbx, %r10
	leaq	-1(%rbx), %r8
	xorl	%eax, %eax
	xorl	%esi, %esi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=1
	addq	%rcx, %rsi
	cmpq	-56(%rbp), %rsi         # 8-byte Folded Reload
	ja	.LBB0_4
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_48 Depth 2
	leaq	(%rsi,%rbx), %rcx
	movzbl	(%r10,%rcx), %ecx
	movq	-2112(%rbp,%rcx,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_40
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	cmpq	%rbx, %r12
	jae	.LBB0_47
# %bb.44:                               # %.preheader12
                                        #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r10,%rsi), %rdx
	addq	%r12, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_45:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r9,%rdi), %ecx
	cmpb	(%rdx,%rdi), %cl
	jne	.LBB0_51
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=2
	leaq	(%r12,%rdi), %rcx
	addq	$1, %rcx
	addq	$1, %rdi
	cmpq	%rbx, %rcx
	jb	.LBB0_45
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r8,%rsi), %rdx
	movq	%r12, %rcx
	movq	%r12, %rdi
	.p2align	4, 0x90
.LBB0_48:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rdi
	jb	.LBB0_52
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	movzbl	-1(%r14,%rcx), %ebx
	cmpb	(%rdx,%rcx), %bl
	movq	%rdi, %rcx
	je	.LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=1
	addq	%rdi, %rsi
	addq	$1, %rsi
	cmpq	-56(%rbp), %rsi         # 8-byte Folded Reload
	jbe	.LBB0_42
	jmp	.LBB0_4
.LBB0_52:
	addq	%rsi, %r10
	movq	%r10, %rax
	jmp	.LBB0_4
.LBB0_53:
	subq	%r13, %r15
	movl	$1, %r8d
	subq	%r12, %r8
	movq	%rbx, %r11
	leaq	-1(%rbx), %r9
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_56
	.p2align	4, 0x90
.LBB0_54:                               #   in Loop: Header=BB0_56 Depth=1
	cmpq	%r13, %rdx
	movq	%rdx, %rcx
	cmovbq	%r15, %rcx
	testq	%rdi, %rdi
	cmoveq	%rdx, %rcx
	xorl	%edi, %edi
.LBB0_55:                               #   in Loop: Header=BB0_56 Depth=1
	addq	%rcx, %r10
	cmpq	%rsi, %r10
	ja	.LBB0_4
.LBB0_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_62 Depth 2
	leaq	(%r10,%rbx), %rcx
	movzbl	(%r11,%rcx), %ecx
	movq	-2112(%rbp,%rcx,8), %rdx
	testq	%rdx, %rdx
	jne	.LBB0_54
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=1
	cmpq	%rdi, %r12
	movq	%r12, %rcx
	cmovbq	%rdi, %rcx
	cmpq	%rbx, %rcx
	jae	.LBB0_61
# %bb.58:                               # %.preheader8
                                        #   in Loop: Header=BB0_56 Depth=1
	leaq	(%r11,%r10), %rdx
	.p2align	4, 0x90
.LBB0_59:                               #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rcx), %ebx
	cmpb	(%rdx,%rcx), %bl
	jne	.LBB0_65
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	addq	$1, %rcx
	cmpq	-48(%rbp), %rcx         # 8-byte Folded Reload
	jb	.LBB0_59
.LBB0_61:                               #   in Loop: Header=BB0_56 Depth=1
	leaq	(%r9,%r10), %rsi
	movq	%r12, %rbx
	.p2align	4, 0x90
.LBB0_62:                               #   Parent Loop BB0_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdx
	cmpq	%rbx, %rdi
	jae	.LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=2
	leaq	-1(%rdx), %rbx
	movzbl	-1(%r14,%rdx), %ecx
	cmpb	(%rsi,%rdx), %cl
	je	.LBB0_62
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=1
	addq	$1, %rdi
	movq	%r13, %rcx
	cmpq	%rdi, %rdx
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jae	.LBB0_55
	jmp	.LBB0_108
.LBB0_65:                               #   in Loop: Header=BB0_56 Depth=1
	addq	%r8, %rcx
	xorl	%edi, %edi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_55
.LBB0_66:
	movq	%rcx, %rax
	jmp	.LBB0_4
.LBB0_76:                               # %.preheader6
	movq	$-1, %rcx
	movl	$1, %esi
	xorl	%edi, %edi
	movl	$1, %r12d
	movl	$1, %edx
	jmp	.LBB0_79
	.p2align	4, 0x90
.LBB0_77:                               #   in Loop: Header=BB0_79 Depth=1
	movq	%rsi, %r12
	subq	%rcx, %r12
	movl	$1, %edx
.LBB0_78:                               #   in Loop: Header=BB0_79 Depth=1
	movq	%rsi, %rdi
	addq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_85
.LBB0_79:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rsi), %eax
	leaq	(%rcx,%rdx), %rbx
	movzbl	(%r14,%rbx), %ebx
	cmpb	%al, %bl
	jb	.LBB0_77
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	cmpb	%bl, %al
	jne	.LBB0_83
# %bb.81:                               #   in Loop: Header=BB0_79 Depth=1
	cmpq	%r12, %rdx
	jne	.LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_79 Depth=1
	addq	%r12, %rdi
	movl	$1, %edx
	movq	%rdi, %rsi
	jmp	.LBB0_78
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$1, %edx
	movq	%rdi, %rcx
	leaq	1(%rdi), %rsi
	movl	$1, %r12d
	jmp	.LBB0_78
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=1
	addq	$1, %rdx
	movq	%rdi, %rsi
	jmp	.LBB0_78
.LBB0_85:
	movq	%r9, -56(%rbp)          # 8-byte Spill
	addq	$1, %rcx
	addq	$1, %r13
	cmpq	%r13, %rcx
	cmovbq	%r8, %r12
	cmovaeq	%rcx, %r13
	leaq	(%r14,%r12), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_97
# %bb.86:
	movq	%r15, %r9
	subq	%r13, %r9
	cmpq	%r9, %r13
	cmovaeq	%r13, %r9
	leaq	(%r14,%r13), %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	-1(%rax), %r8
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	movq	-56(%rbp), %r11         # 8-byte Reload
.LBB0_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_92 Depth 2
	cmpq	%r15, %r13
	jae	.LBB0_91
# %bb.88:                               # %.preheader3
                                        #   in Loop: Header=BB0_87 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r10), %rsi
	addq	%r13, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_89:                               #   Parent Loop BB0_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rcx), %ebx
	cmpb	(%rsi,%rcx), %bl
	jne	.LBB0_95
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	leaq	(%rcx,%r13), %rdi
	addq	$1, %rdi
	addq	$1, %rcx
	cmpq	%r15, %rdi
	jb	.LBB0_89
.LBB0_91:                               #   in Loop: Header=BB0_87 Depth=1
	leaq	(%r8,%r10), %rcx
	movq	%r13, %rdi
	movq	%r13, %rsi
	.p2align	4, 0x90
.LBB0_92:                               #   Parent Loop BB0_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rsi
	jb	.LBB0_96
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=2
	movzbl	-1(%r14,%rdi), %ebx
	cmpb	(%rcx,%rdi), %bl
	movq	%rsi, %rdi
	je	.LBB0_92
# %bb.94:                               #   in Loop: Header=BB0_87 Depth=1
	movq	%r9, %rcx
.LBB0_95:                               #   in Loop: Header=BB0_87 Depth=1
	addq	%rcx, %r10
	addq	$1, %r10
	cmpq	%r11, %r10
	jbe	.LBB0_87
	jmp	.LBB0_4
.LBB0_96:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r10, %rax
	jmp	.LBB0_4
.LBB0_97:
	movl	$1, %r8d
	subq	%r13, %r8
	movq	%r15, %r10
	subq	%r12, %r10
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	-1(%rax), %r9
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r11d, %r11d
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_98:                               #   in Loop: Header=BB0_100 Depth=1
	addq	$1, %rdx
	movq	%r12, %rsi
	cmpq	%rdx, %rcx
	movq	%r10, %rdx
	jb	.LBB0_109
.LBB0_99:                               #   in Loop: Header=BB0_100 Depth=1
	addq	%rsi, %r11
	cmpq	-56(%rbp), %r11         # 8-byte Folded Reload
	ja	.LBB0_4
.LBB0_100:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
                                        #     Child Loop BB0_105 Depth 2
	cmpq	%rdx, %r13
	movq	%r13, %rsi
	cmovbq	%rdx, %rsi
	cmpq	%r15, %rsi
	jae	.LBB0_104
# %bb.101:                              # %.preheader
                                        #   in Loop: Header=BB0_100 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%r11, %rcx
	.p2align	4, 0x90
.LBB0_102:                              #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rsi), %ebx
	cmpb	(%rcx,%rsi), %bl
	jne	.LBB0_107
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=2
	addq	$1, %rsi
	cmpq	%r15, %rsi
	jb	.LBB0_102
.LBB0_104:                              #   in Loop: Header=BB0_100 Depth=1
	leaq	(%r9,%r11), %rsi
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_105:                              #   Parent Loop BB0_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %rcx
	cmpq	%rdi, %rdx
	jae	.LBB0_98
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=2
	leaq	-1(%rcx), %rdi
	movzbl	-1(%r14,%rcx), %ebx
	cmpb	(%rsi,%rcx), %bl
	je	.LBB0_105
	jmp	.LBB0_98
.LBB0_107:                              #   in Loop: Header=BB0_100 Depth=1
	addq	%r8, %rsi
	xorl	%edx, %edx
	jmp	.LBB0_99
.LBB0_108:
	addq	%r10, %r11
	movq	%r11, %rax
	jmp	.LBB0_4
.LBB0_109:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r11, %rax
	jmp	.LBB0_4
.Lfunc_end0:
	.size	memmem, .Lfunc_end0-memmem
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
