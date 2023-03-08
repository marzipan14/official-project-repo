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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.1:
	movq	%rcx, %r14
	movq	%rsi, %r13
	movq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	%rcx, %rax
	jae	.LBB0_4
.LBB0_2:
	xorl	%r12d, %r12d
	jmp	.LBB0_55
.LBB0_3:
	movq	%rdi, %r12
	jmp	.LBB0_55
.LBB0_4:
	movq	%rdx, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r14
	ja	.LBB0_9
# %bb.5:
	movzbl	(%r15), %esi
	movq	%rdi, %rbx
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r14
	je	.LBB0_55
# %bb.6:
	testq	%r12, %r12
	je	.LBB0_55
# %bb.7:
	subq	%r12, %rbx
	addq	%r13, %rbx
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rbx
	jb	.LBB0_2
# %bb.56:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	leaq	-2112(%rbp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	critical_factorization
	movq	%rax, %r13
	movq	-2112(%rbp), %rbx
	leaq	(%r15,%rbx), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_70
# %bb.57:
	movq	%r14, %r9
	subq	%r13, %r9
	cmpq	%r9, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%r13, %r9
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r9
	movq	%r9, -2112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%r13), %rdx
	leaq	-1(%r12), %r8
	xorl	%ecx, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
.LBB0_58:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_63 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r13
	jae	.LBB0_62
# %bb.59:                               # %.preheader5
                                        #   in Loop: Header=BB0_58 Depth=1
	leaq	(%r12,%rcx), %rbx
	addq	%r13, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_60:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rdi), %eax
	cmpb	(%rbx,%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_66
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%r13), %rax
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	%r14, %rax
	jb	.LBB0_60
.LBB0_62:                               #   in Loop: Header=BB0_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r8,%rcx), %rdi
	movq	%r13, %rsi
	movq	%r13, %rbx
	.p2align	4, 0x90
.LBB0_63:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rbx
	jb	.LBB0_69
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=2
	movzbl	-1(%r15,%rsi), %eax
	cmpb	(%rdi,%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	je	.LBB0_63
# %bb.65:                               #   in Loop: Header=BB0_58 Depth=1
	movq	%r9, %rdi
	jmp	.LBB0_67
.LBB0_66:                               #   in Loop: Header=BB0_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
.LBB0_67:                               #   in Loop: Header=BB0_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rcx
	jbe	.LBB0_58
# %bb.68:
	xorl	%r12d, %r12d
	jmp	.LBB0_54
.LBB0_9:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	leaq	-64(%rbp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	critical_factorization
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, -2112(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -2104(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -2096(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -2088(%rbp,%rax,8)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_10
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r8d
	andl	$1, %r8d
	cmpq	$1, %r14
	jne	.LBB0_13
# %bb.12:
	xorl	%ecx, %ecx
	testq	%r8, %r8
	jne	.LBB0_16
	jmp	.LBB0_17
.LBB0_13:
	leaq	-2(%r14), %r9
	leaq	1(%r15), %rsi
	leaq	-1(%r14), %rdi
	movq	%r8, %rax
	subq	%r14, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%rcx), %rbx
	movzbl	-1(%rsi), %edx
	movq	%rbx, -2112(%rbp,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r9,%rcx), %rdx
	movzbl	(%rsi), %ebx
	movq	%rdx, -2112(%rbp,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-2, %rcx
	addq	$2, %rsi
	cmpq	%rcx, %rax
	jne	.LBB0_14
# %bb.15:                               # %.loopexit18
	negq	%rcx
	testq	%r8, %r8
	je	.LBB0_17
.LBB0_16:
	movq	%rcx, %rax
	notq	%rax
	addq	%r14, %rax
	movzbl	(%r15,%rcx), %ecx
	movq	%rax, -2112(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movq	-64(%rbp), %r13
	leaq	(%r15,%r13), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_19
# %bb.18:
	movq	%r14, %r9
	subq	%r12, %r9
	cmpq	%r9, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%r12, %r9
	addq	$1, %r9
	movq	%r9, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	leaq	(%r15,%r12), %rdx
	movq	-48(%rbp), %r10         # 8-byte Reload
	leaq	-1(%r10), %r8
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r11         # 8-byte Reload
	jmp	.LBB0_41
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r14), %rax
	subq	%r13, %r14
	movl	$1, %r9d
	subq	%r12, %r9
	movq	-48(%rbp), %r10         # 8-byte Reload
	leaq	-1(%r10), %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	-56(%rbp), %r11         # 8-byte Reload
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_22 Depth=1
	xorl	%edi, %edi
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rsi
	ja	.LBB0_52
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_32 Depth 2
	leaq	(%rsi,%rax), %rdx
	movzbl	(%r10,%rdx), %edx
	movq	-2112(%rbp,%rdx,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_20
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jae	.LBB0_20
# %bb.25:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	cmpq	%rdi, %r12
	movq	%r12, %rbx
	cmovbq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB0_30
# %bb.27:                               # %.preheader11
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	(%r10,%rsi), %rdx
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rbx), %ecx
	cmpb	(%rdx,%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jb	.LBB0_28
.LBB0_30:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdx
	cmpq	%r12, %rdi
	jae	.LBB0_34
# %bb.31:                               # %.preheader8
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	(%r8,%rsi), %rbx
	movq	%r12, %rdx
	.p2align	4, 0x90
.LBB0_32:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r15,%rdx), %ecx
	cmpb	(%rbx,%rdx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_35
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rdi
	jb	.LBB0_32
.LBB0_34:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=1
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	cmpq	%rdi, %rdx
	movq	%r14, %rdi
	jae	.LBB0_37
	jmp	.LBB0_84
.LBB0_36:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%r9, %rbx
	xorl	%edi, %edi
.LBB0_37:                               #   in Loop: Header=BB0_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_21
.LBB0_38:                               #   in Loop: Header=BB0_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
.LBB0_39:                               #   in Loop: Header=BB0_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_40:                               #   in Loop: Header=BB0_41 Depth=1
	addq	%rdi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rcx
	ja	.LBB0_52
.LBB0_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	leaq	(%rcx,%r14), %rsi
	movzbl	(%r10,%rsi), %esi
	movq	-2112(%rbp,%rsi,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB0_40
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	jae	.LBB0_46
# %bb.43:                               # %.preheader15
                                        #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r10,%rcx), %rbx
	addq	%r12, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_44:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rdi), %eax
	cmpb	(%rbx,%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_38
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%rdi), %rax
	addq	$1, %rax
	addq	$1, %rdi
	cmpq	%r14, %rax
	jb	.LBB0_44
.LBB0_46:                               #   in Loop: Header=BB0_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r8,%rcx), %rdi
	movq	%r12, %rsi
	movq	%r12, %rbx
	.p2align	4, 0x90
.LBB0_47:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rbx
	jb	.LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_47 Depth=2
	movzbl	-1(%r15,%rsi), %eax
	cmpb	(%rdi,%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	je	.LBB0_47
# %bb.49:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r9, %rdi
	jmp	.LBB0_39
.LBB0_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %r10
.LBB0_51:
	movq	%r10, %r12
	jmp	.LBB0_53
.LBB0_52:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rcx, %r12
	jmp	.LBB0_54
.LBB0_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r10
	subq	%rbx, %r10
	movl	$1, %r8d
	subq	%r13, %r8
	leaq	-1(%r12), %r9
	xorl	%edi, %edi
	xorl	%esi, %esi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rbx, %r11
	jmp	.LBB0_73
.LBB0_71:                               #   in Loop: Header=BB0_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%r8, %rbx
	xorl	%edi, %edi
.LBB0_72:                               #   in Loop: Header=BB0_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	ja	.LBB0_85
.LBB0_73:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_79 Depth 2
	cmpq	%rdi, %r13
	movq	%r13, %rbx
	cmovbq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB0_77
# %bb.74:                               # %.preheader2
                                        #   in Loop: Header=BB0_73 Depth=1
	leaq	(%r12,%rsi), %rcx
	.p2align	4, 0x90
.LBB0_75:                               #   Parent Loop BB0_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rbx), %edx
	cmpb	(%rcx,%rbx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB0_75
.LBB0_77:                               #   in Loop: Header=BB0_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	cmpq	%r13, %rdi
	jae	.LBB0_81
# %bb.78:                               # %.preheader
                                        #   in Loop: Header=BB0_73 Depth=1
	leaq	(%r9,%rsi), %rbx
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB0_79:                               #   Parent Loop BB0_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r15,%rcx), %edx
	cmpb	(%rbx,%rcx), %dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_82
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=2
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jb	.LBB0_79
.LBB0_81:                               #   in Loop: Header=BB0_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_82:                               #   in Loop: Header=BB0_73 Depth=1
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rbx
	cmpq	%rdi, %rcx
	movq	%r10, %rdi
	jae	.LBB0_72
# %bb.83:
	addq	%rsi, %r12
	jmp	.LBB0_53
.LBB0_84:
	addq	%rsi, %r10
	jmp	.LBB0_51
.LBB0_85:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_54
.Lfunc_end0:
	.size	memmem, .Lfunc_end0-memmem
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function critical_factorization
	.type	critical_factorization,@function
critical_factorization:                 # @critical_factorization
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_10
# %bb.1:                                # %.preheader1
	movq	$-1, %rax
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	movl	$1, %r9d
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r8
	subq	%rax, %r8
	movl	$1, %r9d
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r9, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB1_11
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	leaq	(%r9,%rax), %rbp
	movzbl	(%rdi,%rbp), %ebx
	cmpb	%bl, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r9
	jne	.LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	addq	%r8, %r10
	movl	$1, %r9d
	movq	%r10, %rcx
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$1, %r9d
	movq	%r10, %rax
	leaq	1(%r10), %rcx
	movl	$1, %r8d
	jmp	.LBB1_3
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %r9
	movq	%r10, %rcx
	jmp	.LBB1_3
.LBB1_10:
	movq	$1, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r9d
	movq	$-1, %rax
	jmp	.LBB1_22
.LBB1_11:
	movq	%r8, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_21
# %bb.12:                               # %.preheader
	movq	$-1, %r8
	movl	$1, %ecx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	movl	$1, %r10d
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%rcx, %r9
	subq	%r8, %r9
	movl	$1, %r10d
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%rcx, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r10, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB1_23
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %ebp
	leaq	(%r10,%r8), %rbx
	movzbl	(%rdi,%rbx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bpl, %bl
	jb	.LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %bpl
	jne	.LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r10
	jne	.LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_15 Depth=1
	addq	%r9, %r11
	movl	$1, %r10d
	movq	%r11, %rcx
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$1, %r10d
	movq	%r11, %r8
	leaq	1(%r11), %rcx
	movl	$1, %r9d
	jmp	.LBB1_14
.LBB1_20:                               #   in Loop: Header=BB1_15 Depth=1
	addq	$1, %r10
	movq	%r11, %rcx
	jmp	.LBB1_14
.LBB1_21:
	movl	$1, %r9d
.LBB1_22:
	movq	$-1, %r8
.LBB1_23:
	addq	$1, %r8
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r8
	jb	.LBB1_25
# %bb.24:
	movq	%r9, (%rdx)
	movq	%r8, %rax
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
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
