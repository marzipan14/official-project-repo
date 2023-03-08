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
	subq	$280, %rsp              # imm = 0x118
	movq	%rdi, %r13
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm1, -256(%rbp)
	movaps	%xmm2, -240(%rbp)
	movaps	%xmm3, -224(%rbp)
	movaps	%xmm4, -208(%rbp)
	movaps	%xmm5, -192(%rbp)
	movaps	%xmm6, -176(%rbp)
	movaps	%xmm7, -160(%rbp)
.LBB0_2:
	movq	%rsi, -312(%rbp)
	movq	%rdx, -304(%rbp)
	movq	%rcx, -296(%rbp)
	movq	%r8, -288(%rbp)
	movq	%r9, -280(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -80(%rbp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r13
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r13
	movb	%al, -128(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-128(%rbp), %rdx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_26 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_63
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	jne	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movsbl	1(%r13), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %r14d
	je	.LBB0_6
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$78, %r14b
	jne	.LBB0_33
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %rax
	jae	.LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rdx
	leal	8(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx,%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$40, %ecx
	ja	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	%ecx, %rcx
	addq	-64(%rbp), %rcx
	addl	$16, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_14
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$2, %r13
	movl	$42, __A_VARIABLE(%rip)
	leal	-99(%r14), %eax
	cmpl	$21, %eax
	ja	.LBB0_62
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=1
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_49
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_50
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -72(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r15
	movsbl	2(%r13), %ebx
	addq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_62
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r13, -136(%rbp)        # 8-byte Spill
	cmpb	$120, %bl
	movl	$10, %r13d
	movl	$16, %eax
	cmoveq	%rax, %r13
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	leal	-99(%rbx), %eax
	cmpl	$21, %eax
	ja	.LBB0_31
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$100, %bl
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=2
	movslq	%r12d, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$100, %bl
	jne	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=2
	testq	%r12, %r12
	jns	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=2
	movb	$45, -41(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-41(%rbp), %rdx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	negq	%r12
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -97(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-97(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_26:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rax
	xorl	%edx, %edx
	divq	%r13
	movzbl	print_number.chars(%rdx), %ecx
	movb	%cl, -1(%rbx)
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	movq	%rax, %r12
	jae	.LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=2
	callq	__getreent
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r15
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_30
.LBB0_18:                               #   in Loop: Header=BB0_16 Depth=2
	movzbl	(%r15), %eax
	addq	$1, %r15
	movq	__unctrl(,%rax,8), %rbx
	callq	__getreent
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_16 Depth=2
	movq	(%r15), %rbx
	callq	__getreent
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_write_r
	jmp	.LBB0_29
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$48, -98(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	callq	__getreent
	movq	%rax, %rbx
	leaq	-98(%rbp), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	$2, %esi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r15
.LBB0_30:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_31:                               #   in Loop: Header=BB0_16 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB0_61
# %bb.32:                               #   in Loop: Header=BB0_16 Depth=2
	addl	$-1, %r14d
	movb	$32, -128(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-128(%rbp), %rdx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %r13        # 8-byte Reload
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movslq	%eax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$100, %r14b
	jne	.LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=1
	testl	%eax, %eax
	jns	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=1
	movb	$45, -41(%rbp)
	callq	__getreent
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	$2, %esi
	leaq	-41(%rbp), %rdx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
	negq	%rbx
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=1
	cmpb	$120, %r14b
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -97(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$10, %ecx
	movl	$16, %eax
	cmoveq	%rax, %rcx
	leaq	-97(%rbp), %r12
	.p2align	4, 0x90
.LBB0_54:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movzbl	print_number.chars(%rdx), %edx
	movb	%dl, -1(%r12)
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	movq	%rax, %rbx
	jae	.LBB0_54
# %bb.55:                               #   in Loop: Header=BB0_3 Depth=1
	callq	__getreent
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	jmp	.LBB0_45
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_38
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_58
# %bb.57:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_59
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	movslq	-80(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_41
# %bb.40:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %rax
	addq	-64(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_42
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %eax
	movq	__unctrl(,%rax,8), %rbx
	jmp	.LBB0_60
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=1
	callq	__getreent
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_write_r
	jmp	.LBB0_46
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -97(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-97(%rbp), %rbx
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_43:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	andl	$15, %edx
	movzbl	print_number.chars(%rdx), %edx
	movb	%dl, -1(%rbx)
	addq	$-1, %rbx
	shrq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$15, %rax
	movq	%rcx, %rax
	ja	.LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=1
	callq	__getreent
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rcx
	callq	_write_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_63:
	movl	$42, __A_VARIABLE(%rip)
	addq	$280, %rsp              # imm = 0x118
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
	.quad	.LBB0_35
	.quad	.LBB0_47
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_39
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_56
	.quad	.LBB0_62
	.quad	.LBB0_47
	.quad	.LBB0_62
	.quad	.LBB0_62
	.quad	.LBB0_47
.LJTI0_1:
	.quad	.LBB0_18
	.quad	.LBB0_20
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_19
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_28
	.quad	.LBB0_31
	.quad	.LBB0_20
	.quad	.LBB0_31
	.quad	.LBB0_31
	.quad	.LBB0_20
                                        # -- End function
	.type	print_number.chars,@object # @print_number.chars
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
print_number.chars:
	.ascii	"0123456789abcdef"
	.size	print_number.chars, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
