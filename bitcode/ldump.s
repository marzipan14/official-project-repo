	.text
	.file	"ldump.c"
	.hidden	luaU_dump               # -- Begin function luaU_dump
	.globl	luaU_dump
	.p2align	4, 0x90
	.type	luaU_dump,@function
luaU_dump:                              # @luaU_dump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rdi, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -48(%rbp)
	leaq	-84(%rbp), %r13
	movq	%r13, %rdi
	callq	luaU_header
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	*%r14
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	DumpFunction
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaU_dump, .Lfunc_end0-luaU_dump
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function DumpFunction
	.type	DumpFunction,@function
DumpFunction:                           # @DumpFunction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r12
	movq	%rdi, %r14
	movq	64(%rdi), %r15
	cmpq	%rsi, %r15
	je	.LBB1_5
# %bb.1:
	testq	%r15, %r15
	je	.LBB1_5
# %bb.2:
	cmpl	$0, 24(%r12)
	jne	.LBB1_5
# %bb.3:
	movq	16(%r15), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	28(%r12), %eax
	testl	%eax, %eax
	je	.LBB1_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_9
.LBB1_5:
	movq	$0, -48(%rbp)
	movl	28(%r12), %eax
	testl	%eax, %eax
	jne	.LBB1_9
# %bb.6:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
.LBB1_7:
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	jmp	.LBB1_9
.LBB1_8:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_94
.LBB1_9:
	leaq	28(%r12), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	96(%r14), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.10:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	100(%r14), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_13
# %bb.12:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	112(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_15
# %bb.14:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	113(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.16:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	114(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_19
# %bb.18:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	115(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_21
# %bb.20:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %r15
	movslq	80(%r14), %rbx
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	je	.LBB1_23
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_25
.LBB1_23:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_25
# %bb.24:
	shlq	$2, %rbx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	76(%r14), %r13d
	movl	%r13d, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_27
# %bb.26:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB1_48
# %bb.28:
	shlq	$4, %r13
	xorl	%r15d, %r15d
	jmp	.LBB1_33
.LBB1_44:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
.LBB1_30:                               #   in Loop: Header=BB1_33 Depth=1
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_31:                               #   in Loop: Header=BB1_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_32:                               #   in Loop: Header=BB1_33 Depth=1
	addq	$16, %r15
	cmpq	%r15, %r13
	je	.LBB1_48
.LBB1_33:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %rbx
	movl	8(%rbx,%r15), %ecx
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	8(%rbx,%r15), %ecx
.LBB1_35:                               #   in Loop: Header=BB1_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	je	.LBB1_40
# %bb.36:                               #   in Loop: Header=BB1_33 Depth=1
	cmpl	$3, %ecx
	je	.LBB1_43
# %bb.37:                               #   in Loop: Header=BB1_33 Depth=1
	cmpl	$1, %ecx
	jne	.LBB1_32
# %bb.38:                               #   in Loop: Header=BB1_33 Depth=1
	movzbl	(%rbx,%r15), %ecx
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.39:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%rbx,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB1_45
# %bb.41:                               #   in Loop: Header=BB1_33 Depth=1
	movq	16(%rbx), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	je	.LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_31
	.p2align	4, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%rbx,%r15), %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_31
	jmp	.LBB1_44
.LBB1_45:                               #   in Loop: Header=BB1_33 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_31
	jmp	.LBB1_44
.LBB1_47:                               #   in Loop: Header=BB1_33 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.29:                               #   in Loop: Header=BB1_33 Depth=1
	addq	$24, %rbx
	movq	-48(%rbp), %rdx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%rbx, %rsi
	jmp	.LBB1_30
.LBB1_48:
	movl	88(%r14), %r15d
	movl	%r15d, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_50
# %bb.49:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB1_53
# %bb.51:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_52:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	64(%r14), %rsi
	movq	(%rax,%rbx,8), %rdi
	movq	%r12, %rdx
	callq	DumpFunction
	addq	$1, %rbx
	cmpq	%rbx, %r15
	jne	.LBB1_52
.LBB1_53:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r12)
	jne	.LBB1_55
# %bb.54:
	movl	84(%r14), %ebx
.LBB1_55:
	movq	40(%r14), %r15
	movl	%ebx, -48(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.LBB1_57
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_59
.LBB1_57:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_59
# %bb.58:
	movslq	%ebx, %rdx
	shlq	$2, %rdx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%r15, %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r12)
	jne	.LBB1_61
# %bb.60:
	movl	92(%r14), %ebx
.LBB1_61:
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_63
# %bb.62:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_78
# %bb.64:
	movl	%ebx, %r13d
	shlq	$4, %r13
	xorl	%r15d, %r15d
	jmp	.LBB1_66
	.p2align	4, 0x90
.LBB1_65:                               #   in Loop: Header=BB1_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	cmpq	%r15, %r13
	je	.LBB1_78
.LBB1_66:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rcx
	movq	(%rcx,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB1_69
# %bb.67:                               #   in Loop: Header=BB1_66 Depth=1
	movq	16(%rbx), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	je	.LBB1_71
# %bb.68:                               #   in Loop: Header=BB1_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_74
	.p2align	4, 0x90
.LBB1_69:                               #   in Loop: Header=BB1_66 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_74
# %bb.70:                               #   in Loop: Header=BB1_66 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	jmp	.LBB1_73
	.p2align	4, 0x90
.LBB1_71:                               #   in Loop: Header=BB1_66 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_74
# %bb.72:                               #   in Loop: Header=BB1_66 Depth=1
	addq	$24, %rbx
	movq	-48(%rbp), %rdx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%rbx, %rsi
.LBB1_73:                               #   in Loop: Header=BB1_66 Depth=1
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_74:                               #   in Loop: Header=BB1_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r14), %rcx
	movl	8(%rcx,%r15), %edx
	movl	%edx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_76
# %bb.75:                               #   in Loop: Header=BB1_66 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movq	48(%r14), %rcx
.LBB1_76:                               #   in Loop: Header=BB1_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rcx,%r15), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_65
# %bb.77:                               #   in Loop: Header=BB1_66 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	jmp	.LBB1_65
.LBB1_78:
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r12)
	jne	.LBB1_80
# %bb.79:
	movl	72(%r14), %ebx
.LBB1_80:
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_82
# %bb.81:
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r12)
	movl	%eax, 28(%r12)
.LBB1_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_93
# %bb.83:
	movl	%ebx, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB1_86
	.p2align	4, 0x90
.LBB1_84:                               #   in Loop: Header=BB1_86 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_85:                               #   in Loop: Header=BB1_86 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	cmpq	%r15, %r13
	je	.LBB1_93
.LBB1_86:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rcx
	movq	(%rcx,%r15,8), %rbx
	testq	%rbx, %rbx
	je	.LBB1_90
# %bb.87:                               #   in Loop: Header=BB1_86 Depth=1
	movq	16(%rbx), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_84
# %bb.88:                               #   in Loop: Header=BB1_86 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_85
# %bb.89:                               #   in Loop: Header=BB1_86 Depth=1
	addq	$24, %rbx
	movq	-48(%rbp), %rdx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%rbx, %rsi
	jmp	.LBB1_92
	.p2align	4, 0x90
.LBB1_90:                               #   in Loop: Header=BB1_86 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_85
# %bb.91:                               #   in Loop: Header=BB1_86 Depth=1
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
.LBB1_92:                               #   in Loop: Header=BB1_86 Depth=1
	callq	*8(%r12)
	movl	%eax, 28(%r12)
	jmp	.LBB1_85
.LBB1_93:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_94:
	addq	$24, %r15
	movq	-48(%rbp), %rdx
	movq	(%r12), %rdi
	movq	16(%r12), %rcx
	movq	%r15, %rsi
	jmp	.LBB1_7
.Lfunc_end1:
	.size	DumpFunction, .Lfunc_end1-DumpFunction
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaU_header
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
