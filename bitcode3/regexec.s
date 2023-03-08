	.text
	.file	"regexec.c"
	.globl	regexec                 # -- Begin function regexec
	.p2align	4, 0x90
	.type	regexec,@function
regexec:                                # @regexec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	movl	$2, %ebx
	cmpl	$62053, (%rdi)          # imm = 0xF265
	jne	.LBB0_275
# %bb.1:
	movq	24(%rdi), %r9
	cmpl	$53829, (%r9)           # imm = 0xD245
	jne	.LBB0_275
# %bb.2:
	testb	$4, 72(%r9)
	jne	.LBB0_275
# %bb.3:
	movq	%rsi, %r14
	movl	%r8d, %edi
	andl	$7, %edi
	cmpq	$64, 48(%r9)
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%edi, -72(%rbp)         # 4-byte Spill
	ja	.LBB0_6
# %bb.4:
	movq	56(%r9), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	testb	$4, 40(%r9)
	movq	64(%r9), %r15
	cmoveq	%rdx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testb	$4, %r8b
	jne	.LBB0_8
# %bb.5:
	movq	%r14, %rdi
	callq	strlen
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r14, %r13
	jmp	.LBB0_9
.LBB0_6:
	movq	56(%r9), %rsi
	xorl	%eax, %eax
	testb	$4, 40(%r9)
	movq	64(%r9), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	cmoveq	%rdx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testb	$4, %r8b
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	jne	.LBB0_25
# %bb.7:
	movq	%r14, %rdi
	callq	strlen
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%rax, %r12
	movq	%r14, %r13
	jmp	.LBB0_26
.LBB0_8:
	movq	(%rcx), %r13
	addq	%r14, %r13
	movq	8(%rcx), %rax
.LBB0_9:
	addq	%r14, %rax
	movl	$16, %ebx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmpq	%r13, %rax
	jb	.LBB0_275
# %bb.10:
	movq	96(%r9), %rsi
	testq	%rsi, %rsi
	je	.LBB0_55
# %bb.11:
	movq	112(%r9), %r8
	testq	%r8, %r8
	je	.LBB0_41
# %bb.12:
	movq	120(%r9), %rdx
	testq	%rdx, %rdx
	je	.LBB0_41
# %bb.13:
	movslq	128(%r9), %rax
	leaq	(%rsi,%rax), %r11
	addq	$-1, %r11
	leaq	(%rax,%r13), %r12
	addq	$-1, %r12
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	jae	.LBB0_65
# %bb.14:
	leaq	(%rsi,%rax), %r10
	movl	$2, %ebx
	subq	%rax, %rbx
	movq	-80(%rbp), %rax         # 8-byte Reload
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	cmpq	%rax, %r12
	jae	.LBB0_64
# %bb.16:                               # %.preheader15
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12), %eax
	movslq	(%r8,%rax,4), %rax
	testq	%rax, %rax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	addq	%rax, %r12
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	jb	.LBB0_17
	jmp	.LBB0_65
.LBB0_19:                               # %.preheader14
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%r11, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %r9
	xorl	%edi, %edi
	movq	%r12, %rcx
.LBB0_20:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	movzbl	-1(%r12,%rdi), %eax
	movzbl	-2(%r10,%rdi), %edx
	cmpq	%rdi, %rbx
	leaq	-1(%rdi), %rdi
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	cmpb	%dl, %al
	je	.LBB0_20
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=1
	movzbl	%al, %eax
	leaq	(%r10,%rdi), %r11
	addq	$-1, %r11
	cmpb	%dl, %al
	je	.LBB0_63
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=1
	subq	%rsi, %r11
	movl	(%r9,%r11,4), %r11d
	movq	%r9, %rdx
	movl	(%r8,%rax,4), %eax
	cmpl	%r11d, %eax
	cmovll	%r11d, %eax
	cltq
	addq	%rax, %rcx
	addq	%rax, %r12
	addq	%rdi, %r12
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r12
	movq	-104(%rbp), %r11        # 8-byte Reload
	jb	.LBB0_15
# %bb.24:
	movq	%rcx, %r12
	jmp	.LBB0_64
.LBB0_25:
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %r13
	addq	%r14, %r13
	movq	8(%rax), %r12
.LBB0_26:
	addq	%r14, %r12
	movl	$16, %ebx
	cmpq	%r13, %r12
	jb	.LBB0_275
# %bb.27:
	movq	96(%r9), %rsi
	testq	%rsi, %rsi
	movq	%r12, -88(%rbp)         # 8-byte Spill
	je	.LBB0_56
# %bb.28:
	movq	112(%r9), %r8
	testq	%r8, %r8
	je	.LBB0_48
# %bb.29:
	movq	120(%r9), %rdx
	testq	%rdx, %rdx
	je	.LBB0_48
# %bb.30:
	movslq	128(%r9), %rax
	leaq	(%rsi,%rax), %r10
	addq	$-1, %r10
	leaq	(%rax,%r13), %r15
	addq	$-1, %r15
	cmpq	%r12, %r15
	jae	.LBB0_168
# %bb.31:
	leaq	(%rsi,%rax), %r11
	movl	$2, %edi
	subq	%rax, %rdi
	movq	%r12, %rax
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_36 Depth 2
	cmpq	%rax, %r15
	movq	%rax, %r12
	jae	.LBB0_168
.LBB0_33:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15), %eax
	movslq	(%r8,%rax,4), %rax
	testq	%rax, %rax
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=2
	addq	%rax, %r15
	cmpq	%r12, %r15
	jb	.LBB0_33
	jmp	.LBB0_168
.LBB0_35:                               # %.preheader34
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	%r10, %r12
	movq	%rdx, %r9
	xorl	%ecx, %ecx
	movq	%r15, %rbx
.LBB0_36:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rbx
	movzbl	-1(%r15,%rcx), %eax
	movzbl	-2(%r11,%rcx), %edx
	cmpq	%rcx, %rdi
	leaq	-1(%rcx), %rcx
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	cmpb	%dl, %al
	je	.LBB0_36
.LBB0_38:                               #   in Loop: Header=BB0_32 Depth=1
	movzbl	%al, %eax
	leaq	(%r11,%rcx), %r10
	addq	$-1, %r10
	cmpb	%dl, %al
	je	.LBB0_167
# %bb.39:                               #   in Loop: Header=BB0_32 Depth=1
	subq	%rsi, %r10
	movl	(%r9,%r10,4), %r10d
	movq	%r9, %rdx
	movl	(%r8,%rax,4), %eax
	cmpl	%r10d, %eax
	cmovll	%r10d, %eax
	cltq
	addq	%rax, %rbx
	addq	%rax, %r15
	addq	%rcx, %r15
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r15
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
	jb	.LBB0_32
# %bb.40:
	movq	%rbx, %r15
	movq	%rax, %r12
	jmp	.LBB0_168
.LBB0_41:
	movq	%r13, %r12
	cmpq	-80(%rbp), %r13         # 8-byte Folded Reload
	jae	.LBB0_58
# %bb.42:
	movq	%r13, %r12
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpb	(%rsi), %al
	jne	.LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	subq	%r12, %rax
	movslq	128(%r9), %rdx
	cmpq	%rdx, %rax
	jl	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=1
	movq	%r12, %rdi
	callq	memcmp
	movq	-48(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_58
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=1
	leaq	1(%r12), %rax
	cmpq	-80(%rbp), %rax         # 8-byte Folded Reload
	jae	.LBB0_57
# %bb.47:                               #   in Loop: Header=BB0_43 Depth=1
	movq	96(%r9), %rsi
	movq	%rax, %r12
	jmp	.LBB0_43
.LBB0_48:
	movq	%r13, %r15
	cmpq	%r12, %r13
	jae	.LBB0_61
# %bb.49:
	movq	%r13, %r15
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	cmpb	(%rsi), %al
	jne	.LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	movq	%r12, %rax
	subq	%r15, %rax
	movslq	128(%r9), %rdx
	cmpq	%rdx, %rax
	jl	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=1
	movq	%r15, %rdi
	callq	memcmp
	movq	-48(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_61
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=1
	leaq	1(%r15), %rax
	cmpq	%r12, %rax
	jae	.LBB0_60
# %bb.54:                               #   in Loop: Header=BB0_50 Depth=1
	movq	96(%r9), %rsi
	movq	%rax, %r15
	jmp	.LBB0_50
.LBB0_55:
	xorl	%r12d, %r12d
	jmp	.LBB0_66
.LBB0_56:
	xorl	%r15d, %r15d
	jmp	.LBB0_169
.LBB0_57:                               # %.loopexit12split
	addq	$1, %r12
.LBB0_58:
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	jne	.LBB0_66
	jmp	.LBB0_59
.LBB0_60:                               # %.loopexit32split
	addq	$1, %r15
.LBB0_61:
	cmpq	%r12, %r15
	jne	.LBB0_169
.LBB0_59:
	movl	$1, %ebx
	jmp	.LBB0_275
.LBB0_63:                               # %..loopexit17_crit_edge
	addq	%rdi, %r12
.LBB0_64:
	movq	-48(%rbp), %r9          # 8-byte Reload
.LBB0_65:
	movl	$1, %ebx
	cmpq	%rsi, %r11
	jne	.LBB0_275
.LBB0_66:
	addq	$1, -88(%rbp)           # 8-byte Folded Spill
	movq	%r9, -232(%rbp)
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -176(%rbp)
	movq	%r14, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -192(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -160(%rbp)
	movdqu	%xmm0, -144(%rbp)
	movslq	104(%r9), %rax
	movq	%r13, %rbx
	testq	%rax, %rax
	js	.LBB0_68
# %bb.67:
	subq	%rax, %r12
	cmpq	%r13, %r12
	cmovbq	%r13, %r12
	movq	%r12, %rbx
.LBB0_68:
	movl	$1, %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_70
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rsi, %rbx
	addq	$1, %rbx
	movq	-200(%rbp), %r13
.LBB0_70:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_131 Depth 2
	cmpq	%rbx, %r13
	je	.LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=1
	movsbl	-1(%rbx), %eax
	jmp	.LBB0_73
.LBB0_72:                               #   in Loop: Header=BB0_70 Depth=1
	movl	$128, %eax
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-232(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movl	$132, %r8d
	movq	%rcx, %r9
	callq	sstep
	movq	%rax, %r13
	movq	%rax, %r12
	xorl	%r14d, %r14d
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	cmpq	-192(%rbp), %rbx
	je	.LBB0_75
	.p2align	4, 0x90
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=1
	movsbl	(%rbx), %ecx
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_70 Depth=1
	movl	$128, %ecx
.LBB0_76:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%r13, %r12
	movq	%rbx, -256(%rbp)        # 8-byte Spill
	cmoveq	%rbx, %r14
	movq	%r14, -112(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	cmpl	$128, %r15d
	je	.LBB0_79
# %bb.77:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$10, %r15d
	jne	.LBB0_81
# %bb.78:                               #   in Loop: Header=BB0_70 Depth=1
	testb	$8, 40(%rsi)
	movl	$0, %ebx
	jne	.LBB0_80
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_70 Depth=1
	testb	$1, -224(%rbp)
	movl	$0, %ebx
	jne	.LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_70 Depth=1
	movl	76(%rsi), %ebx
	movl	$129, %r14d
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_70 Depth=1
	xorl	%ebx, %ebx
.LBB0_82:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$128, %ecx
	movq	%r15, -96(%rbp)         # 8-byte Spill
	je	.LBB0_85
# %bb.83:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$10, %ecx
	jne	.LBB0_87
# %bb.84:                               #   in Loop: Header=BB0_70 Depth=1
	testb	$8, 40(%rsi)
	jne	.LBB0_86
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_70 Depth=1
	testb	$2, -224(%rbp)
	jne	.LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_70 Depth=1
	xorl	%eax, %eax
	cmpl	$129, %r14d
	sete	%al
	orl	$130, %eax
	addl	80(%rsi), %ebx
	movl	%eax, %r14d
.LBB0_87:                               #   in Loop: Header=BB0_70 Depth=1
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB0_90
# %bb.88:                               # %.preheader
                                        #   in Loop: Header=BB0_70 Depth=1
	addl	$1, %ebx
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_89:                               #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	%rax, %r12
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB0_89
.LBB0_90:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$129, %r14d
	jne	.LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_70 Depth=1
	movl	$129, %ebx
	cmpl	$128, -104(%rbp)        # 4-byte Folded Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_97
	jmp	.LBB0_98
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-96(%rbp), %r13         # 8-byte Reload
	cmpl	$128, %r13d
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_70 Depth=1
	movl	%r14d, %ebx
	jmp	.LBB0_102
	.p2align	4, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_70 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ecx
	cmpl	$128, -104(%rbp)        # 4-byte Folded Reload
	je	.LBB0_112
# %bb.95:                               #   in Loop: Header=BB0_70 Depth=1
	cmpl	$95, %r13d
	je	.LBB0_113
# %bb.96:                               #   in Loop: Header=BB0_70 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB0_113
.LBB0_97:                               #   in Loop: Header=BB0_70 Depth=1
	callq	__locale_ctype_ptr
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movzbl	%dl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %r14d
	cmpl	$95, %edx
	cmovel	%eax, %r14d
	movl	%r14d, %ebx
.LBB0_98:                               #   in Loop: Header=BB0_70 Depth=1
	movq	-96(%rbp), %r13         # 8-byte Reload
	cmpl	$128, %r13d
	je	.LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_70 Depth=1
	movzbl	%r13b, %r14d
.LBB0_100:                              #   in Loop: Header=BB0_70 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %r13d
	je	.LBB0_104
# %bb.101:                              #   in Loop: Header=BB0_70 Depth=1
	movb	1(%rax,%r14), %al
	andb	$7, %al
	jne	.LBB0_104
.LBB0_102:                              #   in Loop: Header=BB0_70 Depth=1
	leal	-133(%rbx), %eax
	movl	%ebx, %r14d
	cmpl	$1, %eax
	jbe	.LBB0_105
# %bb.103:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_70 Depth=1
	movl	$134, %r14d
	cmpl	$130, %ebx
	jne	.LBB0_109
	.p2align	4, 0x90
.LBB0_105:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-232(%rbp), %rdi
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	%rax, %r12
.LBB0_106:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	-256(%rbp), %rbx        # 8-byte Reload
	cmpq	%r15, %rbx
	je	.LBB0_114
# %bb.107:                              #   in Loop: Header=BB0_70 Depth=1
	movq	%r12, %rax
	andq	-248(%rbp), %rax        # 8-byte Folded Reload
	jne	.LBB0_114
# %bb.108:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-232(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r12, %rcx
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	%r15d, %r8d
	movq	-240(%rbp), %r13        # 8-byte Reload
	movq	%r13, %r9
	callq	sstep
	movq	%rax, %r12
	addq	$1, %rbx
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	cmpq	-192(%rbp), %rbx
	jne	.LBB0_74
	jmp	.LBB0_75
.LBB0_109:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-104(%rbp), %r13        # 8-byte Reload
	cmpl	$128, %r13d
	je	.LBB0_102
# %bb.110:                              #   in Loop: Header=BB0_70 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %r13d
	je	.LBB0_102
# %bb.111:                              #   in Loop: Header=BB0_70 Depth=1
	movzbl	%r13b, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	je	.LBB0_105
	jmp	.LBB0_102
.LBB0_112:                              #   in Loop: Header=BB0_70 Depth=1
	movl	%r14d, %ebx
	movq	%rcx, %r14
	jmp	.LBB0_100
.LBB0_113:                              #   in Loop: Header=BB0_70 Depth=1
	movl	%r14d, %ebx
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%rcx, %r14
	jmp	.LBB0_100
.LBB0_114:                              #   in Loop: Header=BB0_70 Depth=1
	movq	%r14, -184(%rbp)
	testq	%r12, -248(%rbp)        # 8-byte Folded Reload
	je	.LBB0_59
# %bb.115:                              #   in Loop: Header=BB0_70 Depth=1
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	je	.LBB0_162
.LBB0_117:                              #   in Loop: Header=BB0_70 Depth=1
	leaq	-232(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB0_121
# %bb.118:                              # %.preheader7
                                        #   in Loop: Header=BB0_70 Depth=1
	leaq	-232(%rbp), %r14
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_119:                              #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	%r13, %rcx
	movq	%rbx, %r8
	callq	sslow
	testq	%rax, %rax
	je	.LBB0_119
# %bb.120:                              #   in Loop: Header=BB0_70 Depth=1
	movq	%rax, %r12
.LBB0_121:                              #   in Loop: Header=BB0_70 Depth=1
	cmpq	$1, -64(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_123
# %bb.122:                              #   in Loop: Header=BB0_70 Depth=1
	cmpl	$0, 144(%rax)
	je	.LBB0_146
.LBB0_123:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-232(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	testq	%rax, %rax
	je	.LBB0_166
.LBB0_125:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-232(%rbp), %rcx
	movq	136(%rcx), %rbx
	testq	%rbx, %rbx
	leaq	-232(%rbp), %r14
	pcmpeqd	%xmm0, %xmm0
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB0_132
# %bb.126:                              #   in Loop: Header=BB0_70 Depth=1
	leaq	-1(%rbx), %rsi
	movl	%ebx, %ecx
	andl	$7, %ecx
	movl	$1, %edx
	cmpq	$7, %rsi
	jb	.LBB0_129
# %bb.127:                              #   in Loop: Header=BB0_70 Depth=1
	leaq	128(%rax), %rsi
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_128:                              #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	leaq	(%rdi,%rdx), %rbx
	addq	$8, %rbx
	addq	$8, %rdx
	cmpq	$1, %rbx
	jne	.LBB0_128
.LBB0_129:                              #   in Loop: Header=BB0_70 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_132
# %bb.130:                              # %.preheader4
                                        #   in Loop: Header=BB0_70 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_131:                              #   Parent Loop BB0_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_131
.LBB0_132:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	jne	.LBB0_135
# %bb.133:                              #   in Loop: Header=BB0_70 Depth=1
	testb	$4, -223(%rbp)
	jne	.LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r15, %r8
	callq	sdissect
	jmp	.LBB0_142
.LBB0_135:                              #   in Loop: Header=BB0_70 Depth=1
	movq	152(%rax), %rcx
	movq	-176(%rbp), %rax
	testq	%rcx, %rcx
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jle	.LBB0_138
# %bb.136:                              #   in Loop: Header=BB0_70 Depth=1
	testq	%rax, %rax
	jne	.LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_70 Depth=1
	leaq	8(,%rcx,8), %rdi
	callq	malloc
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	152(%rcx), %rcx
.LBB0_138:                              #   in Loop: Header=BB0_70 Depth=1
	testq	%rax, %rax
	jne	.LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_70 Depth=1
	testq	%rcx, %rcx
	jg	.LBB0_165
.LBB0_140:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-184(%rbp), %rsi
	.p2align	4, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_70 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	xorl	%r9d, %r9d
	callq	sbackref
.LBB0_142:                              #   in Loop: Header=BB0_70 Depth=1
	testq	%rax, %rax
	jne	.LBB0_146
# %bb.143:                              #   in Loop: Header=BB0_70 Depth=1
	movq	-184(%rbp), %rsi
	cmpq	%rsi, %r12
	jbe	.LBB0_69
# %bb.144:                              #   in Loop: Header=BB0_70 Depth=1
	addq	$-1, %r12
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	callq	sslow
	movq	-184(%rbp), %rsi
	testq	%rax, %rax
	je	.LBB0_69
# %bb.145:                              #   in Loop: Header=BB0_70 Depth=1
	movq	%rax, %r12
	jmp	.LBB0_141
.LBB0_146:
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_162
# %bb.147:
	movq	-208(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r12
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r12, 8(%rax)
	cmpq	$1, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_162
# %bb.148:
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	136(%rcx), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leal	-1(%rdi), %edx
	andl	$1, %edx
	movl	$1, %esi
	cmpq	$2, %rdi
	movq	-120(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_152
.LBB0_149:
	testq	%rdx, %rdx
	je	.LBB0_162
# %bb.150:
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	addq	%rdx, %rdi
	cmpq	%rsi, %rcx
	jae	.LBB0_160
# %bb.151:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_161
.LBB0_152:
	subq	%rdx, -64(%rbp)         # 8-byte Folded Spill
	movl	$1, %esi
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_155
.LBB0_153:                              #   in Loop: Header=BB0_155 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_154:                              #   in Loop: Header=BB0_155 Depth=1
	addq	$2, %rsi
	addq	$32, %rdi
	cmpq	%rsi, -64(%rbp)         # 8-byte Folded Reload
	je	.LBB0_149
.LBB0_155:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_155 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	cmpq	%rsi, %rcx
	jbe	.LBB0_153
	jmp	.LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_155 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
	cmpq	%rsi, %rcx
	jbe	.LBB0_153
.LBB0_158:                              #   in Loop: Header=BB0_155 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_154
.LBB0_160:
	movdqu	(%rax,%rdx), %xmm0
.LBB0_161:
	movdqu	%xmm0, (%rdi)
.LBB0_162:
	movq	-216(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_164
# %bb.163:
	callq	free
.LBB0_164:
	movq	-176(%rbp), %rdi
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	jne	.LBB0_274
	jmp	.LBB0_275
.LBB0_165:
	movq	-216(%rbp), %rdi
	jmp	.LBB0_278
.LBB0_166:
	movl	$12, %ebx
	jmp	.LBB0_275
.LBB0_167:                              # %..loopexit37_crit_edge
	addq	%rcx, %r15
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB0_168:
	movl	$1, %ebx
	cmpq	%rsi, %r10
	jne	.LBB0_275
.LBB0_169:
	movq	%r9, -232(%rbp)
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -176(%rbp)
	movq	%r14, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	%r12, -192(%rbp)
	movq	48(%r9), %rdi
	shlq	$2, %rdi
	movq	%r9, %r12
	callq	malloc
	movq	%rax, -160(%rbp)
	movl	$12, %ebx
	testq	%rax, %rax
	je	.LBB0_275
# %bb.170:
	movq	%rax, %r14
	movq	%rax, -152(%rbp)
	movq	48(%r12), %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, -144(%rbp)
	leaq	(%r14,%rdx,2), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)
	movq	$4, -168(%rbp)
	leaq	(%rdx,%rdx,2), %rdi
	addq	%r14, %rdi
	movq	%rdi, -128(%rbp)
	xorl	%esi, %esi
	callq	memset
	movslq	104(%r12), %rax
	movq	%r13, %rbx
	testq	%rax, %rax
	js	.LBB0_172
# %bb.171:
	subq	%rax, %r15
	cmpq	%r13, %r15
	cmovbq	%r13, %r15
	movq	%r15, %rbx
.LBB0_172:
	movq	-112(%rbp), %r15        # 8-byte Reload
	addq	$1, %r15
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_174 Depth=1
	addq	$1, %rbx
	movq	-200(%rbp), %r13
	movq	-152(%rbp), %r14
	movq	-144(%rbp), %r12
	movq	-136(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB0_174:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_195 Depth 2
                                        #     Child Loop BB0_225 Depth 2
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_237 Depth 2
	cmpq	%rbx, %r13
	je	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_174 Depth=1
	movsbl	-1(%rbx), %r13d
	jmp	.LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=1
	movl	$128, %r13d
.LBB0_177:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, (%r14,%r15)
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	movl	$132, %r8d
	movq	%r14, %r9
	callq	lstep
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcpy
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	cmpq	-192(%rbp), %rbx
	je	.LBB0_179
	.p2align	4, 0x90
.LBB0_178:                              #   in Loop: Header=BB0_174 Depth=1
	movsbl	(%rbx), %eax
	jmp	.LBB0_180
	.p2align	4, 0x90
.LBB0_179:                              #   in Loop: Header=BB0_174 Depth=1
	movl	$128, %eax
.LBB0_180:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmoveq	%rbx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	cmpl	$128, %r13d
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	je	.LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$10, %r13d
	jne	.LBB0_186
# %bb.182:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$0, %ebx
	jne	.LBB0_185
	jmp	.LBB0_187
	.p2align	4, 0x90
.LBB0_183:                              #   in Loop: Header=BB0_174 Depth=1
	testb	$1, -224(%rbp)
	movl	$0, %ebx
	jne	.LBB0_187
# %bb.184:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
.LBB0_185:                              #   in Loop: Header=BB0_174 Depth=1
	movl	76(%rax), %ebx
	movl	$129, %r12d
	jmp	.LBB0_187
	.p2align	4, 0x90
.LBB0_186:                              #   in Loop: Header=BB0_174 Depth=1
	xorl	%ebx, %ebx
.LBB0_187:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$128, %eax
	movq	%r13, -256(%rbp)        # 8-byte Spill
	je	.LBB0_190
# %bb.188:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$10, %eax
	jne	.LBB0_193
# %bb.189:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	jne	.LBB0_192
	jmp	.LBB0_193
	.p2align	4, 0x90
.LBB0_190:                              #   in Loop: Header=BB0_174 Depth=1
	testb	$2, -224(%rbp)
	jne	.LBB0_193
# %bb.191:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
.LBB0_192:                              #   in Loop: Header=BB0_174 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r12d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %ebx
	movl	%ecx, %r12d
.LBB0_193:                              #   in Loop: Header=BB0_174 Depth=1
	testl	%ebx, %ebx
	movq	-56(%rbp), %r13         # 8-byte Reload
	jle	.LBB0_196
# %bb.194:                              # %.preheader21
                                        #   in Loop: Header=BB0_174 Depth=1
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB0_195:                              #   Parent Loop BB0_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	movq	%r14, %r9
	callq	lstep
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB0_195
.LBB0_196:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$129, %r12d
	jne	.LBB0_199
# %bb.197:                              #   in Loop: Header=BB0_174 Depth=1
	movl	$129, %r15d
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	movq	-256(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_204
# %bb.198:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$128, %ebx
	je	.LBB0_205
	jmp	.LBB0_206
	.p2align	4, 0x90
.LBB0_199:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-256(%rbp), %rbx        # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB0_201
# %bb.200:                              #   in Loop: Header=BB0_174 Depth=1
	movl	%r12d, %r15d
	jmp	.LBB0_205
	.p2align	4, 0x90
.LBB0_201:                              #   in Loop: Header=BB0_174 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	je	.LBB0_207
# %bb.202:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$95, %ebx
	je	.LBB0_207
# %bb.203:                              #   in Loop: Header=BB0_174 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB0_207
.LBB0_204:                              #   in Loop: Header=BB0_174 Depth=1
	callq	__locale_ctype_ptr
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %r12d
	cmpl	$95, %edx
	cmovel	%eax, %r12d
	movl	%r12d, %r15d
	cmpl	$128, %ebx
	jne	.LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_174 Depth=1
	leaq	-232(%rbp), %r13
.LBB0_215:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_216
	.p2align	4, 0x90
.LBB0_206:                              #   in Loop: Header=BB0_174 Depth=1
	movzbl	%bl, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movl	%r12d, %r15d
.LBB0_208:                              #   in Loop: Header=BB0_174 Depth=1
	leaq	-232(%rbp), %r13
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB0_210
# %bb.209:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB0_210
.LBB0_216:                              #   in Loop: Header=BB0_174 Depth=1
	leal	-133(%r15), %eax
	movl	%r15d, %ebx
	cmpl	$1, %eax
	ja	.LBB0_218
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_210:                              #   in Loop: Header=BB0_174 Depth=1
	movl	$134, %ebx
	cmpl	$130, %r15d
	jne	.LBB0_211
	.p2align	4, 0x90
.LBB0_217:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movl	%ebx, %r8d
	movq	%r14, %r9
	callq	lstep
.LBB0_218:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	cmpq	%rbx, -104(%rbp)        # 8-byte Folded Reload
	je	.LBB0_221
# %bb.219:                              #   in Loop: Header=BB0_174 Depth=1
	cmpb	$0, (%r14,%r12)
	jne	.LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-248(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %r13
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	callq	memcpy
	movq	-232(%rbp), %rdi
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	%r13d, %r8d
	movq	%r14, %r9
	callq	lstep
	movq	-104(%rbp), %rbx        # 8-byte Reload
	addq	$1, %rbx
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	cmpq	-192(%rbp), %rbx
	jne	.LBB0_178
	jmp	.LBB0_179
.LBB0_211:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	je	.LBB0_215
# %bb.213:                              #   in Loop: Header=BB0_174 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %r12d
	je	.LBB0_215
# %bb.214:                              #   in Loop: Header=BB0_174 Depth=1
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-56(%rbp), %r12         # 8-byte Reload
	je	.LBB0_217
	jmp	.LBB0_216
.LBB0_221:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -184(%rbp)
	cmpb	$0, (%r14,%r12)
	movq	-112(%rbp), %r15        # 8-byte Reload
	je	.LBB0_266
# %bb.222:                              #   in Loop: Header=BB0_174 Depth=1
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	je	.LBB0_269
.LBB0_224:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB0_227
	.p2align	4, 0x90
.LBB0_225:                              #   Parent Loop BB0_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	testq	%rax, %rax
	je	.LBB0_225
# %bb.226:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%rax, %r14
.LBB0_227:                              #   in Loop: Header=BB0_174 Depth=1
	cmpq	$1, -64(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_174 Depth=1
	cmpl	$0, 144(%rax)
	je	.LBB0_252
.LBB0_229:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	testq	%rax, %rax
	je	.LBB0_277
.LBB0_231:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-232(%rbp), %rcx
	movq	136(%rcx), %rbx
	testq	%rbx, %rbx
	pcmpeqd	%xmm0, %xmm0
	je	.LBB0_238
# %bb.232:                              #   in Loop: Header=BB0_174 Depth=1
	leaq	-1(%rbx), %rsi
	movl	%ebx, %ecx
	andl	$7, %ecx
	movl	$1, %edx
	cmpq	$7, %rsi
	jb	.LBB0_235
# %bb.233:                              #   in Loop: Header=BB0_174 Depth=1
	leaq	128(%rax), %rsi
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_234:                              #   Parent Loop BB0_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	leaq	(%rdi,%rdx), %rbx
	addq	$8, %rbx
	addq	$8, %rdx
	cmpq	$1, %rbx
	jne	.LBB0_234
.LBB0_235:                              #   in Loop: Header=BB0_174 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_238
# %bb.236:                              # %.preheader25
                                        #   in Loop: Header=BB0_174 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_237:                              #   Parent Loop BB0_174 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_237
.LBB0_238:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	jne	.LBB0_241
# %bb.239:                              #   in Loop: Header=BB0_174 Depth=1
	testb	$4, -223(%rbp)
	jne	.LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	ldissect
	jmp	.LBB0_248
.LBB0_241:                              #   in Loop: Header=BB0_174 Depth=1
	movq	152(%rax), %rcx
	movq	-176(%rbp), %rax
	testq	%rcx, %rcx
	jle	.LBB0_244
# %bb.242:                              #   in Loop: Header=BB0_174 Depth=1
	testq	%rax, %rax
	jne	.LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_174 Depth=1
	leaq	8(,%rcx,8), %rdi
	callq	malloc
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	152(%rcx), %rcx
.LBB0_244:                              #   in Loop: Header=BB0_174 Depth=1
	testq	%rax, %rax
	jne	.LBB0_246
# %bb.245:                              #   in Loop: Header=BB0_174 Depth=1
	testq	%rcx, %rcx
	jg	.LBB0_276
.LBB0_246:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_247:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	callq	lbackref
.LBB0_248:                              #   in Loop: Header=BB0_174 Depth=1
	testq	%rax, %rax
	jne	.LBB0_252
# %bb.249:                              #   in Loop: Header=BB0_174 Depth=1
	movq	-184(%rbp), %rbx
	cmpq	%rbx, %r14
	jbe	.LBB0_173
# %bb.250:                              #   in Loop: Header=BB0_174 Depth=1
	addq	$-1, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	movq	-184(%rbp), %rbx
	testq	%rax, %rax
	je	.LBB0_173
# %bb.251:                              #   in Loop: Header=BB0_174 Depth=1
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	jmp	.LBB0_247
.LBB0_252:
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_269
# %bb.253:
	movq	-208(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r14
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r14, 8(%rax)
	cmpq	$1, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_269
# %bb.254:
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	136(%rcx), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leal	-1(%rdi), %edx
	andl	$1, %edx
	movl	$1, %esi
	cmpq	$2, %rdi
	movq	-120(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_258
.LBB0_255:
	testq	%rdx, %rdx
	je	.LBB0_269
# %bb.256:
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	addq	%rdx, %rdi
	cmpq	%rsi, %rcx
	jae	.LBB0_267
# %bb.257:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_268
.LBB0_258:
	subq	%rdx, -64(%rbp)         # 8-byte Folded Spill
	movl	$1, %esi
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_261
.LBB0_259:                              #   in Loop: Header=BB0_261 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_260:                              #   in Loop: Header=BB0_261 Depth=1
	addq	$2, %rsi
	addq	$32, %rdi
	cmpq	%rsi, -64(%rbp)         # 8-byte Folded Reload
	je	.LBB0_255
.LBB0_261:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_261 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	jmp	.LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_261 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
.LBB0_264:                              #   in Loop: Header=BB0_261 Depth=1
	cmpq	%rsi, %rcx
	jbe	.LBB0_259
# %bb.265:                              #   in Loop: Header=BB0_261 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_260
.LBB0_266:
	movq	-160(%rbp), %rdi
	callq	free
	movl	$1, %ebx
	jmp	.LBB0_275
.LBB0_267:
	movdqu	(%rax,%rdx), %xmm0
.LBB0_268:
	movdqu	%xmm0, (%rdi)
.LBB0_269:
	movq	-216(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_271
# %bb.270:
	callq	free
.LBB0_271:
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_273
# %bb.272:
	callq	free
.LBB0_273:
	movq	-160(%rbp), %rdi
.LBB0_274:
	callq	free
	xorl	%ebx, %ebx
.LBB0_275:
	movl	%ebx, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_276:
	movq	-216(%rbp), %rdi
	callq	free
.LBB0_277:
	movq	-160(%rbp), %rdi
.LBB0_278:
	callq	free
	movl	$12, %ebx
	jmp	.LBB0_275
.Lfunc_end0:
	.size	regexec, .Lfunc_end0-regexec
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sslow
	.type	sslow,@function
sslow:                                  # @sslow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r8, %r14
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %r15
	movq	96(%rdi), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	je	.LBB1_1
# %bb.2:
	movsbl	-1(%r15), %eax
	jmp	.LBB1_3
.LBB1_1:
	movl	$128, %eax
.LBB1_3:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %r12d
	movl	$1, %r9d
	shlq	%cl, %r9
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%r9, %rcx
	movl	$132, %r8d
	callq	sstep
	movl	%r14d, %ecx
	shlq	%cl, %r12
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %r14
	movq	-56(%rbp), %rbx         # 8-byte Reload
	cmpq	40(%r14), %r15
	je	.LBB1_5
	.p2align	4, 0x90
.LBB1_6:
	movsbl	(%r15), %ecx
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_5:
	movl	$128, %ecx
.LBB1_7:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	xorl	%r12d, %r12d
	cmpl	$128, %ebx
	je	.LBB1_11
# %bb.8:
	cmpl	$10, %ebx
	jne	.LBB1_9
# %bb.10:
	testb	$8, 40(%rdx)
	movl	$0, %r14d
	jne	.LBB1_12
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_11:
	testb	$1, 8(%r14)
	movl	$0, %r14d
	jne	.LBB1_13
.LBB1_12:
	movl	76(%rdx), %r14d
	movl	$129, %r12d
.LBB1_13:
	cmpl	$128, %ecx
	je	.LBB1_16
.LBB1_14:
	cmpl	$10, %ecx
	jne	.LBB1_18
# %bb.15:
	testb	$8, 40(%rdx)
	jne	.LBB1_17
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_9:
	xorl	%r14d, %r14d
	cmpl	$128, %ecx
	jne	.LBB1_14
.LBB1_16:
	movq	-72(%rbp), %rax         # 8-byte Reload
	testb	$2, 8(%rax)
	jne	.LBB1_18
.LBB1_17:
	xorl	%eax, %eax
	cmpl	$129, %r12d
	sete	%al
	orl	$130, %eax
	addl	80(%rdx), %r14d
	movl	%eax, %r12d
.LBB1_18:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%r15, -128(%rbp)        # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB1_21
# %bb.19:                               # %.preheader
	addl	$1, %r14d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movl	%r12d, %r8d
	movq	%r13, %r9
	callq	sstep
	movq	%rax, %r13
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jg	.LBB1_20
.LBB1_21:
	cmpl	$129, %r12d
	jne	.LBB1_22
# %bb.28:
	movl	$129, %r14d
	cmpl	$128, -64(%rbp)         # 4-byte Folded Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_29
# %bb.30:
	cmpl	$128, %ebx
	jne	.LBB1_32
.LBB1_31:
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_22:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB1_24
# %bb.23:
	movl	%r12d, %r14d
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_24:
	callq	__locale_ctype_ptr
	movzbl	%bl, %r15d
	cmpl	$128, -64(%rbp)         # 4-byte Folded Reload
	je	.LBB1_25
# %bb.26:
	cmpl	$95, %ebx
	je	.LBB1_25
# %bb.27:
	movb	1(%rax,%r15), %al
	andb	$7, %al
	jne	.LBB1_25
.LBB1_29:
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %r12d
	cmpl	$95, %edx
	cmovel	%eax, %r12d
	movl	%r12d, %r14d
	cmpl	$128, %ebx
	je	.LBB1_31
.LBB1_32:
	movzbl	%bl, %r15d
	jmp	.LBB1_33
	.p2align	4, 0x90
.LBB1_25:
	movl	%r12d, %r14d
.LBB1_33:
	movq	-48(%rbp), %r12         # 8-byte Reload
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	je	.LBB1_35
# %bb.34:
	movb	1(%rax,%r15), %al
	andb	$7, %al
	je	.LBB1_39
.LBB1_35:
	movl	$134, %r15d
	cmpl	$130, %r14d
	je	.LBB1_41
# %bb.36:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	je	.LBB1_39
# %bb.37:
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	je	.LBB1_39
# %bb.38:
	movzbl	%bl, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	je	.LBB1_41
	.p2align	4, 0x90
.LBB1_39:
	leal	-133(%r14), %eax
	movl	%r14d, %r15d
	cmpl	$1, %eax
	ja	.LBB1_40
.LBB1_41:
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	%r15d, %r8d
	movq	%r13, %r9
	callq	sstep
	movq	%rax, %r13
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_40:
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB1_42:
	movq	-104(%rbp), %r9         # 8-byte Reload
	testq	%r13, -112(%rbp)        # 8-byte Folded Reload
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmovneq	%r15, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	cmpq	-120(%rbp), %r15        # 8-byte Folded Reload
	je	.LBB1_45
# %bb.43:
	cmpq	%r9, %r13
	je	.LBB1_45
# %bb.44:
	movq	(%r14), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	sstep
	movq	%rax, %r13
	addq	$1, %r15
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	cmpq	40(%r14), %r15
	jne	.LBB1_6
	jmp	.LBB1_5
.LBB1_45:
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sslow, .Lfunc_end1-sslow
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sdissect
	.type	sdissect,@function
sdissect:                               # @sdissect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r9
	cmpq	%r8, %rcx
	jge	.LBB2_34
# %bb.1:
	movq	%rdx, %r14
	movq	%rcx, %rsi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_2
.LBB2_32:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	%r8, %rsi
	jge	.LBB2_34
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_29 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_21 Depth 2
	movq	%rsi, %r12
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rsi,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB2_9
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movq	%rax, %rdx
	movq	%r12, %r13
	cmpq	%rbx, %rsi
	je	.LBB2_9
	.p2align	4, 0x90
.LBB2_7:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%rbx, %rsi
	jne	.LBB2_7
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r12, %r13
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r13), %rsi
	movl	%eax, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	addq	$-1, %rcx
	cmpq	$13, %rcx
	ja	.LBB2_33
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, -72(%rbp)          # 8-byte Spill
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %r9
	jmp	.LBB2_33
.LBB2_18:                               # %.preheader2
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rdi, %r15
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB2_19:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %r8
	callq	sslow
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%rbx), %rdx
	cmpq	%r14, %rax
	jne	.LBB2_19
# %bb.20:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	movq	%r9, %r15
	.p2align	4, 0x90
.LBB2_21:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %r14
	movq	%r9, %r15
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	sslow
	movq	%rax, %r9
	testq	%rax, %rax
	je	.LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	cmpq	%r15, %r9
	jne	.LBB2_21
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	testq	%r9, %r9
	cmovneq	%r15, %r14
	cmoveq	%r15, %r9
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	sdissect
	movq	%rbx, %r9
	movq	%r15, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_12:                               # %.preheader3
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r14
	movq	%r12, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB2_13:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r12), %rdx
	cmpq	%rbx, %rax
	jne	.LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%r12, %rdx
	movq	%rcx, %r14
	movq	%r9, %rbx
	movq	%r13, %r8
	callq	sslow
	testq	%rax, %rax
	je	.LBB2_15
# %bb.17:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rsi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sdissect
	movq	%r12, %r9
	movq	%r15, %rdi
	jmp	.LBB2_16
.LBB2_31:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, (%rdx,%rax)
	jmp	.LBB2_33
.LBB2_24:                               # %.preheader1
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB2_25:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	sslow
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r13), %rdx
	cmpq	%r14, %rax
	jne	.LBB2_25
# %bb.26:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r12,%rax), %r14
	addq	$-1, %r14
	addq	$1, %r12
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	sslow
	movq	%rbx, %r15
	cmpq	%r13, %rax
	je	.LBB2_27
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_29:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax,%r14,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r14), %rcx
	addq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	addq	%r14, %rbx
	cmpq	%rdx, %rax
	cmovneq	%rcx, %rbx
	movq	%r14, %r12
	addq	$2, %r12
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	sslow
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r14
	cmpq	%r13, %rax
	jne	.LBB2_29
	jmp	.LBB2_30
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_27:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rbx
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB2_30:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	sdissect
	movq	%r13, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rdi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_34:
	movq	%r9, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sdissect, .Lfunc_end2-sdissect
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_11
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_11
	.quad	.LBB2_11
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_18
	.quad	.LBB2_33
	.quad	.LBB2_12
	.quad	.LBB2_33
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_24
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sbackref
	.type	sbackref,@function
sbackref:                               # @sbackref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	cmpq	%r8, %rcx
	jge	.LBB3_64
# %bb.1:                                # %.preheader6
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_28 Depth 3
	movq	%r15, %r14
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_31 Depth 3
                                        #       Child Loop BB3_28 Depth 3
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r14,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	cmpq	$18, %rsi
	ja	.LBB3_22
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	jmpq	*.LJTI3_0(,%rsi,8)
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB3_69
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=2
	movsbl	(%r12), %eax
	movsbl	%dl, %ecx
	cmpl	%eax, %ecx
	je	.LBB3_7
	jmp	.LBB3_69
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=2
	cmpq	32(%rdi), %r12
	jne	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_3 Depth=2
	testb	$1, 8(%rdi)
	je	.LBB3_53
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB3_69
# %bb.11:                               #   in Loop: Header=BB3_3 Depth=2
	cmpb	$10, -1(%r12)
	je	.LBB3_16
	jmp	.LBB3_69
.LBB3_12:                               #   in Loop: Header=BB3_3 Depth=2
	movq	40(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$2, 8(%rdi)
	je	.LBB3_53
.LBB3_14:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	%rcx, %r12
	jae	.LBB3_69
# %bb.15:                               #   in Loop: Header=BB3_3 Depth=2
	cmpb	$10, (%r12)
	jne	.LBB3_69
.LBB3_16:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB3_53
	jmp	.LBB3_69
.LBB3_17:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	jne	.LBB3_7
	jmp	.LBB3_69
.LBB3_19:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB3_69
# %bb.20:                               #   in Loop: Header=BB3_3 Depth=2
	movq	24(%rax), %rax
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	shlq	$5, %rdx
	movq	(%rax,%rdx), %rcx
	movzbl	(%r12), %esi
	movb	8(%rax,%rdx), %al
	testb	%al, (%rcx,%rsi)
	je	.LBB3_69
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=2
	addq	$1, %r12
	jmp	.LBB3_53
.LBB3_22:                               #   in Loop: Header=BB3_3 Depth=2
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %r13
	movl	%r13d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-939524096, %rcx       # imm = 0xC8000000
	shrq	$27, %rcx
	movl	$.L.str, %eax
	cmpq	$8, %rcx
	ja	.LBB3_70
# %bb.23:                               #   in Loop: Header=BB3_3 Depth=2
	leaq	1(%r14), %r15
	jmpq	*.LJTI3_1(,%rcx,8)
.LBB3_24:                               #   in Loop: Header=BB3_3 Depth=2
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %rbx
	cmpq	$-1, %rbx
	je	.LBB3_69
# %bb.25:                               #   in Loop: Header=BB3_3 Depth=2
	movq	(%rax,%rcx), %rsi
	subq	%rsi, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	%rbx, %rax
	cmpq	%rax, %r12
	ja	.LBB3_69
# %bb.26:                               #   in Loop: Header=BB3_3 Depth=2
	addq	24(%rdi), %rsi
	movq	%rdi, %r15
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB3_69
# %bb.27:                               #   in Loop: Header=BB3_3 Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	orq	$1073741824, %r13       # imm = 0x40000000
	movq	%r15, %rdi
	.p2align	4, 0x90
.LBB3_28:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r13, (%rax,%r14,8)
	leaq	1(%r14), %r14
	jne	.LBB3_28
# %bb.29:                               #   in Loop: Header=BB3_3 Depth=2
	addq	%rbx, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB3_54
.LBB3_30:                               #   in Loop: Header=BB3_3 Depth=2
	movq	8(%rcx,%r14,8), %rax
	addq	$1, %r14
	movl	$2415919104, %esi       # imm = 0x90000000
	.p2align	4, 0x90
.LBB3_31:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r14
	movq	(%rcx,%r14,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpq	%rsi, %rdx
	jne	.LBB3_31
	jmp	.LBB3_53
.LBB3_32:                               #   in Loop: Header=BB3_3 Depth=2
	movq	32(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB3_34
# %bb.33:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$1, 8(%rdi)
	je	.LBB3_40
.LBB3_34:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB3_37
# %bb.35:                               #   in Loop: Header=BB3_3 Depth=2
	cmpb	$10, -1(%r12)
	jne	.LBB3_37
# %bb.36:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB3_40
.LBB3_37:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	%rcx, %r12
	jbe	.LBB3_69
# %bb.38:                               #   in Loop: Header=BB3_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	-1(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB3_69
# %bb.39:                               #   in Loop: Header=BB3_3 Depth=2
	movb	1(%rax,%rcx), %cl
	movl	$0, %eax
	andb	$7, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB3_70
.LBB3_40:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB3_69
# %bb.41:                               #   in Loop: Header=BB3_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB3_52
.LBB3_42:                               #   in Loop: Header=BB3_3 Depth=2
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB3_53
	jmp	.LBB3_69
.LBB3_43:                               #   in Loop: Header=BB3_3 Depth=2
	movq	40(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB3_45
# %bb.44:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$2, 8(%rdi)
	je	.LBB3_50
.LBB3_45:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	%rcx, %r12
	jae	.LBB3_69
# %bb.46:                               #   in Loop: Header=BB3_3 Depth=2
	cmpb	$10, (%r12)
	jne	.LBB3_48
# %bb.47:                               #   in Loop: Header=BB3_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB3_50
.LBB3_48:                               #   in Loop: Header=BB3_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB3_69
# %bb.49:                               #   in Loop: Header=BB3_3 Depth=2
	movb	1(%rax,%rcx), %cl
	movl	$0, %eax
	andb	$7, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB3_70
.LBB3_50:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	32(%rdi), %r12
	jbe	.LBB3_69
# %bb.51:                               #   in Loop: Header=BB3_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	-1(%r12), %ecx
	cmpq	$95, %rcx
	jne	.LBB3_42
.LBB3_52:                               #   in Loop: Header=BB3_3 Depth=2
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_53:                               #   in Loop: Header=BB3_3 Depth=2
	addq	$1, %r14
.LBB3_54:                               #   in Loop: Header=BB3_3 Depth=2
	cmpq	%rbx, %r14
	jl	.LBB3_3
	jmp	.LBB3_64
.LBB3_55:                               #   in Loop: Header=BB3_3 Depth=2
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	testq	%rax, %rax
	jne	.LBB3_70
# %bb.56:                               #   in Loop: Header=BB3_3 Depth=2
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r15, %r13
	movq	%r13, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB3_54
.LBB3_57:                               #   in Loop: Header=BB3_2 Depth=1
	movq	56(%rdi), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r12, 8(%rax,%rcx,8)
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_62
.LBB3_58:                               #   in Loop: Header=BB3_2 Depth=1
	movq	56(%rdi), %rax
	movq	-72(%rbp), %r14         # 8-byte Reload
	cmpq	(%rax,%r14,8), %r12
	je	.LBB3_61
# %bb.59:                               #   in Loop: Header=BB3_2 Depth=1
	movq	%r12, (%rax,%r14,8)
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	%r15, %rcx
	subq	%r13, %rcx
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	sbackref
	testq	%rax, %rax
	jne	.LBB3_70
# %bb.60:                               #   in Loop: Header=BB3_2 Depth=1
	addq	$-1, %r14
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB3_63
.LBB3_61:                               #   in Loop: Header=BB3_2 Depth=1
	addq	$-1, %r14
	movq	%r14, -72(%rbp)         # 8-byte Spill
.LBB3_62:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB3_63:                               #   in Loop: Header=BB3_2 Depth=1
	cmpq	%rbx, %r15
	jl	.LBB3_2
.LBB3_64:
	xorl	%eax, %eax
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	cmoveq	%r12, %rax
	jmp	.LBB3_70
.LBB3_65:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	shlq	$4, %r13
	movq	(%rax,%r13), %r14
	movq	%r12, %rcx
	subq	24(%rdi), %rcx
	movq	%rcx, (%rax,%r13)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB3_70
# %bb.66:
	movq	16(%rcx), %rax
	movq	%r14, (%rax,%r13)
	jmp	.LBB3_69
.LBB3_67:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	shlq	$4, %r13
	movq	8(%rax,%r13), %r14
	movq	%r12, %rcx
	subq	24(%rdi), %rcx
	movq	%rcx, 8(%rax,%r13)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB3_70
# %bb.68:
	movq	16(%rcx), %rax
	movq	%r14, 8(%rax,%r13)
.LBB3_69:
	xorl	%eax, %eax
.LBB3_70:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_71:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r14, %r13
	addq	$-1, %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB3_70
# %bb.72:                               # %.preheader
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r14
.LBB3_73:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r13,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	cmpq	%rdx, %rcx
	je	.LBB3_69
# %bb.74:                               #   in Loop: Header=BB3_73 Depth=1
	movq	8(%rax,%r13,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r13), %rdx
	addq	$1, %rdx
	movq	(%rax,%rdx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	%r13, %rbx
	leaq	2(%r13), %rcx
	cmpq	%r14, %rax
	cmovneq	%rdx, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, %r13
	testq	%rax, %rax
	je	.LBB3_73
	jmp	.LBB3_70
.Lfunc_end3:
	.size	sbackref, .Lfunc_end3-sbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_5
	.quad	.LBB3_8
	.quad	.LBB3_12
	.quad	.LBB3_17
	.quad	.LBB3_19
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_53
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_30
	.quad	.LBB3_22
	.quad	.LBB3_22
	.quad	.LBB3_32
	.quad	.LBB3_43
.LJTI3_1:
	.quad	.LBB3_24
	.quad	.LBB3_70
	.quad	.LBB3_57
	.quad	.LBB3_58
	.quad	.LBB3_55
	.quad	.LBB3_70
	.quad	.LBB3_65
	.quad	.LBB3_67
	.quad	.LBB3_71
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sstep
	.type	sstep,@function
sstep:                                  # @sstep
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %rax
                                        # kill: def $r8d killed $r8d def $r8
	cmpq	%rdx, %rsi
	jne	.LBB4_1
.LBB4_27:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	movq	%rcx, %r9
	movl	$2415919104, %r10d      # imm = 0x90000000
	movl	$1, %ebx
	movl	%esi, %ecx
	shlq	%cl, %rbx
	movq	8(%rdi), %r11
	movl	%r8d, %r15d
	orl	$2, %r15d
	movl	%r8d, %r12d
	orl	$1, %r12d
	movzbl	%r8b, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB4_2
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%rbx, %rcx
	andq	%r9, %rcx
.LBB4_25:                               #   in Loop: Header=BB4_2 Depth=1
	addq	%rcx, %rcx
	orq	%rcx, %rax
.LBB4_26:                               #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rsi
	addq	%rbx, %rbx
	cmpq	%rdx, %rsi
	je	.LBB4_27
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	movq	(%r11,%rsi,8), %rcx
	movl	%ecx, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	addq	$-134217728, %rbp       # imm = 0xF8000000
	shrq	$27, %rbp
	addq	$-1, %rbp
	cmpq	$18, %rbp
	ja	.LBB4_26
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	jmpq	*.LJTI4_0(,%rbp,8)
.LBB4_24:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rcx
	andq	%rbx, %rcx
	jmp	.LBB4_25
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	andq	%rbx, %rax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rbp, %rax
	jmp	.LBB4_26
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movsbl	%cl, %ecx
	cmpl	%r8d, %ecx
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$131, %r15d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$131, %r12d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_10:                               #   in Loop: Header=BB4_2 Depth=1
	cmpl	$127, %r8d
	jle	.LBB4_5
	jmp	.LBB4_26
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	cmpl	$127, %r8d
	jg	.LBB4_26
# %bb.12:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	movq	24(%rdi), %rbp
	shlq	$5, %rcx
	movq	(%rbp,%rcx), %r13
	movb	8(%rbp,%rcx), %cl
	movq	(%rsp), %rbp            # 8-byte Reload
	testb	%cl, (%r13,%rbp)
	jne	.LBB4_5
	jmp	.LBB4_26
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%rbx, %r13
	shrq	%cl, %r13
	movq	%rbp, %rax
	andq	%rbx, %rax
	shrq	%cl, %rax
	orq	%rbp, %rax
	testq	%rbp, %r13
	jne	.LBB4_26
# %bb.14:                               #   in Loop: Header=BB4_2 Depth=1
	andq	%rax, %r13
	je	.LBB4_26
# %bb.15:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	notq	%rcx
	addq	%rcx, %rsi
	movl	$1, %ebx
	movl	%esi, %ecx
	shlq	%cl, %rbx
	jmp	.LBB4_26
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %r13
	andq	%rbx, %r13
	je	.LBB4_26
# %bb.18:                               #   in Loop: Header=BB4_2 Depth=1
	movq	8(%r11,%rsi,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	movl	$1, %ecx
	cmpq	%r10, %rbp
	je	.LBB4_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB4_20:                               #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	addq	%r14, %rcx
	leaq	(%rcx,%rsi), %rbp
	movq	(%r11,%rbp,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r10, %rbp
	jne	.LBB4_20
.LBB4_21:                               #   in Loop: Header=BB4_2 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r13
	orq	%r13, %rax
	jmp	.LBB4_26
.LBB4_22:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rbp, %rax
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	leaq	(%rcx,%rsi), %rbp
	movq	(%r11,%rbp,8), %rbp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r10, %rbp
	je	.LBB4_26
# %bb.23:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rbp
	orq	%rbp, %rax
	jmp	.LBB4_26
.LBB4_8:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$133, %r8d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$134, %r8d
	je	.LBB4_5
	jmp	.LBB4_26
.Lfunc_end4:
	.size	sstep, .Lfunc_end4-sstep
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_6
	.quad	.LBB4_7
	.quad	.LBB4_10
	.quad	.LBB4_11
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_13
	.quad	.LBB4_16
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_16
	.quad	.LBB4_17
	.quad	.LBB4_22
	.quad	.LBB4_24
	.quad	.LBB4_8
	.quad	.LBB4_9
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lslow
	.type	lslow,@function
lslow:                                  # @lslow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %r13
	movq	80(%rdi), %r15
	movq	104(%rdi), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	96(%rdi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	je	.LBB5_2
# %bb.1:
	movsbl	-1(%r13), %eax
	jmp	.LBB5_3
.LBB5_2:
	movl	$128, %eax
.LBB5_3:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, (%r15,%r14)
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movl	$132, %r8d
	movq	%r15, %r9
	callq	lstep
	movq	%rax, %rcx
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	40(%rbx), %r13
	je	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:
	movsbl	(%r13), %edx
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:
	movl	$128, %edx
.LBB5_6:
	xorl	%r8d, %r8d
	cmpl	$128, %esi
	je	.LBB5_9
# %bb.7:
	cmpl	$10, %esi
	jne	.LBB5_12
# %bb.8:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	movl	$0, %edi
	jne	.LBB5_11
	jmp	.LBB5_13
	.p2align	4, 0x90
.LBB5_9:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 8(%rax)
	movl	$0, %edi
	jne	.LBB5_13
# %bb.10:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB5_11:
	movl	76(%rax), %edi
	movl	$129, %r8d
	jmp	.LBB5_13
	.p2align	4, 0x90
.LBB5_12:
	xorl	%edi, %edi
.LBB5_13:
	cmpl	$128, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	je	.LBB5_16
# %bb.14:
	cmpl	$10, %edx
	jne	.LBB5_19
# %bb.15:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	jne	.LBB5_18
	jmp	.LBB5_19
	.p2align	4, 0x90
.LBB5_16:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$2, 8(%rax)
	jne	.LBB5_19
# %bb.17:
	movq	(%rax), %rax
.LBB5_18:
	xorl	%ecx, %ecx
	cmpl	$129, %r8d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %edi
	movl	%ecx, %r8d
.LBB5_19:
	testl	%edi, %edi
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	jle	.LBB5_22
# %bb.20:                               # %.preheader
	addl	$1, %edi
	.p2align	4, 0x90
.LBB5_21:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	(%r15), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	%r8d, %r13d
	movq	%r14, %r9
	callq	lstep
	movl	-92(%rbp), %edi         # 4-byte Reload
	movl	%r13d, %r8d
	addl	$-1, %edi
	cmpl	$1, %edi
	jg	.LBB5_21
.LBB5_22:
	cmpl	$129, %r8d
	jne	.LBB5_26
# %bb.23:
	movl	$129, %r14d
	movq	-80(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB5_31
# %bb.24:
	cmpl	$128, %r15d
	jne	.LBB5_32
	jmp	.LBB5_44
	.p2align	4, 0x90
.LBB5_26:
	movq	-56(%rbp), %r15         # 8-byte Reload
	cmpl	$128, %r15d
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB5_28
# %bb.27:
	movl	%r8d, %r14d
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_28:
	movl	%r8d, %ebx
	movq	%r12, %r13
	callq	__locale_ctype_ptr
	movzbl	%r15b, %ecx
	movq	-80(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	je	.LBB5_40
# %bb.29:
	cmpl	$95, %r15d
	movl	%ebx, %r8d
	je	.LBB5_41
# %bb.30:
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB5_41
.LBB5_31:
	movl	%r8d, %ebx
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %ebx
	cmpl	$95, %r12d
	cmovel	%eax, %ebx
	movl	%ebx, %r14d
	cmpl	$128, %r15d
	je	.LBB5_44
.LBB5_32:
	movzbl	%r15b, %ebx
.LBB5_33:
	callq	__locale_ctype_ptr
	cmpl	$95, %r15d
	je	.LBB5_36
# %bb.34:
	movb	1(%rax,%rbx), %al
	andb	$7, %al
	je	.LBB5_44
.LBB5_36:
	movl	$134, %r15d
	cmpl	$130, %r14d
	jne	.LBB5_38
# %bb.37:
	movq	%r13, %r12
	jmp	.LBB5_46
.LBB5_38:
	cmpl	$128, %r12d
	je	.LBB5_44
# %bb.42:
	callq	__locale_ctype_ptr
	cmpl	$95, %r12d
	je	.LBB5_44
# %bb.43:
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	%r13, %r12
	je	.LBB5_46
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_44:
	movq	%r13, %r12
.LBB5_45:
	leal	-133(%r14), %eax
	movl	%r14d, %r15d
	cmpl	$1, %eax
	ja	.LBB5_47
.LBB5_46:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%r15d, %r8d
	movq	%rcx, %r9
	callq	lstep
	jmp	.LBB5_48
	.p2align	4, 0x90
.LBB5_47:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
.LBB5_48:
	movq	%r12, %r13
	cmpb	$0, (%rax,%r12)
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	-120(%rbp), %r14        # 8-byte Reload
	cmovneq	%r14, %r15
	movq	(%rbx), %rcx
	movq	48(%rcx), %rdx
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	cmpq	-136(%rbp), %r14        # 8-byte Folded Reload
	je	.LBB5_51
# %bb.49:
	testl	%eax, %eax
	je	.LBB5_51
# %bb.50:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %r8d
	movq	%r12, %r9
	callq	lstep
	movq	%rax, %rcx
	movq	-120(%rbp), %r13        # 8-byte Reload
	addq	$1, %r13
	movl	%r14d, %esi
	cmpq	40(%rbx), %r13
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_40:
	movl	%ebx, %r14d
	movq	%rcx, %rbx
	jmp	.LBB5_33
.LBB5_41:
	movl	%r8d, %r14d
	movq	%rcx, %rbx
	jmp	.LBB5_33
.LBB5_51:
	movq	%r15, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lslow, .Lfunc_end5-lslow
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ldissect
	.type	ldissect,@function
ldissect:                               # @ldissect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r9
	cmpq	%r8, %rcx
	jge	.LBB6_34
# %bb.1:
	movq	%rdx, %r14
	movq	%rcx, %rsi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_2
.LBB6_32:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB6_33:                               #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r8, %rsi
	jge	.LBB6_34
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_25 Depth 2
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_19 Depth 2
                                        #     Child Loop BB6_21 Depth 2
	movq	%rsi, %r12
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rsi,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB6_9
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movq	%rax, %rdx
	movq	%r12, %r13
	cmpq	%rbx, %rsi
	je	.LBB6_9
	.p2align	4, 0x90
.LBB6_7:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%rbx, %rsi
	jne	.LBB6_7
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r12, %r13
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	leaq	1(%r13), %rsi
	movl	%eax, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	addq	$-1, %rcx
	cmpq	$13, %rcx
	ja	.LBB6_33
# %bb.10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, -72(%rbp)          # 8-byte Spill
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	addq	$1, %r9
	jmp	.LBB6_33
.LBB6_18:                               # %.preheader2
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rdi, %r15
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB6_19:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %r8
	callq	lslow
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%rbx), %rdx
	cmpq	%r14, %rax
	jne	.LBB6_19
# %bb.20:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	movq	%r9, %r15
	.p2align	4, 0x90
.LBB6_21:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %r14
	movq	%r9, %r15
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	lslow
	movq	%rax, %r9
	testq	%rax, %rax
	je	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=2
	cmpq	%r15, %r9
	jne	.LBB6_21
.LBB6_23:                               #   in Loop: Header=BB6_2 Depth=1
	testq	%r9, %r9
	cmovneq	%r15, %r14
	cmoveq	%r15, %r9
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	ldissect
	movq	%rbx, %r9
	movq	%r15, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_12:                               # %.preheader3
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r14
	movq	%r12, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB6_13:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r12), %rdx
	cmpq	%rbx, %rax
	jne	.LBB6_13
# %bb.14:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%r12, %rdx
	movq	%rcx, %r14
	movq	%r9, %rbx
	movq	%r13, %r8
	callq	lslow
	testq	%rax, %rax
	je	.LBB6_15
# %bb.17:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rbx, %rsi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	ldissect
	movq	%r12, %r9
	movq	%r15, %rdi
	jmp	.LBB6_16
.LBB6_31:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, (%rdx,%rax)
	jmp	.LBB6_33
.LBB6_24:                               # %.preheader1
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB6_25:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	lslow
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r13), %rdx
	cmpq	%r14, %rax
	jne	.LBB6_25
# %bb.26:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r12,%rax), %r14
	addq	$-1, %r14
	addq	$1, %r12
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lslow
	movq	%rbx, %r15
	cmpq	%r13, %rax
	je	.LBB6_27
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB6_29:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax,%r14,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r14), %rcx
	addq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	addq	%r14, %rbx
	cmpq	%rdx, %rax
	cmovneq	%rcx, %rbx
	movq	%r14, %r12
	addq	$2, %r12
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	lslow
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r14
	cmpq	%r13, %rax
	jne	.LBB6_29
	jmp	.LBB6_30
.LBB6_15:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB6_16:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_27:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rbx
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB6_30:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	ldissect
	movq	%r13, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rdi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_34:
	movq	%r9, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ldissect, .Lfunc_end6-ldissect
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_11
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_11
	.quad	.LBB6_11
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_18
	.quad	.LBB6_33
	.quad	.LBB6_12
	.quad	.LBB6_33
	.quad	.LBB6_31
	.quad	.LBB6_32
	.quad	.LBB6_24
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lbackref
	.type	lbackref,@function
lbackref:                               # @lbackref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	cmpq	%r8, %rcx
	jge	.LBB7_64
# %bb.1:                                # %.preheader6
	movq	%r8, %rbx
	movq	%rcx, %r15
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	movq	%r15, %r14
	.p2align	4, 0x90
.LBB7_3:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_31 Depth 3
                                        #       Child Loop BB7_28 Depth 3
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r14,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	cmpq	$18, %rsi
	ja	.LBB7_22
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=2
	jmpq	*.LJTI7_0(,%rsi,8)
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB7_69
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=2
	movsbl	(%r12), %eax
	movsbl	%dl, %ecx
	cmpl	%eax, %ecx
	je	.LBB7_7
	jmp	.LBB7_69
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=2
	cmpq	32(%rdi), %r12
	jne	.LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=2
	testb	$1, 8(%rdi)
	je	.LBB7_53
.LBB7_10:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB7_69
# %bb.11:                               #   in Loop: Header=BB7_3 Depth=2
	cmpb	$10, -1(%r12)
	je	.LBB7_16
	jmp	.LBB7_69
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=2
	movq	40(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$2, 8(%rdi)
	je	.LBB7_53
.LBB7_14:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	%rcx, %r12
	jae	.LBB7_69
# %bb.15:                               #   in Loop: Header=BB7_3 Depth=2
	cmpb	$10, (%r12)
	jne	.LBB7_69
.LBB7_16:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB7_53
	jmp	.LBB7_69
.LBB7_17:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	jne	.LBB7_7
	jmp	.LBB7_69
.LBB7_19:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB7_69
# %bb.20:                               #   in Loop: Header=BB7_3 Depth=2
	movq	24(%rax), %rax
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	shlq	$5, %rdx
	movq	(%rax,%rdx), %rcx
	movzbl	(%r12), %esi
	movb	8(%rax,%rdx), %al
	testb	%al, (%rcx,%rsi)
	je	.LBB7_69
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=2
	addq	$1, %r12
	jmp	.LBB7_53
.LBB7_22:                               #   in Loop: Header=BB7_3 Depth=2
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %r13
	movl	%r13d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-939524096, %rcx       # imm = 0xC8000000
	shrq	$27, %rcx
	movl	$.L.str, %eax
	cmpq	$8, %rcx
	ja	.LBB7_70
# %bb.23:                               #   in Loop: Header=BB7_3 Depth=2
	leaq	1(%r14), %r15
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_24:                               #   in Loop: Header=BB7_3 Depth=2
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %rbx
	cmpq	$-1, %rbx
	je	.LBB7_69
# %bb.25:                               #   in Loop: Header=BB7_3 Depth=2
	movq	(%rax,%rcx), %rsi
	subq	%rsi, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	%rbx, %rax
	cmpq	%rax, %r12
	ja	.LBB7_69
# %bb.26:                               #   in Loop: Header=BB7_3 Depth=2
	addq	24(%rdi), %rsi
	movq	%rdi, %r15
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB7_69
# %bb.27:                               #   in Loop: Header=BB7_3 Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	orq	$1073741824, %r13       # imm = 0x40000000
	movq	%r15, %rdi
	.p2align	4, 0x90
.LBB7_28:                               #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r13, (%rax,%r14,8)
	leaq	1(%r14), %r14
	jne	.LBB7_28
# %bb.29:                               #   in Loop: Header=BB7_3 Depth=2
	addq	%rbx, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB7_54
.LBB7_30:                               #   in Loop: Header=BB7_3 Depth=2
	movq	8(%rcx,%r14,8), %rax
	addq	$1, %r14
	movl	$2415919104, %esi       # imm = 0x90000000
	.p2align	4, 0x90
.LBB7_31:                               #   Parent Loop BB7_2 Depth=1
                                        #     Parent Loop BB7_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r14
	movq	(%rcx,%r14,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpq	%rsi, %rdx
	jne	.LBB7_31
	jmp	.LBB7_53
.LBB7_32:                               #   in Loop: Header=BB7_3 Depth=2
	movq	32(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB7_34
# %bb.33:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$1, 8(%rdi)
	je	.LBB7_40
.LBB7_34:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB7_37
# %bb.35:                               #   in Loop: Header=BB7_3 Depth=2
	cmpb	$10, -1(%r12)
	jne	.LBB7_37
# %bb.36:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB7_40
.LBB7_37:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	%rcx, %r12
	jbe	.LBB7_69
# %bb.38:                               #   in Loop: Header=BB7_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	-1(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB7_69
# %bb.39:                               #   in Loop: Header=BB7_3 Depth=2
	movb	1(%rax,%rcx), %cl
	movl	$0, %eax
	andb	$7, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB7_70
.LBB7_40:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	40(%rdi), %r12
	jae	.LBB7_69
# %bb.41:                               #   in Loop: Header=BB7_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB7_52
.LBB7_42:                               #   in Loop: Header=BB7_3 Depth=2
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB7_53
	jmp	.LBB7_69
.LBB7_43:                               #   in Loop: Header=BB7_3 Depth=2
	movq	40(%rdi), %rcx
	cmpq	%rcx, %r12
	jne	.LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$2, 8(%rdi)
	je	.LBB7_50
.LBB7_45:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	%rcx, %r12
	jae	.LBB7_69
# %bb.46:                               #   in Loop: Header=BB7_3 Depth=2
	cmpb	$10, (%r12)
	jne	.LBB7_48
# %bb.47:                               #   in Loop: Header=BB7_3 Depth=2
	testb	$8, 40(%rax)
	jne	.LBB7_50
.LBB7_48:                               #   in Loop: Header=BB7_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	(%r12), %ecx
	cmpq	$95, %rcx
	je	.LBB7_69
# %bb.49:                               #   in Loop: Header=BB7_3 Depth=2
	movb	1(%rax,%rcx), %cl
	movl	$0, %eax
	andb	$7, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jne	.LBB7_70
.LBB7_50:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	32(%rdi), %r12
	jbe	.LBB7_69
# %bb.51:                               #   in Loop: Header=BB7_3 Depth=2
	callq	__locale_ctype_ptr
	movzbl	-1(%r12), %ecx
	cmpq	$95, %rcx
	jne	.LBB7_42
.LBB7_52:                               #   in Loop: Header=BB7_3 Depth=2
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB7_53:                               #   in Loop: Header=BB7_3 Depth=2
	addq	$1, %r14
.LBB7_54:                               #   in Loop: Header=BB7_3 Depth=2
	cmpq	%rbx, %r14
	jl	.LBB7_3
	jmp	.LBB7_64
.LBB7_55:                               #   in Loop: Header=BB7_3 Depth=2
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	testq	%rax, %rax
	jne	.LBB7_70
# %bb.56:                               #   in Loop: Header=BB7_3 Depth=2
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r15, %r13
	movq	%r13, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB7_54
.LBB7_57:                               #   in Loop: Header=BB7_2 Depth=1
	movq	56(%rdi), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r12, 8(%rax,%rcx,8)
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB7_62
.LBB7_58:                               #   in Loop: Header=BB7_2 Depth=1
	movq	56(%rdi), %rax
	movq	-72(%rbp), %r14         # 8-byte Reload
	cmpq	(%rax,%r14,8), %r12
	je	.LBB7_61
# %bb.59:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%r12, (%rax,%r14,8)
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	%r15, %rcx
	subq	%r13, %rcx
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	lbackref
	testq	%rax, %rax
	jne	.LBB7_70
# %bb.60:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$-1, %r14
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_63
.LBB7_61:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$-1, %r14
	movq	%r14, -72(%rbp)         # 8-byte Spill
.LBB7_62:                               #   in Loop: Header=BB7_2 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB7_63:                               #   in Loop: Header=BB7_2 Depth=1
	cmpq	%rbx, %r15
	jl	.LBB7_2
.LBB7_64:
	xorl	%eax, %eax
	cmpq	-64(%rbp), %r12         # 8-byte Folded Reload
	cmoveq	%r12, %rax
	jmp	.LBB7_70
.LBB7_65:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	shlq	$4, %r13
	movq	(%rax,%r13), %r14
	movq	%r12, %rcx
	subq	24(%rdi), %rcx
	movq	%rcx, (%rax,%r13)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB7_70
# %bb.66:
	movq	16(%rcx), %rax
	movq	%r14, (%rax,%r13)
	jmp	.LBB7_69
.LBB7_67:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	movq	16(%rdi), %rax
	shlq	$4, %r13
	movq	8(%rax,%r13), %r14
	movq	%r12, %rcx
	subq	24(%rdi), %rcx
	movq	%rcx, 8(%rax,%r13)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB7_70
# %bb.68:
	movq	16(%rcx), %rax
	movq	%r14, 8(%rax,%r13)
.LBB7_69:
	xorl	%eax, %eax
.LBB7_70:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_71:
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r14, %r13
	addq	$-1, %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB7_70
# %bb.72:                               # %.preheader
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r14
.LBB7_73:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r13,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	cmpq	%rdx, %rcx
	je	.LBB7_69
# %bb.74:                               #   in Loop: Header=BB7_73 Depth=1
	movq	8(%rax,%r13,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r13), %rdx
	addq	$1, %rdx
	movq	(%rax,%rdx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	%r13, %rbx
	leaq	2(%r13), %rcx
	cmpq	%r14, %rax
	cmovneq	%rdx, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rbx, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, %r13
	testq	%rax, %rax
	je	.LBB7_73
	jmp	.LBB7_70
.Lfunc_end7:
	.size	lbackref, .Lfunc_end7-lbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_5
	.quad	.LBB7_8
	.quad	.LBB7_12
	.quad	.LBB7_17
	.quad	.LBB7_19
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_53
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_30
	.quad	.LBB7_22
	.quad	.LBB7_22
	.quad	.LBB7_32
	.quad	.LBB7_43
.LJTI7_1:
	.quad	.LBB7_24
	.quad	.LBB7_70
	.quad	.LBB7_57
	.quad	.LBB7_58
	.quad	.LBB7_55
	.quad	.LBB7_70
	.quad	.LBB7_65
	.quad	.LBB7_67
	.quad	.LBB7_71
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lstep
	.type	lstep,@function
lstep:                                  # @lstep
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %rax
                                        # kill: def $r8d killed $r8d def $r8
	cmpq	%rdx, %rsi
	jne	.LBB8_1
.LBB8_26:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_1:
	movl	$2415919104, %r9d       # imm = 0x90000000
	movl	%r8d, %r10d
	orl	$2, %r10d
	movl	%r8d, %r11d
	orl	$1, %r11d
	movzbl	%r8b, %ebx
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r15
	jmp	.LBB8_2
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	movb	(%rcx,%rsi), %bl
	orb	%bl, 1(%rsi,%rax)
	.p2align	4, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_2 Depth=1
	addq	$1, %r15
	addq	$1, %rsi
	cmpq	%rdx, %r15
	je	.LBB8_26
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
	movq	8(%rdi), %r13
	movq	(%r13,%r15,8), %r12
	movl	%r12d, %ebx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	addq	$-134217728, %rbx       # imm = 0xF8000000
	shrq	$27, %rbx
	addq	$-1, %rbx
	cmpq	$18, %rbx
	ja	.LBB8_25
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	jmpq	*.LJTI8_0(,%rbx,8)
.LBB8_24:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	jmp	.LBB8_25
.LBB8_16:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	addq	%rsi, %r12
	orb	%bl, (%rax,%r12)
	jmp	.LBB8_25
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=1
	movsbl	%r12b, %ebx
	cmpl	%r8d, %ebx
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$131, %r10d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$131, %r11d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	cmpl	$127, %r8d
	jle	.LBB8_5
	jmp	.LBB8_25
.LBB8_11:                               #   in Loop: Header=BB8_2 Depth=1
	cmpl	$127, %r8d
	jg	.LBB8_25
# %bb.12:                               #   in Loop: Header=BB8_2 Depth=1
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	movq	24(%rdi), %rbx
	shlq	$5, %r12
	movq	(%rbx,%r12), %r14
	movb	8(%rbx,%r12), %bl
	movq	(%rsp), %rbp            # 8-byte Reload
	testb	%bl, (%r14,%rbp)
	jne	.LBB8_5
	jmp	.LBB8_25
.LBB8_13:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	movq	%rsi, %rbp
	subq	%r12, %rbp
	movb	(%rax,%rbp), %r13b
	orb	%r13b, %bl
	movb	%bl, (%rax,%rbp)
	testb	%r13b, %r13b
	jne	.LBB8_25
# %bb.14:                               #   in Loop: Header=BB8_2 Depth=1
	testb	%bl, %bl
	je	.LBB8_25
# %bb.15:                               #   in Loop: Header=BB8_2 Depth=1
	notq	%r12
	addq	%r12, %r15
	movq	%r15, %rsi
	jmp	.LBB8_25
.LBB8_17:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r12b
	testb	%r12b, %r12b
	je	.LBB8_25
# %bb.18:                               #   in Loop: Header=BB8_2 Depth=1
	movq	8(%r13,%r15,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	movl	$1, %ebx
	cmpq	%r9, %rbp
	je	.LBB8_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB8_20:                               #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	addq	%r14, %rbx
	leaq	(%rbx,%r15), %rbp
	movq	(%r13,%rbp,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r9, %rbp
	jne	.LBB8_20
.LBB8_21:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %rbx
	orb	%r12b, (%rax,%rbx)
	jmp	.LBB8_25
.LBB8_22:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r14b
	orb	%r14b, 1(%rax,%rsi)
	movq	8(%rdi), %rbp
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	leaq	(%r12,%r15), %rbx
	movq	(%rbp,%rbx,8), %rbx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	cmpq	%r9, %rbx
	je	.LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %r12
	orb	%r14b, (%rax,%r12)
	jmp	.LBB8_25
.LBB8_8:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$133, %r8d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$134, %r8d
	je	.LBB8_5
	jmp	.LBB8_25
.Lfunc_end8:
	.size	lstep, .Lfunc_end8-lstep
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_10
	.quad	.LBB8_11
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_13
	.quad	.LBB8_16
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_16
	.quad	.LBB8_17
	.quad	.LBB8_22
	.quad	.LBB8_24
	.quad	.LBB8_8
	.quad	.LBB8_9
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"shut up gcc"
	.size	.L.str, 12

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
