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
	subq	$104, %rsp
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	16(%rbp), %rdi
	callq	__localeconv_l
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rdx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movb	-1(%rax,%rbx), %al
	movb	%al, -45(%rbp)          # 1-byte Spill
	movq	(%r13), %rcx
	leaq	2(%rcx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movb	2(%rcx), %al
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	jne	.LBB0_4
# %bb.1:                                # %.preheader17
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rcx,%r14), %eax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	je	.LBB0_2
# %bb.3:
	movl	%r14d, %ecx
	addq	%rcx, %r15
.LBB0_4:
	movzbl	%al, %eax
	cmpb	$0, __hexdig(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	je	.LBB0_14
# %bb.5:
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movzbl	(%r15), %eax
	movb	__hexdig(%rax), %al
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
.LBB0_6:
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	testb	%al, %al
	je	.LBB0_9
# %bb.7:                                # %.preheader14
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	cmpb	$0, __hexdig(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
.LBB0_9:
	movq	%rbx, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, %r13
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	testq	%r12, %r12
	jne	.LBB0_16
# %bb.10:
	testl	%eax, %eax
	movq	-80(%rbp), %r10         # 8-byte Reload
	jne	.LBB0_17
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx,%r13), %eax
	addq	%r13, %rbx
	cmpb	$0, __hexdig(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	je	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r12), %eax
	addq	$1, %r12
	cmpb	$0, __hexdig(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
.LBB0_13:
	movq	%rbx, %rcx
	jmp	.LBB0_18
.LBB0_14:
	movq	%r15, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, %rbx
	callq	strncmp
	xorl	%r9d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r10d
	testl	%eax, %eax
	je	.LBB0_62
# %bb.15:
	movq	%r15, %r12
	jmp	.LBB0_22
.LBB0_16:
	movq	%rbx, %r12
	movq	-80(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_18
.LBB0_17:
	movq	%rbx, %r12
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_20
# %bb.19:
	movl	%r12d, %r9d
	subl	%ecx, %r9d
	shll	$2, %r9d
	negl	%r9d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_21
.LBB0_20:
	xorl	%r9d, %r9d
.LBB0_21:
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB0_22:
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	orb	$32, %al
	cmpb	$112, %al
	jne	.LBB0_27
# %bb.23:
	movb	1(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	cmpb	$43, %al
	je	.LBB0_26
# %bb.24:
	cmpb	$45, %al
	jne	.LBB0_28
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
.LBB0_26:
	leaq	2(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_27:
	movq	%r12, %rax
	jmp	.LBB0_38
.LBB0_28:
	leaq	1(%r12), %rax
.LBB0_29:
	movzbl	(%rax), %edx
	movzbl	__hexdig(%rdx), %esi
	leal	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$24, %dl
	jbe	.LBB0_31
# %bb.30:
	movq	%r12, %rax
	jmp	.LBB0_37
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%rsi), %edx
	movzbl	1(%rax), %edi
	addq	$1, %rax
	movb	__hexdig(%rdi), %dil
	leal	-1(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$24, %bl
	ja	.LBB0_34
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movzbl	%dil, %esi
	leal	(%rdx,%rdx,4), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rsi,%rbx,2), %edx
	addl	$-16, %edx
	movzbl	1(%rax), %edi
	addq	$1, %rax
	movzbl	__hexdig(%rdi), %edi
	leal	-1(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$25, %cl
	jb	.LBB0_32
# %bb.33:
	leal	(%rsi,%rbx,2), %esi
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_36
# %bb.35:
	movl	$16, %edx
	subl	%esi, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:
	addl	%r9d, %edx
	movl	%edx, %r9d
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	je	.LBB0_40
# %bb.39:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	movl	$6, %ebx
	cmovnel	%eax, %ebx
	jmp	.LBB0_166
.LBB0_40:
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r15d, %eax
	notl	%eax
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	cmpl	$8, %eax
	jl	.LBB0_43
# %bb.41:                               # %.preheader8
	xorl	%esi, %esi
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	addl	$1, %esi
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %eax
	movl	%ecx, %eax
	ja	.LBB0_42
.LBB0_43:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	_Balloc
	movq	%rax, -136(%rbp)        # 8-byte Spill
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmpq	%r15, %r12
	jbe	.LBB0_54
# %bb.44:
	movl	$1, %r13d
	movq	-144(%rbp), %rbx        # 8-byte Reload
	subq	%rbx, %r13
	movq	%rbx, %r14
	negq	%rbx
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB0_47
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_47 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB0_46:                               #   in Loop: Header=BB0_47 Depth=1
	movzbl	(%r12), %eax
	movzbl	__hexdig(%rax), %eax
	andl	$15, %eax
	shll	%cl, %eax
	orl	%eax, %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	addl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	jbe	.LBB0_54
.LBB0_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	.p2align	4, 0x90
.LBB0_48:                               #   Parent Loop BB0_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rdi), %r12
	movzbl	-45(%rbp), %eax         # 1-byte Folded Reload
	cmpb	%al, -1(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_52
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	addq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdi
	jb	.LBB0_52
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=2
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r14, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_48 Depth=2
	addq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	cmpq	%r15, %r12
	ja	.LBB0_48
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_47 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	$32, %ecx
	je	.LBB0_45
# %bb.53:                               #   in Loop: Header=BB0_47 Depth=1
	movl	-64(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_46
.LBB0_54:
	movl	-64(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%edi, (%rbx)
	subq	-88(%rbp), %rbx         # 8-byte Folded Reload
	addq	$4, %rbx
	movq	%rbx, %rax
	shrq	$2, %rax
	movq	-136(%rbp), %r13        # 8-byte Reload
	movl	%eax, 20(%r13)
	shll	$3, %ebx
	callq	__hi0bits
	subl	%eax, %ebx
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	(%r11), %r12d
	movl	%ebx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r12d, %r14d
	jle	.LBB0_60
# %bb.55:
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	__any_on
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_69
# %bb.56:
	leal	-1(%r14), %eax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	movl	24(%r13,%rcx,4), %ecx
	btl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	jae	.LBB0_70
# %bb.57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r15d
	cmpl	$3, %r14d
	jl	.LBB0_74
# %bb.58:
	leal	-2(%r14), %esi
	movq	%r13, %rdi
	callq	__any_on
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %r11         # 8-byte Reload
	je	.LBB0_75
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %r15d
	jmp	.LBB0_75
.LBB0_60:
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jge	.LBB0_68
# %bb.61:
	movl	%r12d, %r14d
	subl	%ebx, %r14d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	__lshift
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%rax, %r13
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	%r14d, %eax
	movq	%r13, %rcx
	addq	$24, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	%eax, %r14d
	jmp	.LBB0_89
.LBB0_62:
	movq	%r13, -64(%rbp)         # 8-byte Spill
	leaq	(%r15,%rbx), %r12
	movzbl	(%r15,%rbx), %ecx
	movb	__hexdig(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_21
# %bb.63:
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	jne	.LBB0_71
# %bb.64:
	movq	%r12, %r15
	.p2align	4, 0x90
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r15), %eax
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rax
	je	.LBB0_65
# %bb.66:
	movb	__hexdig(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_72
# %bb.67:
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB0_73
.LBB0_68:
	movl	-44(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_90
.LBB0_69:
	xorl	%r15d, %r15d
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_75
.LBB0_70:
	movl	$1, %r15d
.LBB0_74:
	movq	-56(%rbp), %r11         # 8-byte Reload
.LBB0_75:
	leaq	24(%r13), %r8
	movl	%r14d, %eax
	sarl	$5, %eax
	movslq	20(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rsi
	cmpl	%ecx, %eax
	jge	.LBB0_86
# %bb.76:
	leaq	24(,%rcx,4), %rdi
	addq	%r13, %rdi
	cltq
	movl	%r14d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %r9d
	je	.LBB0_80
# %bb.77:
	leaq	24(,%rax,4), %rax
	addq	%r13, %rax
	movl	(%rax), %ebx
	movl	%r9d, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jae	.LBB0_82
# %bb.78:                               # %.preheader4
	movl	$32, %r10d
	subl	%r9d, %r10d
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB0_79:                               # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	movl	%r10d, %ecx
	shll	%cl, %edx
	orl	%ebx, %edx
	movl	%edx, (%rsi)
	addq	$4, %rsi
	movl	(%rax), %ebx
	movl	%r9d, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jb	.LBB0_79
	jmp	.LBB0_83
.LBB0_71:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r15
.LBB0_72:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB0_73:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jmp	.LBB0_6
.LBB0_80:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$2, %rax
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB0_81:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax), %ecx
	movl	%ecx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rsi,%rax), %rcx
	addq	$4, %rcx
	addq	$4, %rsi
	cmpq	%rdi, %rcx
	jb	.LBB0_81
	jmp	.LBB0_86
.LBB0_82:
	movq	%r8, %rsi
.LBB0_83:
	movl	%ebx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_85
# %bb.84:
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_85:
	movl	-44(%rbp), %edx         # 4-byte Reload
.LBB0_86:
	subq	%r8, %rsi
	shrq	$2, %rsi
	movl	%esi, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB0_88
# %bb.87:
	movl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_88:
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r14d
.LBB0_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r9d
.LBB0_90:
	cmpl	8(%r11), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_92
.LBB0_91:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_Bfree
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	$0, (%rax)
	movl	$163, %ebx
	jmp	.LBB0_166
.LBB0_92:
	movq	%r13, %r14
	movl	4(%r11), %eax
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	subl	%r9d, %r13d
	jle	.LBB0_105
# %bb.93:
	movl	%r12d, %r10d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %r10d
	jle	.LBB0_106
# %bb.94:
	leal	-1(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movl	$1, %r15d
	jne	.LBB0_97
# %bb.95:
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	jl	.LBB0_98
# %bb.96:
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r10d, %r15d
	callq	__any_on
	movl	%r15d, %r10d
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	%eax, %r15d
.LBB0_97:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_98:
	movl	%ebx, %eax
	sarl	$5, %eax
	cltq
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	btl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_100
# %bb.99:
	orl	$2, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_100:
	movq	%r14, %rcx
	leaq	24(%r14), %r8
	movl	%r13d, %eax
	sarl	$5, %eax
	movslq	20(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rdi
	cmpl	%ecx, %eax
	jge	.LBB0_122
# %bb.101:
	leaq	(%r14,%rcx,4), %rsi
	addq	$24, %rsi
	cltq
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %r13d
	je	.LBB0_117
# %bb.102:
	movq	%r14, %rdx
	leaq	(%r14,%rax,4), %rdx
	addq	$24, %rdx
	movl	(%rdx), %ebx
	movl	%r13d, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jae	.LBB0_119
# %bb.103:                              # %.preheader
	movl	$32, %r9d
	subl	%r13d, %r9d
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB0_104:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %eax
	movl	%r9d, %ecx
	shll	%cl, %eax
	orl	%ebx, %eax
	movl	%eax, (%rdi)
	addq	$4, %rdi
	movl	(%rdx), %ebx
	movl	%r13d, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jb	.LBB0_104
	jmp	.LBB0_120
.LBB0_105:
	movl	%r12d, %r10d
	movq	%r14, %r13
	jmp	.LBB0_125
.LBB0_106:
	movl	12(%r11), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	je	.LBB0_113
# %bb.107:
	cmpl	$2, %ecx
	je	.LBB0_115
# %bb.108:
	cmpl	$1, %ecx
	jne	.LBB0_116
# %bb.109:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r12d
	jne	.LBB0_116
# %bb.110:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jl	.LBB0_114
# %bb.111:
	addl	$-1, %r12d
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	__any_on
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_116
# %bb.112:
	movl	4(%rcx), %eax
	jmp	.LBB0_114
.LBB0_113:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_116
.LBB0_114:
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	movl	$1, 20(%r14)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$1, (%rax)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%r14, (%rax)
	movl	$98, %ebx
	jmp	.LBB0_166
.LBB0_115:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_114
.LBB0_116:
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_Bfree
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	$0, (%rax)
	movl	$80, %ebx
	jmp	.LBB0_166
.LBB0_117:
	movl	$42, __A_VARIABLE(%rip)
	shlq	$2, %rax
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB0_118:                              # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax), %ecx
	movl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%rax), %rcx
	addq	$4, %rcx
	addq	$4, %rdi
	cmpq	%rsi, %rcx
	jb	.LBB0_118
	jmp	.LBB0_122
.LBB0_119:
	movq	%r8, %rdi
.LBB0_120:
	movl	%ebx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_122
# %bb.121:
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_122:
	subq	%r8, %rdi
	shrq	$2, %rdi
	movq	%r14, %r13
	movl	%edi, 20(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jne	.LBB0_124
# %bb.123:
	movl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_124:
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r11), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
.LBB0_125:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB0_165
# %bb.126:
	movl	12(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB0_132
# %bb.127:
	cmpl	$2, %eax
	je	.LBB0_133
# %bb.128:
	cmpl	$1, %eax
	jne	.LBB0_131
# %bb.129:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	je	.LBB0_131
# %bb.130:
	movq	-88(%rbp), %rax         # 8-byte Reload
	orl	(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB0_154
.LBB0_131:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_141
.LBB0_132:
	movl	-68(%rbp), %eax         # 4-byte Reload
	jmp	.LBB0_134
.LBB0_133:
	movl	$1, %eax
	subl	-68(%rbp), %eax         # 4-byte Folded Reload
.LBB0_134:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_141
.LBB0_135:
	movslq	20(%r13), %r12
	leaq	24(%r13), %rax
	leaq	24(,%r12,4), %rcx
	addq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_136:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edx
	jne	.LBB0_142
# %bb.137:                              #   in Loop: Header=BB0_136 Depth=1
	movl	$0, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_136
# %bb.138:
	movl	20(%r13), %eax
	cmpl	12(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_140
# %bb.139:
	movl	8(%r13), %esi
	addl	$1, %esi
	movq	%r13, %r14
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	_Balloc
	movq	%rax, %r15
	leaq	16(%rax), %rdi
	leaq	16(%r14), %rsi
	movslq	20(%r14), %rax
	leaq	8(,%rax,4), %rdx
	callq	memcpy
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	_Bfree
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%r15), %eax
	movq	%r15, %r13
.LBB0_140:
	leal	1(%rax), %ecx
	movl	%ecx, 20(%r13)
	cltq
	movl	$1, 24(%r13,%rax,4)
	jmp	.LBB0_143
.LBB0_141:
	orl	$16, %ebx
	jmp	.LBB0_164
.LBB0_142:
	addl	$1, %edx
	movl	%edx, (%rax)
.LBB0_143:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB0_147
# %bb.144:
	movl	(%r11), %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
	cmpl	%eax, %r10d
	jne	.LBB0_163
# %bb.145:
	movl	%r10d, %eax
	sarl	$5, %eax
	cltq
	movl	24(%r13,%rax,4), %eax
	btl	%r10d, %eax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_163
# %bb.146:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB0_163
.LBB0_147:
	movl	20(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %esi
	jg	.LBB0_151
# %bb.148:
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %r10d
	je	.LBB0_163
# %bb.149:
	movl	%r9d, %r14d
	movl	20(%r13,%r12,4), %edi
	movl	%r10d, %r15d
	callq	__hi0bits
	movl	$32, %ecx
	subl	%r15d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jge	.LBB0_167
# %bb.150:
	movl	20(%r13), %esi
	movq	-56(%rbp), %r11         # 8-byte Reload
	movl	%r14d, %r9d
.LBB0_151:
	leaq	24(%r13), %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rax
	testl	%esi, %esi
	jle	.LBB0_159
# %bb.152:
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	shrl	%edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jne	.LBB0_155
# %bb.153:
	movq	%r8, %rax
	movl	%edx, %esi
	jmp	.LBB0_157
.LBB0_154:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_135
.LBB0_155:
	movslq	%esi, %rax
	leaq	24(,%rax,4), %rdi
	addq	%r13, %rdi
	movq	%r8, %rcx
.LBB0_156:                              # =>This Inner Loop Header: Depth=1
	movl	4(%rcx), %esi
	movl	%esi, %eax
	shll	$31, %eax
	orl	%edx, %eax
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	shrl	%esi
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rcx), %rax
	addq	$8, %rcx
	movl	%esi, %edx
	cmpq	%rdi, %rcx
	movq	%rax, %rcx
	jb	.LBB0_156
.LBB0_157:
	movl	%esi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_159
# %bb.158:
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_159:
	subq	%r8, %rax
	shrq	$2, %rax
	movl	%eax, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_161
# %bb.160:
	movl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_161:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	8(%r11), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB0_91
# %bb.162:
	addl	$1, %r9d
	jmp	.LBB0_163
.LBB0_167:
	movl	%r14d, %r9d
.LBB0_163:
	orl	$32, %ebx
.LBB0_164:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_165:
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%r13, (%rax)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%r9d, (%rax)
.LBB0_166:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
