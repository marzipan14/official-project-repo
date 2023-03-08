	.text
	.file	"strcasestr.c"
	.globl	strcasestr              # -- Begin function strcasestr
	.p2align	4, 0x90
	.type	strcasestr,@function
strcasestr:                             # @strcasestr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2152, %rsp             # imm = 0x868
	movb	(%rdi), %bl
	cmpb	$0, (%rsi)
	sete	%al
	testb	%bl, %bl
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	je	.LBB0_8
# %bb.1:                                # %.preheader15
	leaq	1(%rdi), %r12
	movl	$1, %r14d
	movq	%rsi, %r15
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	cmpl	%ebx, %r13d
	sete	%al
	andl	%eax, %r14d
	movzbl	(%r12), %ebx
	cmpb	$0, 1(%r15)
	leaq	1(%r15), %r15
	sete	%al
	addq	$1, %r12
	testb	%bl, %bl
	je	.LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%bl, %r13d
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$32, %r13d
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	(%r15), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$32, %ebx
	jmp	.LBB0_2
.LBB0_8:
	movl	$1, %r14d
	movq	%rsi, %r15
.LBB0_9:
	testb	%al, %al
	je	.LBB0_12
.LBB0_10:
	testl	%r14d, %r14d
	je	.LBB0_13
# %bb.11:
	movq	-96(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_123
.LBB0_12:
	xorl	%eax, %eax
	jmp	.LBB0_123
.LBB0_13:
	movq	-120(%rbp), %rbx        # 8-byte Reload
	subq	%rbx, %r15
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmpq	$31, %r15
	ja	.LBB0_37
# %bb.14:
	leaq	-2192(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	critical_factorization
	movq	%rax, %r14
	movq	-2192(%rbp), %r12
	leaq	(%rbx,%r12), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	strncasecmp
	testl	%eax, %eax
	movq	%r14, -112(%rbp)        # 8-byte Spill
	je	.LBB0_67
# %bb.15:
	movq	%r15, %rax
	subq	%r14, %rax
	cmpq	%rax, %r14
	cmovaeq	%r14, %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, -2192(%rbp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	testq	%r15, %r15
	je	.LBB0_119
# %bb.16:
	testq	%rax, %rax
	jne	.LBB0_119
# %bb.17:
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	%r14, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rcx
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_28 Depth 2
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	cmpq	%r14, %r15
	jbe	.LBB0_26
# %bb.19:                               # %.preheader3
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	addq	%r14, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_20:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	addl	$32, %r13d
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=2
	movzbl	(%r12,%rbx), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=2
	addl	$32, %r14d
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=2
	cmpl	%r14d, %r13d
	jne	.LBB0_34
# %bb.25:                               #   in Loop: Header=BB0_20 Depth=2
	movq	-112(%rbp), %r14        # 8-byte Reload
	leaq	(%r14,%rbx), %rax
	addq	$1, %rax
	addq	$1, %rbx
	cmpq	%r15, %rax
	jb	.LBB0_20
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rbx
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_28 Depth=2
	movq	%rbx, %r14
	cmpl	%r12d, %r13d
	jne	.LBB0_33
.LBB0_28:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rbx
	jb	.LBB0_113
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%r14), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_28 Depth=2
	addl	$32, %r13d
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%r14), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_27
# %bb.32:                               #   in Loop: Header=BB0_28 Depth=2
	addl	$32, %r12d
	jmp	.LBB0_27
.LBB0_33:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_18 Depth=1
	addq	$1, %rbx
.LBB0_35:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rbx, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_119
# %bb.36:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rbx, %rcx
	testq	%rbx, %rbx
	jne	.LBB0_18
	jmp	.LBB0_119
.LBB0_37:
	leaq	-1(%r15), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	-136(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	critical_factorization
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -2192(%rbp,%rax,8)
	movdqa	%xmm0, -2176(%rbp,%rax,8)
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
	addq	$32, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_38
# %bb.39:
	testq	%r15, %r15
	je	.LBB0_42
# %bb.40:                               # %.preheader13
	movq	-120(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	leal	32(%r12), %ecx
	cmpb	$1, %al
	cmovnel	%r12d, %ecx
	movq	%rbx, -2192(%rbp,%rcx,8)
	addq	$1, %r14
	addq	$-1, %rbx
	jb	.LBB0_41
.LBB0_42:
	movq	-136(%rbp), %r14
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	(%rdi,%r14), %rsi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB0_89
# %bb.43:
	movq	%r15, %rax
	subq	%r12, %rax
	cmpq	%rax, %r12
	cmovaeq	%r12, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	testq	%r15, %r15
	je	.LBB0_122
# %bb.44:
	testq	%rax, %rax
	jne	.LBB0_122
# %bb.45:
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	%r12, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, %r14
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_57 Depth 2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%r14), %ebx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	movq	-2192(%rbp,%rcx,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_65
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	movq	%r14, -72(%rbp)         # 8-byte Spill
	cmpq	-112(%rbp), %r12        # 8-byte Folded Reload
	jae	.LBB0_55
# %bb.48:                               # %.preheader10
                                        #   in Loop: Header=BB0_46 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	addq	%r12, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_49:                               #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=2
	addl	$32, %r13d
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=2
	movzbl	(%r14,%rbx), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_49 Depth=2
	addl	$32, %r12d
.LBB0_53:                               #   in Loop: Header=BB0_49 Depth=2
	cmpl	%r12d, %r13d
	jne	.LBB0_63
# %bb.54:                               #   in Loop: Header=BB0_49 Depth=2
	movq	-56(%rbp), %r12         # 8-byte Reload
	leaq	(%r12,%rbx), %rax
	addq	$1, %rax
	addq	$1, %rbx
	cmpq	-112(%rbp), %rax        # 8-byte Folded Reload
	jb	.LBB0_49
.LBB0_55:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	jmp	.LBB0_57
	.p2align	4, 0x90
.LBB0_56:                               #   in Loop: Header=BB0_57 Depth=2
	movq	%rbx, %r12
	cmpl	%r14d, %r13d
	jne	.LBB0_62
.LBB0_57:                               #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rbx
	jb	.LBB0_114
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%r12), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_57 Depth=2
	addl	$32, %r13d
.LBB0_60:                               #   in Loop: Header=BB0_57 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%r12), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_56
# %bb.61:                               #   in Loop: Header=BB0_57 Depth=2
	addl	$32, %r14d
	jmp	.LBB0_56
.LBB0_62:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-128(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_64
.LBB0_63:                               #   in Loop: Header=BB0_46 Depth=1
	addq	$1, %rbx
.LBB0_64:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB0_65:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rbx, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rdi
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%r14, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_122
# %bb.66:                               #   in Loop: Header=BB0_46 Depth=1
	movq	%rbx, %r14
	testq	%rbx, %rbx
	jne	.LBB0_46
	jmp	.LBB0_122
.LBB0_67:
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	testq	%r15, %r15
	je	.LBB0_115
# %bb.68:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB0_119
# %bb.69:
	movl	$1, %eax
	subq	%r14, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%r15, %rax
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rcx
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_72 Depth 2
                                        #     Child Loop BB0_80 Depth 2
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r14
	movq	%r14, %rbx
	cmovbq	%rax, %rbx
	cmpq	%r15, %rbx
	jae	.LBB0_78
# %bb.71:                               # %.preheader
                                        #   in Loop: Header=BB0_70 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	.p2align	4, 0x90
.LBB0_72:                               #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	(%rax,%rbx), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=2
	addl	$32, %r14d
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=2
	movzbl	(%r12,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_72 Depth=2
	addl	$32, %r13d
.LBB0_76:                               #   in Loop: Header=BB0_72 Depth=2
	cmpl	%r13d, %r14d
	jne	.LBB0_86
# %bb.77:                               #   in Loop: Header=BB0_72 Depth=2
	addq	$1, %rbx
	cmpq	%r15, %rbx
	jb	.LBB0_72
.LBB0_78:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	movq	-112(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_80
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_80 Depth=2
	leaq	-1(%r12), %rax
	cmpl	%r13d, %r14d
	jne	.LBB0_85
.LBB0_80:                               #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	cmpq	%rax, -48(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_85
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%r12), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_80 Depth=2
	addl	$32, %r14d
.LBB0_83:                               #   in Loop: Header=BB0_80 Depth=2
	movzbl	(%rbx,%r12), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_79
# %bb.84:                               #   in Loop: Header=BB0_80 Depth=2
	addl	$32, %r13d
	jmp	.LBB0_79
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	cmpq	%rax, %r12
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jae	.LBB0_87
	jmp	.LBB0_117
.LBB0_86:                               #   in Loop: Header=BB0_70 Depth=1
	addq	-128(%rbp), %rbx        # 8-byte Folded Reload
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_87:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rbx, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_119
# %bb.88:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rbx, %rcx
	testq	%rbx, %rbx
	movq	-112(%rbp), %r14        # 8-byte Reload
	jne	.LBB0_70
	jmp	.LBB0_119
.LBB0_89:
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	testq	%r15, %r15
	je	.LBB0_116
# %bb.90:
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB0_122
# %bb.91:
	movq	%r15, %rax
	subq	%r14, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$1, %eax
	subq	%r12, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, %rcx
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_92:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_96 Depth 2
                                        #     Child Loop BB0_104 Depth 2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movzbl	(%rax,%rcx), %ebx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	movq	-2192(%rbp,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_92 Depth=1
	cmpq	%r14, %rax
	movq	%rax, %rbx
	cmovbq	-72(%rbp), %rbx         # 8-byte Folded Reload
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	cmoveq	%rax, %rbx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_111
	.p2align	4, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_92 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r12
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	cmpq	-112(%rbp), %rbx        # 8-byte Folded Reload
	jae	.LBB0_102
# %bb.95:                               # %.preheader6
                                        #   in Loop: Header=BB0_92 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	.p2align	4, 0x90
.LBB0_96:                               #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	(%rax,%rbx), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=2
	addl	$32, %r12d
.LBB0_98:                               #   in Loop: Header=BB0_96 Depth=2
	movzbl	(%r14,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_96 Depth=2
	addl	$32, %r13d
.LBB0_100:                              #   in Loop: Header=BB0_96 Depth=2
	cmpl	%r13d, %r12d
	jne	.LBB0_110
# %bb.101:                              #   in Loop: Header=BB0_96 Depth=2
	addq	$1, %rbx
	cmpq	-112(%rbp), %rbx        # 8-byte Folded Reload
	jb	.LBB0_96
.LBB0_102:                              #   in Loop: Header=BB0_92 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_104
	.p2align	4, 0x90
.LBB0_103:                              #   in Loop: Header=BB0_104 Depth=2
	leaq	-1(%r14), %rax
	cmpl	%r13d, %r12d
	jne	.LBB0_109
.LBB0_104:                              #   Parent Loop BB0_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r14
	cmpq	%rax, -48(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_109
# %bb.105:                              #   in Loop: Header=BB0_104 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%r14), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_104 Depth=2
	addl	$32, %r12d
.LBB0_107:                              #   in Loop: Header=BB0_104 Depth=2
	movzbl	(%rbx,%r14), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_103
# %bb.108:                              #   in Loop: Header=BB0_104 Depth=2
	addl	$32, %r13d
	jmp	.LBB0_103
.LBB0_109:                              #   in Loop: Header=BB0_92 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rbx
	cmpq	%rcx, %r14
	movq	%rax, %r14
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	jae	.LBB0_111
	jmp	.LBB0_120
.LBB0_110:                              #   in Loop: Header=BB0_92 Depth=1
	addq	-144(%rbp), %rbx        # 8-byte Folded Reload
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_111:                              #   in Loop: Header=BB0_92 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rbx, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_122
# %bb.112:                              #   in Loop: Header=BB0_92 Depth=1
	movq	%rbx, %rcx
	testq	%rbx, %rbx
	jne	.LBB0_92
	jmp	.LBB0_122
.LBB0_113:
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	-56(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_118
.LBB0_114:
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	-80(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_121
.LBB0_115:
	xorl	%eax, %eax
	jmp	.LBB0_118
.LBB0_116:
	xorl	%eax, %eax
	jmp	.LBB0_121
.LBB0_117:
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	-64(%rbp), %rax         # 8-byte Folded Reload
.LBB0_118:
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_119:
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_123
.LBB0_120:
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	-64(%rbp), %rax         # 8-byte Folded Reload
.LBB0_121:
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_122:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_123:
	movl	$42, __A_VARIABLE(%rip)
	addq	$2152, %rsp             # imm = 0x868
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strcasestr, .Lfunc_end0-strcasestr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function critical_factorization
	.type	critical_factorization,@function
critical_factorization:                 # @critical_factorization
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	cmpq	$2, %rsi
	jb	.LBB1_35
# %bb.1:                                # %.preheader1
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	$-1, %r14
	movl	$1, %ebx
	xorl	%r12d, %r12d
	movl	$1, %r13d
	movl	$1, %eax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	subq	%r14, %rax
	movl	$1, %r13d
.LBB1_14:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %r12
	addq	%r13, %rbx
	cmpq	%rsi, %rbx
	jae	.LBB1_15
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r15d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addb	$32, %r15b
	movzbl	%r15b, %r15d
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, -48(%rbp)         # 8-byte Spill
	leaq	(%r14,%r13), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	addb	$32, %r14b
	movzbl	%r14b, %r14d
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpb	%r14b, %r15b
	jb	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	jne	.LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r13
	jne	.LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r13, %r12
	movq	%r13, %rax
	movl	$1, %r13d
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%r12), %rbx
	movl	$1, %eax
	movl	$1, %r13d
	movq	%r12, %r14
	jmp	.LBB1_14
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %r13
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_14
.LBB1_35:
	movq	$1, (%rdx)
	movl	$1, %ecx
	movq	$-1, %r14
	movq	$-1, %rax
	jmp	.LBB1_32
.LBB1_15:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	cmpq	$2, %rsi
	jb	.LBB1_16
# %bb.17:                               # %.preheader
	movq	$-1, -56(%rbp)          # 8-byte Folded Spill
	movl	$1, %r15d
	xorl	%r13d, %r13d
	movl	$1, %r12d
	movl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%r15, %rcx
	subq	-56(%rbp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$1, %r12d
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r15, %r13
	addq	%r12, %r15
	cmpq	%rax, %r15
	jae	.LBB1_31
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r15), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$32, %r14b
	movzbl	%r14b, %r14d
.LBB1_20:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	movzbl	(%rbx,%rax), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$32, %bl
	movzbl	%bl, %ebx
.LBB1_22:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpb	%r14b, %bl
	jb	.LBB1_23
# %bb.24:                               #   in Loop: Header=BB1_18 Depth=1
	cmpb	%bl, %r14b
	jne	.LBB1_29
# %bb.25:                               #   in Loop: Header=BB1_18 Depth=1
	cmpq	-72(%rbp), %r12         # 8-byte Folded Reload
	jne	.LBB1_26
# %bb.28:                               #   in Loop: Header=BB1_18 Depth=1
	addq	%r12, %r13
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movl	$1, %r12d
	movq	%r13, %r15
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_18 Depth=1
	leaq	1(%r13), %r15
	movl	$1, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$1, %r12d
	movq	%r13, -56(%rbp)         # 8-byte Spill
	jmp	.LBB1_30
.LBB1_26:                               #   in Loop: Header=BB1_18 Depth=1
	addq	$1, %r12
	movq	%r13, %r15
	jmp	.LBB1_30
.LBB1_16:
	movq	$-1, %rax
	movl	$1, %ecx
	jmp	.LBB1_32
.LBB1_31:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB1_32:
	addq	$1, %rax
	addq	$1, %r14
	cmpq	%r14, %rax
	jb	.LBB1_34
# %bb.33:
	movq	%rcx, (%rdx)
	movq	%rax, %r14
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	critical_factorization, .Lfunc_end1-critical_factorization
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
