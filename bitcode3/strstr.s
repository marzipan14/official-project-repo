	.text
	.file	"strstr.c"
	.globl	strstr                  # -- Begin function strstr
	.p2align	4, 0x90
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2120, %rsp             # imm = 0x848
	movq	%rsi, %r15
	movq	%rdi, %r14
	movb	(%rdi), %cl
	movsbl	(%rsi), %esi
	testl	%esi, %esi
	sete	%dl
	testb	%cl, %cl
	je	.LBB0_7
# %bb.1:                                # %.preheader20
	leaq	1(%r14), %rdi
	movl	$1, %eax
	movl	%esi, %ebx
	movq	%r15, %r12
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	cmpb	%bl, %cl
	sete	%dl
	andl	%edx, %eax
	movzbl	(%rdi), %ecx
	movzbl	1(%r12), %ebx
	addq	$1, %r12
	testb	%bl, %bl
	sete	%dl
	addq	$1, %rdi
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.4:
	testb	%dl, %dl
	je	.LBB0_8
.LBB0_5:
	testl	%eax, %eax
	je	.LBB0_11
# %bb.6:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.LBB0_7:
	movl	$1, %eax
	movq	%r15, %r12
	testb	%dl, %dl
	jne	.LBB0_5
.LBB0_8:
	xorl	%eax, %eax
.LBB0_9:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_10:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$2120, %rsp             # imm = 0x848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	movq	%r12, %r13
	subq	%r15, %r13
	leaq	1(%r14), %rdi
	callq	strchr
	cmpq	$1, %r13
	je	.LBB0_9
# %bb.12:
	testq	%rax, %rax
	je	.LBB0_9
# %bb.13:
	addq	%r13, %r14
	subq	%rax, %r14
	movl	$1, %esi
	cmovbq	%rsi, %r14
	cmpq	$31, %r13
	movq	%rax, -56(%rbp)         # 8-byte Spill
	ja	.LBB0_26
# %bb.14:
	movq	$-1, %rdx
	cmpq	$2, %r13
	jb	.LBB0_49
# %bb.15:                               # %.preheader8
	movl	$1, %ecx
	xorl	%edi, %edi
	movl	$1, %r12d
	movl	$1, %eax
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rcx, %r12
	subq	%rdx, %r12
	movl	$1, %eax
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rcx, %rdi
	addq	%rax, %rcx
	cmpq	%r13, %rcx
	jae	.LBB0_64
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rdx,%rax), %rsi
	movzbl	(%r15,%rsi), %ebx
	cmpb	%bl, (%r15,%rcx)
	jb	.LBB0_16
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	jne	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	%r12, %rax
	jne	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=1
	addq	%r12, %rdi
	movl	$1, %eax
	movq	%rdi, %rcx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$1, %eax
	movq	%rdi, %rdx
	leaq	1(%rdi), %rcx
	movl	$1, %r12d
	jmp	.LBB0_17
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	addq	$1, %rax
	movq	%rdi, %rcx
	jmp	.LBB0_17
.LBB0_26:
	movq	$-1, %r8
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	$1, %edx
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_29 Depth=1
	movq	%rsi, %r9
	subq	%r8, %r9
	movl	$1, %edx
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=1
	movq	%rsi, %rdi
	addq	%rdx, %rsi
	cmpq	%r13, %rsi
	jae	.LBB0_35
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdx), %rax
	movzbl	(%r15,%rax), %eax
	cmpb	%al, (%r15,%rsi)
	jb	.LBB0_27
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	jne	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=1
	cmpq	%r9, %rdx
	jne	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=1
	addq	%r9, %rdi
	movl	$1, %edx
	movq	%rdi, %rsi
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_29 Depth=1
	movl	$1, %edx
	movq	%rdi, %r8
	leaq	1(%rdi), %rsi
	movl	$1, %r9d
	jmp	.LBB0_28
.LBB0_34:                               #   in Loop: Header=BB0_29 Depth=1
	addq	$1, %rdx
	movq	%rdi, %rsi
	jmp	.LBB0_28
.LBB0_35:                               # %.preheader19
	movq	$-1, %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	movl	$1, %r10d
	movl	$1, %ecx
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_38 Depth=1
	movq	%rsi, %r10
	subq	%rdx, %r10
	movl	$1, %ecx
.LBB0_37:                               #   in Loop: Header=BB0_38 Depth=1
	movq	%rsi, %rdi
	addq	%rcx, %rsi
	cmpq	%r13, %rsi
	jae	.LBB0_44
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rsi), %ebx
	leaq	(%rdx,%rcx), %rax
	movzbl	(%r15,%rax), %eax
	cmpb	%bl, %al
	jb	.LBB0_36
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	cmpb	%al, %bl
	jne	.LBB0_42
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=1
	cmpq	%r10, %rcx
	jne	.LBB0_43
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=1
	addq	%r10, %rdi
	movl	$1, %ecx
	movq	%rdi, %rsi
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=1
	movl	$1, %ecx
	movq	%rdi, %rdx
	leaq	1(%rdi), %rsi
	movl	$1, %r10d
	jmp	.LBB0_37
.LBB0_43:                               #   in Loop: Header=BB0_38 Depth=1
	addq	$1, %rcx
	movq	%rdi, %rsi
	jmp	.LBB0_37
.LBB0_44:
	addq	$1, %rdx
	addq	$1, %r8
	movq	%r13, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_45:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -2160(%rbp,%rax,8)
	movdqa	%xmm0, -2144(%rbp,%rax,8)
	movdqa	%xmm0, -2128(%rbp,%rax,8)
	movdqa	%xmm0, -2112(%rbp,%rax,8)
	movdqa	%xmm0, -2096(%rbp,%rax,8)
	movdqa	%xmm0, -2080(%rbp,%rax,8)
	movdqa	%xmm0, -2064(%rbp,%rax,8)
	movdqa	%xmm0, -2048(%rbp,%rax,8)
	movdqa	%xmm0, -2032(%rbp,%rax,8)
	movdqa	%xmm0, -2016(%rbp,%rax,8)
	movdqa	%xmm0, -2000(%rbp,%rax,8)
	movdqa	%xmm0, -1984(%rbp,%rax,8)
	movdqa	%xmm0, -1968(%rbp,%rax,8)
	movdqa	%xmm0, -1952(%rbp,%rax,8)
	movdqa	%xmm0, -1936(%rbp,%rax,8)
	movdqa	%xmm0, -1920(%rbp,%rax,8)
	addq	$32, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_45
# %bb.46:
	cmpq	%r8, %rdx
	cmovbq	%r9, %r10
	cmovbq	%r8, %rdx
	testq	%r13, %r13
	je	.LBB0_93
# %bb.47:
	movq	%r15, %rax
	notq	%rax
	leaq	(%rax,%r12), %rcx
	movl	%r13d, %r8d
	andl	$3, %r8d
	cmpq	$3, %rcx
	jae	.LBB0_87
# %bb.48:
	xorl	%edi, %edi
	jmp	.LBB0_90
.LBB0_49:
	movl	$1, %r12d
	movq	$-1, %r8
	movl	$1, %r9d
.LBB0_50:
	addq	$1, %r8
	addq	$1, %rdx
	cmpq	%rdx, %r8
	cmovaeq	%r9, %r12
	cmovaeq	%r8, %rdx
	leaq	(%r15,%r12), %rsi
	movq	%r15, %rdi
	movq	%rdx, %rbx
	callq	memcmp
	testl	%eax, %eax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	je	.LBB0_73
# %bb.51:
	movq	%r13, %rax
	subq	%rbx, %rax
	cmpq	%rax, %rbx
	cmovaeq	%rbx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%r13, %rdx
	subq	%r14, %rdx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	memchr
	testq	%r13, %r13
	je	.LBB0_10
# %bb.52:
	testq	%rax, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jne	.LBB0_10
# %bb.53:
	leaq	(%r15,%rsi), %rbx
	leaq	-1(%rdi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	xorl	%r9d, %r9d
	movq	%rbx, -88(%rbp)         # 8-byte Spill
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_59 Depth 2
	cmpq	%rsi, %r13
	jbe	.LBB0_58
# %bb.55:                               # %.preheader3
                                        #   in Loop: Header=BB0_54 Depth=1
	leaq	(%rdi,%r9), %rcx
	addq	%rsi, %rcx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_56:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%r14), %edx
	cmpb	(%rcx,%r14), %dl
	jne	.LBB0_62
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=2
	leaq	(%rsi,%r14), %rdx
	addq	$1, %rdx
	addq	$1, %r14
	cmpq	%r13, %rdx
	jb	.LBB0_56
.LBB0_58:                               #   in Loop: Header=BB0_54 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r9), %rcx
	movq	%rsi, %rdx
	.p2align	4, 0x90
.LBB0_59:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rdx
	jb	.LBB0_127
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=2
	movzbl	-1(%r15,%rsi), %eax
	cmpb	(%rcx,%rsi), %al
	movq	%rdx, %rsi
	je	.LBB0_59
# %bb.61:                               #   in Loop: Header=BB0_54 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_62:                               #   in Loop: Header=BB0_54 Depth=1
	leaq	(%r9,%r14), %rax
	addq	%r8, %rdi
	leaq	(%rax,%r13), %r12
	addq	$1, %r12
	movq	%r12, %rdx
	subq	%r8, %rdx
	xorl	%esi, %esi
	movq	%r9, %rbx
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_10
# %bb.63:                               #   in Loop: Header=BB0_54 Depth=1
	leaq	(%rbx,%r14), %r9
	addq	$1, %r9
	movq	%r12, %r8
	testq	%r12, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_54
	jmp	.LBB0_10
.LBB0_64:                               # %.preheader6
	movq	$-1, %r8
	movl	$1, %esi
	xorl	%edi, %edi
	movl	$1, %r9d
	movl	$1, %ecx
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_65:                               #   in Loop: Header=BB0_67 Depth=1
	movq	%rsi, %r9
	subq	%r8, %r9
	movl	$1, %ecx
.LBB0_66:                               #   in Loop: Header=BB0_67 Depth=1
	movq	%rsi, %rdi
	addq	%rcx, %rsi
	cmpq	%r13, %rsi
	jae	.LBB0_50
.LBB0_67:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rsi), %ebx
	leaq	(%r8,%rcx), %rax
	movzbl	(%r15,%rax), %eax
	cmpb	%bl, %al
	jb	.LBB0_65
# %bb.68:                               #   in Loop: Header=BB0_67 Depth=1
	cmpb	%al, %bl
	jne	.LBB0_71
# %bb.69:                               #   in Loop: Header=BB0_67 Depth=1
	cmpq	%r9, %rcx
	jne	.LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_67 Depth=1
	addq	%r9, %rdi
	movl	$1, %ecx
	movq	%rdi, %rsi
	jmp	.LBB0_66
	.p2align	4, 0x90
.LBB0_71:                               #   in Loop: Header=BB0_67 Depth=1
	movl	$1, %ecx
	movq	%rdi, %r8
	leaq	1(%rdi), %rsi
	movl	$1, %r9d
	jmp	.LBB0_66
.LBB0_72:                               #   in Loop: Header=BB0_67 Depth=1
	addq	$1, %rcx
	movq	%rdi, %rsi
	jmp	.LBB0_66
.LBB0_73:
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%r13, %rdx
	subq	%r14, %rdx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	memchr
	testq	%r13, %r13
	je	.LBB0_10
# %bb.74:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jne	.LBB0_10
# %bb.75:
	movl	$1, %eax
	subq	%rsi, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r13, %rax
	subq	-64(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	-1(%rdi), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rcx
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_81 Depth 2
	cmpq	%r12, %rsi
	movq	%rsi, %rax
	cmovbq	%r12, %rax
	cmpq	%r13, %rax
	jae	.LBB0_80
# %bb.77:                               # %.preheader
                                        #   in Loop: Header=BB0_76 Depth=1
	leaq	(%rdi,%r14), %rdx
	.p2align	4, 0x90
.LBB0_78:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	jne	.LBB0_84
# %bb.79:                               #   in Loop: Header=BB0_78 Depth=2
	addq	$1, %rax
	cmpq	%r13, %rax
	jb	.LBB0_78
.LBB0_80:                               #   in Loop: Header=BB0_76 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r14, %rax
	.p2align	4, 0x90
.LBB0_81:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	cmpq	%rsi, %r12
	jae	.LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_81 Depth=2
	leaq	-1(%rdx), %rsi
	movzbl	-1(%r15,%rdx), %ebx
	cmpb	(%rax,%rdx), %bl
	je	.LBB0_81
.LBB0_83:                               #   in Loop: Header=BB0_76 Depth=1
	addq	$1, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	%r12, %rdx
	movq	-80(%rbp), %r12         # 8-byte Reload
	jae	.LBB0_85
	jmp	.LBB0_129
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=1
	addq	-96(%rbp), %rax         # 8-byte Folded Reload
	xorl	%r12d, %r12d
.LBB0_85:                               #   in Loop: Header=BB0_76 Depth=1
	addq	%rax, %r14
	addq	%rcx, %rdi
	leaq	(%r14,%r13), %rbx
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%rbx, %rbx
	je	.LBB0_10
# %bb.86:                               #   in Loop: Header=BB0_76 Depth=1
	movq	%rbx, %rcx
	testq	%rax, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_76
	jmp	.LBB0_10
.LBB0_87:
	leaq	3(%r15), %rsi
	leaq	(%r15,%r8), %r9
	subq	%r12, %r9
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_88:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%r13), %rbx
	addq	$-1, %rbx
	movzbl	-3(%rsi), %ecx
	movq	%rbx, -2160(%rbp,%rcx,8)
	leaq	-2(%r13,%rdi), %rcx
	movzbl	-2(%rsi), %ebx
	movq	%rcx, -2160(%rbp,%rbx,8)
	leaq	-3(%r13,%rdi), %rcx
	movzbl	-1(%rsi), %ebx
	movq	%rcx, -2160(%rbp,%rbx,8)
	leaq	(%rdi,%r13), %rcx
	addq	$-4, %rcx
	movzbl	(%rsi), %ebx
	movq	%rcx, -2160(%rbp,%rbx,8)
	addq	$-4, %rdi
	addq	$4, %rsi
	cmpq	%rdi, %r9
	jne	.LBB0_88
# %bb.89:                               # %.loopexit18
	negq	%rdi
.LBB0_90:
	testq	%r8, %r8
	je	.LBB0_93
# %bb.91:                               # %.preheader16
	leaq	(%r15,%rdi), %rsi
	subq	%rdi, %r12
	addq	%r12, %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_92:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %ecx
	movq	%rax, -2160(%rbp,%rcx,8)
	addq	$1, %rdi
	addq	$-1, %rax
	cmpq	%rdi, %r8
	jne	.LBB0_92
.LBB0_93:
	leaq	(%r15,%r10), %rsi
	movq	%r15, %rdi
	movq	%rdx, %rbx
	movq	%r10, %r12
	callq	memcmp
	testl	%eax, %eax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	je	.LBB0_110
# %bb.94:
	movq	%r13, %rax
	subq	%rbx, %rax
	cmpq	%rax, %rbx
	cmovaeq	%rbx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%r13, %rdx
	subq	%r14, %rdx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	memchr
	testq	%r13, %r13
	je	.LBB0_10
# %bb.95:
	testq	%rax, %rax
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jne	.LBB0_10
# %bb.96:
	leaq	-1(%r13), %r14
	leaq	(%r15,%rdi), %rcx
	leaq	-1(%r8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	xorl	%r10d, %r10d
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB0_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_101 Depth 2
                                        #     Child Loop BB0_104 Depth 2
	movzbl	-1(%r9,%r8), %eax
	movq	-2160(%rbp,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=1
	addq	%rax, %r10
	jmp	.LBB0_108
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=1
	cmpq	%r14, %rdi
	jae	.LBB0_103
# %bb.100:                              # %.preheader13
                                        #   in Loop: Header=BB0_97 Depth=1
	leaq	(%r8,%r10), %rdx
	addq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_101:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	jne	.LBB0_107
# %bb.102:                              #   in Loop: Header=BB0_101 Depth=2
	leaq	(%rdi,%rax), %rsi
	addq	$1, %rsi
	addq	$1, %rax
	cmpq	%r14, %rsi
	jb	.LBB0_101
.LBB0_103:                              #   in Loop: Header=BB0_97 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r10, %rax
	movq	%rdi, %rsi
	movq	%rdi, %rdx
	.p2align	4, 0x90
.LBB0_104:                              #   Parent Loop BB0_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rdx
	jb	.LBB0_128
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=2
	movzbl	-1(%r15,%rsi), %ebx
	cmpb	(%rax,%rsi), %bl
	movq	%rdx, %rsi
	je	.LBB0_104
# %bb.106:                              #   in Loop: Header=BB0_97 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
.LBB0_107:                              #   in Loop: Header=BB0_97 Depth=1
	addq	%rax, %r10
	addq	$1, %r10
.LBB0_108:                              #   in Loop: Header=BB0_97 Depth=1
	leaq	(%r8,%r9), %rdi
	movq	%r10, %rbx
	leaq	(%r10,%r13), %r12
	movq	%r12, %rdx
	subq	%r9, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%r12, %r12
	je	.LBB0_10
# %bb.109:                              #   in Loop: Header=BB0_97 Depth=1
	movq	%r12, %r9
	testq	%rax, %rax
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, %r10
	je	.LBB0_97
	jmp	.LBB0_10
.LBB0_110:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%r13, %rdx
	subq	%r14, %rdx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	memchr
	testq	%r13, %r13
	je	.LBB0_10
# %bb.111:
	testq	%rax, %rax
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	jne	.LBB0_10
# %bb.112:
	leaq	-1(%r13), %rbx
	movq	%r13, %rax
	subq	%r9, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$1, %eax
	subq	%rsi, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	-1(%r10), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	movq	%r15, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_113:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_118 Depth 2
                                        #     Child Loop BB0_121 Depth 2
	movzbl	-1(%r8,%r10), %eax
	movq	-2160(%rbp,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_116
# %bb.114:                              #   in Loop: Header=BB0_113 Depth=1
	cmpq	%r9, %rdx
	movq	%rdx, %rax
	cmovbq	-80(%rbp), %rax         # 8-byte Folded Reload
	testq	%r12, %r12
	cmoveq	%rdx, %rax
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB0_124
.LBB0_116:                              #   in Loop: Header=BB0_113 Depth=1
	cmpq	%r12, %rsi
	movq	%rsi, %rax
	cmovbq	%r12, %rax
	cmpq	%rbx, %rax
	jae	.LBB0_120
# %bb.117:                              # %.preheader9
                                        #   in Loop: Header=BB0_113 Depth=1
	leaq	(%r10,%r11), %rdx
	.p2align	4, 0x90
.LBB0_118:                              #   Parent Loop BB0_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	jne	.LBB0_126
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	addq	$1, %rax
	cmpq	%rbx, %rax
	jb	.LBB0_118
.LBB0_120:                              #   in Loop: Header=BB0_113 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r11, %rax
	.p2align	4, 0x90
.LBB0_121:                              #   Parent Loop BB0_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	cmpq	%rsi, %r12
	jae	.LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_121 Depth=2
	leaq	-1(%rdx), %rsi
	movzbl	-1(%r15,%rdx), %ecx
	cmpb	(%rax,%rdx), %cl
	je	.LBB0_121
.LBB0_123:                              #   in Loop: Header=BB0_113 Depth=1
	addq	$1, %r12
	movq	%r9, %rax
	cmpq	%r12, %rdx
	movq	-80(%rbp), %r12         # 8-byte Reload
	jb	.LBB0_130
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=1
	addq	%rax, %r11
	leaq	(%r10,%r8), %rdi
	movq	%r11, %r15
	leaq	(%r11,%r13), %r14
	movq	%r14, %rdx
	subq	%r8, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%r14, %r14
	je	.LBB0_10
# %bb.125:                              #   in Loop: Header=BB0_113 Depth=1
	movq	%r14, %r8
	testq	%rax, %rax
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r15, %r11
	movq	-104(%rbp), %r15        # 8-byte Reload
	je	.LBB0_113
	jmp	.LBB0_10
.LBB0_126:                              #   in Loop: Header=BB0_113 Depth=1
	addq	-96(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_115
.LBB0_127:
	addq	%r9, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.LBB0_128:
	addq	%r10, %r8
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jmp	.LBB0_10
.LBB0_129:
	addq	%r14, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.LBB0_130:
	addq	%r11, %r10
	movq	%r10, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_10
.Lfunc_end0:
	.size	strstr, .Lfunc_end0-strstr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
