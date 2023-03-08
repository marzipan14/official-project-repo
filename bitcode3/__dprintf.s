	.text
	.file	"__dprintf.c"
	.globl	__dprintf               # -- Begin function __dprintf
	.p2align	4, 0x90
	.type	__dprintf,@function
__dprintf:                              # @__dprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rdi, %r12
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm1, -240(%rbp)
	movaps	%xmm2, -224(%rbp)
	movaps	%xmm3, -208(%rbp)
	movaps	%xmm4, -192(%rbp)
	movaps	%xmm5, -176(%rbp)
	movaps	%xmm6, -160(%rbp)
	movaps	%xmm7, -144(%rbp)
.LBB0_2:
	movq	%rsi, -296(%rbp)
	movq	%rdx, -288(%rbp)
	movq	%rcx, -280(%rbp)
	movq	%r8, -272(%rbp)
	movq	%r9, -264(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -80(%rbp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	testb	%al, %al
	je	.LBB0_5
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rbx
	movb	%al, -112(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-112(%rbp), %rdx
	callq	_write_r
	movq	%rbx, %r12
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #       Child Loop BB0_25 Depth 3
	movq	%r12, %rbx
	movb	(%r12), %al
	cmpb	$37, %al
	jne	.LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movsbl	1(%rbx), %r14d
	cmpl	$78, %r14d
	je	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$37, %r14b
	jne	.LBB0_32
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rbx
	jmp	.LBB0_9
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	cmpq	$41, %rcx
	jae	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rdx
	leal	8(%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	(%rdx,%rcx), %r14d
	cmpl	$40, %eax
	ja	.LBB0_12
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	cltq
	addq	-64(%rbp), %rax
	addl	$16, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_15
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rbx, %r12
	addq	$2, %r12
	leal	-99(%r14), %eax
	cmpl	$21, %eax
	ja	.LBB0_3
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=1
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_48
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movl	(%rax), %r14d
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	3(%rbx), %r12
	testl	%r14d, %r14d
	jle	.LBB0_3
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r12, -128(%rbp)        # 8-byte Spill
	movsbl	2(%rbx), %ecx
	movq	(%rax), %r13
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	cmpb	$120, %cl
	movl	$10, %r12d
	movl	$16, %eax
	cmoveq	%rax, %r12
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_25 Depth 3
	movq	-120(%rbp), %rax        # 8-byte Reload
	addl	$-99, %eax
	cmpl	$21, %eax
	ja	.LBB0_29
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=2
	movl	(%r13), %eax
	movslq	%eax, %r15
	cmpb	$100, -120(%rbp)        # 1-byte Folded Reload
	cmovneq	%rax, %r15
	jne	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_17 Depth=2
	testq	%r15, %r15
	jns	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_17 Depth=2
	movb	$45, -41(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-41(%rbp), %rdx
	callq	_write_r
	negq	%r15
.LBB0_24:                               #   in Loop: Header=BB0_17 Depth=2
	movb	$0, -81(%rbp)
	leaq	-81(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%r12
	movzbl	print_number.chars(%rdx), %ecx
	movb	%cl, -1(%rbx)
	addq	$-1, %rbx
	cmpq	%r12, %r15
	movq	%rax, %r15
	jae	.LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_17 Depth=2
	callq	__getreent
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_write_r
	addq	$4, %r13
	jmp	.LBB0_29
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=2
	movzbl	(%r13), %eax
	addq	$1, %r13
	movq	__unctrl(,%rax,8), %rbx
	callq	__getreent
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_write_r
	jmp	.LBB0_29
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=2
	movw	$48, -82(%rbp)
	callq	__getreent
	movq	%rax, %rbx
	leaq	-82(%rbp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	jmp	.LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=2
	movq	(%r13), %rbx
	callq	__getreent
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
.LBB0_28:                               #   in Loop: Header=BB0_17 Depth=2
	movq	%rax, %rcx
	callq	_write_r
	addq	$8, %r13
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=2
	leal	-1(%r14), %ebx
	cmpl	$2, %r14d
	jl	.LBB0_30
# %bb.31:                               #   in Loop: Header=BB0_17 Depth=2
	movb	$32, -112(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-112(%rbp), %rdx
	callq	_write_r
	movl	%ebx, %r14d
	jmp	.LBB0_17
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-128(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_3
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	movl	(%rax), %eax
	movslq	%eax, %rbx
	cmpb	$100, %r14b
	jne	.LBB0_51
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=1
	testl	%eax, %eax
	jns	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=1
	movb	$45, -41(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-41(%rbp), %rdx
	callq	_write_r
	negq	%rbx
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	cmpb	$120, %r14b
	movb	$0, -81(%rbp)
	movl	$10, %ecx
	movl	$16, %eax
	cmoveq	%rax, %rcx
	leaq	-81(%rbp), %r15
	.p2align	4, 0x90
.LBB0_52:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	print_number.chars(%rdx), %edx
	movb	%dl, -1(%r15)
	addq	$-1, %r15
	cmpq	%rcx, %rbx
	movq	%rax, %rbx
	jae	.LBB0_52
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=1
	callq	__getreent
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	jmp	.LBB0_44
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_41
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	movq	(%rax), %rbx
	jmp	.LBB0_43
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_37
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rax
	movb	$0, -81(%rbp)
	leaq	-81(%rbp), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_42:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	print_number.chars(%rdx), %edx
	movb	%dl, -1(%rbx)
	addq	$-1, %rbx
	shrq	$4, %rcx
	cmpq	$15, %rax
	movq	%rcx, %rax
	ja	.LBB0_42
	jmp	.LBB0_43
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	(%rax), %rbx
	jmp	.LBB0_43
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	movzbl	(%rax), %eax
	movq	__unctrl(,%rax,8), %rbx
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=1
	callq	__getreent
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rcx
	callq	_write_r
	jmp	.LBB0_3
.LBB0_5:
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__dprintf, .Lfunc_end0-__dprintf
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_19
	.quad	.LBB0_21
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_20
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_27
	.quad	.LBB0_29
	.quad	.LBB0_21
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_21
.LJTI0_1:
	.quad	.LBB0_34
	.quad	.LBB0_45
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_38
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_54
	.quad	.LBB0_3
	.quad	.LBB0_45
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_45
                                        # -- End function
	.type	print_number.chars,@object # @print_number.chars
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
print_number.chars:
	.ascii	"0123456789abcdef"
	.size	print_number.chars, 16

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
