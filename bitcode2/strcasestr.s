	.text
	.file	"strcasestr.c"
	.globl	strcasestr              # -- Begin function strcasestr
	.p2align	4, 0x90
	.type	strcasestr,@function
strcasestr:                             # @strcasestr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2152, %rsp             # imm = 0x868
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rsi)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	je	.LBB0_8
# %bb.1:                                # %.preheader21
	leaq	1(%rdi), %r13
	movl	$1, %r12d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	cmpl	%ebx, %r14d
	sete	%al
	andl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%r15)
	leaq	1(%r15), %r15
	sete	%al
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%bl, %r14d
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$32, %r14d
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	(%r15), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$32, %ebx
	jmp	.LBB0_2
.LBB0_8:
	movl	$1, %r12d
.LBB0_9:
	testb	%al, %al
	jne	.LBB0_12
# %bb.10:
	xorl	%eax, %eax
	jmp	.LBB0_54
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_14
# %bb.13:
	movq	-104(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_54
.LBB0_14:
	movq	-112(%rbp), %r13        # 8-byte Reload
	subq	%r13, %r15
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r15
	ja	.LBB0_18
# %bb.15:
	leaq	-2192(%rbp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	critical_factorization
	movq	%rax, %r14
	movq	-2192(%rbp), %rbx
	leaq	(%rbx,%r13), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r14, -48(%rbp)         # 8-byte Spill
	je	.LBB0_26
# %bb.16:
	movq	%r15, %r12
	subq	%r14, %r12
	cmpq	%r12, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%r14, %r12
	addq	$1, %r12
	movq	%r12, -2192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_31
# %bb.17:
	xorl	%r12d, %r12d
	jmp	.LBB0_53
.LBB0_18:
	leaq	-1(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	-136(%rbp), %rdx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	critical_factorization
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, -2192(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -2184(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -2176(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -2168(%rbp,%rax,8)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB0_19
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_23
# %bb.21:                               # %.preheader19
	movq	%r13, %r14
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	leal	32(%r12), %ecx
	cmpb	$1, %al
	cmovnel	%r12d, %ecx
	movq	%rbx, -2192(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	addq	$-1, %rbx
	jb	.LBB0_22
.LBB0_23:
	movq	-136(%rbp), %rbx
	leaq	(%rbx,%r13), %rsi
	movq	%r13, %rdi
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_28
# %bb.24:
	movq	%r15, %rax
	subq	%r14, %rax
	cmpq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%r14, %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_29
# %bb.25:
	leaq	(%r14,%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r15, %r12
	jmp	.LBB0_58
.LBB0_26:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movl	$1, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_77
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_53
.LBB0_28:
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movl	$1, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$1, %edx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_100
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_54
.LBB0_31:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	leaq	(%r14,%r13), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r15, %rbx
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_43 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_53
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jbe	.LBB0_41
# %bb.34:                               # %.preheader6
                                        #   in Loop: Header=BB0_32 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	addq	-48(%rbp), %r14         # 8-byte Folded Reload
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_35:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%r13), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	addl	$32, %r12d
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=2
	movzbl	(%r14,%r13), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_35 Depth=2
	addl	$32, %ebx
.LBB0_39:                               #   in Loop: Header=BB0_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r12d
	jne	.LBB0_49
# %bb.40:                               #   in Loop: Header=BB0_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r13, %rax
	addq	$1, %rax
	addq	$1, %r13
	cmpq	%r15, %rax
	jb	.LBB0_35
.LBB0_41:                               #   in Loop: Header=BB0_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %r14
	jmp	.LBB0_43
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_43 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	cmpl	%r13d, %r12d
	jne	.LBB0_48
.LBB0_43:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r14
	jb	.LBB0_51
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%rbx), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=2
	addl	$32, %r12d
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_42
# %bb.47:                               #   in Loop: Header=BB0_43 Depth=2
	addl	$32, %r13d
	jmp	.LBB0_42
.LBB0_48:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-80(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
.LBB0_50:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	xorl	%r12d, %r12d
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_32
	jmp	.LBB0_53
.LBB0_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-56(%rbp), %rax         # 8-byte Folded Reload
.LBB0_52:
	movq	%rax, %r12
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2152, %rsp             # imm = 0x868
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_55:                               #   in Loop: Header=BB0_58 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB0_56:                               #   in Loop: Header=BB0_58 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_57:                               #   in Loop: Header=BB0_58 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rbx, %rcx
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%r12, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	testq	%rax, %rax
	jne	.LBB0_29
.LBB0_58:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_62 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_29
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movzbl	(%rax,%r12), %ebx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	movq	-2192(%rbp,%rcx,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_57
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=1
	movq	%r12, -120(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r14         # 8-byte Folded Reload
	jae	.LBB0_68
# %bb.61:                               # %.preheader16
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	addq	%r14, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_62:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_62 Depth=2
	addl	$32, %r14d
.LBB0_64:                               #   in Loop: Header=BB0_62 Depth=2
	movzbl	(%r12,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_62 Depth=2
	addl	$32, %r13d
.LBB0_66:                               #   in Loop: Header=BB0_62 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r14d
	jne	.LBB0_75
# %bb.67:                               #   in Loop: Header=BB0_62 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	leaq	(%r14,%rbx), %rax
	addq	$1, %rax
	addq	$1, %rbx
	cmpq	-72(%rbp), %rax         # 8-byte Folded Reload
	movq	-112(%rbp), %r13        # 8-byte Reload
	jb	.LBB0_62
.LBB0_68:                               #   in Loop: Header=BB0_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rbx
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_69:                               #   in Loop: Header=BB0_70 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	cmpl	%r12d, %r13d
	movq	-112(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_55
.LBB0_70:                               #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r14
	jb	.LBB0_76
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	movzbl	-1(%r13,%rbx), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_70 Depth=2
	addl	$32, %r13d
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_69
# %bb.74:                               #   in Loop: Header=BB0_70 Depth=2
	addl	$32, %r12d
	jmp	.LBB0_69
.LBB0_75:                               #   in Loop: Header=BB0_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_56
.LBB0_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-88(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_30
.LBB0_77:
	movq	%r15, %rax
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	subq	%r14, -128(%rbp)        # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_80
.LBB0_78:                               #   in Loop: Header=BB0_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	-128(%rbp), %r12        # 8-byte Folded Reload
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_79:                               #   in Loop: Header=BB0_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%r12, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_27
.LBB0_80:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_83 Depth 2
                                        #     Child Loop BB0_91 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_27
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=1
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r14
	movq	%r14, %r12
	cmovbq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	jae	.LBB0_89
# %bb.82:                               # %.preheader2
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	.p2align	4, 0x90
.LBB0_83:                               #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r12), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=2
	addl	$32, %ebx
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=2
	movzbl	(%r14,%r12), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_83 Depth=2
	addl	$32, %r13d
.LBB0_87:                               #   in Loop: Header=BB0_83 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ebx
	jne	.LBB0_78
# %bb.88:                               #   in Loop: Header=BB0_83 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r12
	movq	-112(%rbp), %r13        # 8-byte Reload
	jb	.LBB0_83
.LBB0_89:                               #   in Loop: Header=BB0_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rbx
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_97
# %bb.90:                               # %.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_91:                               #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r13,%rbx), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_91 Depth=2
	addl	$32, %r14d
.LBB0_93:                               #   in Loop: Header=BB0_91 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r12d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_91 Depth=2
	addl	$32, %r12d
.LBB0_95:                               #   in Loop: Header=BB0_91 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r14d
	jne	.LBB0_98
# %bb.96:                               #   in Loop: Header=BB0_91 Depth=2
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, -72(%rbp)         # 8-byte Folded Reload
	jb	.LBB0_91
.LBB0_97:                               #   in Loop: Header=BB0_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_98:                               #   in Loop: Header=BB0_80 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jae	.LBB0_79
# %bb.99:
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-56(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_52
.LBB0_100:
	movq	%r15, %rax
	subq	-80(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	subq	%r14, -128(%rbp)        # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_103
.LBB0_101:                              #   in Loop: Header=BB0_103 Depth=1
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_102:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%r12, %rcx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %rbx
	movq	%rbx, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_29
.LBB0_103:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_110 Depth 2
                                        #     Child Loop BB0_118 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_29
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movzbl	(%rax,%rbx), %ebx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	movq	-2192(%rbp,%rcx,8), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_108
# %bb.105:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB0_101
# %bb.106:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	jae	.LBB0_101
# %bb.107:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_102
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r14
	movq	%r14, %r12
	cmovbq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r12         # 8-byte Folded Reload
	jae	.LBB0_116
# %bb.109:                              # %.preheader12
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	.p2align	4, 0x90
.LBB0_110:                              #   Parent Loop BB0_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r12), %r13d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_110 Depth=2
	addl	$32, %r13d
.LBB0_112:                              #   in Loop: Header=BB0_110 Depth=2
	movzbl	(%r14,%r12), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_110 Depth=2
	addl	$32, %ebx
.LBB0_114:                              #   in Loop: Header=BB0_110 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	jne	.LBB0_126
# %bb.115:                              #   in Loop: Header=BB0_110 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r12         # 8-byte Folded Reload
	movq	-112(%rbp), %r13        # 8-byte Reload
	jb	.LBB0_110
.LBB0_116:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r13
	cmpq	%rax, -64(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_124
# %bb.117:                              # %.preheader9
                                        #   in Loop: Header=BB0_103 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_118:                              #   Parent Loop BB0_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movzbl	-1(%rax,%r13), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_120
# %bb.119:                              #   in Loop: Header=BB0_118 Depth=2
	addl	$32, %r14d
.LBB0_120:                              #   in Loop: Header=BB0_118 Depth=2
	movzbl	(%r12,%r13), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_118 Depth=2
	addl	$32, %ebx
.LBB0_122:                              #   in Loop: Header=BB0_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r14d
	jne	.LBB0_125
# %bb.123:                              #   in Loop: Header=BB0_118 Depth=2
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, -64(%rbp)         # 8-byte Folded Reload
	jb	.LBB0_118
.LBB0_124:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_125:                              #   in Loop: Header=BB0_103 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-112(%rbp), %r13        # 8-byte Reload
	jae	.LBB0_127
	jmp	.LBB0_128
.LBB0_126:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	-128(%rbp), %r12        # 8-byte Folded Reload
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_127:                              #   in Loop: Header=BB0_103 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_102
.LBB0_128:
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	-56(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB0_30
.Lfunc_end0:
	.size	strcasestr, .Lfunc_end0-strcasestr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function critical_factorization
	.type	critical_factorization,@function
critical_factorization:                 # @critical_factorization
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_35
# %bb.1:                                # %.preheader1
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	$-1, %r14
	movl	$1, %ebx
	xorl	%r12d, %r12d
	movl	$1, %r13d
	movl	$1, %eax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	subq	%r14, %rax
	movl	$1, %r13d
.LBB1_14:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r13, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rbx
	jae	.LBB1_15
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzbl	(%rax,%rbx), %r15d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addb	$32, %r15b
	movzbl	%r15b, %r15d
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, -48(%rbp)         # 8-byte Spill
	leaq	(%r14,%r13), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	addb	$32, %r14b
	movzbl	%r14b, %r14d
.LBB1_6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %r15b
	jb	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r13
	jne	.LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	addq	%r13, %r12
	movq	%r13, %rax
	movl	$1, %r13d
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%r12), %rbx
	movl	$1, %eax
	movl	$1, %r13d
	movq	%r12, %r14
	jmp	.LBB1_14
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$1, %r13
.LBB1_11:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_14
.LBB1_35:
	movq	$1, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movq	$-1, %r14
	movq	$-1, %rax
	jmp	.LBB1_32
.LBB1_15:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_16
# %bb.17:                               # %.preheader
	movq	$-1, -56(%rbp)          # 8-byte Folded Spill
	movl	$1, %r13d
	xorl	%r12d, %r12d
	movl	$1, %r15d
	movl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%r13, %rcx
	subq	-56(%rbp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$1, %r15d
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r13
	jae	.LBB1_31
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%r13), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$32, %r14b
	movzbl	%r14b, %r14d
.LBB1_20:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	%r15, %rax
	movzbl	(%rbx,%rax), %ebx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$32, %bl
	movzbl	%bl, %ebx
.LBB1_22:                               #   in Loop: Header=BB1_18 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r14b, %bl
	jb	.LBB1_23
# %bb.24:                               #   in Loop: Header=BB1_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %r14b
	jne	.LBB1_29
# %bb.25:                               #   in Loop: Header=BB1_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r15         # 8-byte Folded Reload
	jne	.LBB1_26
# %bb.28:                               #   in Loop: Header=BB1_18 Depth=1
	addq	%r15, %r12
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	movq	%r12, %r13
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_18 Depth=1
	leaq	1(%r12), %r13
	movl	$1, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jmp	.LBB1_30
.LBB1_26:                               #   in Loop: Header=BB1_18 Depth=1
	addq	$1, %r15
	movq	%r12, %r13
	jmp	.LBB1_30
.LBB1_16:
	movq	$-1, %rax
	movl	$1, %ecx
	jmp	.LBB1_32
.LBB1_31:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB1_32:
	addq	$1, %rax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jb	.LBB1_34
# %bb.33:
	movq	%rcx, (%rdx)
	movq	%rax, %r14
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	critical_factorization, .Lfunc_end1-critical_factorization
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
