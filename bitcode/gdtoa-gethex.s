	.text
	.file	"gdtoa-gethex.c"
	.globl	__gethex                # -- Begin function __gethex
	.p2align	4, 0x90
	.type	__gethex,@function
__gethex:                               # @__gethex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	16(%rbp), %rdi
	callq	__localeconv_l
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rdx
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movb	-1(%rax,%rbx), %al
	movb	%al, -112(%rbp)         # 1-byte Spill
	movq	(%r13), %r15
	addq	$2, %r15
	movq	$-1, %rbx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	1(%r15,%rbx), %eax
	addq	$1, %rbx
	cmpq	$48, %rax
	je	.LBB0_1
# %bb.2:
	movl	%ebx, %ecx
	addq	%rcx, %r15
	cmpb	$0, __hexdig(%rax)
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	je	.LBB0_13
# %bb.3:                                # %._crit_edge318
	movq	%r13, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r12d, %r12d
.LBB0_4:
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-136(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r15), %r13
	addq	$-2, %r13
	leaq	-1(%r15), %r14
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	1(%r14), %eax
	addq	$1, %r14
	addq	$1, %r13
	cmpb	$0, __hexdig(%rax)
	jne	.LBB0_5
# %bb.6:
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	strncmp
	testq	%r12, %r12
	jne	.LBB0_15
# %bb.7:
	testl	%eax, %eax
	movq	-96(%rbp), %r11         # 8-byte Reload
	jne	.LBB0_11
# %bb.8:
	leaq	1(%r13), %r12
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	1(%r13), %eax
	addq	$1, %r13
	cmpb	$0, __hexdig(%rax)
	jne	.LBB0_9
# %bb.10:
	movq	%r13, %r14
.LBB0_11:
	testq	%r12, %r12
	je	.LBB0_16
.LBB0_12:
	movl	%r14d, %r10d
	subl	%r12d, %r10d
	shll	$2, %r10d
	negl	%r10d
	jmp	.LBB0_17
.LBB0_13:
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, %r14
	callq	strncmp
	testl	%eax, %eax
	je	.LBB0_54
# %bb.14:                               # %._crit_edge316
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	%r15, %r14
	jmp	.LBB0_18
.LBB0_15:
	movq	-96(%rbp), %r11         # 8-byte Reload
	testq	%r12, %r12
	jne	.LBB0_12
.LBB0_16:
	xorl	%r10d, %r10d
.LBB0_17:
	movq	-80(%rbp), %r13         # 8-byte Reload
.LBB0_18:
	movb	(%r14), %al
	movq	%r14, %r12
.LBB0_19:
	orb	$32, %al
	cmpb	$112, %al
	jne	.LBB0_26
# %bb.20:
	movb	1(%r12), %cl
	xorl	%r8d, %r8d
	cmpb	$43, %cl
	je	.LBB0_23
# %bb.21:
	movl	$1, %edi
	cmpb	$45, %cl
	jne	.LBB0_24
# %bb.22:
	movl	$1, %r8d
.LBB0_23:
	movb	2(%r12), %cl
	movl	$2, %edi
.LBB0_24:
	movzbl	%cl, %eax
	movzbl	__hexdig(%rax), %esi
	leal	-1(%rsi), %eax
	cmpb	$24, %al
	jbe	.LBB0_27
.LBB0_26:
	movq	%r12, %rcx
	jmp	.LBB0_31
.LBB0_27:
	leal	-16(%rsi), %r9d
	leaq	(%r12,%rdi), %rcx
	addq	$1, %rcx
	movzbl	1(%r12,%rdi), %eax
	movb	__hexdig(%rax), %dil
	leal	-1(%rdi), %eax
	cmpb	$24, %al
	ja	.LBB0_30
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movzbl	%dil, %esi
	leal	(%r9,%r9,4), %eax
	leal	(%rsi,%rax,2), %r9d
	addl	$-16, %r9d
	movzbl	1(%rcx), %edi
	addq	$1, %rcx
	movzbl	__hexdig(%rdi), %edi
	leal	-1(%rdi), %edx
	cmpb	$25, %dl
	jb	.LBB0_28
# %bb.29:
	leal	(%rsi,%rax,2), %esi
.LBB0_30:
	movl	$16, %eax
	subl	%esi, %eax
	testl	%r8d, %r8d
	cmovel	%r9d, %eax
	addl	%eax, %r10d
.LBB0_31:
	movq	%rcx, (%r13)
	testl	%r11d, %r11d
	je	.LBB0_33
# %bb.32:
	xorl	%eax, %eax
	testl	%ebx, %ebx
	movl	$6, %ebx
	cmovnel	%eax, %ebx
	jmp	.LBB0_200
.LBB0_33:
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movl	%r15d, %eax
	notl	%eax
	addl	%r12d, %eax
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	movl	$0, %esi
	cmpl	$8, %eax
	jl	.LBB0_36
# %bb.34:                               # %.preheader27
	xorl	%esi, %esi
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	shrl	%ecx
	cmpl	$15, %eax
	movl	%ecx, %eax
	ja	.LBB0_35
.LBB0_36:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	_Balloc
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	24(%rax), %r13
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	cmpq	%r15, %r12
	jbe	.LBB0_47
# %bb.37:
	movl	$1, %ebx
	movq	-136(%rbp), %r13        # 8-byte Reload
	subq	%r13, %rbx
	negq	%r13
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_40 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%edx, %edx
.LBB0_39:                               #   in Loop: Header=BB0_40 Depth=1
	movzbl	(%r12), %eax
	movzbl	__hexdig(%rax), %eax
	andl	$15, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	orl	%eax, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	addl	$4, %r14d
	cmpq	%r15, %r12
	jbe	.LBB0_47
.LBB0_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_41 Depth 2
	movq	%r12, %rdi
	.p2align	4, 0x90
.LBB0_41:                               #   Parent Loop BB0_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rdi), %r12
	movzbl	-112(%rbp), %eax        # 1-byte Folded Reload
	cmpb	%al, -1(%rdi)
	jne	.LBB0_45
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=2
	addq	%r13, %rdi
	cmpq	%r15, %rdi
	jb	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_41 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_41 Depth=2
	addq	%rbx, %r12
	movq	%r12, %rdi
	cmpq	%r15, %r12
	ja	.LBB0_41
	jmp	.LBB0_47
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_40 Depth=1
	cmpl	$32, %r14d
	je	.LBB0_38
# %bb.46:                               #   in Loop: Header=BB0_40 Depth=1
	movl	-96(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_39
.LBB0_47:
	movl	-96(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%edi, (%rbx)
	subq	-120(%rbp), %rbx        # 8-byte Folded Reload
	addq	$4, %rbx
	movq	%rbx, %rax
	shrq	$2, %rax
	movq	-104(%rbp), %r13        # 8-byte Reload
	movl	%eax, 20(%r13)
	shll	$3, %ebx
	callq	__hi0bits
	subl	%eax, %ebx
	movq	-88(%rbp), %r12         # 8-byte Reload
	movl	(%r12), %r15d
	movl	%ebx, %r14d
	subl	%r15d, %r14d
	jle	.LBB0_52
# %bb.48:
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	__any_on
	testl	%eax, %eax
	je	.LBB0_61
# %bb.49:
	leal	-1(%r14), %eax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movl	24(%r13,%rcx,4), %ecx
	btl	%eax, %ecx
	jae	.LBB0_63
# %bb.50:
	movl	$2, %edx
	cmpl	$3, %r14d
	jl	.LBB0_64
# %bb.51:
	leal	-2(%r14), %esi
	movq	%r13, %rdi
	callq	__any_on
	cmpl	$1, %eax
	movl	$3, %edx
	sbbl	$0, %edx
	jmp	.LBB0_64
.LBB0_52:
	xorl	%edx, %edx
	cmpl	%r15d, %ebx
	jge	.LBB0_60
# %bb.53:
	movl	%r15d, %r14d
	subl	%ebx, %r14d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	callq	__lshift
	xorl	%edx, %edx
	movq	%rax, %r13
	movl	-44(%rbp), %r10d        # 4-byte Reload
	subl	%r14d, %r10d
	addq	$24, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	cmpl	8(%r12), %r10d
	jg	.LBB0_100
	jmp	.LBB0_101
.LBB0_54:
	movq	-136(%rbp), %rax        # 8-byte Reload
	leaq	(%r15,%rax), %r12
	movzbl	(%r15,%r14), %eax
	movb	__hexdig(%rax), %cl
	testb	%cl, %cl
	je	.LBB0_62
# %bb.55:
	movq	%r14, %rdx
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movq	%r12, %r15
	cmpb	$48, %al
	jne	.LBB0_59
# %bb.56:                               # %.preheader32
	movq	%r12, %r15
	.p2align	4, 0x90
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	movzbl	1(%r15), %eax
	addq	$1, %r15
	cmpq	$48, %rax
	je	.LBB0_57
# %bb.58:
	movb	__hexdig(%rax), %cl
.LBB0_59:
	xorl	%eax, %eax
	testb	%cl, %cl
	sete	%al
	movl	$1, %ebx
	jmp	.LBB0_4
.LBB0_60:
	movq	-104(%rbp), %r13        # 8-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	cmpl	8(%r12), %r10d
	jg	.LBB0_100
	jmp	.LBB0_101
.LBB0_61:
	xorl	%edx, %edx
	jmp	.LBB0_64
.LBB0_62:                               # %._crit_edge315
	xorl	%r10d, %r10d
	movl	$1, %r11d
	jmp	.LBB0_19
.LBB0_63:
	movl	$1, %edx
.LBB0_64:
	leaq	24(%r13), %r8
	movl	%r14d, %ecx
	sarl	$5, %ecx
	movslq	20(%r13), %r11
	movq	%r8, %rax
	cmpl	%r11d, %ecx
	jge	.LBB0_97
# %bb.65:
	leaq	24(,%r11,4), %r9
	addq	%r13, %r9
	movslq	%ecx, %rsi
	leaq	24(,%rsi,4), %rbx
	addq	%r13, %rbx
	movl	%r14d, %r12d
	andl	$31, %r12d
	je	.LBB0_70
# %bb.66:
	movl	(%rbx), %edi
	addq	$4, %rbx
	movl	%r12d, %ecx
	shrl	%cl, %edi
	cmpq	%r9, %rbx
	jae	.LBB0_81
# %bb.67:
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	$32, %r13d
	subl	%r12d, %r13d
	shlq	$2, %r11
	shlq	$2, %rsi
	subq	%rsi, %r11
	leaq	23(%r11), %rax
	addq	$-5, %r11
	movl	%r11d, %edx
	shrl	$2, %edx
	addl	$1, %edx
	andq	$3, %rdx
	je	.LBB0_82
# %bb.68:                               # %.preheader23
	negq	%rdx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB0_69:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	orl	%edi, %r10d
	movl	%r10d, (%rsi)
	addq	$4, %rsi
	movl	(%rbx), %edi
	addq	$4, %rbx
	movl	%r12d, %ecx
	shrl	%cl, %edi
	incq	%rdx
	jne	.LBB0_69
	jmp	.LBB0_83
.LBB0_70:
	movl	%edx, -64(%rbp)         # 4-byte Spill
	leaq	28(,%rsi,4), %rdx
	addq	%r13, %rdx
	cmpq	%r9, %rdx
	movq	%r13, %rdi
	movq	%r9, %r13
	cmovaq	%rdx, %r13
	leaq	(%rdi,%rsi,4), %rax
	subq	%rax, %r13
	leaq	3(%r13), %r11
	andq	$-4, %r11
	addq	$-25, %r13
	shrq	$2, %r13
	addq	$1, %r13
	cmpq	$7, %r13
	jbe	.LBB0_73
# %bb.71:
	cmpq	%r9, %rdx
	cmovbeq	%r9, %rdx
	leaq	24(%rdi), %rcx
	subq	%rax, %rdx
	addq	$-25, %rdx
	andq	$-4, %rdx
	leaq	(%rdx,%rsi,4), %rax
	addq	%rdi, %rax
	addq	$28, %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_88
# %bb.72:
	leaq	(%rdx,%rdi), %rax
	addq	$28, %rax
	leaq	(%rdi,%rsi,4), %rcx
	addq	$24, %rcx
	cmpq	%rax, %rcx
	jae	.LBB0_88
.LBB0_73:
	movq	%r8, %rcx
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%rdi, %r13
.LBB0_74:
	leaq	4(%rbx), %rax
	cmpq	%rax, %r9
	cmovaq	%r9, %rax
	movq	%rbx, %r10
	notq	%r10
	addq	%rax, %r10
	movl	%r10d, %eax
	shrl	$2, %eax
	addl	$1, %eax
	andq	$7, %rax
	je	.LBB0_78
# %bb.75:                               # %.preheader16
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_76:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdi,4), %edx
	movl	%edx, (%rcx,%rdi,4)
	addq	$1, %rdi
	addq	$-4, %rsi
	cmpq	%rdi, %rax
	jne	.LBB0_76
# %bb.77:                               # %.loopexit17
	subq	%rsi, %rcx
	subq	%rsi, %rbx
.LBB0_78:
	cmpq	$28, %r10
	jb	.LBB0_96
# %bb.79:                               # %.preheader14
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rax), %edx
	movl	%edx, (%rcx,%rax)
	movl	4(%rbx,%rax), %edx
	movl	%edx, 4(%rcx,%rax)
	movl	8(%rbx,%rax), %edx
	movl	%edx, 8(%rcx,%rax)
	movl	12(%rbx,%rax), %edx
	movl	%edx, 12(%rcx,%rax)
	movl	16(%rbx,%rax), %edx
	movl	%edx, 16(%rcx,%rax)
	movl	20(%rbx,%rax), %edx
	movl	%edx, 20(%rcx,%rax)
	movl	24(%rbx,%rax), %edx
	movl	%edx, 24(%rcx,%rax)
	movl	28(%rbx,%rax), %edx
	movl	%edx, 28(%rcx,%rax)
	leaq	(%rbx,%rax), %rdx
	addq	$32, %rdx
	addq	$32, %rax
	cmpq	%r9, %rdx
	jb	.LBB0_80
	jmp	.LBB0_96
.LBB0_81:
	movq	%r8, %rcx
	jmp	.LBB0_87
.LBB0_82:
	movq	%r8, %rsi
.LBB0_83:
	movq	%rax, %r10
	andq	$-4, %r10
	cmpq	$12, %r11
	jb	.LBB0_86
# %bb.84:                               # %.preheader21
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_85:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx), %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	orl	%edi, %eax
	movl	%eax, (%rsi,%rdx)
	movl	(%rbx,%rdx), %eax
	movl	%r12d, %ecx
	shrl	%cl, %eax
	movl	4(%rbx,%rdx), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	orl	%eax, %edi
	movl	%edi, 4(%rsi,%rdx)
	movl	4(%rbx,%rdx), %eax
	movl	%r12d, %ecx
	shrl	%cl, %eax
	movl	8(%rbx,%rdx), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	orl	%eax, %edi
	movl	%edi, 8(%rsi,%rdx)
	movl	8(%rbx,%rdx), %eax
	movl	%r12d, %ecx
	shrl	%cl, %eax
	movl	12(%rbx,%rdx), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	orl	%eax, %edi
	movl	%edi, 12(%rsi,%rdx)
	movl	12(%rbx,%rdx), %edi
	movl	%r12d, %ecx
	shrl	%cl, %edi
	leaq	(%rbx,%rdx), %rax
	addq	$16, %rax
	addq	$16, %rdx
	cmpq	%r9, %rax
	jb	.LBB0_85
.LBB0_86:
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rcx
	addq	%r10, %rcx
	movl	-64(%rbp), %edx         # 4-byte Reload
.LBB0_87:
	movl	%edi, (%rcx)
	leaq	4(%rcx), %rax
	testl	%edi, %edi
	cmoveq	%rcx, %rax
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_97
.LBB0_88:
	movq	%r13, %rdi
	andq	$-8, %rdi
	leaq	-8(%rdi), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$24, %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jae	.LBB0_90
# %bb.89:
	xorl	%edx, %edx
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_92
.LBB0_90:
	movq	-104(%rbp), %r10        # 8-byte Reload
	leaq	(%r10,%rsi,4), %rax
	addq	$136, %rax
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB0_91:                               # =>This Inner Loop Header: Depth=1
	movups	-112(%rax,%rdx,4), %xmm0
	movups	-96(%rax,%rdx,4), %xmm1
	movups	%xmm0, 24(%r10,%rdx,4)
	movups	%xmm1, 40(%r10,%rdx,4)
	movups	-80(%rax,%rdx,4), %xmm0
	movups	-64(%rax,%rdx,4), %xmm1
	movups	%xmm0, 56(%r10,%rdx,4)
	movups	%xmm1, 72(%r10,%rdx,4)
	movups	-48(%rax,%rdx,4), %xmm0
	movups	-32(%rax,%rdx,4), %xmm1
	movups	%xmm0, 88(%r10,%rdx,4)
	movups	%xmm1, 104(%r10,%rdx,4)
	movups	-16(%rax,%rdx,4), %xmm0
	movups	(%rax,%rdx,4), %xmm1
	movups	%xmm0, 120(%r10,%rdx,4)
	movups	%xmm1, 136(%r10,%rdx,4)
	addq	$32, %rdx
	addq	$4, %rdi
	jne	.LBB0_91
.LBB0_92:
	testq	%rcx, %rcx
	je	.LBB0_95
# %bb.93:                               # %.preheader18
	shlq	$2, %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rdx,4), %rax
	addq	$40, %rax
	negq	%rcx
.LBB0_94:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rax,%rsi), %xmm0
	movups	(%rax,%rsi), %xmm1
	movups	%xmm0, -16(%rax)
	movups	%xmm1, (%rax)
	addq	$32, %rax
	incq	%rcx
	jne	.LBB0_94
.LBB0_95:
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, %r13
	movq	-104(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_136
.LBB0_96:
	movq	%r13, %rax
	addq	%r11, %rax
	movl	-64(%rbp), %edx         # 4-byte Reload
.LBB0_97:
	subq	%r8, %rax
	shrq	$2, %rax
	movl	%eax, 20(%r13)
	testl	%eax, %eax
	jne	.LBB0_99
# %bb.98:
	movl	$0, (%r8)
.LBB0_99:
	movl	$42, __A_VARIABLE(%rip)
	addl	-44(%rbp), %r14d        # 4-byte Folded Reload
	movl	%r14d, %r10d
	cmpl	8(%r12), %r10d
	jle	.LBB0_101
.LBB0_100:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	callq	_Bfree
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movl	$163, %ebx
	jmp	.LBB0_200
.LBB0_101:
	movl	4(%r12), %eax
	movl	$1, %ebx
	movl	%eax, %r14d
	subl	%r10d, %r14d
	jle	.LBB0_112
# %bb.102:
	movl	%r15d, %esi
	subl	%r14d, %esi
	jle	.LBB0_113
# %bb.103:
	leal	-1(%r14), %ebx
	movl	$1, %eax
	testl	%edx, %edx
	jne	.LBB0_106
# %bb.104:
	xorl	%eax, %eax
	cmpl	$2, %r14d
	jl	.LBB0_106
# %bb.105:
	movq	%r13, %rdi
	movl	%esi, %r15d
	movl	%ebx, %esi
	callq	__any_on
	movl	%r15d, %esi
.LBB0_106:
	movl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	movl	%eax, %edx
	orl	$2, %edx
	btl	%ebx, %ecx
	cmovael	%eax, %edx
	leaq	24(%r13), %r8
	movl	%r14d, %ecx
	sarl	$5, %ecx
	movslq	20(%r13), %r11
	movq	%r8, %r12
	cmpl	%r11d, %ecx
	jge	.LBB0_152
# %bb.107:
	leaq	24(,%r11,4), %r10
	addq	%r13, %r10
	movslq	%ecx, %r15
	leaq	24(,%r15,4), %rdi
	addq	%r13, %rdi
	andl	$31, %r14d
	je	.LBB0_124
# %bb.108:
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	(%rdi), %edx
	addq	$4, %rdi
	movl	%r14d, %ecx
	shrl	%cl, %edx
	cmpq	%r10, %rdi
	jae	.LBB0_135
# %bb.109:
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movl	$32, %r12d
	subl	%r14d, %r12d
	shlq	$2, %r11
	shlq	$2, %r15
	subq	%r15, %r11
	leaq	23(%r11), %r9
	addq	$-5, %r11
	movl	%r11d, %esi
	shrl	$2, %esi
	addl	$1, %esi
	andq	$3, %rsi
	je	.LBB0_137
# %bb.110:                              # %.preheader12
	negq	%rsi
	movq	%r8, %rbx
.LBB0_111:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	movl	(%rdi), %edx
	addq	$4, %rdi
	movl	%r14d, %ecx
	shrl	%cl, %edx
	incq	%rsi
	jne	.LBB0_111
	jmp	.LBB0_138
.LBB0_112:
	movl	%r15d, %esi
	testl	%edx, %edx
	jne	.LBB0_155
	jmp	.LBB0_161
.LBB0_113:
	movl	12(%r12), %ecx
	cmpl	$3, %ecx
	je	.LBB0_120
# %bb.114:
	cmpl	$2, %ecx
	je	.LBB0_122
# %bb.115:
	cmpl	$1, %ecx
	jne	.LBB0_123
# %bb.116:
	cmpl	%r14d, %r15d
	jne	.LBB0_123
# %bb.117:
	cmpl	$2, %r15d
	jl	.LBB0_121
# %bb.118:
	addl	$-1, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	__any_on
	testl	%eax, %eax
	je	.LBB0_123
# %bb.119:
	movl	4(%r12), %eax
	jmp	.LBB0_121
.LBB0_120:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_123
.LBB0_121:
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	movl	$1, 20(%r13)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	$1, (%rax)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r13, (%rax)
	movl	$98, %ebx
	jmp	.LBB0_200
.LBB0_122:
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_121
.LBB0_123:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	callq	_Bfree
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movl	$80, %ebx
	jmp	.LBB0_200
.LBB0_124:
	movl	%edx, %r14d
	leaq	28(,%r15,4), %rdx
	addq	%r13, %rdx
	cmpq	%r10, %rdx
	movq	%r10, %r11
	cmovaq	%rdx, %r11
	leaq	(,%r15,4), %rcx
	addq	%r13, %rcx
	subq	%rcx, %r11
	leaq	3(%r11), %r12
	andq	$-4, %r12
	addq	$-25, %r11
	shrq	$2, %r11
	addq	$1, %r11
	cmpq	$7, %r11
	jbe	.LBB0_127
# %bb.125:
	cmpq	%r10, %rdx
	cmovbeq	%r10, %rdx
	leaq	24(%r13), %rax
	subq	%rcx, %rdx
	addq	$-25, %rdx
	andq	$-4, %rdx
	leaq	(%rdx,%r15,4), %rcx
	addq	%r13, %rcx
	addq	$28, %rcx
	cmpq	%rax, %rcx
	jbe	.LBB0_143
# %bb.126:
	leaq	(%rdx,%r13), %rax
	addq	$28, %rax
	leaq	24(,%r15,4), %rcx
	addq	%r13, %rcx
	cmpq	%rax, %rcx
	jae	.LBB0_143
.LBB0_127:
	movl	%esi, %r11d
	movq	%r8, %rcx
.LBB0_128:
	leaq	4(%rdi), %rdx
	cmpq	%rdx, %r10
	cmovaq	%r10, %rdx
	movq	%rdi, %r9
	notq	%r9
	addq	%rdx, %r9
	movl	%r9d, %esi
	shrl	$2, %esi
	addl	$1, %esi
	andq	$7, %rsi
	je	.LBB0_132
# %bb.129:                              # %.preheader5
	xorl	%ebx, %ebx
	xorl	%edx, %edx
.LBB0_130:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %eax
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	addq	$-4, %rbx
	cmpq	%rdx, %rsi
	jne	.LBB0_130
# %bb.131:                              # %.loopexit6
	subq	%rbx, %rcx
	subq	%rbx, %rdi
.LBB0_132:
	movl	%r11d, %esi
	cmpq	$28, %r9
	jb	.LBB0_151
# %bb.133:                              # %.preheader3
	xorl	%edx, %edx
.LBB0_134:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx), %eax
	movl	%eax, (%rcx,%rdx)
	movl	4(%rdi,%rdx), %eax
	movl	%eax, 4(%rcx,%rdx)
	movl	8(%rdi,%rdx), %eax
	movl	%eax, 8(%rcx,%rdx)
	movl	12(%rdi,%rdx), %eax
	movl	%eax, 12(%rcx,%rdx)
	movl	16(%rdi,%rdx), %eax
	movl	%eax, 16(%rcx,%rdx)
	movl	20(%rdi,%rdx), %eax
	movl	%eax, 20(%rcx,%rdx)
	movl	24(%rdi,%rdx), %eax
	movl	%eax, 24(%rcx,%rdx)
	movl	28(%rdi,%rdx), %eax
	movl	%eax, 28(%rcx,%rdx)
	leaq	(%rdi,%rdx), %rax
	addq	$32, %rax
	addq	$32, %rdx
	cmpq	%r10, %rax
	jb	.LBB0_134
	jmp	.LBB0_151
.LBB0_135:
	movq	%r8, %r9
	jmp	.LBB0_142
.LBB0_136:
	leaq	24(,%rax,4), %rcx
	addq	%r13, %rcx
	leaq	(%rbx,%rax,4), %rbx
	jmp	.LBB0_74
.LBB0_137:
	movq	%r8, %rbx
.LBB0_138:
	andq	$-4, %r9
	cmpq	$12, %r11
	jb	.LBB0_141
# %bb.139:                              # %.preheader10
	xorl	%esi, %esi
.LBB0_140:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rsi), %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, (%rbx,%rsi)
	movl	(%rdi,%rsi), %eax
	movl	%r14d, %ecx
	shrl	%cl, %eax
	movl	4(%rdi,%rsi), %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	orl	%eax, %edx
	movl	%edx, 4(%rbx,%rsi)
	movl	4(%rdi,%rsi), %eax
	movl	%r14d, %ecx
	shrl	%cl, %eax
	movl	8(%rdi,%rsi), %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	orl	%eax, %edx
	movl	%edx, 8(%rbx,%rsi)
	movl	8(%rdi,%rsi), %eax
	movl	%r14d, %ecx
	shrl	%cl, %eax
	movl	12(%rdi,%rsi), %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	orl	%eax, %edx
	movl	%edx, 12(%rbx,%rsi)
	movl	12(%rdi,%rsi), %edx
	movl	%r14d, %ecx
	shrl	%cl, %edx
	leaq	(%rdi,%rsi), %rax
	addq	$16, %rax
	addq	$16, %rsi
	cmpq	%r10, %rax
	jb	.LBB0_140
.LBB0_141:
	addq	%r13, %r9
	movl	-112(%rbp), %esi        # 4-byte Reload
.LBB0_142:
	movl	%edx, (%r9)
	leaq	4(%r9), %r12
	testl	%edx, %edx
	cmoveq	%r9, %r12
	movl	-64(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_152
.LBB0_143:
	movq	%r11, %r9
	andq	$-8, %r9
	leaq	-8(%r9), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movl	%edx, %ebx
	andl	$3, %ebx
	cmpq	$24, %rax
	jae	.LBB0_145
# %bb.144:
	movl	%esi, %eax
	xorl	%edx, %edx
	jmp	.LBB0_147
.LBB0_145:
	movl	%esi, %eax
	leaq	136(,%r15,4), %rcx
	addq	%r13, %rcx
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	xorl	%edx, %edx
.LBB0_146:                              # =>This Inner Loop Header: Depth=1
	movups	-112(%rcx,%rdx,4), %xmm0
	movups	-96(%rcx,%rdx,4), %xmm1
	movups	%xmm0, 24(%r13,%rdx,4)
	movups	%xmm1, 40(%r13,%rdx,4)
	movups	-80(%rcx,%rdx,4), %xmm0
	movups	-64(%rcx,%rdx,4), %xmm1
	movups	%xmm0, 56(%r13,%rdx,4)
	movups	%xmm1, 72(%r13,%rdx,4)
	movups	-48(%rcx,%rdx,4), %xmm0
	movups	-32(%rcx,%rdx,4), %xmm1
	movups	%xmm0, 88(%r13,%rdx,4)
	movups	%xmm1, 104(%r13,%rdx,4)
	movups	-16(%rcx,%rdx,4), %xmm0
	movups	(%rcx,%rdx,4), %xmm1
	movups	%xmm0, 120(%r13,%rdx,4)
	movups	%xmm1, 136(%r13,%rdx,4)
	addq	$32, %rdx
	addq	$4, %rsi
	jne	.LBB0_146
.LBB0_147:
	testq	%rbx, %rbx
	je	.LBB0_150
# %bb.148:                              # %.preheader7
	shlq	$2, %r15
	leaq	40(,%rdx,4), %rcx
	addq	%r13, %rcx
	negq	%rbx
.LBB0_149:                              # =>This Inner Loop Header: Depth=1
	movups	-16(%rcx,%r15), %xmm0
	movups	(%rcx,%r15), %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$32, %rcx
	incq	%rbx
	jne	.LBB0_149
.LBB0_150:
	cmpq	%r9, %r11
	movl	%eax, %esi
	jne	.LBB0_201
.LBB0_151:
	addq	%r13, %r12
	movl	%r14d, %edx
.LBB0_152:
	subq	%r8, %r12
	shrq	$2, %r12
	movl	%r12d, 20(%r13)
	testl	%r12d, %r12d
	jne	.LBB0_154
# %bb.153:
	movl	$0, (%r8)
.LBB0_154:
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movl	4(%r12), %r10d
	movl	$2, %ebx
	testl	%edx, %edx
	je	.LBB0_161
.LBB0_155:
	movl	12(%r12), %eax
	cmpl	$3, %eax
	je	.LBB0_163
# %bb.156:
	cmpl	$2, %eax
	je	.LBB0_162
# %bb.157:
	cmpl	$1, %eax
	jne	.LBB0_160
# %bb.158:
	testb	$2, %dl
	je	.LBB0_160
# %bb.159:
	movq	-120(%rbp), %rax        # 8-byte Reload
	orl	(%rax), %edx
	testb	$1, %dl
	jne	.LBB0_165
.LBB0_160:
	orl	$16, %ebx
.LBB0_161:
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_199
.LBB0_162:
	movl	$1, %eax
	subl	-68(%rbp), %eax         # 4-byte Folded Reload
	jmp	.LBB0_164
.LBB0_163:
	movl	-68(%rbp), %eax         # 4-byte Reload
.LBB0_164:
	testl	%eax, %eax
	je	.LBB0_160
.LBB0_165:
	movslq	20(%r13), %r15
	leaq	24(%r13), %rax
	leaq	24(,%r15,4), %rcx
	addq	%r13, %rcx
	.p2align	4, 0x90
.LBB0_166:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	cmpl	$-1, %edx
	jne	.LBB0_171
# %bb.167:                              #   in Loop: Header=BB0_166 Depth=1
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB0_166
# %bb.168:
	movl	20(%r13), %eax
	cmpl	12(%r13), %eax
	jl	.LBB0_170
# %bb.169:
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movl	8(%r13), %esi
	addl	$1, %esi
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	callq	_Balloc
	movq	%rax, %r14
	leaq	16(%rax), %rdi
	leaq	16(%r13), %rsi
	movslq	20(%r13), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movq	%r12, %rdi
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r13, %rsi
	callq	_Bfree
	movl	-112(%rbp), %esi        # 4-byte Reload
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	20(%r14), %eax
	movq	%r14, %r13
.LBB0_170:
	leal	1(%rax), %ecx
	movl	%ecx, 20(%r13)
	cltq
	movl	$1, 24(%r13,%rax,4)
	jmp	.LBB0_172
.LBB0_171:
	addl	$1, %edx
	movl	%edx, (%rax)
.LBB0_172:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB0_175
# %bb.173:
	movl	(%r12), %eax
	addl	$-1, %eax
	movl	$2, %ebx
	cmpl	%eax, %esi
	jne	.LBB0_197
# %bb.174:
	movl	%esi, %eax
	sarl	$5, %eax
	cltq
	movl	24(%r13,%rax,4), %eax
	xorl	%ebx, %ebx
	btl	%esi, %eax
	setae	%bl
	addl	$1, %ebx
	jmp	.LBB0_197
.LBB0_175:
	movl	20(%r13), %eax
	cmpl	%r15d, %eax
	jg	.LBB0_179
# %bb.176:
	andl	$31, %esi
	je	.LBB0_197
# %bb.177:
	movl	%r10d, %r14d
	movl	20(%r13,%r15,4), %edi
	movl	%esi, %r15d
	callq	__hi0bits
	movl	$32, %ecx
	subl	%r15d, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_186
# %bb.178:
	movl	20(%r13), %eax
	movl	%r14d, %r10d
.LBB0_179:
	leaq	24(%r13), %r8
	movq	%r8, %rcx
	testl	%eax, %eax
	jle	.LBB0_193
# %bb.180:
	movl	24(%r13), %edx
	shrl	%edx
	cmpl	$1, %eax
	jne	.LBB0_182
# %bb.181:
	movq	%r8, %r9
	jmp	.LBB0_192
.LBB0_182:
	movl	%r10d, %r15d
	cltq
	leaq	24(,%rax,4), %r11
	addq	%r13, %r11
	leaq	23(,%rax,4), %r9
	leaq	32(%r13), %r10
	cmpq	%r10, %r11
	cmovaq	%r11, %r10
	subq	%r13, %r10
	addq	$-29, %r10
	movl	%r10d, %r14d
	shrl	$2, %r14d
	addl	$1, %r14d
	andq	$3, %r14
	je	.LBB0_187
# %bb.183:                              # %.preheader1
	xorl	%ecx, %ecx
	xorl	%edi, %edi
.LBB0_184:                              # =>This Inner Loop Header: Depth=1
	movl	28(%r13,%rcx,4), %eax
	movl	%eax, %esi
	shll	$31, %esi
	orl	%edx, %esi
	movl	%esi, 24(%r13,%rcx,4)
	movl	%eax, %edx
	shrl	%edx
	addq	$-4, %rdi
	addq	$1, %rcx
	cmpq	%rcx, %r14
	jne	.LBB0_184
# %bb.185:                              # %.loopexit2
	movq	%r13, %r14
	subq	%rdi, %r14
	leaq	28(%r14), %rax
	addq	$24, %r14
	jmp	.LBB0_188
.LBB0_186:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r14d, %r10d
	jmp	.LBB0_198
.LBB0_187:
	leaq	28(%r13), %rax
	movq	%r8, %r14
.LBB0_188:
	andq	$-4, %r9
	cmpq	$12, %r10
	jb	.LBB0_191
# %bb.189:                              # %.preheader
	xorl	%edi, %edi
.LBB0_190:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rdi), %ecx
	movl	%ecx, %esi
	shll	$31, %esi
	orl	%edx, %esi
	movl	%esi, (%r14,%rdi)
	movl	4(%rax,%rdi), %edx
	shrdl	$1, %edx, %ecx
	movl	%ecx, 4(%r14,%rdi)
	movl	8(%rax,%rdi), %ecx
	shrdl	$1, %ecx, %edx
	movl	%edx, 8(%r14,%rdi)
	movl	12(%rax,%rdi), %edx
	shrdl	$1, %edx, %ecx
	movl	%ecx, 12(%r14,%rdi)
	shrl	%edx
	leaq	(%rax,%rdi), %rcx
	addq	$16, %rcx
	addq	$16, %rdi
	cmpq	%r11, %rcx
	jb	.LBB0_190
.LBB0_191:
	addq	%r13, %r9
	movl	%r15d, %r10d
.LBB0_192:
	movl	%edx, (%r9)
	leaq	4(%r9), %rcx
	testl	%edx, %edx
	cmoveq	%r9, %rcx
.LBB0_193:
	subq	%r8, %rcx
	shrq	$2, %rcx
	movl	%ecx, 20(%r13)
	testl	%ecx, %ecx
	jne	.LBB0_195
# %bb.194:
	movl	$0, (%r8)
.LBB0_195:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	8(%r12), %r10d
	jge	.LBB0_100
# %bb.196:
	addl	$1, %r10d
.LBB0_197:
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB0_198:
	orl	$32, %ebx
.LBB0_199:
	movq	%r13, (%rax)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	%r10d, (%rax)
.LBB0_200:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_201:
	movl	%esi, %r11d
	leaq	24(,%r9,4), %rcx
	addq	%r13, %rcx
	leaq	(%rdi,%r9,4), %rdi
	jmp	.LBB0_128
.Lfunc_end0:
	.size	__gethex, .Lfunc_end0-__gethex
                                        # -- End function
	.type	__hexdig,@object        # @__hexdig
	.section	.rodata,"a",@progbits
	.globl	__hexdig
	.p2align	4
__hexdig:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\021\022\023\024\025\026\027\030\031\000\000\000\000\000\000\000\032\033\034\035\036\037\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\033\034\035\036\037"
	.zero	153
	.size	__hexdig, 256

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
