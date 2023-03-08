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
	leaq	-72(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	DumpFunction
	movl	-44(%rbp), %eax
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
	movq	%rdx, %r13
	movq	%rdi, %r14
	movq	64(%rdi), %r15
	cmpq	%rsi, %r15
	je	.LBB1_3
# %bb.1:
	testq	%r15, %r15
	je	.LBB1_3
# %bb.2:
	cmpl	$0, 24(%r13)
	jne	.LBB1_3
# %bb.5:
	movq	16(%r15), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movl	28(%r13), %eax
	testl	%eax, %eax
	jne	.LBB1_9
# %bb.6:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	jne	.LBB1_9
# %bb.7:
	addq	$24, %r15
	movq	-48(%rbp), %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r15, %rsi
	jmp	.LBB1_8
.LBB1_3:
	movq	$0, -48(%rbp)
	movl	28(%r13), %eax
	testl	%eax, %eax
	jne	.LBB1_9
# %bb.4:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
.LBB1_8:
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_9:
	leaq	28(%r13), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	96(%r14), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.10:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_11:
	movl	100(%r14), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_13
# %bb.12:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_13:
	movb	112(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_15
# %bb.14:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_15:
	movb	113(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.16:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_17:
	movb	114(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_19
# %bb.18:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_19:
	movb	115(%r14), %cl
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_21
# %bb.20:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_21:
	movq	24(%r14), %r15
	movslq	80(%r14), %rbx
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_23
# %bb.22:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	je	.LBB1_24
.LBB1_23:
	movl	76(%r14), %ebx
	movl	%ebx, -48(%rbp)
.LBB1_26:
	testl	%ebx, %ebx
	jle	.LBB1_45
# %bb.27:
	movl	%ebx, %r12d
	shlq	$4, %r12
	xorl	%r15d, %r15d
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_28
.LBB1_43:                               #   in Loop: Header=BB1_28 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_28 Depth=1
	addq	$16, %r15
	cmpq	%r15, %r12
	je	.LBB1_45
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %rbx
	movl	8(%rbx,%r15), %ecx
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	je	.LBB1_29
# %bb.30:                               #   in Loop: Header=BB1_28 Depth=1
	cmpl	$4, %ecx
	je	.LBB1_38
.LBB1_31:                               #   in Loop: Header=BB1_28 Depth=1
	cmpl	$3, %ecx
	je	.LBB1_36
# %bb.32:                               #   in Loop: Header=BB1_28 Depth=1
	cmpl	$1, %ecx
	jne	.LBB1_44
# %bb.33:                               #   in Loop: Header=BB1_28 Depth=1
	movzbl	(%rbx,%r15), %ecx
	movb	%cl, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_44
# %bb.34:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$1, %edx
	jmp	.LBB1_35
	.p2align	4, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	8(%rbx,%r15), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_31
.LBB1_38:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%rbx,%r15), %r12
	testq	%r12, %r12
	je	.LBB1_39
# %bb.40:                               #   in Loop: Header=BB1_28 Depth=1
	movq	16(%r12), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_43
# %bb.41:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	jne	.LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_28 Depth=1
	addq	$24, %r12
	movq	-48(%rbp), %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r12, %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%rbx,%r15), %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_44
	jmp	.LBB1_37
.LBB1_39:                               #   in Loop: Header=BB1_28 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_44
.LBB1_37:                               #   in Loop: Header=BB1_28 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
.LBB1_35:                               #   in Loop: Header=BB1_28 Depth=1
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_44
.LBB1_45:
	movl	88(%r14), %r15d
	movl	%r15d, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_47
# %bb.46:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_47:
	testl	%r15d, %r15d
	jle	.LBB1_50
# %bb.48:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_49:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	64(%r14), %rsi
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rdx
	callq	DumpFunction
	addq	$1, %rbx
	cmpq	%rbx, %r15
	jne	.LBB1_49
.LBB1_50:
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	jne	.LBB1_52
# %bb.51:
	movl	84(%r14), %ebx
.LBB1_52:
	movq	40(%r14), %r15
	movl	%ebx, -48(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.LBB1_55
# %bb.53:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	jne	.LBB1_55
# %bb.54:
	movslq	%ebx, %rdx
	shlq	$2, %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r15, %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_55:
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	jne	.LBB1_57
# %bb.56:
	movl	92(%r14), %ebx
.LBB1_57:
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_59
# %bb.58:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_59:
	testl	%ebx, %ebx
	jle	.LBB1_73
# %bb.60:
	movl	%ebx, %r12d
	shlq	$4, %r12
	xorl	%r15d, %r15d
	jmp	.LBB1_61
	.p2align	4, 0x90
.LBB1_72:                               #   in Loop: Header=BB1_61 Depth=1
	addq	$16, %r15
	cmpq	%r15, %r12
	je	.LBB1_73
.LBB1_61:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rcx
	movq	(%rcx,%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB1_62
# %bb.64:                               #   in Loop: Header=BB1_61 Depth=1
	movq	16(%rbx), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_68
# %bb.65:                               #   in Loop: Header=BB1_61 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	jne	.LBB1_68
# %bb.66:                               #   in Loop: Header=BB1_61 Depth=1
	addq	$24, %rbx
	movq	-48(%rbp), %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%rbx, %rsi
	jmp	.LBB1_67
	.p2align	4, 0x90
.LBB1_62:                               #   in Loop: Header=BB1_61 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_68
# %bb.63:                               #   in Loop: Header=BB1_61 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
.LBB1_67:                               #   in Loop: Header=BB1_61 Depth=1
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_68:                               #   in Loop: Header=BB1_61 Depth=1
	movq	48(%r14), %rcx
	movl	8(%rcx,%r15), %edx
	movl	%edx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_61 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movq	48(%r14), %rcx
.LBB1_70:                               #   in Loop: Header=BB1_61 Depth=1
	movl	12(%rcx,%r15), %ecx
	movl	%ecx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_61 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_72
.LBB1_73:
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	jne	.LBB1_75
# %bb.74:
	movl	72(%r14), %ebx
.LBB1_75:
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_77
# %bb.76:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
.LBB1_77:
	testl	%ebx, %ebx
	jle	.LBB1_87
# %bb.78:
	movl	%ebx, %r12d
	xorl	%r15d, %r15d
	jmp	.LBB1_79
	.p2align	4, 0x90
.LBB1_80:                               #   in Loop: Header=BB1_79 Depth=1
	movq	$0, -48(%rbp)
	testl	%eax, %eax
	je	.LBB1_81
.LBB1_86:                               #   in Loop: Header=BB1_79 Depth=1
	addq	$1, %r15
	cmpq	%r15, %r12
	je	.LBB1_87
.LBB1_79:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rcx
	movq	(%rcx,%r15,8), %rbx
	testq	%rbx, %rbx
	je	.LBB1_80
# %bb.82:                               #   in Loop: Header=BB1_79 Depth=1
	movq	16(%rbx), %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_86
# %bb.83:                               #   in Loop: Header=BB1_79 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	testl	%eax, %eax
	jne	.LBB1_86
# %bb.84:                               #   in Loop: Header=BB1_79 Depth=1
	addq	$24, %rbx
	movq	-48(%rbp), %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%rbx, %rsi
	jmp	.LBB1_85
.LBB1_81:                               #   in Loop: Header=BB1_79 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
.LBB1_85:                               #   in Loop: Header=BB1_79 Depth=1
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_86
.LBB1_87:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_24:
	shlq	$2, %rbx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	76(%r14), %ebx
	movl	%ebx, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.25:
	leaq	-48(%rbp), %rsi
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_26
.Lfunc_end1:
	.size	DumpFunction, .Lfunc_end1-DumpFunction
                                        # -- End function
	.hidden	luaU_header
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
