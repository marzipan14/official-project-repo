	.text
	.file	"getopt.c"
	.globl	getopt                  # -- Begin function getopt
	.p2align	4, 0x90
	.type	getopt,@function
getopt:                                 # @getopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	optind(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	opterr(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	optopt(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	optwhere(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	getopt_internal
	movq	-24(%rbp), %rcx
	movq	%rcx, optarg(%rip)
	movl	-16(%rbp), %ecx
	movl	%ecx, optind(%rip)
	movl	-12(%rbp), %ecx
	movl	%ecx, opterr(%rip)
	movl	-8(%rbp), %ecx
	movl	%ecx, optopt(%rip)
	movl	-4(%rbp), %ecx
	movl	%ecx, optwhere(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getopt, .Lfunc_end0-getopt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getopt_internal
	.type	getopt_internal,@function
getopt_internal:                        # @getopt_internal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	$-1, %ebx
	testl	%edi, %edi
	je	.LBB1_114
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB1_114
# %bb.2:
	movl	%r9d, %r14d
	movq	%rdx, %r15
	movl	%edi, %r13d
	testq	%rdx, %rdx
	jne	.LBB1_4
# %bb.3:
	testq	%rcx, %rcx
	je	.LBB1_114
.LBB1_4:
	movq	16(%rbp), %r12
	movslq	8(%r12), %rax
	cmpl	%r13d, %eax
	jge	.LBB1_114
# %bb.5:
	movq	(%rsi,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB1_114
# %bb.6:
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	$.L.str, %esi
	callq	strcmp
	movl	8(%r12), %ecx
	testl	%eax, %eax
	je	.LBB1_13
# %bb.7:
	testl	%ecx, %ecx
	jne	.LBB1_9
# %bb.8:
	movl	$1, 20(%r12)
	movl	$1, 8(%r12)
.LBB1_9:
	testq	%r15, %r15
	je	.LBB1_14
# %bb.10:
	movb	(%r15), %al
	cmpb	$45, %al
	je	.LBB1_12
# %bb.11:
	cmpb	$43, %al
	jne	.LBB1_15
.LBB1_12:
	xorl	%ecx, %ecx
	cmpb	$45, %al
	sete	%cl
	movl	$2, %r8d
	subl	%ecx, %r8d
	addq	$1, %r15
	jmp	.LBB1_16
.LBB1_13:
	addl	$1, %ecx
	movl	%ecx, 8(%r12)
	jmp	.LBB1_114
.LBB1_14:
	movl	$.L.str.1, %edi
	callq	getenv
	xorl	%r8d, %r8d
	testq	%rax, %rax
	setne	%r8b
	addl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_17
.LBB1_15:
	movl	$.L.str.1, %edi
	callq	getenv
	xorl	%r8d, %r8d
	testq	%rax, %rax
	setne	%r8b
	addl	%r8d, %r8d
.LBB1_16:
	xorl	%eax, %eax
	cmpb	$58, (%r15)
	leaq	1(%r15), %r9
	sete	%al
	movl	%eax, -100(%rbp)        # 4-byte Spill
	cmovneq	%r15, %r9
.LBB1_17:
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	cmpl	$1, 20(%r12)
	jne	.LBB1_28
# %bb.18:
	cmpb	$1, %r8b
	je	.LBB1_24
# %bb.19:
	cmpb	$2, %r8b
	jne	.LBB1_48
# %bb.20:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB1_28
# %bb.21:
	movb	(%rax), %al
	cmpb	$45, %al
	je	.LBB1_28
# %bb.22:
	testl	%r14d, %r14d
	je	.LBB1_114
# %bb.23:
	cmpb	$43, %al
	je	.LBB1_28
	jmp	.LBB1_114
.LBB1_24:
	movslq	8(%r12), %rcx
	movq	(%r11,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB1_28
# %bb.25:
	movb	(%rax), %dl
	cmpb	$45, %dl
	je	.LBB1_28
# %bb.26:
	testl	%r14d, %r14d
	je	.LBB1_79
# %bb.27:
	cmpb	$43, %dl
	jne	.LBB1_79
.LBB1_28:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB1_29:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB1_114
# %bb.30:
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	$-1, %r15d
	testq	%r10, %r10
	je	.LBB1_38
# %bb.31:
	movl	$.L.str, %esi
	movl	$2, %edx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	memcmp
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_34
# %bb.32:
	testl	%r14d, %r14d
	je	.LBB1_37
# %bb.33:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	cmpb	$43, (%rax)
	jne	.LBB1_37
.LBB1_34:
	cmpl	$1, 20(%r12)
	jne	.LBB1_37
# %bb.35:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rdi
	movl	$.L.str, %esi
	movl	$2, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_66
# %bb.36:
	movl	20(%r12), %eax
	jmp	.LBB1_67
.LBB1_37:
	movq	-64(%rbp), %r10         # 8-byte Reload
.LBB1_38:
	testq	%r9, %r9
	je	.LBB1_46
# %bb.39:
	testl	%r15d, %r15d
	jns	.LBB1_46
# %bb.40:
	movl	%r15d, %r14d
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	movslq	20(%r12), %rcx
	movsbl	(%rax,%rcx), %esi
	movq	%r9, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_54
# %bb.41:
	movq	%rax, %rbx
	xorl	%eax, %eax
	cmpb	$58, 1(%rbx)
	jne	.LBB1_43
# %bb.42:
	xorl	%eax, %eax
	cmpb	$58, 2(%rbx)
	sete	%al
	addl	$1, %eax
.LBB1_43:
	movslq	8(%r12), %rcx
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	(%r11,%rcx,8), %rcx
	movslq	20(%r12), %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	movsbl	(%rbx), %ecx
	movl	%ecx, 16(%r12)
	movb	$1, %cl
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	-52(%rbp), %edi         # 4-byte Reload
	cmpl	$1, %eax
	je	.LBB1_90
.LBB1_44:
	cmpl	$2, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB1_59
# %bb.45:
	leaq	1(%rdx), %rcx
	cmpb	$61, (%rdx)
	cmovneq	%rdx, %rcx
	xorl	%r8d, %r8d
	cmpb	$0, (%rcx)
	movl	$0, %edx
	cmovneq	%rcx, %rdx
	movq	%rdx, (%r12)
	movl	$1, 20(%r12)
	movl	$1, %ecx
	jmp	.LBB1_95
.LBB1_46:
	movl	-52(%rbp), %edi         # 4-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB1_47:
	movslq	20(%r12), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 20(%r12)
	movslq	8(%r12), %rdx
	movq	(%r11,%rdx,8), %rdx
	cmpb	$0, 1(%rdx,%rax)
	jne	.LBB1_61
	jmp	.LBB1_60
.LBB1_48:
	movl	8(%r12), %esi
	movslq	%esi, %r10
	movq	(%r11,%r10,8), %rdi
	testq	%rdi, %rdi
	je	.LBB1_53
# %bb.49:
	leaq	(%r11,%r10,8), %r11
	xorl	%r12d, %r12d
	movl	$1, %r15d
.LBB1_50:                               # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	setne	%al
	movzbl	(%rdi), %edx
	cmpb	$43, %dl
	sete	%cl
	cmpb	$45, %dl
	je	.LBB1_64
# %bb.51:                               #   in Loop: Header=BB1_50 Depth=1
	andb	%cl, %al
	jne	.LBB1_64
# %bb.52:                               #   in Loop: Header=BB1_50 Depth=1
	leal	(%rsi,%r15), %eax
	movq	16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	(%r11,%r15,8), %rdi
	addl	$-1, %r12d
	addq	$1, %r15
	testq	%rdi, %rdi
	jne	.LBB1_50
.LBB1_53:
	movq	16(%rbp), %rax
	movl	%esi, 8(%rax)
	jmp	.LBB1_114
.LBB1_54:
	cmpl	$0, 12(%r12)
	movq	-80(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_56
# %bb.55:
	movq	(%rbx), %r14
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%r14, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.6, %edi
	callq	fputs
	movslq	8(%r12), %rax
	movq	(%rbx,%rax,8), %rax
	movslq	20(%r12), %rcx
	movsbl	(%rax,%rcx), %r14d
	callq	__getreent
	movq	24(%rax), %rsi
	movl	%r14d, %edi
	callq	fputc
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
.LBB1_56:
	movslq	20(%r12), %rcx
	leaq	1(%rcx), %rax
	movl	%eax, 20(%r12)
	movslq	8(%r12), %rax
	movq	(%rbx,%rax,8), %rdx
	cmpb	$0, 1(%rdx,%rcx)
	jne	.LBB1_58
# %bb.57:
	addl	$1, %eax
	movl	%eax, 8(%r12)
	movl	$1, 20(%r12)
.LBB1_58:
	movl	$63, 16(%r12)
	movl	$63, %ebx
	jmp	.LBB1_114
.LBB1_59:
	testb	%cl, %cl
	movl	%r14d, %r15d
	jne	.LBB1_47
.LBB1_60:
	movl	$1, 20(%r12)
	movl	$1, %ecx
.LBB1_61:
	movq	$0, (%r12)
	xorl	%r8d, %r8d
	testl	%edi, %edi
	jne	.LBB1_62
	jmp	.LBB1_96
.LBB1_64:
	movq	%r11, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	$.L.str, %esi
	callq	strcmp
	movl	%r12d, %ecx
	negl	%ecx
	testl	%eax, %eax
	je	.LBB1_80
# %bb.65:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	16(%rbp), %r12
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	jmp	.LBB1_29
.LBB1_66:
	movl	$2, 20(%r12)
	movl	$2, %eax
.LBB1_67:
	movslq	8(%r12), %rcx
	movslq	%eax, %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	addq	(%rbx,%rcx,8), %rdi
	movl	$61, %esi
	callq	strchr
	movl	8(%r12), %edi
	movslq	%edi, %rcx
	testq	%rax, %rax
	je	.LBB1_69
# %bb.68:
	movq	%rax, %rdx
	subq	(%rbx,%rcx,8), %rdx
	jmp	.LBB1_70
.LBB1_69:
	movq	(%rbx,%rcx,8), %rdi
	callq	strlen
	movq	%rax, %rdx
	movslq	8(%r12), %rdi
	addq	(%rbx,%rdi,8), %rax
.LBB1_70:
	movl	20(%r12), %ecx
	movq	%rbx, %r11
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rsi
	testq	%rsi, %rsi
	movl	$-1, %r15d
	movq	-88(%rbp), %r9          # 8-byte Reload
	je	.LBB1_38
# %bb.71:                               # %.preheader
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movslq	%ecx, %rax
	subq	%rax, %rdx
	movl	$-1, %r14d
	xorl	%r15d, %r15d
	movq	%r10, -96(%rbp)         # 8-byte Spill
.LBB1_72:                               # =>This Inner Loop Header: Depth=1
	movslq	%edi, %rax
	movslq	%ecx, %rdi
	addq	(%r11,%rax,8), %rdi
	movq	%rdx, %rbx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_74
# %bb.73:                               #   in Loop: Header=BB1_72 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%rbx, %rdx
	jmp	.LBB1_76
.LBB1_74:                               #   in Loop: Header=BB1_72 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	strlen
	cmpq	%rax, %rbx
	je	.LBB1_87
# %bb.75:                               #   in Loop: Header=BB1_72 Depth=1
	movq	%rbx, %rdx
	movl	%r15d, %eax
	testl	%r14d, %r14d
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	jns	.LBB1_115
.LBB1_76:                               #   in Loop: Header=BB1_72 Depth=1
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_78
# %bb.77:                               #   in Loop: Header=BB1_72 Depth=1
	movl	8(%r12), %edi
	movl	20(%r12), %ecx
	addl	$1, %r15d
	addq	$32, %rbx
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %r14d
	jmp	.LBB1_72
.LBB1_78:
	movl	%eax, %r15d
	jmp	.LBB1_88
.LBB1_79:
	addl	$1, %ecx
	movl	%ecx, 8(%r12)
	movq	%rax, (%r12)
	movl	$1, 16(%r12)
	movl	$1, %ebx
	jmp	.LBB1_114
.LBB1_80:
	cmpl	$2, %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jb	.LBB1_83
# %bb.81:
	movl	%r12d, %eax
	notl	%eax
	movl	%ecx, %r8d
	shrl	%r8d
	xorl	%edx, %edx
.LBB1_82:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdx,8), %r9
	cltq
	movq	(%rsi,%rax,8), %rdi
	movq	%rdi, (%rsi,%rdx,8)
	movq	%r9, (%rsi,%rax,8)
	addq	$1, %rdx
	addl	$-1, %eax
	cmpq	%r8, %rdx
	jb	.LBB1_82
.LBB1_83:
	testl	%r12d, %r12d
	movq	-96(%rbp), %r8          # 8-byte Reload
	je	.LBB1_86
# %bb.84:
	shrl	%r15d
	xorl	%eax, %eax
.LBB1_85:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rax,8), %rdi
	movslq	%ecx, %rcx
	movq	(%rsi,%rcx,8), %rdx
	movq	%rdx, (%rsi,%rax,8)
	movq	%rdi, (%rsi,%rcx,8)
	addq	$1, %rax
	addl	$-1, %ecx
	cmpq	%r15, %rax
	jb	.LBB1_85
.LBB1_86:
	addl	$1, %r8d
	movq	16(%rbp), %rax
	movl	%r8d, 8(%rax)
	jmp	.LBB1_114
.LBB1_87:
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
.LBB1_88:
	movq	-88(%rbp), %r9          # 8-byte Reload
	testl	%r15d, %r15d
	movl	-52(%rbp), %edi         # 4-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	js	.LBB1_38
# %bb.89:
	movl	%r15d, %r14d
	movslq	%r15d, %rax
	shlq	$5, %rax
	movl	8(%r10,%rax), %eax
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	jne	.LBB1_44
.LBB1_90:
	leaq	1(%rdx), %rax
	cmpb	$61, (%rdx)
	cmovneq	%rdx, %rax
	cmpb	$0, (%rax)
	je	.LBB1_92
# %bb.91:
	movq	%rax, (%r12)
	movl	$1, 20(%r12)
	xorl	%r8d, %r8d
	movl	$1, %ecx
	jmp	.LBB1_94
.LBB1_92:
	movslq	8(%r12), %rcx
	leal	1(%rcx), %eax
	cmpl	%r13d, %eax
	jge	.LBB1_117
# %bb.93:
	movq	8(%r11,%rcx,8), %rax
	movq	%rax, (%r12)
	movl	$1, 20(%r12)
	movl	$1, %ecx
	movl	$1, %r8d
.LBB1_94:
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB1_95:
	movl	%r14d, %r15d
	testl	%edi, %edi
	jne	.LBB1_62
.LBB1_96:
	testl	%esi, %esi
	je	.LBB1_62
# %bb.97:
	cmpl	$1, %ecx
	jne	.LBB1_62
# %bb.98:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%r11,%rax,8), %rdx
	leal	1(%r8), %r9d
	cmpl	$2, %esi
	jb	.LBB1_101
# %bb.99:
	movl	%esi, %r14d
	shrl	%r14d
	movl	%esi, %edi
	addq	-72(%rbp), %rdi         # 8-byte Folded Reload
	leaq	(%r11,%rdi,8), %rdi
	addq	$-8, %rdi
	xorl	%ebx, %ebx
.LBB1_100:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rbx,8), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rbx,8)
	movq	%rax, (%rdi)
	addq	$1, %rbx
	addq	$-8, %rdi
	cmpq	%r14, %rbx
	jb	.LBB1_100
.LBB1_101:
	leal	(%r9,%rsi), %ebx
	cmpl	$2, %ebx
	jb	.LBB1_104
# %bb.102:
	shrl	%ebx
	addl	%r8d, %esi
	xorl	%edi, %edi
.LBB1_103:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %rax
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rcx
	movq	%rcx, (%rdx,%rdi,8)
	movq	%rax, (%rdx,%rsi,8)
	addq	$1, %rdi
	addl	$-1, %esi
	cmpq	%rbx, %rdi
	jb	.LBB1_103
.LBB1_104:
	testl	%r8d, %r8d
	je	.LBB1_106
# %bb.105:
	movq	(%rdx), %rax
	movl	%r8d, %ecx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, (%rdx)
	movq	%rax, (%rdx,%rcx,8)
.LBB1_106:
	addl	-72(%rbp), %r9d         # 4-byte Folded Reload
	jmp	.LBB1_107
.LBB1_62:
	cmpl	$1, %ecx
	jne	.LBB1_108
# %bb.63:
	movl	8(%r12), %eax
	leal	(%r8,%rax), %r9d
	addl	$1, %r9d
.LBB1_107:
	movl	%r9d, 8(%r12)
.LBB1_108:
	testl	%r15d, %r15d
	js	.LBB1_113
# %bb.109:
	movq	-120(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_111
# %bb.110:
	movl	%r15d, (%rax)
.LBB1_111:
	movslq	%r15d, %rcx
	shlq	$5, %rcx
	movq	16(%r10,%rcx), %rax
	movl	24(%r10,%rcx), %ebx
	testq	%rax, %rax
	je	.LBB1_114
# %bb.112:
	movl	%ebx, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB1_114
.LBB1_113:
	movl	16(%r12), %ebx
.LBB1_114:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_115:
	cmpl	$0, 12(%r12)
	je	.LBB1_58
# %bb.116:
	movq	(%r11), %r15
	movq	%r10, %rbx
	movq	%r11, %r13
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%r15, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.2, %edi
	callq	fputs
	movslq	8(%r12), %rax
	movq	(%r13,%rax,8), %r15
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%r15, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.3, %edi
	callq	fputs
	movslq	%r14d, %rax
	shlq	$5, %rax
	movq	(%rbx,%rax), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.5, %edi
	callq	fputs
	jmp	.LBB1_58
.LBB1_117:
	cmpl	$0, 12(%r12)
	movl	-100(%rbp), %r15d       # 4-byte Reload
	je	.LBB1_122
# %bb.118:
	movq	(%r11), %r13
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%r13, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	testl	%r14d, %r14d
	js	.LBB1_120
# %bb.119:
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$45, %edi
	callq	fputc
	movslq	%r14d, %rax
	shlq	$5, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	leal	(%rax,%rax,4), %eax
	addl	$58, %eax
	jmp	.LBB1_121
.LBB1_120:
	movsbl	(%rbx), %r14d
	callq	__getreent
	movq	24(%rax), %rsi
	movl	%r14d, %edi
	callq	fputc
	movsbl	(%rbx), %eax
.LBB1_121:
	movl	%eax, 16(%r12)
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movl	8(%r12), %eax
	addl	$1, %eax
.LBB1_122:
	movl	%eax, 8(%r12)
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	leal	(%rax,%rax,4), %ebx
	addl	$58, %ebx
	jmp	.LBB1_114
.Lfunc_end1:
	.size	getopt_internal, .Lfunc_end1-getopt_internal
                                        # -- End function
	.globl	getopt_long             # -- Begin function getopt_long
	.p2align	4, 0x90
	.type	getopt_long,@function
getopt_long:                            # @getopt_long
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	optind(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	opterr(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	optopt(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	optwhere(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	callq	getopt_internal
	movq	-24(%rbp), %rcx
	movq	%rcx, optarg(%rip)
	movl	-16(%rbp), %ecx
	movl	%ecx, optind(%rip)
	movl	-12(%rbp), %ecx
	movl	%ecx, opterr(%rip)
	movl	-8(%rbp), %ecx
	movl	%ecx, optopt(%rip)
	movl	-4(%rbp), %ecx
	movl	%ecx, optwhere(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	getopt_long, .Lfunc_end2-getopt_long
                                        # -- End function
	.globl	getopt_long_only        # -- Begin function getopt_long_only
	.p2align	4, 0x90
	.type	getopt_long_only,@function
getopt_long_only:                       # @getopt_long_only
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	optarg(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	optind(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	opterr(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	optopt(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	optwhere(%rip), %eax
	movl	%eax, -4(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, %r9d
	callq	getopt_internal
	movq	-24(%rbp), %rcx
	movq	%rcx, optarg(%rip)
	movl	-16(%rbp), %ecx
	movl	%ecx, optind(%rip)
	movl	-12(%rbp), %ecx
	movl	%ecx, opterr(%rip)
	movl	-8(%rbp), %ecx
	movl	%ecx, optopt(%rip)
	movl	-4(%rbp), %ecx
	movl	%ecx, optwhere(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	getopt_long_only, .Lfunc_end3-getopt_long_only
                                        # -- End function
	.globl	__getopt_r              # -- Begin function __getopt_r
	.p2align	4, 0x90
	.type	__getopt_r,@function
__getopt_r:                             # @__getopt_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rcx, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	getopt_internal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	__getopt_r, .Lfunc_end4-__getopt_r
                                        # -- End function
	.globl	__getopt_long_r         # -- Begin function __getopt_long_r
	.p2align	4, 0x90
	.type	__getopt_long_r,@function
__getopt_long_r:                        # @__getopt_long_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%r9, (%rsp)
	xorl	%r9d, %r9d
	callq	getopt_internal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	__getopt_long_r, .Lfunc_end5-__getopt_long_r
                                        # -- End function
	.globl	__getopt_long_only_r    # -- Begin function __getopt_long_only_r
	.p2align	4, 0x90
	.type	__getopt_long_only_r,@function
__getopt_long_only_r:                   # @__getopt_long_only_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%r9, (%rsp)
	movl	$1, %r9d
	callq	getopt_internal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__getopt_long_only_r, .Lfunc_end6-__getopt_long_only_r
                                        # -- End function
	.type	optarg,@object          # @optarg
	.bss
	.globl	optarg
	.p2align	3
optarg:
	.quad	0
	.size	optarg, 8

	.type	optind,@object          # @optind
	.globl	optind
	.p2align	2
optind:
	.long	0                       # 0x0
	.size	optind, 4

	.type	opterr,@object          # @opterr
	.data
	.globl	opterr
	.p2align	2
opterr:
	.long	1                       # 0x1
	.size	opterr, 4

	.type	optopt,@object          # @optopt
	.globl	optopt
	.p2align	2
optopt:
	.long	63                      # 0x3f
	.size	optopt, 4

	.type	optwhere,@object        # @optwhere
	.local	optwhere
	.comm	optwhere,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"POSIXLY_CORRECT"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	": option `"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"' is ambiguous (could be `--"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"' or `--"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"')\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	": invalid option -- `-"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"'\n"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	": argument required for option `-"
	.size	.L.str.8, 34

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
