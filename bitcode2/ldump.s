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
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rcx
	callq	*%r14
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rax
	movq	%rdx, %r13
	movq	%rdi, %r14
	movq	64(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_4
.LBB1_3:
	xorl	%edi, %edi
	jmp	.LBB1_5
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movq	%r13, %rsi
	callq	DumpString
	movl	96(%r14), %eax
	movl	%eax, -48(%rbp)
	movl	28(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_7
# %bb.6:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	100(%r14), %ecx
	movl	%ecx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_9
# %bb.8:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	112(%r14), %cl
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.10:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	113(%r14), %cl
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_13
# %bb.12:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	114(%r14), %cl
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_15
# %bb.14:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	115(%r14), %cl
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.16:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %r15
	movslq	80(%r14), %r12
	movl	%r12d, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_20
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_20:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_69
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	76(%r14), %r12d
	movl	%r12d, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_23
# %bb.22:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB1_39
# %bb.24:
	shlq	$4, %r12
	xorl	%ebx, %ebx
	jmp	.LBB1_29
.LBB1_25:                               #   in Loop: Header=BB1_29 Depth=1
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:                               #   in Loop: Header=BB1_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_27:                               #   in Loop: Header=BB1_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	28(%r13), %eax
	addq	$16, %rbx
	cmpq	%rbx, %r12
	je	.LBB1_39
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %r15
	movl	8(%r15,%rbx), %ecx
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$1, %edx
	leaq	-48(%rbp), %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15,%rbx), %ecx
.LBB1_31:                               #   in Loop: Header=BB1_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	je	.LBB1_36
# %bb.32:                               #   in Loop: Header=BB1_29 Depth=1
	cmpl	$3, %ecx
	je	.LBB1_37
# %bb.33:                               #   in Loop: Header=BB1_29 Depth=1
	cmpl	$1, %ecx
	jne	.LBB1_28
# %bb.34:                               #   in Loop: Header=BB1_29 Depth=1
	movzbl	(%r15,%rbx), %ecx
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.35:                               #   in Loop: Header=BB1_29 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$1, %edx
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_29 Depth=1
	movq	(%r15,%rbx), %rdi
	movq	%r13, %rsi
	callq	DumpString
	jmp	.LBB1_27
	.p2align	4, 0x90
.LBB1_37:                               #   in Loop: Header=BB1_29 Depth=1
	movq	(%r15,%rbx), %rcx
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_26
# %bb.38:                               #   in Loop: Header=BB1_29 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$8, %edx
	jmp	.LBB1_25
.LBB1_39:
	movl	88(%r14), %r15d
	movl	%r15d, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_41
# %bb.40:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB1_44
# %bb.42:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_43:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	64(%r14), %rsi
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rdx
	callq	DumpFunction
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB1_43
.LBB1_44:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_46
# %bb.45:
	movl	84(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_46:
	movq	40(%r14), %r15
	movl	%ebx, -48(%rbp)
	movl	28(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_49
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_48:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_50
.LBB1_49:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_70
.LBB1_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_52
# %bb.51:
	movl	92(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_52:
	movl	%ebx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_54
# %bb.53:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_61
# %bb.55:
	movl	%ebx, %r12d
	shlq	$4, %r12
	xorl	%ebx, %ebx
	leaq	-48(%rbp), %r15
	jmp	.LBB1_57
	.p2align	4, 0x90
.LBB1_56:                               #   in Loop: Header=BB1_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rbx, %r12
	je	.LBB1_61
.LBB1_57:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r14), %rax
	movq	(%rax,%rbx), %rdi
	movq	%r13, %rsi
	callq	DumpString
	movq	48(%r14), %rcx
	movl	8(%rcx,%rbx), %eax
	movl	%eax, -48(%rbp)
	movl	28(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_57 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$4, %edx
	movq	%r15, %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r14), %rcx
.LBB1_59:                               #   in Loop: Header=BB1_57 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rcx,%rbx), %ecx
	movl	%ecx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_56
# %bb.60:                               #   in Loop: Header=BB1_57 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movl	$4, %edx
	movq	%r15, %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_56
.LBB1_61:
	xorl	%ebx, %ebx
	cmpl	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_63
# %bb.62:
	movl	72(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_63:
	movl	%ebx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_65
# %bb.64:
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB1_68
# %bb.66:
	movl	%ebx, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_67:                               # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	DumpString
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB1_67
.LBB1_68:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_69:
	shlq	$2, %r12
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_19
.LBB1_70:
	movslq	%ebx, %rdx
	shlq	$2, %rdx
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movq	%r15, %rsi
	callq	*8(%r13)
	movl	%eax, 28(%r13)
	jmp	.LBB1_48
.Lfunc_end1:
	.size	DumpFunction, .Lfunc_end1-DumpFunction
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function DumpString
	.type	DumpString,@function
DumpString:                             # @DumpString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_5
# %bb.1:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_8
.LBB2_5:
	movq	$0, -24(%rbp)
	cmpl	$0, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_9
# %bb.6:
	movq	(%r14), %rdi
	movq	16(%r14), %rcx
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	jmp	.LBB2_7
.LBB2_3:
	movq	(%r14), %rdi
	movq	16(%r14), %rcx
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	callq	*8(%r14)
	movl	%eax, 28(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_9
# %bb.4:
	addq	$24, %rbx
	movq	(%r14), %rdi
	movq	16(%r14), %rcx
	movq	%rbx, %rsi
.LBB2_7:
	callq	*8(%r14)
	movl	%eax, 28(%r14)
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	DumpString, .Lfunc_end2-DumpString
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaU_header
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
