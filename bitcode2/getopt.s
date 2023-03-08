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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$72, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testl	%edi, %edi
	je	.LBB1_136
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB1_136
# %bb.2:
	movl	%r9d, %r15d
	movq	%rdx, %r13
	movl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB1_4
# %bb.3:
	testq	%rcx, %rcx
	je	.LBB1_136
.LBB1_4:
	movq	16(%rbp), %r12
	movslq	8(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jge	.LBB1_136
# %bb.5:
	movq	(%rsi,%rax,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_136
# %bb.6:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$.L.str, %esi
	callq	strcmp
	movl	8(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_7
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_10
# %bb.9:
	movl	$1, 20(%r12)
	movl	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_14
# %bb.11:
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	je	.LBB1_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	jne	.LBB1_14
.LBB1_13:
	xorl	%ecx, %ecx
	cmpb	$45, %al
	sete	%cl
	movl	$2, %r9d
	subl	%ecx, %r9d
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_15
.LBB1_7:
	addl	$1, %ecx
	movl	%ecx, 8(%r12)
	jmp	.LBB1_136
.LBB1_14:
	movl	$.L.str.1, %edi
	callq	getenv
	xorl	%r9d, %r9d
	testq	%rax, %rax
	setne	%r9b
	addl	%r9d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_138
.LBB1_15:
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	xorl	%eax, %eax
	cmpb	$58, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_17
# %bb.16:
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB1_17
.LBB1_138:
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
.LBB1_17:
	cmpl	$1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB1_50
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r9b
	je	.LBB1_38
# %bb.19:
	cmpb	$2, %r9b
	jne	.LBB1_20
# %bb.44:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_48
# %bb.45:
	movb	(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	je	.LBB1_48
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_47
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	je	.LBB1_50
	jmp	.LBB1_136
.LBB1_38:
	movslq	8(%r12), %rcx
	movq	(%r11,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_48
# %bb.39:
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %dl
	jne	.LBB1_40
.LBB1_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_50:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB1_51:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_52
# %bb.53:
	movl	$-1, %edx
	testq	%r10, %r10
	je	.LBB1_82
# %bb.54:
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	$.L.str, %esi
	movl	$2, %edx
	callq	memcmp
	movq	-64(%rbp), %r11         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_58
# %bb.55:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_56
# %bb.57:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	cmpb	$43, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_56
.LBB1_58:
	cmpl	$1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_56
# %bb.59:
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rdi
	movl	$.L.str, %esi
	movl	$2, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r14, -88(%rbp)         # 8-byte Spill
	je	.LBB1_61
# %bb.60:
	movl	20(%r12), %eax
	jmp	.LBB1_62
.LBB1_52:
	movl	$-1, %r14d
	jmp	.LBB1_137
.LBB1_56:
	movq	-56(%rbp), %r10         # 8-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$-1, %edx
.LBB1_82:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_84
# %bb.83:
	testl	%edx, %edx
	jns	.LBB1_84
# %bb.85:
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	%r9d, %r14d
	movslq	8(%r12), %rax
	movq	(%r11,%rax,8), %rax
	movslq	20(%r12), %rcx
	movsbl	(%rax,%rcx), %esi
	movq	%r13, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_86
# %bb.91:
	movq	%rax, %r15
	xorl	%eax, %eax
	cmpb	$58, 1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_93
# %bb.92:
	xorl	%eax, %eax
	cmpb	$58, 2(%r15)
	sete	%al
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB1_93:
	movslq	8(%r12), %rcx
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	(%r11,%rcx,8), %rcx
	movslq	20(%r12), %rdx
	leaq	(%rcx,%rdx), %rdi
	addq	$1, %rdi
	movsbl	(%r15), %ecx
	movl	%ecx, 16(%r12)
	movb	$1, %cl
	movq	-56(%rbp), %r10         # 8-byte Reload
	movl	%r14d, %r9d
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB1_94:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB1_99
# %bb.95:
	cmpl	$2, %eax
	jne	.LBB1_111
# %bb.96:
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	jne	.LBB1_98
# %bb.97:
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rdi), %cl
	addq	$1, %rdi
.LBB1_98:
	xorl	%r8d, %r8d
	testb	%cl, %cl
	movl	$0, %ecx
	cmovneq	%rdi, %rcx
	movq	%rcx, (%r12)
	movl	$1, 20(%r12)
	movl	$1, %ecx
	jmp	.LBB1_115
.LBB1_84:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_112:
	movslq	20(%r12), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 20(%r12)
	movl	%edx, %edi
	movslq	8(%r12), %rdx
	movq	(%r11,%rdx,8), %rdx
	cmpb	$0, 1(%rdx,%rax)
	movl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_114
	jmp	.LBB1_113
.LBB1_20:
	movl	8(%r12), %esi
	movslq	%esi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	(%r11,%rax,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_27
# %bb.21:
	movq	-88(%rbp), %rax         # 8-byte Reload
	leaq	(%r11,%rax,8), %r8
	xorl	%edx, %edx
	movl	$1, %r12d
	jmp	.LBB1_22
.LBB1_24:                               #   in Loop: Header=BB1_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:                               #   in Loop: Header=BB1_22 Depth=1
	leal	(%rsi,%r12), %eax
	movq	16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r8,%r12,8), %rdi
	addl	$-1, %edx
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_27
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	je	.LBB1_28
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	testl	%r15d, %r15d
	je	.LBB1_24
# %bb.25:                               #   in Loop: Header=BB1_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	jne	.LBB1_26
	jmp	.LBB1_29
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbp), %rax
	movl	%esi, 8(%rax)
	jmp	.LBB1_136
.LBB1_86:
	cmpl	$0, 12(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_88
# %bb.87:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_88:
	movslq	20(%r12), %rcx
	leaq	1(%rcx), %rax
	movl	%eax, 20(%r12)
	movslq	8(%r12), %rax
	movq	(%rbx,%rax,8), %rdx
	cmpb	$0, 1(%rdx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_90
# %bb.89:
	addl	$1, %eax
	movl	%eax, 8(%r12)
	movl	$1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_90:
	movl	$63, 16(%r12)
	movl	$63, %r14d
	jmp	.LBB1_136
.LBB1_99:
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %al
	jne	.LBB1_101
# %bb.100:
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rdi), %al
	addq	$1, %rdi
.LBB1_101:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_103
# %bb.102:
	movq	%rdi, (%r12)
	movl	$1, 20(%r12)
	xorl	%r8d, %r8d
	movl	$1, %ecx
	jmp	.LBB1_115
.LBB1_111:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB1_112
.LBB1_113:
	movl	$1, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB1_114:
	movq	$0, (%r12)
	xorl	%r8d, %r8d
.LBB1_115:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB1_116
.LBB1_127:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB1_130
# %bb.128:
	movl	8(%r12), %eax
	leal	(%r8,%rax), %r9d
	addl	$1, %r9d
	jmp	.LBB1_129
.LBB1_116:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_127
# %bb.117:
	cmpl	$1, %ecx
	jne	.LBB1_127
# %bb.118:
	movl	%edx, %r13d
	leaq	(%r11,%r14,8), %rdx
	leal	1(%r8), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %esi
	jb	.LBB1_121
# %bb.119:
	movl	%esi, %r15d
	shrl	%r15d
	movl	%esi, %edi
	addq	%r14, %rdi
	leaq	(%r11,%rdi,8), %rdi
	addq	$-8, %rdi
	xorl	%ebx, %ebx
.LBB1_120:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rbx,8), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%rdx,%rbx,8)
	movq	%rax, (%rdi)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-8, %rdi
	cmpq	%r15, %rbx
	jb	.LBB1_120
.LBB1_121:
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r9,%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jb	.LBB1_124
# %bb.122:
	shrl	%ebx
	addl	%r8d, %esi
	xorl	%edi, %edi
.LBB1_123:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rdi,8), %rax
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rcx
	movq	%rcx, (%rdx,%rdi,8)
	movq	%rax, (%rdx,%rsi,8)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	cmpq	%rbx, %rdi
	jb	.LBB1_123
.LBB1_124:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB1_126
# %bb.125:
	movq	(%rdx), %rax
	movl	%r8d, %ecx
	movq	(%rdx,%rcx,8), %rsi
	movq	%rsi, (%rdx)
	movq	%rax, (%rdx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_126:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%r14d, %r9d
	movl	%r13d, %edx
.LBB1_129:
	movl	%r9d, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_130:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB1_135
# %bb.131:
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_133
# %bb.132:
	movl	%edx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_133:
	movslq	%edx, %rcx
	shlq	$5, %rcx
	movq	16(%r10,%rcx), %rax
	movl	24(%r10,%rcx), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_136
# %bb.134:
	movl	%r14d, (%rax)
	xorl	%r14d, %r14d
	jmp	.LBB1_136
.LBB1_135:
	movl	16(%r12), %r14d
.LBB1_136:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_137:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_40:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_41
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %dl
	je	.LBB1_50
	jmp	.LBB1_43
.LBB1_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_29:
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %esi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	callq	strcmp
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	%r9d, %ecx
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_31
# %bb.30:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	16(%rbp), %r12
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_51
.LBB1_61:
	movl	$2, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
.LBB1_62:
	movslq	8(%r12), %rcx
	movslq	%eax, %rdi
	movq	-64(%rbp), %r14         # 8-byte Reload
	addq	(%r14,%rcx,8), %rdi
	movl	$61, %esi
	callq	strchr
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %eax
	movslq	%eax, %rcx
	testq	%r15, %r15
	je	.LBB1_63
# %bb.64:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	subq	(%r14,%rcx,8), %r15
	jmp	.LBB1_65
.LBB1_63:
	movq	(%r14,%rcx,8), %rdi
	callq	strlen
	movq	%rax, %r15
	movslq	8(%r12), %rax
	movq	%r15, %rcx
	addq	(%r14,%rax,8), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB1_65:
	movl	20(%r12), %ecx
	movq	%r14, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movl	$-1, %edx
	je	.LBB1_81
# %bb.66:                               # %.preheader
	movslq	%ecx, %rdx
	subq	%rdx, %r15
	movl	$-1, -80(%rbp)          # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movq	%r10, %r14
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	cltq
	movslq	%ecx, %rdi
	addq	(%r11,%rax,8), %rdi
	movq	%r15, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_67 Depth=1
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_75
.LBB1_69:                               #   in Loop: Header=BB1_67 Depth=1
	movq	(%r14), %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	je	.LBB1_70
# %bb.73:                               #   in Loop: Header=BB1_67 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	-64(%rbp), %r11         # 8-byte Reload
	jns	.LBB1_77
# %bb.74:                               #   in Loop: Header=BB1_67 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, -80(%rbp)        # 4-byte Spill
	movq	-56(%rbp), %r10         # 8-byte Reload
.LBB1_75:                               #   in Loop: Header=BB1_67 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_76
# %bb.80:                               #   in Loop: Header=BB1_67 Depth=1
	movq	16(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	20(%rcx), %ecx
	addq	$32, %r14
	addl	$1, %r12d
	jmp	.LBB1_67
.LBB1_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_82
.LBB1_76:
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB1_71
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jb	.LBB1_34
# %bb.32:
	movl	%r9d, %eax
	notl	%eax
	movl	%ecx, %r8d
	shrl	%r8d
	xorl	%edx, %edx
.LBB1_33:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rdx,8), %rsi
	cltq
	movq	(%rbx,%rax,8), %rdi
	movq	%rdi, (%rbx,%rdx,8)
	movq	%rsi, (%rbx,%rax,8)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpq	%r8, %rdx
	jb	.LBB1_33
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB1_37
# %bb.35:
	shrl	%r12d
	xorl	%eax, %eax
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rax,8), %rsi
	movslq	%ecx, %rcx
	movq	(%rbx,%rcx,8), %rdx
	movq	%rdx, (%rbx,%rax,8)
	movq	%rsi, (%rbx,%rcx,8)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ecx
	cmpq	%r12, %rax
	jb	.LBB1_36
.LBB1_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	16(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB1_136
.LBB1_103:
	movslq	8(%r12), %rcx
	leal	1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jge	.LBB1_104
# %bb.110:
	movq	8(%r11,%rcx,8), %rax
	movq	%rax, (%r12)
	movl	$1, 20(%r12)
	movl	$1, %ecx
	movl	$1, %r8d
	jmp	.LBB1_115
.LBB1_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_136
.LBB1_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_43:
	addl	$1, %ecx
	movl	%ecx, 8(%r12)
	movq	%rax, (%r12)
	movl	$1, 16(%r12)
	movl	$1, %r14d
	jmp	.LBB1_136
.LBB1_70:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	%r12d, %edx
.LBB1_71:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movq	16(%rbp), %r12
	movq	-88(%rbp), %r14         # 8-byte Reload
	js	.LBB1_82
# %bb.72:
	movslq	%edx, %rax
	shlq	$5, %rax
	movl	8(%r10,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB1_94
.LBB1_77:
	movq	16(%rbp), %r15
	cmpl	$0, 12(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_79
# %bb.78:
	movq	(%r11), %rbx
	movq	%r11, %r13
	movl	%eax, %r12d
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.2, %edi
	callq	fputs
	movslq	8(%r15), %rax
	movq	(%r13,%rax,8), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.3, %edi
	callq	fputs
	movslq	%r12d, %rax
	shlq	$5, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	(%r14), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.5, %edi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
.LBB1_79:
	movl	$63, 16(%r15)
	movl	$63, %r14d
	jmp	.LBB1_136
.LBB1_104:
	cmpl	$0, 12(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_109
# %bb.105:
	movq	(%r11), %rbx
	movl	%edx, %r14d
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_107
# %bb.106:
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$45, %edi
	callq	fputc
	movslq	%r14d, %rax
	shlq	$5, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax), %rbx
	callq	__getreent
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	callq	fputs
	xorl	%eax, %eax
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	sete	%al
	leal	(%rax,%rax,4), %eax
	addl	$58, %eax
	jmp	.LBB1_108
.LBB1_107:
	movsbl	(%r15), %ebx
	callq	__getreent
	movq	24(%rax), %rsi
	movl	%ebx, %edi
	callq	fputc
	movsbl	(%r15), %eax
.LBB1_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 16(%r12)
	callq	__getreent
	movq	24(%rax), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %eax
	addl	$1, %eax
.LBB1_109:
	movl	%eax, 8(%r12)
	xorl	%eax, %eax
	cmpl	$0, -92(%rbp)           # 4-byte Folded Reload
	sete	%al
	leal	(%rax,%rax,4), %r14d
	addl	$58, %r14d
	jmp	.LBB1_136
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
