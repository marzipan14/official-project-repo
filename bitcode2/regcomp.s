	.text
	.file	"regcomp.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function regcomp
.LCPI0_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.text
	.globl	regcomp
	.p2align	4, 0x90
	.type	regcomp,@function
regcomp:                                # @regcomp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	je	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r15d
	testb	$16, %r12b
	jne	.LBB0_176
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r12b
	jne	.LBB0_4
# %bb.3:
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r14
	jmp	.LBB0_6
.LBB0_4:
	movq	16(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r15d
	subq	%rbx, %r14
	jb	.LBB0_176
# %bb.5:
	movq	%rdi, -64(%rbp)         # 8-byte Spill
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$423, %edi              # imm = 0x1A7
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %r15d
	testq	%rax, %rax
	je	.LBB0_176
# %bb.7:
	movq	%rax, %r13
	movq	%r14, %rdx
	shrq	%rdx
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rdx,%rdx,2), %rdx
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)
	leaq	8(,%rcx,8), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	malloc
	movq	%rax, -280(%rbp)
	movq	$0, -264(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.8:
	movl	%r12d, %eax
	andl	$-129, %eax
	movq	%r13, -248(%rbp)
	movq	%rbx, -304(%rbp)
	addq	%rbx, %r14
	movq	%r14, -296(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -240(%rbp)
	movq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -232(%rbp)
	movups	%xmm0, -152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -216(%rbp)
	movq	$0, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -208(%rbp)
	movq	$0, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -200(%rbp)
	movq	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -192(%rbp)
	movq	$0, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -184(%rbp)
	movq	$0, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -176(%rbp)
	movq	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -168(%rbp)
	movq	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$256, 16(%r13)          # imm = 0x100
	movups	%xmm0, 24(%r13)
	movl	%eax, 40(%r13)
	movq	$0, 96(%r13)
	movl	$-1, 104(%r13)
	movups	%xmm0, 112(%r13)
	movl	$0, 128(%r13)
	movq	$0, 136(%r13)
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [0,0,0,1]
	movdqu	%xmm0, 72(%r13)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	160(%rax), %rdi
	addq	$288, %rax              # imm = 0x120
	movq	%rax, 88(%r13)
	xorl	%ebx, %ebx
	movl	$256, %edx              # imm = 0x100
	xorl	%esi, %esi
	callq	memset
	movl	$0, 144(%r13)
	movl	-288(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_17
# %bb.9:
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB0_16
# %bb.10:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jge	.LBB0_15
# %bb.11:
	movq	-280(%rbp), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_14
# %bb.12:
	movq	%rax, -280(%rbp)
	movq	%r15, -272(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	movq	%r13, %rdi
	callq	free
	jmp	.LBB0_176
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ebx
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movq	-280(%rbp), %rax
	leaq	1(%r14), %rcx
	movq	%rcx, -264(%rbp)
	movq	$134217728, (%rax,%r14,8) # imm = 0x8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
.LBB0_17:
	movq	-264(%rbp), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 56(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	je	.LBB0_19
# %bb.18:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	callq	p_ere
	jmp	.LBB0_29
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r12b
	jne	.LBB0_21
# %bb.20:
	leaq	-304(%rbp), %rdi
	movl	$128, %esi
	movl	$128, %edx
	callq	p_bre
	jmp	.LBB0_29
.LBB0_21:
	movq	-304(%rbp), %rcx
	cmpq	-296(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_25
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-304(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, -304(%rbp)
	movsbl	(%rcx), %esi
	movq	%rbx, %rdi
	callq	ordinary
	movl	$42, __A_VARIABLE(%rip)
	movq	-304(%rbp), %rcx
	cmpq	-296(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_23
	jmp	.LBB0_28
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_27
# %bb.26:
	movl	$14, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	-288(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_41
# %bb.30:
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jl	.LBB0_40
# %bb.31:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB0_34
# %bb.32:
	movq	-280(%rbp), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_35
# %bb.33:
	movq	%rax, -280(%rbp)
	movq	%rbx, -272(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-288(%rbp), %ecx
	jmp	.LBB0_38
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB0_39
.LBB0_35:
	movl	-288(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_37
# %bb.36:
	movl	$12, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB0_37:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-264(%rbp), %rdx
.LBB0_40:
	movq	-280(%rbp), %rax
	leaq	1(%rdx), %rsi
	movq	%rsi, -264(%rbp)
	movq	$134217728, (%rax,%rdx,8) # imm = 0x8000000
	movl	$42, __A_VARIABLE(%rip)
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	movq	-264(%rbp), %rsi
	leaq	-1(%rsi), %rax
	movq	%rax, 64(%r13)
	movq	88(%r13), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_62
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-128, %r10
	jmp	.LBB0_45
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_45 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_44:                               #   in Loop: Header=BB0_45 Depth=1
	addq	$1, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$128, %r10
	je	.LBB0_61
.LBB0_45:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_58 Depth 3
	cmpb	$0, (%r9,%r10)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_44
# %bb.46:                               #   in Loop: Header=BB0_45 Depth=1
	movl	20(%r13), %ecx
	leal	7(%rcx), %eax
	leal	14(%rcx), %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_43
# %bb.47:                               #   in Loop: Header=BB0_45 Depth=1
	sarl	$3, %esi
	movzbl	%r10b, %r14d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_48:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_48 Depth=2
	addl	$1, %ecx
	movslq	16(%r13), %rdi
	addq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ecx
	jl	.LBB0_48
	jmp	.LBB0_43
.LBB0_50:                               #   in Loop: Header=BB0_45 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	84(%r13), %r8d
	leal	1(%r8), %eax
	movl	%eax, 84(%r13)
	movb	%r8b, (%r9,%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$126, %r10
	jg	.LBB0_44
# %bb.51:                               # %.preheader11
                                        #   in Loop: Header=BB0_45 Depth=1
	movq	%r10, %rdi
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r8b, (%r9,%r11)
.LBB0_53:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$126, %rdi
	movq	%r11, %rdi
	jge	.LBB0_44
.LBB0_55:                               #   Parent Loop BB0_45 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
	leaq	1(%rdi), %r11
	cmpb	$0, 1(%r9,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_54
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	movl	20(%r13), %ecx
	leal	7(%rcx), %eax
	leal	14(%rcx), %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	movq	32(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_52
# %bb.57:                               #   in Loop: Header=BB0_55 Depth=2
	sarl	$3, %esi
	movzbl	%r11b, %ecx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_58:                               #   Parent Loop BB0_45 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rax,%r14), %edx
	cmpb	(%rax,%rcx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=3
	addl	$1, %ebx
	movslq	16(%r13), %rdx
	addq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ebx
	jl	.LBB0_58
	jmp	.LBB0_52
.LBB0_60:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_53
.LBB0_61:
	movl	$42, __A_VARIABLE(%rip)
	movq	-264(%rbp), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB0_62:
	subq	$-128, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, 48(%r13)
	movq	-280(%rbp), %rdi
	shlq	$3, %rsi
	callq	realloc
	movq	%rax, %r14
	movq	%rax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	-288(%rbp), %eax
	testq	%r14, %r14
	je	.LBB0_123
# %bb.63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %r8          # 8-byte Reload
	jne	.LBB0_143
# %bb.64:
	movslq	20(%r13), %rsi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edx
	testq	%rsi, %rsi
	jle	.LBB0_71
# %bb.65:
	movq	24(%r13), %r9
	movl	%esi, %ecx
	andl	$1, %ecx
	cmpl	$1, %esi
	jne	.LBB0_133
# %bb.66:
	xorl	%edi, %edi
	xorl	%edx, %edx
.LBB0_67:
	testq	%rcx, %rcx
	je	.LBB0_71
# %bb.68:
	shlq	$5, %rdi
	cmpq	$0, 24(%r9,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_70
# %bb.69:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB0_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_71:
	movl	$0, 104(%r13)
	addq	$8, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	movl	%edx, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_79
.LBB0_72:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%eax, 104(%r13)
	movq	%rsi, %rbx
.LBB0_73:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%eax, %r12d
.LBB0_74:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_75:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, %eax
.LBB0_76:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_77:                               #   in Loop: Header=BB0_79 Depth=1
	xorl	%r12d, %r12d
.LBB0_78:                               #   in Loop: Header=BB0_79 Depth=1
	andl	$-134217728, %r15d      # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r14
	cmpl	$134217728, %r15d       # imm = 0x8000000
	je	.LBB0_126
.LBB0_79:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
	leaq	8(%r14), %rdi
	movq	(%r14), %r15
	movl	%r15d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$19, %rcx
	ja	.LBB0_97
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=1
	movslq	(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jle	.LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_72
# %bb.83:                               #   in Loop: Header=BB0_79 Depth=1
	addl	%eax, 104(%r13)
	movq	%rsi, %rbx
	jmp	.LBB0_74
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_76
# %bb.85:                               #   in Loop: Header=BB0_79 Depth=1
	addl	%r12d, %eax
	jmp	.LBB0_73
.LBB0_86:                               #   in Loop: Header=BB0_79 Depth=1
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	callq	altoffset
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	andl	$134217727, %r15d       # imm = 0x7FFFFFF
	leaq	(%r14,%r15,8), %rdi
	movq	(%r14,%r15,8), %r15
	movl	%r15d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	jne	.LBB0_101
# %bb.87:                               #   in Loop: Header=BB0_79 Depth=1
	movq	%rdi, %rsi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_105
.LBB0_88:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
.LBB0_90:                               #   in Loop: Header=BB0_79 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_78
.LBB0_91:                               #   in Loop: Header=BB0_79 Depth=1
	movslq	(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jle	.LBB0_106
# %bb.92:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_117
# %bb.93:                               #   in Loop: Header=BB0_79 Depth=1
	addl	%eax, 104(%r13)
	movq	%rsi, %rbx
	jmp	.LBB0_108
.LBB0_94:                               #   in Loop: Header=BB0_79 Depth=1
	movslq	(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jle	.LBB0_110
# %bb.95:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_119
# %bb.96:                               #   in Loop: Header=BB0_79 Depth=1
	addl	%eax, 104(%r13)
	movq	%rsi, %rbx
	jmp	.LBB0_112
.LBB0_97:                               #   in Loop: Header=BB0_79 Depth=1
	movslq	(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jle	.LBB0_122
# %bb.98:                               #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_79 Depth=1
	addl	104(%r13), %eax
.LBB0_100:                              #   in Loop: Header=BB0_79 Depth=1
	movl	%eax, 104(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
	jmp	.LBB0_122
.LBB0_101:                              # %.preheader7
                                        #   in Loop: Header=BB0_79 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	$2281701376, %r9d       # imm = 0x88000000
	.p2align	4, 0x90
.LBB0_102:                              #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	134217728(%r9), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB0_114
# %bb.103:                              #   in Loop: Header=BB0_102 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rcx
	jne	.LBB0_132
# %bb.104:                              #   in Loop: Header=BB0_102 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$134217727, %r15d       # imm = 0x7FFFFFF
	leaq	(%rdi,%r15,8), %rsi
	movq	(%rdi,%r15,8), %r15
	movl	%r15d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	jne	.LBB0_102
.LBB0_105:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	jmp	.LBB0_115
.LBB0_106:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_118
# %bb.107:                              #   in Loop: Header=BB0_79 Depth=1
	addl	%r12d, %eax
	movl	%eax, %r12d
.LBB0_108:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_75
# %bb.109:                              #   in Loop: Header=BB0_79 Depth=1
	addl	$1, %r12d
	movl	%r12d, %eax
	jmp	.LBB0_118
.LBB0_110:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_120
# %bb.111:                              #   in Loop: Header=BB0_79 Depth=1
	addl	%r12d, %eax
	movl	%eax, %r12d
.LBB0_112:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_116
# %bb.113:                              #   in Loop: Header=BB0_79 Depth=1
	addl	$1, %r12d
	movl	%r12d, %eax
	jmp	.LBB0_120
.LBB0_114:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_115:                              #   in Loop: Header=BB0_79 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_81
.LBB0_116:                              #   in Loop: Header=BB0_79 Depth=1
	movl	%r12d, %eax
	jmp	.LBB0_121
.LBB0_117:                              #   in Loop: Header=BB0_79 Depth=1
	movl	%eax, 104(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
.LBB0_118:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
	jmp	.LBB0_75
.LBB0_119:                              #   in Loop: Header=BB0_79 Depth=1
	movl	%eax, 104(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
.LBB0_120:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_121:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_77
.LBB0_122:                              #   in Loop: Header=BB0_79 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB0_77
.LBB0_123:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_125
# %bb.124:
	movl	$12, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_125:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_141:
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB0_142:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_143:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_157
# %bb.144:
	cmpl	$0, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_146
# %bb.145:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_153
.LBB0_146:
	movl	$1028, %edi             # imm = 0x404
	callq	malloc
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 112(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_152
# %bb.147:
	movq	%rax, %r8
	addq	$512, %r8               # imm = 0x200
	movq	%r8, 112(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_148:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %esi
	movl	%esi, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %esi
	movl	%esi, 4(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %esi
	movl	%esi, 8(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %esi
	movl	%esi, 12(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_148
# %bb.149:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_152
# %bb.150:
	movq	96(%r13), %rdx
	movl	$-1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_151:                              # =>This Inner Loop Header: Depth=1
	addl	%esi, %eax
	movzbl	(%rdx,%rdi), %ebx
	movl	%eax, (%r8,%rbx,4)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	cmpl	%edi, %eax
	jg	.LBB0_151
.LBB0_152:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_177
.LBB0_153:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_154:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 120(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_157
# %bb.155:
	movq	112(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_157
# %bb.156:
	callq	free
	movq	$0, 112(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_157:
	movl	-288(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_159
# %bb.158:
	xorl	%ecx, %ecx
	jmp	.LBB0_169
.LBB0_159:
	movq	8(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.LBB0_163
	.p2align	4, 0x90
.LBB0_160:                              #   in Loop: Header=BB0_163 Depth=1
	movl	$1, %ebx
.LBB0_161:                              #   in Loop: Header=BB0_163 Depth=1
	addq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_162:                              #   in Loop: Header=BB0_163 Depth=1
	addq	$8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$134217728, %edi        # imm = 0x8000000
	je	.LBB0_167
.LBB0_163:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rdi
	andl	$-134217728, %edi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1207959552, %edi       # imm = 0x48000000
	je	.LBB0_160
# %bb.164:                              #   in Loop: Header=BB0_163 Depth=1
	cmpl	$1342177280, %edi       # imm = 0x50000000
	jne	.LBB0_162
# %bb.165:                              #   in Loop: Header=BB0_163 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	cmpq	%rcx, %rsi
	jle	.LBB0_161
# %bb.166:                              #   in Loop: Header=BB0_163 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	jmp	.LBB0_161
.LBB0_167:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_169
# %bb.168:
	orb	$4, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_169:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, 152(%r13)
	movl	$53829, (%r13)          # imm = 0xD245
	movq	136(%r13), %rcx
	movq	%rcx, 8(%rdi)
	movq	%r13, 24(%rdi)
	movl	$62053, (%rdi)          # imm = 0xF265
	testb	$4, 72(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_172
# %bb.170:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_175
# %bb.171:
	xorl	%r15d, %r15d
	jmp	.LBB0_176
.LBB0_172:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_174
# %bb.173:
	movl	$15, -288(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_174:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -304(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_175:
	callq	regfree
	movl	$42, __A_VARIABLE(%rip)
	movl	-288(%rbp), %r15d
.LBB0_176:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_126:
	movslq	(%r8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_139
# %bb.127:
	addq	$1, %rdi
	callq	malloc
	movq	%rax, 96(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_140
# %bb.128:
	movq	-48(%rbp), %r8          # 8-byte Reload
	movslq	(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB0_131
	.p2align	4, 0x90
.LBB0_129:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	addq	$8, %rbx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$268435456, %esi        # imm = 0x10000000
	jne	.LBB0_129
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=1
	movb	%dl, (%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB0_129
.LBB0_131:
	movb	$0, (%rax)
	jmp	.LBB0_142
.LBB0_132:
	orb	$4, 72(%r13)
	jmp	.LBB0_142
.LBB0_133:
	leaq	56(%r9), %rbx
	subq	%rcx, %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB0_135
	.p2align	4, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_135 Depth=1
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rbx
	cmpq	%rdi, %rsi
	je	.LBB0_67
.LBB0_135:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_134
# %bb.138:                              #   in Loop: Header=BB0_135 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB0_134
.LBB0_177:
	movslq	(%rcx), %rdi
	shlq	$2, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_189
# %bb.178:
	movq	%rax, %r12
	movslq	128(%r13), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 120(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_154
# %bb.179:
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	(%r10), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_190
# %bb.180:                              # %.preheader4
	movl	$-1, %edx
	xorl	%edi, %edi
.LBB0_181:                              # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rcx,2), %ecx
	movl	%ecx, (%rax,%rdi,4)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
	movslq	%ecx, %r9
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edx
	cmpq	%r9, %rdi
	jl	.LBB0_181
# %bb.182:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB0_191
# %bb.183:
	movl	%ecx, %esi
	jmp	.LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_185 Depth=1
	addl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r8
	jle	.LBB0_192
.LBB0_185:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_187 Depth 2
	movq	%r9, %r8
	addq	$-1, %r9
	movl	%esi, -4(%r12,%r8,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jge	.LBB0_184
# %bb.186:                              #   in Loop: Header=BB0_185 Depth=1
	movq	96(%r13), %rdx
	.p2align	4, 0x90
.LBB0_187:                              #   Parent Loop BB0_185 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%r9), %ebx
	movslq	%esi, %rdi
	cmpb	(%rdx,%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_184
# %bb.188:                              #   in Loop: Header=BB0_187 Depth=2
	movl	(%rax,%rdi,4), %esi
	subl	%r8d, %ecx
	cmpl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%esi, %ecx
	movl	%ecx, (%rax,%rdi,4)
	movl	(%r12,%rdi,4), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jl	.LBB0_187
	jmp	.LBB0_184
.LBB0_139:
	movl	$-1, 104(%r13)
	jmp	.LBB0_142
.LBB0_140:
	movl	$0, 128(%r13)
	movl	$-1, 104(%r13)
	jmp	.LBB0_141
.LBB0_189:
	movq	$0, 120(%r13)
	jmp	.LBB0_153
.LBB0_190:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_191:
	movl	%ecx, %esi
.LBB0_192:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB0_199
# %bb.193:
	leal	1(%rsi), %r9d
	movl	%r9d, %r8d
	andl	$1, %r8d
	testl	%esi, %esi
	je	.LBB0_196
# %bb.194:
	subq	%r8, %r9
	xorl	%ebx, %ebx
	movl	%esi, %edx
.LBB0_195:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rbx,4), %edi
	addl	%edx, %ecx
	cmpl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%edi, %ecx
	movl	%ecx, (%rax,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
	movl	4(%rax,%rbx,4), %edi
	addl	%edx, %ecx
	addl	$-1, %ecx
	cmpl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%edi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 4(%rax,%rbx,4)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
	addl	$-2, %edx
	cmpq	%rbx, %r9
	jne	.LBB0_195
	jmp	.LBB0_197
.LBB0_196:
	xorl	%ebx, %ebx
.LBB0_197:
	testq	%r8, %r8
	je	.LBB0_199
# %bb.198:
	movl	(%rax,%rbx,4), %edx
	movl	%esi, %edi
	subl	%ebx, %edi
	addl	%ecx, %edi
	cmpl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%edx, %edi
	movl	%edi, (%rax,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %ecx
.LBB0_199:
	movslq	%esi, %rdx
	movl	(%r12,%rdx,4), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jge	.LBB0_210
.LBB0_200:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_203 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rbx
	cmpl	%edi, %esi
	jg	.LBB0_207
# %bb.201:                              #   in Loop: Header=BB0_200 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jge	.LBB0_207
# %bb.202:                              #   in Loop: Header=BB0_200 Depth=1
	movslq	%esi, %rdx
	subl	%esi, %edi
	.p2align	4, 0x90
.LBB0_203:                              #   Parent Loop BB0_200 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rdx,4), %esi
	addl	%edi, %ecx
	cmpl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%esi, %ecx
	movl	%ecx, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jge	.LBB0_205
# %bb.204:                              #   in Loop: Header=BB0_203 Depth=2
	addq	$1, %rdx
	movslq	(%r10), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	cmpq	%rcx, %rdx
	jl	.LBB0_203
	jmp	.LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_200 Depth=1
	movl	(%r10), %ecx
	addl	$1, %edx
.LBB0_206:                              #   in Loop: Header=BB0_200 Depth=1
	movl	%edx, %esi
.LBB0_207:                              #   in Loop: Header=BB0_200 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jge	.LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_200 Depth=1
	movl	(%r12,%rbx,4), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_200
.LBB0_209:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_210:
	movq	%r12, %rdi
	callq	free
	jmp	.LBB0_153
.Lfunc_end0:
	.size	regcomp, .Lfunc_end0-regcomp
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_81
	.quad	.LBB0_88
	.quad	.LBB0_81
	.quad	.LBB0_81
	.quad	.LBB0_91
	.quad	.LBB0_94
	.quad	.LBB0_97
	.quad	.LBB0_97
	.quad	.LBB0_78
	.quad	.LBB0_97
	.quad	.LBB0_86
	.quad	.LBB0_81
	.quad	.LBB0_78
	.quad	.LBB0_78
	.quad	.LBB0_86
	.quad	.LBB0_97
	.quad	.LBB0_97
	.quad	.LBB0_81
	.quad	.LBB0_81
	.quad	.LBB0_81
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_ere
	.type	p_ere,@function
p_ere:                                  # @p_ere
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	40(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	16(%rdi), %r8
	leaq	32(%rdi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	24(%rdi), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -96(%rbp)        # 16-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_1:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r12), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	movq	%r12, -128(%rbp)        # 8-byte Spill
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_83 Depth 3
                                        #       Child Loop BB1_112 Depth 3
                                        #       Child Loop BB1_133 Depth 3
	movq	40(%r13), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rcx
	jmp	.LBB1_8
.LBB1_5:                                #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_94
.LBB1_6:                                #   in Loop: Header=BB1_8 Depth=2
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_83 Depth 3
                                        #       Child Loop BB1_112 Depth 3
                                        #       Child Loop BB1_133 Depth 3
	movq	8(%r13), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jae	.LBB1_256
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	movsbl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$124, %eax
	je	.LBB1_256
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-132(%rbp), %eax        # 4-byte Folded Reload
	je	.LBB1_257
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %r14
	movq	%r14, (%r13)
	movsbl	(%rcx), %ebx
	movq	40(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	leal	-36(%rbx), %eax
	cmpl	$88, %eax
	ja	.LBB1_54
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_60
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$13, (%r8)
	jmp	.LBB1_59
.LBB1_15:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_192
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB1_191
# %bb.17:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB1_190
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_187
# %bb.19:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_190
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jb	.LBB1_24
# %bb.21:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$8, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r14d
.LBB1_24:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%r12, -144(%rbp)        # 8-byte Spill
	movq	56(%r13), %rax
	movq	136(%rax), %rbx
	leaq	1(%rbx), %r12
	movq	%r12, 136(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r12
	jg	.LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 72(%r13,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_204
# %bb.27:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jge	.LBB1_135
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_203
.LBB1_29:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_60
# %bb.30:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$8, (%r8)
	jmp	.LBB1_59
.LBB1_31:                               #   in Loop: Header=BB1_8 Depth=2
	movq	56(%r13), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_99
# %bb.32:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_61
# %bb.33:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB1_238
# %bb.34:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB1_237
# %bb.35:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_234
# %bb.36:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_237
.LBB1_37:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%r13, %rdi
	callq	p_bracket
	jmp	.LBB1_56
.LBB1_38:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jb	.LBB1_42
# %bb.39:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$5, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$nuls, %r14d
	movq	%r14, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_42:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%r14), %rax
	movq	%rax, (%r13)
	movsbl	(%r14), %esi
	movq	%r13, %rdi
	jmp	.LBB1_55
.LBB1_43:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_198
# %bb.44:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB1_197
# %bb.45:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB1_196
# %bb.46:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_193
# %bb.47:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_196
.LBB1_48:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB1_53
# %bb.49:                               #   in Loop: Header=BB1_8 Depth=2
	callq	__locale_ctype_ptr
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	(%rcx), %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_53
# %bb.50:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_52
# %bb.51:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$13, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_52:                               #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_53:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%r13, %rdi
	movl	%ebx, %esi
.LBB1_55:                               #   in Loop: Header=BB1_8 Depth=2
	callq	ordinary
.LBB1_56:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_62
.LBB1_57:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_60
# %bb.58:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$14, (%r8)
.LBB1_59:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_60:                               #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
.LBB1_61:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_62:                               #   in Loop: Header=BB1_8 Depth=2
	xorl	%r14d, %r14d
.LBB1_63:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB1_7
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=2
	movsbl	(%rcx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %ebx
	je	.LBB1_67
# %bb.65:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %bl
	je	.LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$63, %bl
	jne	.LBB1_95
	.p2align	4, 0x90
.LBB1_67:                               #   in Loop: Header=BB1_8 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_71
# %bb.68:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$13, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_70:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_71:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$62, %ebx
	jg	.LBB1_79
# %bb.72:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$42, %ebx
	je	.LBB1_87
# %bb.73:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$43, %ebx
	jne	.LBB1_179
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=2
	movq	40(%r13), %rdx
	subq	%r12, %rdx
	addq	$1, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_177
# %bb.75:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB1_148
# %bb.76:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB1_147
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_144
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_147
.LBB1_79:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$63, %ebx
	je	.LBB1_92
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$123, %ebx
	jne	.LBB1_179
# %bb.81:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_98
# %bb.82:                               # %.preheader1
                                        #   in Loop: Header=BB1_8 Depth=2
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_83:                               #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r14d
	jg	.LBB1_104
# %bb.84:                               #   in Loop: Header=BB1_83 Depth=3
	andb	$4, %al
	je	.LBB1_104
# %bb.85:                               #   in Loop: Header=BB1_83 Depth=3
	leal	(%r14,%r14,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r14d
	addl	$-48, %r14d
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_83
# %bb.86:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %ebx
	jmp	.LBB1_105
.LBB1_87:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %ebx
	subq	%r12, %rbx
	movq	40(%r13), %rdx
	addq	%rbx, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_154
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %r14
	subq	%r12, %r14
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jl	.LBB1_153
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jge	.LBB1_152
# %bb.90:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rdx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_149
# %bb.91:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	jmp	.LBB1_152
.LBB1_92:                               #   in Loop: Header=BB1_8 Depth=2
	movq	40(%r13), %rdx
	subq	%r12, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_100
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_164
.LBB1_94:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$13, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_6
.LBB1_95:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$123, %bl
	jne	.LBB1_7
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jae	.LBB1_7
# %bb.97:                               #   in Loop: Header=BB1_8 Depth=2
	callq	__locale_ctype_ptr
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
	jmp	.LBB1_67
.LBB1_98:                               #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB1_118
.LBB1_99:                               #   in Loop: Header=BB1_8 Depth=2
	leaq	-116(%rbp), %rax
	movq	%rax, (%r13)
	leaq	-113(%rbp), %rax
	movq	%rax, 8(%r13)
	movl	$6097502, -116(%rbp)    # imm = 0x5D0A5E
	movq	%r13, %rdi
	callq	p_bracket
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r14, (%r13)
	movq	%r15, 8(%r13)
	jmp	.LBB1_61
.LBB1_100:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	movq	-48(%rbp), %r8          # 8-byte Reload
	jl	.LBB1_163
# %bb.101:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jge	.LBB1_141
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_159
# %bb.103:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	jmp	.LBB1_162
.LBB1_104:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rcx, %rax
.LBB1_105:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r14d
	jg	.LBB1_118
# %bb.106:                              #   in Loop: Header=BB1_8 Depth=2
	testl	%ebx, %ebx
	je	.LBB1_118
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=2
	cmpq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_121
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=2
	cmpb	$44, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_121
# %bb.109:                              #   in Loop: Header=BB1_8 Depth=2
	addq	$1, %rax
	movq	%rax, (%r13)
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$256, %r15d             # imm = 0x100
	je	.LBB1_123
# %bb.110:                              #   in Loop: Header=BB1_8 Depth=2
	cmpq	8(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_226
# %bb.111:                              # %.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_112:                              #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r15d
	jg	.LBB1_116
# %bb.113:                              #   in Loop: Header=BB1_112 Depth=3
	andb	$4, %al
	je	.LBB1_116
# %bb.114:                              #   in Loop: Header=BB1_112 Depth=3
	leal	(%r15,%r15,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r13)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %r15d
	addl	$-48, %r15d
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_112
# %bb.115:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$1, %ebx
.LBB1_116:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r15d
	jg	.LBB1_227
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=2
	testl	%ebx, %ebx
	jne	.LBB1_230
	jmp	.LBB1_227
.LBB1_118:                              #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_120
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$10, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_120:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_121:                              #   in Loop: Header=BB1_8 Depth=2
	movl	%r14d, %r15d
.LBB1_122:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	repeat
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB1_126
# %bb.124:                              #   in Loop: Header=BB1_8 Depth=2
	cmpb	$125, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_132
# %bb.125:                              #   in Loop: Header=BB1_8 Depth=2
	addq	$1, %rax
	movq	%rax, (%r13)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_178
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
.LBB1_127:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_129
# %bb.128:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$9, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_129:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_131:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	jmp	.LBB1_177
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_133:                              #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	$125, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_138
# %bb.134:                              #   in Loop: Header=BB1_133 Depth=3
	addq	$1, %rax
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB1_133
	jmp	.LBB1_127
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jge	.LBB1_142
# %bb.136:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rdx, %r14
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_199
# %bb.137:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, 24(%r13)
	movq	%r14, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %r14
	movq	8(%r13), %r15
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_202
.LBB1_138:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_131
# %bb.139:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$10, (%r8)
	jmp	.LBB1_130
.LBB1_141:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB1_162
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_202
.LBB1_144:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_146
# %bb.145:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=2
	orq	$1342177280, %rbx       # imm = 0x50000000
	jmp	.LBB1_175
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_151
# %bb.150:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB1_152:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=2
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	(%rdx), %rcx
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%r14, (%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rax
.LBB1_154:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jne	.LBB1_177
# %bb.155:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB1_174
# %bb.156:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB1_173
# %bb.157:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_170
# %bb.158:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_173
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_161
# %bb.160:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_162:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB1_163:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$2147483648, %edx       # imm = 0x80000000
	orq	%rdx, %rbx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	1(%rax), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB1_165
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_244:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_176
.LBB1_165:                              #   in Loop: Header=BB1_8 Depth=2
	subq	%r12, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%r12,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdi
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jge	.LBB1_167
# %bb.166:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_243
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rdi), %rdx
	shrq	$63, %rdx
	addq	%rdi, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	jge	.LBB1_186
# %bb.168:                              #   in Loop: Header=BB1_8 Depth=2
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_239
# %bb.169:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	jmp	.LBB1_242
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_172
# %bb.171:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_173:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=2
	orq	$1610612736, %rbx       # imm = 0x60000000
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%rbx, (%rcx,%rax,8)
.LBB1_176:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_177:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_178:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_179:                              #   in Loop: Header=BB1_8 Depth=2
	movq	(%r13), %rcx
	movq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB1_7
# %bb.180:                              #   in Loop: Header=BB1_8 Depth=2
	movb	(%rcx), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$42, %dl
	je	.LBB1_5
# %bb.181:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %dl
	je	.LBB1_5
# %bb.182:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$63, %dl
	je	.LBB1_5
# %bb.183:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$123, %dl
	jne	.LBB1_7
# %bb.184:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jae	.LBB1_7
# %bb.185:                              #   in Loop: Header=BB1_8 Depth=2
	callq	__locale_ctype_ptr
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	(%r13), %rcx
	movzbl	1(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
	jmp	.LBB1_7
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_242
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_189
# %bb.188:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$536870912, (%rax,%rcx,8) # imm = 0x20000000
	movl	$42, __A_VARIABLE(%rip)
.LBB1_192:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
	jmp	.LBB1_62
.LBB1_193:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_195
# %bb.194:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$402653184, (%rax,%rcx,8) # imm = 0x18000000
	movl	$42, __A_VARIABLE(%rip)
.LBB1_198:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rax
	orl	$1, 72(%rax)
	addl	$1, 76(%rax)
	movl	$1, %r14d
	jmp	.LBB1_63
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_201
# %bb.200:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r14d
.LBB1_202:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%r12, %rcx
	orq	$1744830464, %rcx       # imm = 0x68000000
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, (%rdi)
	movq	%rcx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_204:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB1_206
# %bb.205:                              #   in Loop: Header=BB1_8 Depth=2
	cmpb	$41, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_207
.LBB1_206:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%r13, %rdi
	movl	$41, %esi
	callq	p_ere
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r12
	jg	.LBB1_209
# %bb.208:                              #   in Loop: Header=BB1_8 Depth=2
	movq	40(%r13), %rax
	movq	%rax, 152(%r13,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_219
# %bb.210:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB1_218
# %bb.211:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB1_217
# %bb.212:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_214
# %bb.213:                              #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_217
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_216
# %bb.215:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=2
	orq	$1879048192, %r12       # imm = 0x70000000
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, (%rsi)
	movq	%r12, (%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	cmpq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %r12        # 8-byte Reload
	jae	.LBB1_221
# %bb.220:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, (%r13)
	xorl	%r14d, %r14d
	cmpb	$41, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_63
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_223
# %bb.222:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$8, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_223:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
.LBB1_224:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_61
.LBB1_226:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_229
# %bb.228:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_229:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_230:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r14d
	jle	.LBB1_122
# %bb.231:                              #   in Loop: Header=BB1_8 Depth=2
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_233
# %bb.232:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_233:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_122
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_236
# %bb.235:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_236:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_237:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
.LBB1_238:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	1(%rcx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	jmp	.LBB1_224
.LBB1_239:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_241
# %bb.240:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB1_242:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rsi
	movl	%ecx, %edx
.LBB1_243:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rsi), %rcx
	movq	%rcx, (%rdi)
	movl	$2147483648, %ecx       # imm = 0x80000000
	addq	$134217728, %rcx        # imm = 0x8000000
	movq	%rcx, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB1_244
# %bb.245:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jge	.LBB1_247
# %bb.246:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_255
.LBB1_247:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jge	.LBB1_250
# %bb.248:                              #   in Loop: Header=BB1_8 Depth=2
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_251
# %bb.249:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_254
.LBB1_250:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_254
.LBB1_251:                              #   in Loop: Header=BB1_8 Depth=2
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_253
# %bb.252:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_253:                              #   in Loop: Header=BB1_8 Depth=2
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB1_254:                              #   in Loop: Header=BB1_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
.LBB1_255:                              #   in Loop: Header=BB1_8 Depth=2
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movl	$2147483648, %edx       # imm = 0x80000000
	addq	$268435458, %rdx        # imm = 0x10000002
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB1_176
	.p2align	4, 0x90
.LBB1_256:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_257:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r12
	movq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	subq	-152(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB1_285
# %bb.258:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	movl	-100(%rbp), %eax        # 4-byte Reload
	jae	.LBB1_288
# %bb.259:                              #   in Loop: Header=BB1_4 Depth=1
	cmpb	$124, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_288
# %bb.260:                              #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %rcx
	movq	%rcx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_262
# %bb.261:                              #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	doinsert
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %r12
	movq	%rbx, %rax
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movq	%rbx, -112(%rbp)        # 8-byte Spill
.LBB1_262:                              #   in Loop: Header=BB1_4 Depth=1
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_1
# %bb.263:                              #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %r14
	subq	-112(%rbp), %r14        # 8-byte Folded Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jl	.LBB1_272
# %bb.264:                              #   in Loop: Header=BB1_4 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jge	.LBB1_267
# %bb.265:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_268
# %bb.266:                              #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %eax
	jmp	.LBB1_271
.LBB1_267:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB1_271
.LBB1_268:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_270
# %bb.269:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
.LBB1_270:                              #   in Loop: Header=BB1_4 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_271:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r12
.LBB1_272:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$2147483648, %ecx       # imm = 0x80000000
	orq	%rcx, %r14
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	1(%r12), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rsi)
	movq	%r14, (%rcx,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %r12
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r12), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_2
# %bb.274:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %r12
	movq	(%rdi), %rax
	movq	(%rax,%rdx,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%r12, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jge	.LBB1_276
# %bb.275:                              #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_284
.LBB1_276:                              #   in Loop: Header=BB1_4 Depth=1
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB1_279
# %bb.277:                              #   in Loop: Header=BB1_4 Depth=1
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_280
# %bb.278:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_283
.LBB1_279:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_283
.LBB1_280:                              #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %r8          # 8-byte Reload
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_282
# %bb.281:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$12, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_282:                              #   in Loop: Header=BB1_4 Depth=1
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB1_283:                              #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
.LBB1_284:                              #   in Loop: Header=BB1_4 Depth=1
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movl	$2147483648, %edx       # imm = 0x80000000
	addq	$134217728, %rdx        # imm = 0x8000000
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB1_3
.LBB1_285:
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_287
# %bb.286:
	movl	$14, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_287:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-100(%rbp), %eax        # 4-byte Reload
.LBB1_288:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_300
# %bb.289:
	cmpl	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_291
# %bb.290:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_299
.LBB1_291:
	movq	-128(%rbp), %rdx        # 8-byte Reload
	subq	%rdx, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax,%rdx,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	orq	%r12, %rcx
	movq	%rcx, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, %rbx
	subq	-112(%rbp), %rbx        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jge	.LBB1_293
# %bb.292:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_298
.LBB1_293:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jge	.LBB1_296
# %bb.294:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_301
# %bb.295:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%r14, (%rcx)
.LBB1_296:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_297:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rcx
.LBB1_298:
	movl	$2147483648, %edx       # imm = 0x80000000
	addq	$268435456, %rdx        # imm = 0x10000000
	orq	%rdx, %rbx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, (%rax,%rcx,8)
.LBB1_299:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_300:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_301:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_303
# %bb.302:
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_303:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
	jmp	.LBB1_297
.Lfunc_end1:
	.size	p_ere, .Lfunc_end1-p_ere
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_15
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_20
	.quad	.LBB1_29
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_31
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_13
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_37
	.quad	.LBB1_38
	.quad	.LBB1_54
	.quad	.LBB1_43
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_54
	.quad	.LBB1_48
	.quad	.LBB1_57
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_bre
	.type	p_bre,@function
p_bre:                                  # @p_bre
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rdi, %r15
	movq	40(%rdi), %r14
	movq	(%rdi), %rax
	movq	8(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB2_15
# %bb.1:
	cmpb	$94, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_15
# %bb.2:
	addq	$1, %rax
	movq	%rax, (%r15)
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_14
# %bb.3:
	movq	32(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jge	.LBB2_5
# %bb.4:
	movq	%r14, %rcx
	jmp	.LBB2_13
.LBB2_5:
	movq	%r14, %r12
	leaq	1(%rcx), %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB2_8
# %bb.6:
	movq	24(%r15), %rdi
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_9
# %bb.7:
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %rbx
	jmp	.LBB2_12
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_12
.LBB2_9:
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_11
# %bb.10:
	movl	$12, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
.LBB2_12:
	movq	%r12, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB2_13:
	movq	24(%r15), %rdx
	leaq	1(%rcx), %rsi
	movq	%rsi, 40(%r15)
	movq	$402653184, (%rdx,%rcx,8) # imm = 0x18000000
	movl	$42, __A_VARIABLE(%rip)
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rcx
	orl	$1, 72(%rcx)
	addl	$1, 76(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_15:
	movq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB2_222
# %bb.16:
	movq	%r14, -96(%rbp)         # 8-byte Spill
	leaq	16(%r15), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	$1, %edx
	xorl	%esi, %esi
	movl	$nuls, %edi
	movq	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	jmp	.LBB2_23
.LBB2_17:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
.LBB2_18:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB2_19:                               #   in Loop: Header=BB2_23 Depth=1
	orq	$1610612736, %rbx       # imm = 0x60000000
	movq	24(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	%rbx, (%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_20:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %rbx
.LBB2_21:                               #   in Loop: Header=BB2_23 Depth=1
	xorl	%esi, %esi
.LBB2_22:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	cmpq	%rbx, %rax
	jae	.LBB2_210
.LBB2_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_105 Depth 2
                                        #     Child Loop BB2_156 Depth 2
                                        #     Child Loop BB2_128 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jae	.LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=1
	movsbl	(%rax), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-76(%rbp), %edi         # 4-byte Folded Reload
	jne	.LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=1
	movsbl	(%r14), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-72(%rbp), %edi         # 4-byte Folded Reload
	jne	.LBB2_27
	jmp	.LBB2_210
	.p2align	4, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_27:                               #   in Loop: Header=BB2_23 Depth=1
	movq	40(%r15), %r12
	movq	%r14, (%r15)
	movsbl	(%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$92, %r13d
	jne	.LBB2_33
# %bb.28:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jb	.LBB2_32
# %bb.29:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$5, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_31:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %ecx
	movl	$nuls, %r14d
.LBB2_32:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%r14), %rax
	movq	%rax, (%r15)
	movsbl	(%r14), %r13d
	orl	$256, %r13d             # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB2_33:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$295, %r13d             # imm = 0x127
	jle	.LBB2_42
# %bb.34:                               #   in Loop: Header=BB2_23 Depth=1
	leal	-296(%r13), %eax
	cmpl	$85, %eax
	ja	.LBB2_67
# %bb.35:                               #   in Loop: Header=BB2_23 Depth=1
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_36:                               #   in Loop: Header=BB2_23 Depth=1
	movl	%r13d, %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movslq	%eax, %rbx
	movq	-240(%r15,%rbx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_46
# %bb.37:                               #   in Loop: Header=BB2_23 Depth=1
	addq	$-48, %rbx
	testl	%eax, %eax
	jne	.LBB2_80
# %bb.38:                               #   in Loop: Header=BB2_23 Depth=1
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB2_79
# %bb.39:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jge	.LBB2_78
# %bb.40:                               #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_75
# %bb.41:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB2_78
	.p2align	4, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_23 Depth=1
	cmpl	$42, %r13d
	je	.LBB2_62
# %bb.43:                               #   in Loop: Header=BB2_23 Depth=1
	cmpl	$46, %r13d
	je	.LBB2_68
# %bb.44:                               #   in Loop: Header=BB2_23 Depth=1
	cmpl	$91, %r13d
	jne	.LBB2_67
# %bb.45:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%r15, %rdi
	callq	p_bracket
	jmp	.LBB2_91
.LBB2_46:                               #   in Loop: Header=BB2_23 Depth=1
	testl	%eax, %eax
	jne	.LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$6, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_48:                               #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	jmp	.LBB2_90
.LBB2_49:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_61
# %bb.50:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$8, (%rax)
	jmp	.LBB2_60
.LBB2_51:                               #   in Loop: Header=BB2_23 Depth=1
	movq	56(%r15), %rax
	movq	136(%rax), %rbx
	leaq	1(%rbx), %r8
	movq	%r8, 136(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r8
	jg	.LBB2_53
# %bb.52:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%r12, 72(%r15,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_53:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_169
# %bb.54:                               #   in Loop: Header=BB2_23 Depth=1
	movq	32(%r15), %rdx
	movq	40(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB2_168
# %bb.55:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jge	.LBB2_145
# %bb.56:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rsi, %r14
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_163
# %bb.57:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %r14
	movq	8(%r15), %rcx
	jmp	.LBB2_166
.LBB2_58:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_61
# %bb.59:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$13, (%rax)
.LBB2_60:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_61:                               #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_91
.LBB2_62:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB2_66
# %bb.63:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_65
# %bb.64:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$13, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_65:                               #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_66:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_67:                               #   in Loop: Header=BB2_23 Depth=1
	movsbl	%r13b, %esi
	movq	%r15, %rdi
	callq	ordinary
	jmp	.LBB2_91
.LBB2_68:                               #   in Loop: Header=BB2_23 Depth=1
	movq	56(%r15), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_74
# %bb.69:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_201
# %bb.70:                               #   in Loop: Header=BB2_23 Depth=1
	movq	32(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	cmpq	%rax, %r12
	jl	.LBB2_200
# %bb.71:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB2_199
# %bb.72:                               #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_196
# %bb.73:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB2_199
.LBB2_74:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	-68(%rbp), %rax
	movq	%rax, (%r15)
	leaq	-65(%rbp), %rax
	movq	%rax, 8(%r15)
	movl	$6097502, -68(%rbp)     # imm = 0x5D0A5E
	movq	%r15, %rdi
	callq	p_bracket
	movq	%r14, (%r15)
	movq	%rbx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_91
.LBB2_75:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_77
# %bb.76:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_77:                               #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_78:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB2_79:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rbx, %rax
	orq	$939524096, %rax        # imm = 0x38000000
	movq	24(%r15), %rdx
	leaq	1(%rcx), %rsi
	movq	%rsi, 40(%r15)
	movq	%rax, (%rdx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	144(%r15,%rbx,8), %rdx
.LBB2_80:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15,%rbx,8), %rsi
	addq	$1, %rsi
	movq	%r15, %rdi
	callq	dupl
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_90
# %bb.81:                               #   in Loop: Header=BB2_23 Depth=1
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB2_89
# %bb.82:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jge	.LBB2_88
# %bb.83:                               #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_85
# %bb.84:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB2_88
.LBB2_85:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_87
# %bb.86:                               #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_87:                               #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_88:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB2_89:                               #   in Loop: Header=BB2_23 Depth=1
	orq	$1073741824, %rbx       # imm = 0x40000000
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%rbx, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_90:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rax
	movl	$1, 144(%rax)
.LBB2_91:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB2_98
# %bb.92:                               #   in Loop: Header=BB2_23 Depth=1
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$42, %cl
	jne	.LBB2_100
# %bb.93:                               #   in Loop: Header=BB2_23 Depth=1
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$1, %ebx
	subq	%r12, %rbx
	movq	40(%r15), %rdx
	addq	%rbx, %rdx
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r15), %rax
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_138
# %bb.94:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, %r14
	subq	%r12, %r14
	movq	32(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB2_137
# %bb.95:                               #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jge	.LBB2_136
# %bb.96:                               #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_133
# %bb.97:                               #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r13, 32(%r15)
	jmp	.LBB2_136
	.p2align	4, 0x90
.LBB2_98:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_99:                               #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	cmpl	$36, %r13d
	jne	.LBB2_21
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jae	.LBB2_99
# %bb.101:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$92, %cl
	jne	.LBB2_99
# %bb.102:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$123, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_99
# %bb.103:                              #   in Loop: Header=BB2_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB2_109
# %bb.104:                              # %.preheader1
                                        #   in Loop: Header=BB2_23 Depth=1
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB2_105:                              #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r13d
	jg	.LBB2_147
# %bb.106:                              #   in Loop: Header=BB2_105 Depth=2
	andb	$4, %al
	je	.LBB2_147
# %bb.107:                              #   in Loop: Header=BB2_105 Depth=2
	leal	(%r13,%r13,4), %edx
	leaq	1(%rcx), %rax
	movq	%rax, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rdx,2), %r13d
	addl	$-48, %r13d
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_105
# %bb.108:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$1, %ebx
	jmp	.LBB2_148
.LBB2_109:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB2_110:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_112
# %bb.111:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_112:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_113:                              #   in Loop: Header=BB2_23 Depth=1
	movl	%r13d, %ebx
.LBB2_114:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movl	%ebx, %ecx
	callq	repeat
	movq	(%r15), %rax
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB2_119
# %bb.115:                              #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jae	.LBB2_125
# %bb.116:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$92, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_125
# %bb.117:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$125, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_125
# %bb.118:                              #   in Loop: Header=BB2_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_21
.LBB2_119:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_120:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_122
# %bb.121:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_122:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_123:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_124:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$nuls, %ebx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
	jmp	.LBB2_21
.LBB2_125:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_128
	.p2align	4, 0x90
.LBB2_126:                              #   in Loop: Header=BB2_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_127:                              #   in Loop: Header=BB2_128 Depth=2
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	leaq	1(%rcx), %rcx
	jae	.LBB2_120
.LBB2_128:                              #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jae	.LBB2_126
# %bb.129:                              #   in Loop: Header=BB2_128 Depth=2
	cmpb	$92, -1(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_126
# %bb.130:                              #   in Loop: Header=BB2_128 Depth=2
	cmpb	$125, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_127
# %bb.131:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_124
# %bb.132:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$10, (%rax)
	jmp	.LBB2_123
.LBB2_133:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_135
# %bb.134:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_135:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_136:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB2_137:                              #   in Loop: Header=BB2_23 Depth=1
	orq	$1342177280, %r14       # imm = 0x50000000
	movq	24(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	%r14, (%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB2_138:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	movl	$1476395008, %esi       # imm = 0x58000000
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	doinsert
	movq	40(%r15), %rax
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_20
# %bb.139:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, %rbx
	subq	%r12, %rbx
	movq	32(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB2_19
# %bb.140:                              #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB2_18
# %bb.141:                              #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_17
# %bb.142:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_144
# %bb.143:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_144:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_18
.LBB2_147:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%rcx, %rax
.LBB2_148:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r13d
	jg	.LBB2_110
# %bb.149:                              #   in Loop: Header=BB2_23 Depth=1
	testl	%ebx, %ebx
	je	.LBB2_110
# %bb.150:                              #   in Loop: Header=BB2_23 Depth=1
	movq	8(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB2_113
# %bb.151:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$44, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_113
# %bb.152:                              #   in Loop: Header=BB2_23 Depth=1
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$256, %ebx              # imm = 0x100
	cmpq	%rcx, %rax
	jae	.LBB2_114
# %bb.153:                              #   in Loop: Header=BB2_23 Depth=1
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$4, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_114
# %bb.154:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_202
# %bb.155:                              # %.preheader
                                        #   in Loop: Header=BB2_23 Depth=1
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB2_156:                              #   Parent Loop BB2_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	movzbl	1(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ebx
	jg	.LBB2_160
# %bb.157:                              #   in Loop: Header=BB2_156 Depth=2
	andb	$4, %al
	je	.LBB2_160
# %bb.158:                              #   in Loop: Header=BB2_156 Depth=2
	leal	(%rbx,%rbx,4), %eax
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movsbl	(%rcx), %ecx
	leal	(%rcx,%rax,2), %ebx
	addl	$-48, %ebx
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_156
# %bb.159:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$1, %r14d
.LBB2_160:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ebx
	jg	.LBB2_203
# %bb.161:                              #   in Loop: Header=BB2_23 Depth=1
	testl	%r14d, %r14d
	jne	.LBB2_206
	jmp	.LBB2_203
.LBB2_145:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_167
.LBB2_163:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_165
# %bb.164:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_165:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r14d
.LBB2_166:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-88(%rbp), %r8          # 8-byte Reload
.LBB2_167:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB2_168:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%r8, %rdx
	orq	$1744830464, %rdx       # imm = 0x68000000
	movq	24(%r15), %rsi
	leaq	1(%rax), %rdi
	movq	%rdi, 40(%r15)
	movq	%rdx, (%rsi,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_169:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jae	.LBB2_174
# %bb.170:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB2_173
# %bb.171:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$92, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_173
# %bb.172:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$41, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_174
.LBB2_173:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%r15, %rdi
	movl	$92, %esi
	movl	$41, %edx
	movq	%r8, %r14
	callq	p_bre
	movq	%r14, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB2_174:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r8
	jg	.LBB2_176
# %bb.175:                              #   in Loop: Header=BB2_23 Depth=1
	movq	40(%r15), %rax
	movq	%rax, 152(%r15,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_176:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_187
# %bb.177:                              #   in Loop: Header=BB2_23 Depth=1
	movq	32(%r15), %rax
	movq	40(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB2_186
# %bb.178:                              #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jge	.LBB2_185
# %bb.179:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%r8, %rbx
	movq	24(%r15), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_181
# %bb.180:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%rax, 24(%r15)
	movq	%r14, 32(%r15)
	jmp	.LBB2_184
.LBB2_181:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_183
# %bb.182:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_183:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_184:                              #   in Loop: Header=BB2_23 Depth=1
	movq	%rbx, %r8
.LBB2_185:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB2_186:                              #   in Loop: Header=BB2_23 Depth=1
	orq	$1879048192, %r8        # imm = 0x70000000
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	%r8, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_187:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movq	8(%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB2_192
# %bb.188:                              #   in Loop: Header=BB2_23 Depth=1
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB2_192
# %bb.189:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$92, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_192
# %bb.190:                              #   in Loop: Header=BB2_23 Depth=1
	cmpb	$41, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_192
# %bb.191:                              #   in Loop: Header=BB2_23 Depth=1
	addq	$2, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_91
.LBB2_192:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_194
# %bb.193:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$8, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_194:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_91
.LBB2_196:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_198
# %bb.197:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_198:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_199:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rcx
.LBB2_200:                              #   in Loop: Header=BB2_23 Depth=1
	movq	24(%r15), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r15)
	movq	$671088640, (%rax,%rcx,8) # imm = 0x28000000
	movl	$42, __A_VARIABLE(%rip)
.LBB2_201:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_91
.LBB2_202:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB2_203:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_205
# %bb.204:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_205:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_206:                              #   in Loop: Header=BB2_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	jle	.LBB2_114
# %bb.207:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_209
# %bb.208:                              #   in Loop: Header=BB2_23 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_209:                              #   in Loop: Header=BB2_23 Depth=1
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_114
.LBB2_210:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	movq	-96(%rbp), %r14         # 8-byte Reload
	je	.LBB2_223
# %bb.211:
	movq	40(%r15), %rdx
	leaq	-1(%rdx), %rax
	movq	%rax, 40(%r15)
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_221
# %bb.212:
	movq	32(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jle	.LBB2_220
# %bb.213:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jge	.LBB2_219
# %bb.214:
	movq	24(%r15), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_216
# %bb.215:
	movq	%rax, 24(%r15)
	movq	%rbx, 32(%r15)
	jmp	.LBB2_219
.LBB2_216:
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_218
# %bb.217:
	movl	$12, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_218:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_219:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
.LBB2_220:
	movq	24(%r15), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r15)
	movq	$536870912, (%rcx,%rax,8) # imm = 0x20000000
	movl	$42, __A_VARIABLE(%rip)
.LBB2_221:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rax
	orl	$2, 72(%rax)
	addl	$1, 80(%rax)
.LBB2_222:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_223:
	cmpq	%r14, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_227
# %bb.224:
	cmpl	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_226
# %bb.225:
	movl	$14, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_226:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_227:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	p_bre, .Lfunc_end2-p_bre
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_51
	.quad	.LBB2_49
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_36
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_67
	.quad	.LBB2_58
	.quad	.LBB2_67
	.quad	.LBB2_49
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function doinsert
	.type	doinsert,@function
doinsert:                               # @doinsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpl	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_16
# %bb.1:
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	40(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	cmpq	%rax, %r13
	jl	.LBB3_9
# %bb.2:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jge	.LBB3_8
# %bb.3:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	24(%rbx), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_4
# %bb.7:
	movq	%rax, 24(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%rbx)
	jmp	.LBB3_8
.LBB3_4:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_6
# %bb.5:
	movl	$12, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_6:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%rbx), %rcx
.LBB3_9:
	orq	%r12, %r15
	movq	24(%rbx), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%rbx)
	movq	%r15, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax,%r13,8), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB3_10
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	$9, %rcx
	je	.LBB3_15
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rbx,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jl	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	addq	$1, %rdx
	movq	%rdx, 72(%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:                               #   in Loop: Header=BB3_10 Depth=1
	movq	152(%rbx,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	jl	.LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_10 Depth=1
	addq	$1, %rdx
	movq	%rdx, 152(%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_14
.LBB3_15:
	leaq	(%rax,%r14,8), %rdi
	addq	$8, %rdi
	leaq	(%rax,%r14,8), %rsi
	movq	%r14, %rdx
	notq	%rdx
	addq	40(%rbx), %rdx
	shlq	$3, %rdx
	callq	memmove
	movq	24(%rbx), %rax
	movq	%r15, (%rax,%r14,8)
.LBB3_16:
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
.Lfunc_end3:
	.size	doinsert, .Lfunc_end3-doinsert
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function p_bracket
	.type	p_bracket,@function
p_bracket:                              # @p_bracket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r14
	movq	56(%rdi), %rdx
	movl	20(%rdx), %r12d
	leal	1(%r12), %eax
	movl	%eax, 20(%rdx)
	movslq	16(%rdx), %r13
	movslq	48(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r12d
	jl	.LBB4_20
# %bb.1:
	addq	$8, %rsi
	movl	%esi, 48(%r14)
	movq	%rsi, %r15
	shrq	$3, %r15
	movq	24(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	shlq	$5, %rsi
	testq	%rdi, %rdi
	je	.LBB4_3
# %bb.2:
	callq	reallocf
	jmp	.LBB4_4
.LBB4_3:
	movq	%rsi, %rdi
	callq	malloc
.LBB4_4:
	imulq	%r13, %r15
	movq	56(%r14), %rcx
	movq	%rax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_8
# %bb.5:
	movq	%r15, %rsi
	callq	reallocf
	movq	56(%r14), %rdx
	movq	%rax, 32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB4_14
# %bb.6:
	movq	24(%rdx), %r8
	movl	%r12d, %r9d
	andl	$1, %r9d
	cmpl	$1, %r12d
	jne	.LBB4_9
# %bb.7:
	xorl	%ebx, %ebx
	jmp	.LBB4_11
.LBB4_8:
	movq	%r15, %rdi
	callq	malloc
	movq	56(%r14), %rdx
	movq	%rax, 32(%rdx)
	jmp	.LBB4_13
.LBB4_9:
	leaq	32(%r8), %rcx
	movq	%r12, %rdi
	subq	%r9, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	shrl	$3, %esi
	imulq	%r13, %rsi
	addq	%rax, %rsi
	movq	%rsi, -32(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, (%rcx)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rcx
	cmpq	%rbx, %rdi
	jne	.LBB4_10
.LBB4_11:
	testq	%r9, %r9
	je	.LBB4_14
# %bb.12:
	movl	%ebx, %ecx
	shrl	$3, %ecx
	imulq	%r13, %rcx
	movq	%rax, %rsi
	addq	%rcx, %rsi
	shlq	$5, %rbx
	movq	%rsi, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_14:
	cmpq	$0, 24(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_17
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_17
# %bb.16:
	subq	%r13, %r15
	addq	%r15, %rax
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rdx
	jmp	.LBB4_20
.LBB4_17:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_19
# %bb.18:
	movl	$12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_19:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB4_20:
	movslq	%r12d, %rcx
	movq	%rcx, %rbx
	shlq	$5, %rbx
	leal	7(%rcx), %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$3, %eax
	cltq
	imulq	%r13, %rax
	addq	32(%rdx), %rax
	andb	$7, %cl
	movl	$1, %esi
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %esi
	movq	24(%rdx), %r15
	movq	%rax, (%r15,%rbx)
	movb	%sil, 8(%r15,%rbx)
	movw	$0, 10(%r15,%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 16(%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	leaq	5(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB4_23
# %bb.21:
	movl	$.L.str, %esi
	movl	$6, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_30
# %bb.22:
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	leaq	5(%rdi), %rcx
.LBB4_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB4_26
# %bb.24:
	movl	$.L.str.1, %esi
	movl	$6, %edx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_191
# %bb.25:
	movq	(%r14), %rdi
	movq	8(%r14), %rax
.LBB4_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	jae	.LBB4_35
# %bb.27:
	cmpb	$94, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_35
# %bb.28:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB4_36
.LBB4_35:
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
.LBB4_36:
	leaq	(%r15,%rbx), %r13
	leaq	(%r15,%rbx), %rcx
	addq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	jae	.LBB4_42
# %bb.37:
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$93, %al
	jne	.LBB4_39
# %bb.38:
	movw	$93, %r8w
	movl	$93, %eax
	jmp	.LBB4_41
.LBB4_30:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_295
# %bb.31:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB4_281
# %bb.32:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB4_280
# %bb.33:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_277
# %bb.34:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB4_280
.LBB4_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	jne	.LBB4_43
# %bb.40:
	movw	$45, %r8w
	movl	$45, %eax
.LBB4_41:
	addq	$1, %rdi
	movq	%rdi, (%r14)
	movb	(%rcx), %dl
	movq	(%r13), %rsi
	orb	%dl, (%rsi,%rax)
	addw	%r8w, 2(%rcx)
.LBB4_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_43:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %r15
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jae	.LBB4_199
# %bb.44:
	leaq	16(%r14), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	.p2align	4, 0x90
.LBB4_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_139 Depth 2
                                        #     Child Loop BB4_135 Depth 2
                                        #     Child Loop BB4_126 Depth 2
                                        #     Child Loop BB4_71 Depth 2
                                        #     Child Loop BB4_183 Depth 2
                                        #     Child Loop BB4_179 Depth 2
                                        #     Child Loop BB4_175 Depth 2
                                        #     Child Loop BB4_171 Depth 2
                                        #     Child Loop BB4_167 Depth 2
                                        #     Child Loop BB4_163 Depth 2
                                        #     Child Loop BB4_159 Depth 2
                                        #     Child Loop BB4_155 Depth 2
                                        #     Child Loop BB4_151 Depth 2
                                        #     Child Loop BB4_147 Depth 2
                                        #     Child Loop BB4_142 Depth 2
                                        #     Child Loop BB4_116 Depth 2
	movsbl	(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %edx
	je	.LBB4_199
# %bb.50:                               #   in Loop: Header=BB4_49 Depth=1
	leaq	1(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB4_53
# %bb.51:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %dl
	jne	.LBB4_53
# %bb.52:                               #   in Loop: Header=BB4_49 Depth=1
	cmpb	$93, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_54
	jmp	.LBB4_234
	.p2align	4, 0x90
.LBB4_53:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_54:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %edx
	je	.LBB4_56
# %bb.55:                               #   in Loop: Header=BB4_49 Depth=1
	cmpl	$45, %edx
	jne	.LBB4_77
	jmp	.LBB4_196
	.p2align	4, 0x90
.LBB4_56:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB4_77
# %bb.57:                               #   in Loop: Header=BB4_49 Depth=1
	movsbl	(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %ecx
	je	.LBB4_84
# %bb.58:                               #   in Loop: Header=BB4_49 Depth=1
	cmpl	$58, %ecx
	jne	.LBB4_78
# %bb.59:                               #   in Loop: Header=BB4_49 Depth=1
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB4_63
# %bb.60:                               #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$7, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_62:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r15d
.LBB4_63:                               #   in Loop: Header=BB4_49 Depth=1
	movb	(%r15), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %cl
	je	.LBB4_65
# %bb.64:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$93, %cl
	jne	.LBB4_125
.LBB4_65:                               #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_67
# %bb.66:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_67:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r12d
.LBB4_68:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_69:                               #   in Loop: Header=BB4_49 Depth=1
	subq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %edi
	movl	$cclasses+16, %ebx
	jmp	.LBB4_71
	.p2align	4, 0x90
.LBB4_70:                               #   in Loop: Header=BB4_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_98
.LBB4_71:                               #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_70
# %bb.72:                               #   in Loop: Header=BB4_71 Depth=2
	movq	-16(%rbx), %rax
	cmpb	$0, (%rax,%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_70
# %bb.73:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_99
# %bb.74:                               #   in Loop: Header=BB4_49 Depth=1
	movl	-8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$11, %rax
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB4_185
# %bb.75:                               #   in Loop: Header=BB4_49 Depth=1
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_76:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_116
	.p2align	4, 0x90
.LBB4_77:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_78:                               #   in Loop: Header=BB4_49 Depth=1
	movq	%r14, %rdi
	callq	p_b_symbol
	movl	%eax, %r15d
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB4_45
# %bb.79:                               #   in Loop: Header=BB4_49 Depth=1
	cmpb	$45, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_45
# %bb.80:                               #   in Loop: Header=BB4_49 Depth=1
	leaq	1(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB4_45
# %bb.81:                               #   in Loop: Header=BB4_49 Depth=1
	cmpb	$93, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_82
	.p2align	4, 0x90
.LBB4_45:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB4_46:                               #   in Loop: Header=BB4_49 Depth=1
	movb	(%rbx), %al
	movq	(%r13), %rcx
	movzbl	%r15b, %edx
	orb	%al, (%rcx,%rdx)
	addw	%dx, 2(%rbx)
.LBB4_47:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_48:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %r15
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB4_49
	jmp	.LBB4_199
.LBB4_84:                               #   in Loop: Header=BB4_49 Depth=1
	addq	$2, %r15
	movq	%r15, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB4_88
# %bb.85:                               #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_87
# %bb.86:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$7, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_87:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$nuls, %r15d
	movq	%r15, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_88:                               #   in Loop: Header=BB4_49 Depth=1
	movb	(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB4_90
# %bb.89:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$93, %al
	jne	.LBB4_93
.LBB4_90:                               #   in Loop: Header=BB4_49 Depth=1
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_92
# %bb.91:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$3, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_92:                               #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_93:                               #   in Loop: Header=BB4_49 Depth=1
	movq	%r14, %rdi
	movl	$61, %esi
	callq	p_b_coll_elem
	movb	(%rbx), %cl
	movq	(%r13), %rdx
	movzbl	%al, %eax
	orb	%cl, (%rdx,%rax)
	addw	%ax, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB4_106
# %bb.94:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB4_109
# %bb.95:                               #   in Loop: Header=BB4_49 Depth=1
	cmpb	$61, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_109
# %bb.96:                               #   in Loop: Header=BB4_49 Depth=1
	cmpb	$93, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_109
.LBB4_97:                               #   in Loop: Header=BB4_49 Depth=1
	addq	$2, %rax
	movq	%rax, (%r14)
	jmp	.LBB4_114
.LBB4_98:                               #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_99:                               #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_101
# %bb.100:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$4, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_101:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_102:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_103:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_104:                              #   in Loop: Header=BB4_49 Depth=1
	cmpl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_112
# %bb.105:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$4, (%rdx)
	jmp	.LBB4_111
.LBB4_82:                               #   in Loop: Header=BB4_49 Depth=1
	movq	%rdx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$45, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB4_118
# %bb.83:                               #   in Loop: Header=BB4_49 Depth=1
	addq	$2, %rax
	movq	%rax, (%r14)
	movb	$45, %al
	jmp	.LBB4_119
.LBB4_106:                              #   in Loop: Header=BB4_49 Depth=1
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_108
# %bb.107:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$7, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_108:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_109:                              #   in Loop: Header=BB4_49 Depth=1
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_112
# %bb.110:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$3, (%r15)
.LBB4_111:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_112:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
.LBB4_113:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_114:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_47
.LBB4_115:                              #   in Loop: Header=BB4_116 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_116:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_115
# %bb.117:                              #   in Loop: Header=BB4_116 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_115
.LBB4_118:                              #   in Loop: Header=BB4_49 Depth=1
	movq	%r14, %rdi
	callq	p_b_symbol
.LBB4_119:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %r15b
	je	.LBB4_46
# %bb.120:                              #   in Loop: Header=BB4_49 Depth=1
	cmpl	$0, __collate_load_error(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_129
# %bb.121:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%al, %r15b
	jbe	.LBB4_138
# %bb.122:                              #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_124
# %bb.123:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_124:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_113
.LBB4_125:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jae	.LBB4_128
	.p2align	4, 0x90
.LBB4_126:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r14), %r12
	movzbl	(%r12), %ecx
	testb	$3, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_69
# %bb.127:                              #   in Loop: Header=BB4_126 Depth=2
	addq	$1, %r12
	movq	%r12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB4_126
	jmp	.LBB4_68
.LBB4_128:                              #   in Loop: Header=BB4_49 Depth=1
	movq	%r15, %r12
	jmp	.LBB4_68
.LBB4_129:                              #   in Loop: Header=BB4_49 Depth=1
	movsbl	%r15b, %r12d
	movsbl	%al, %r15d
	movl	%r12d, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB4_133
# %bb.130:                              #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_132
# %bb.131:                              #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_132:                              #   in Loop: Header=BB4_49 Depth=1
	movdqa	-80(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_133:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_135
	.p2align	4, 0x90
.LBB4_134:                              #   in Loop: Header=BB4_135 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_48
.LBB4_135:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edi
	movl	%ebx, %esi
	callq	__collate_range_cmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB4_134
# %bb.136:                              #   in Loop: Header=BB4_135 Depth=2
	movl	%ebx, %edi
	movl	%r15d, %esi
	callq	__collate_range_cmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB4_134
# %bb.137:                              #   in Loop: Header=BB4_135 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movzbl	(%rsi), %eax
	movq	(%r13), %rcx
	movzbl	%bl, %edx
	orb	%al, (%rcx,%rdx)
	movzbl	%bl, %eax
	addw	%ax, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_134
.LBB4_138:                              #   in Loop: Header=BB4_49 Depth=1
	movzbl	%al, %eax
	movzbl	%r15b, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB4_139:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movzbl	(%rbx), %edx
	movq	(%r13), %rsi
	movzbl	%cl, %edi
	orb	%dl, (%rsi,%rdi)
	movzbl	%cl, %edx
	addw	%dx, 2(%rbx)
	leal	1(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	movl	%edx, %ecx
	jb	.LBB4_139
	jmp	.LBB4_48
.LBB4_140:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_142
.LBB4_141:                              #   in Loop: Header=BB4_142 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_142:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$3, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_141
# %bb.143:                              #   in Loop: Header=BB4_142 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_141
.LBB4_144:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_147
.LBB4_145:                              #   in Loop: Header=BB4_147 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_146:                              #   in Loop: Header=BB4_147 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_147:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	je	.LBB4_145
# %bb.148:                              #   in Loop: Header=BB4_147 Depth=2
	testb	%al, %al
	jns	.LBB4_146
	jmp	.LBB4_145
.LBB4_149:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_151
.LBB4_150:                              #   in Loop: Header=BB4_151 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_151:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$32, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_150
# %bb.152:                              #   in Loop: Header=BB4_151 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_150
.LBB4_153:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_155
.LBB4_154:                              #   in Loop: Header=BB4_155 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_155:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_154
# %bb.156:                              #   in Loop: Header=BB4_155 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_154
.LBB4_157:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_159
.LBB4_158:                              #   in Loop: Header=BB4_159 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_159:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$23, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_158
# %bb.160:                              #   in Loop: Header=BB4_159 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_158
.LBB4_161:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_163
.LBB4_162:                              #   in Loop: Header=BB4_163 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_163:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	jne	.LBB4_162
# %bb.164:                              #   in Loop: Header=BB4_163 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_162
.LBB4_165:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_167
.LBB4_166:                              #   in Loop: Header=BB4_167 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_167:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$-105, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_166
# %bb.168:                              #   in Loop: Header=BB4_167 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_166
.LBB4_169:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_171
.LBB4_170:                              #   in Loop: Header=BB4_171 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_171:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$16, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_170
# %bb.172:                              #   in Loop: Header=BB4_171 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_170
.LBB4_173:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_175
.LBB4_174:                              #   in Loop: Header=BB4_175 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_175:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_174
# %bb.176:                              #   in Loop: Header=BB4_175 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_174
.LBB4_177:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_179
.LBB4_178:                              #   in Loop: Header=BB4_179 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_179:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB4_178
# %bb.180:                              #   in Loop: Header=BB4_179 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_178
.LBB4_181:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-128, %ebx
	jmp	.LBB4_183
.LBB4_182:                              #   in Loop: Header=BB4_183 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	je	.LBB4_185
.LBB4_183:                              #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	testb	$68, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_182
# %bb.184:                              #   in Loop: Header=BB4_183 Depth=2
	movzbl	(%r15), %eax
	movq	(%r13), %rdx
	orb	%al, (%rdx,%rcx)
	addw	%cx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_182
.LBB4_185:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movq	8(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB4_189
# %bb.186:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jae	.LBB4_104
# %bb.187:                              #   in Loop: Header=BB4_49 Depth=1
	cmpb	$58, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_104
# %bb.188:                              #   in Loop: Header=BB4_49 Depth=1
	cmpb	$93, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_97
	jmp	.LBB4_104
.LBB4_189:                              #   in Loop: Header=BB4_49 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_103
# %bb.190:                              #   in Loop: Header=BB4_49 Depth=1
	movl	$7, (%rdx)
	jmp	.LBB4_102
.LBB4_191:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_295
# %bb.192:
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB4_293
# %bb.193:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB4_292
# %bb.194:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_289
# %bb.195:
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	jmp	.LBB4_292
.LBB4_196:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_198
# %bb.197:
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_198:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %r15d
.LBB4_199:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_200:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jae	.LBB4_219
# %bb.201:
	leaq	1(%r15), %rax
	movq	%rax, (%r14)
	cmpb	$93, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_219
# %bb.202:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_296
# %bb.203:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r8
	addq	$24, %r8
	movq	56(%r14), %rax
	testb	$2, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	je	.LBB4_227
# %bb.204:
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movslq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB4_224
# %bb.205:
	movq	%rax, %rbx
	addq	$1, %rbx
	leal	-1(%rax), %r12d
	jmp	.LBB4_207
	.p2align	4, 0x90
.LBB4_206:                              #   in Loop: Header=BB4_207 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	addl	$-1, %r12d
	cmpq	$1, %rbx
	jle	.LBB4_224
.LBB4_207:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movzbl	%r12b, %r15d
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	andb	(%rax,%r15), %cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_206
# %bb.208:                              #   in Loop: Header=BB4_207 Depth=1
	callq	__locale_ctype_ptr
	testb	$3, -1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_206
# %bb.209:                              #   in Loop: Header=BB4_207 Depth=1
	leaq	-2(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %r13d
	andb	$3, %r13b
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %ecx
	andb	$3, %cl
	cmpb	$1, %r13b
	jne	.LBB4_214
# %bb.210:                              #   in Loop: Header=BB4_207 Depth=1
	cmpb	$1, %cl
	jne	.LBB4_212
# %bb.211:                              #   in Loop: Header=BB4_207 Depth=1
	addl	$32, %r15d
.LBB4_212:                              #   in Loop: Header=BB4_207 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB4_213:                              #   in Loop: Header=BB4_207 Depth=1
	movl	%r15d, %eax
	jmp	.LBB4_217
.LBB4_214:                              #   in Loop: Header=BB4_207 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	cmpb	$2, %cl
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB4_217
# %bb.215:                              #   in Loop: Header=BB4_207 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %eax
	andb	$3, %al
	cmpb	$2, %al
	jne	.LBB4_213
# %bb.216:                              #   in Loop: Header=BB4_207 Depth=1
	addl	$-32, %r15d
	jmp	.LBB4_213
	.p2align	4, 0x90
.LBB4_217:                              #   in Loop: Header=BB4_207 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, -80(%rbp)         # 8-byte Folded Reload
	je	.LBB4_206
# %bb.218:                              #   in Loop: Header=BB4_207 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movzbl	(%rdi), %ecx
	movq	(%r13), %rdx
	movzbl	%al, %esi
	orb	%cl, (%rdx,%rsi)
	movzbl	%al, %eax
	addw	%ax, 2(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_206
.LBB4_219:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_221
# %bb.220:
	movl	$7, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_221:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
.LBB4_222:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_223:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_296
.LBB4_224:
	movq	-88(%rbp), %r8          # 8-byte Reload
	cmpq	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_226
# %bb.225:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_226:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_227:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB4_241
# %bb.228:
	movq	56(%r14), %rcx
	movl	16(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB4_236
# %bb.229:                              # %.preheader6
	addl	$1, %eax
	jmp	.LBB4_232
	.p2align	4, 0x90
.LBB4_230:                              #   in Loop: Header=BB4_232 Depth=1
	orb	%bl, %cl
	movb	%cl, (%rdx,%rsi)
	movzbl	%dil, %edx
	addw	2(%r15), %dx
.LBB4_231:                              #   in Loop: Header=BB4_232 Depth=1
	movw	%dx, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpl	$1, %eax
	jle	.LBB4_235
.LBB4_232:                              # =>This Inner Loop Header: Depth=1
	leal	-2(%rax), %edi
	movq	(%r13), %rdx
	movzbl	%dil, %esi
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %cl
	je	.LBB4_230
# %bb.233:                              #   in Loop: Header=BB4_232 Depth=1
	notb	%cl
	andb	%cl, %bl
	movb	%bl, (%rdx,%rsi)
	movzwl	2(%r15), %edx
	movzbl	%dil, %ecx
	subl	%ecx, %edx
	jmp	.LBB4_231
.LBB4_234:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%r14)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movb	(%rdx), %al
	movq	(%r13), %rcx
	orb	%al, 45(%rcx)
	addw	$45, 2(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %r15
	movq	8(%r14), %rax
	jmp	.LBB4_200
.LBB4_235:
	movq	56(%r14), %rcx
.LBB4_236:
	testb	$8, 40(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_238
# %bb.237:
	movb	(%r15), %al
	notb	%al
	movq	(%r13), %rcx
	andb	%al, 10(%rcx)
	addw	$-10, 2(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_238:
	cmpq	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_240
# %bb.239:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_240:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_241:
	movq	56(%r14), %r8
	movslq	16(%r8), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB4_251
# %bb.242:
	movq	(%r13), %rdx
	movb	(%r15), %bl
	xorl	%edi, %edi
	xorl	%esi, %esi
	jmp	.LBB4_244
	.p2align	4, 0x90
.LBB4_243:                              #   in Loop: Header=BB4_244 Depth=1
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rdi
	jae	.LBB4_246
.LBB4_244:                              # =>This Inner Loop Header: Depth=1
	movzbl	%dil, %eax
	movzbl	(%rdx,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	andb	%bl, %al
	je	.LBB4_243
# %bb.245:                              #   in Loop: Header=BB4_244 Depth=1
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_243
.LBB4_246:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	jne	.LBB4_252
# %bb.247:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r15), %al
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_248:                              # =>This Inner Loop Header: Depth=1
	movzbl	%cl, %edi
	movzbl	(%rdx,%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	andb	%al, %bl
	jne	.LBB4_271
# %bb.249:                              #   in Loop: Header=BB4_248 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$16777216, %esi         # imm = 0x1000000
	cmpq	%r9, %rcx
	jb	.LBB4_248
# %bb.250:
	xorl	%esi, %esi
	jmp	.LBB4_272
.LBB4_251:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_252:
	movzwl	2(%r15), %r11d
	movq	24(%r8), %r15
	movslq	20(%r8), %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	jle	.LBB4_265
# %bb.253:                              # %.preheader1
	shlq	$5, %r10
	addq	%r15, %r10
	jmp	.LBB4_257
.LBB4_254:                              #   in Loop: Header=BB4_257 Depth=1
	xorl	%ebx, %ebx
.LBB4_255:                              #   in Loop: Header=BB4_257 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rbx
	je	.LBB4_282
.LBB4_256:                              #   in Loop: Header=BB4_257 Depth=1
	addq	$32, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r15
	jae	.LBB4_265
.LBB4_257:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_261 Depth 2
	cmpw	%r11w, 10(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_256
# %bb.258:                              #   in Loop: Header=BB4_257 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	je	.LBB4_256
# %bb.259:                              #   in Loop: Header=BB4_257 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB4_254
# %bb.260:                              #   in Loop: Header=BB4_257 Depth=1
	movq	(%r15), %r12
	movq	%r13, %rax
	movb	8(%r15), %r13b
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %dl
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_261:                              #   Parent Loop BB4_257 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%bl, %edi
	movzbl	(%r12,%rdi), %ecx
	andb	%r13b, %cl
	setne	%cl
	movzbl	(%rsi,%rdi), %eax
	andb	%dl, %al
	setne	%al
	xorb	%cl, %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_264
# %bb.262:                              #   in Loop: Header=BB4_261 Depth=2
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rbx
	jb	.LBB4_261
# %bb.263:                              #   in Loop: Header=BB4_257 Depth=1
	movl	%ebx, %ebx
.LBB4_264:                              #   in Loop: Header=BB4_257 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB4_255
.LBB4_265:
	addq	$24, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
.LBB4_266:
	subq	(%r8), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_223
# %bb.267:
	shrq	$5, %r15
	movslq	%r15d, %rbx
	movq	32(%r14), %rax
	movq	40(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB4_301
# %bb.268:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jge	.LBB4_300
# %bb.269:
	movq	24(%r14), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_297
# %bb.270:
	movq	%rax, 24(%r14)
	movq	%r15, 32(%r14)
	jmp	.LBB4_300
.LBB4_271:
	sarl	$24, %esi
.LBB4_272:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	ordinary
	movq	56(%r14), %rcx
	movslq	20(%rcx), %rax
	shlq	$5, %rax
	addq	24(%rcx), %rax
	movslq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_275
# %bb.273:                              # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_274:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %ebx
	notb	%bl
	movq	(%r13), %rsi
	movzbl	%dl, %edi
	andb	%bl, (%rsi,%rdi)
	movzbl	%dl, %esi
	subw	%si, 2(%r15)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jb	.LBB4_274
.LBB4_275:
	addq	$-32, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jne	.LBB4_223
# %bb.276:
	movq	56(%r14), %rax
	addl	$-1, 20(%rax)
	jmp	.LBB4_222
.LBB4_277:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_279
# %bb.278:
	movl	$12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_279:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_280:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
.LBB4_281:
	movq	24(%r14), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	jmp	.LBB4_294
.LBB4_282:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB4_286
# %bb.283:                              # %.preheader
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB4_284:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	notb	%cl
	movq	(%r13), %rdx
	movzbl	%al, %esi
	andb	%cl, (%rdx,%rsi)
	movzbl	%al, %ecx
	subw	%cx, 2(%rdi)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rax
	jb	.LBB4_284
# %bb.285:
	movq	56(%r14), %r8
.LBB4_286:
	addq	$-32, %r10
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r10
	jne	.LBB4_288
# %bb.287:
	addl	$-1, 20(%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_288:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r8
	jmp	.LBB4_266
.LBB4_289:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_291
# %bb.290:
	movl	$12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_291:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_292:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
.LBB4_293:
	movq	24(%r14), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movl	$2550136832, %edx       # imm = 0x98000000
	addq	$134217728, %rdx        # imm = 0x8000000
.LBB4_294:
	movq	%rdx, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_295:
	movl	$42, __A_VARIABLE(%rip)
	addq	$6, (%r14)
.LBB4_296:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_297:
	cmpl	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_299
# %bb.298:
	movl	$12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_299:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_300:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rcx
.LBB4_301:
	orq	$805306368, %rbx        # imm = 0x30000000
	movq	24(%r14), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r14)
	movq	%rbx, (%rax,%rcx,8)
	jmp	.LBB4_222
.Lfunc_end4:
	.size	p_bracket, .Lfunc_end4-p_bracket
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_76
	.quad	.LBB4_140
	.quad	.LBB4_144
	.quad	.LBB4_149
	.quad	.LBB4_153
	.quad	.LBB4_157
	.quad	.LBB4_161
	.quad	.LBB4_165
	.quad	.LBB4_169
	.quad	.LBB4_173
	.quad	.LBB4_177
	.quad	.LBB4_181
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function ordinary
	.type	ordinary,@function
ordinary:                               # @ordinary
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r13
	movq	56(%rdi), %rax
	movq	88(%rax), %r15
	testb	$2, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_9
# %bb.1:
	movzbl	%r14b, %r12d
	jmp	.LBB5_2
.LBB5_9:
	callq	__locale_ctype_ptr
	movzbl	%r14b, %r12d
	testb	$3, 1(%rax,%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_2
# %bb.10:
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %bl
	andb	$3, %bl
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %cl
	andb	$3, %cl
	cmpb	$1, %bl
	jne	.LBB5_12
# %bb.11:
	leal	32(%r12), %eax
	cmpb	$1, %cl
	jmp	.LBB5_14
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	cmpb	$2, %cl
	jne	.LBB5_15
# %bb.13:
	callq	__locale_ctype_ptr
	movb	1(%rax,%r12), %cl
	andb	$3, %cl
	leal	-32(%r12), %eax
	cmpb	$2, %cl
.LBB5_14:
	cmovnel	%r12d, %eax
.LBB5_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jne	.LBB5_16
.LBB5_2:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_20
# %bb.3:
	movq	32(%r13), %rax
	movq	40(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB5_19
# %bb.4:
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jge	.LBB5_18
# %bb.5:
	movq	24(%r13), %rdi
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_6
# %bb.17:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	jmp	.LBB5_18
.LBB5_16:
	movups	(%r13), %xmm0
	movaps	%xmm0, -64(%rbp)        # 16-byte Spill
	leaq	-43(%rbp), %rax
	movq	%rax, (%r13)
	leaq	-41(%rbp), %rax
	movq	%rax, 8(%r13)
	movb	%r14b, -43(%rbp)
	movw	$93, -42(%rbp)
	movq	%r13, %rdi
	callq	p_bracket
	movdqa	-64(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_22
.LBB5_6:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_8
# %bb.7:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB5_19:
	orl	$268435456, %r12d       # imm = 0x10000000
	movq	24(%r13), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	movq	%r12, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_20:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rax
	cmpb	$0, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_23
# %bb.21:
	movq	56(%r13), %rcx
	movl	84(%rcx), %edx
	leal	1(%rdx), %esi
	movl	%esi, 84(%rcx)
	movb	%dl, (%r15,%rax)
.LBB5_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ordinary, .Lfunc_end5-ordinary
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function repeat
	.type	repeat,@function
repeat:                                 # @repeat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	40(%rdi), %r12
	cmpl	$0, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_73
# %bb.1:
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	cmpl	$2, %edx
	jl	.LBB6_3
# %bb.2:
	xorl	%eax, %eax
	cmpl	$256, %ebx              # imm = 0x100
	sete	%al
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	shll	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %ecx
	cmpl	$2, %r15d
	jl	.LBB6_5
# %bb.4:
	xorl	%ecx, %ecx
	cmpl	$256, %r15d             # imm = 0x100
	sete	%cl
	orl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB6_5:
	addl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19, %ecx
	ja	.LBB6_14
# %bb.6:
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_7:
	subq	%r14, %r12
	addq	$1, %r12
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	doinsert
	leaq	1(%r14), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	movl	%r15d, %ecx
	callq	repeat
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_35
.LBB6_9:
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rdx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB6_34
# %bb.10:
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdx
	jge	.LBB6_29
# %bb.11:
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_30
# %bb.12:
	movq	%rax, 24(%r13)
	movq	%r15, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %ecx
	jmp	.LBB6_33
.LBB6_13:
	movq	%r14, 40(%r13)
	jmp	.LBB6_72
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$15, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	jmp	.LBB6_38
.LBB6_15:
	movq	%r12, %rdx
	subq	%r14, %rdx
	addq	$1, %rdx
	movl	$2013265920, %esi       # imm = 0x78000000
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_25
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_68
.LBB6_17:
	subq	%r14, %r12
	addq	$1, %r12
	movl	$1207959552, %esi       # imm = 0x48000000
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	doinsert
	movq	40(%r13), %rax
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_38
# %bb.18:
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jl	.LBB6_62
# %bb.19:
	leaq	1(%rcx), %rax
	shrq	$63, %rax
	addq	%rcx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jge	.LBB6_61
# %bb.20:
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_58
# %bb.21:
	movq	%rax, 24(%r13)
	movq	%r14, 32(%r13)
	jmp	.LBB6_61
.LBB6_22:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	dupl
	addl	$-1, %ebx
	addl	$-1, %r15d
	jmp	.LBB6_24
.LBB6_23:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	dupl
	addl	$-1, %ebx
.LBB6_24:
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	%ebx, %edx
	jmp	.LBB6_71
.LBB6_25:
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	32(%r13), %rdx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB6_67
# %bb.26:
	leaq	1(%rdx), %rax
	shrq	$63, %rax
	addq	%rdx, %rax
	addq	$1, %rax
	sarq	%rax
	leaq	(%rax,%rax,2), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jge	.LBB6_44
# %bb.27:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	24(%r13), %rdi
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_63
# %bb.28:
	movq	%rax, 24(%r13)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %ecx
	jmp	.LBB6_66
.LBB6_29:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB6_33
.LBB6_30:
	movl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB6_32
# %bb.31:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB6_32:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB6_34:
	movl	$2147483648, %r15d      # imm = 0x80000000
	orq	%r15, %rbx
	movq	24(%r13), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%r13)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB6_39
.LBB6_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_38:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_72
.LBB6_39:
	subq	%r14, %rdx
	movq	24(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jl	.LBB6_49
# %bb.40:
	leaq	1(%rdi), %rdx
	shrq	$63, %rdx
	addq	%rdi, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	jge	.LBB6_43
# %bb.41:
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_45
# %bb.42:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %ecx
	jmp	.LBB6_48
.LBB6_43:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_48
.LBB6_44:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB6_66
.LBB6_45:
	movl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB6_47
# %bb.46:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB6_47:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB6_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rsi
	movl	%ecx, %edx
.LBB6_49:
	leaq	1(%rsi), %rcx
	movq	%rcx, 40(%r13)
	leaq	134217728(%r15), %rcx
	movq	%rcx, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB6_36
# %bb.51:
	movq	24(%r13), %rax
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jl	.LBB6_57
# %bb.52:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jge	.LBB6_55
# %bb.53:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_79
# %bb.54:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
.LBB6_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB6_57:
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	addq	$268435458, %r15        # imm = 0x10000002
	movq	%r15, (%rax,%rcx,8)
	jmp	.LBB6_37
.LBB6_58:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_60
# %bb.59:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_60:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB6_62:
	orq	$1342177280, %rbx       # imm = 0x50000000
	movq	24(%r13), %rcx
	leaq	1(%rax), %rdx
	movq	%rdx, 40(%r13)
	movq	%rbx, (%rcx,%rax,8)
	jmp	.LBB6_37
.LBB6_63:
	movl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB6_65
# %bb.64:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB6_65:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rax
.LBB6_67:
	movl	$2147483648, %r8d       # imm = 0x80000000
	orq	%r8, %rbx
	movq	24(%r13), %rdx
	leaq	1(%rax), %rsi
	movq	%rsi, 40(%r13)
	movq	%rbx, (%rdx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB6_74
.LBB6_68:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_69:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	addq	$1, %r12
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	dupl
	addl	$-1, %r15d
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
.LBB6_71:
	movl	%r15d, %ecx
	callq	repeat
.LBB6_72:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_73:
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
.LBB6_74:
	subq	%r14, %rdx
	movq	24(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	andl	$-134217728, %esi       # imm = 0xF8000000
	orq	%rdx, %rsi
	movq	%rsi, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdi
	movq	40(%r13), %rsi
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jl	.LBB6_86
# %bb.75:
	leaq	1(%rdi), %rdx
	shrq	$63, %rdx
	addq	%rdi, %rdx
	addq	$1, %rdx
	sarq	%rdx
	leaq	(%rdx,%rdx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	jge	.LBB6_78
# %bb.76:
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_82
# %bb.77:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %ecx
	movl	$2147483648, %r8d       # imm = 0x80000000
	jmp	.LBB6_85
.LBB6_78:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_85
.LBB6_79:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_81
# %bb.80:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_81:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
	jmp	.LBB6_56
.LBB6_82:
	movl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	movl	$2147483648, %r8d       # imm = 0x80000000
	jne	.LBB6_84
# %bb.83:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB6_84:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB6_85:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rsi
	movl	%ecx, %edx
.LBB6_86:
	leaq	1(%rsi), %rcx
	movq	%rcx, 40(%r13)
	leaq	134217728(%r8), %rcx
	movq	%rcx, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB6_69
# %bb.88:
	movq	24(%r13), %rax
	movq	-8(%rax,%rcx,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	orq	$1, %rdx
	movq	%rdx, -8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rdx
	movq	40(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jl	.LBB6_97
# %bb.89:
	leaq	1(%rdx), %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
	addq	$1, %rcx
	sarq	%rcx
	leaq	(%rcx,%rcx,2), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jge	.LBB6_92
# %bb.90:
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_93
# %bb.91:
	movq	%rax, 24(%r13)
	movq	%rbx, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147483648, %r8d       # imm = 0x80000000
	jmp	.LBB6_96
.LBB6_92:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_96
.LBB6_93:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2147483648, %r8d       # imm = 0x80000000
	jne	.LBB6_95
# %bb.94:
	movl	$12, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_95:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rax
.LBB6_96:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r13), %rcx
.LBB6_97:
	leaq	1(%rcx), %rdx
	movq	%rdx, 40(%r13)
	addq	$268435458, %r8         # imm = 0x10000002
	movq	%r8, (%rax,%rcx,8)
	jmp	.LBB6_70
.Lfunc_end6:
	.size	repeat, .Lfunc_end6-repeat
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_13
	.quad	.LBB6_7
	.quad	.LBB6_7
	.quad	.LBB6_7
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_73
	.quad	.LBB6_15
	.quad	.LBB6_17
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_14
	.quad	.LBB6_22
	.quad	.LBB6_23
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function p_b_symbol
	.type	p_b_symbol,@function
p_b_symbol:                             # @p_b_symbol
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	8(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jae	.LBB7_1
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB7_4
# %bb.6:
	cmpb	$91, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_4
# %bb.7:
	cmpb	$46, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_4
# %bb.8:
	addq	$2, %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rdi
	movl	$46, %esi
	callq	p_b_coll_elem
	movq	(%rbx), %rcx
	movq	8(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB7_13
# %bb.9:
	leaq	1(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jae	.LBB7_13
# %bb.10:
	cmpb	$46, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_13
# %bb.11:
	cmpb	$93, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_13
# %bb.12:
	addq	$2, %rcx
	movq	%rcx, (%rbx)
	jmp	.LBB7_16
.LBB7_1:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
# %bb.2:
	movl	$7, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_3:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$nuls+1, %ecx
.LBB7_4:
	movq	%rcx, (%rbx)
	movb	(%rax), %al
.LBB7_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_13:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_15
# %bb.14:
	movl	$3, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_15:
	movl	$nuls, %ecx
	movq	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_17
.Lfunc_end7:
	.size	p_b_symbol, .Lfunc_end7-p_b_symbol
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function p_b_coll_elem
	.type	p_b_coll_elem,@function
p_b_coll_elem:                          # @p_b_coll_elem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jae	.LBB8_7
# %bb.1:                                # %.preheader
	leaq	1(%r14), %rcx
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	movq	%rcx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	leaq	1(%rcx), %rcx
	jae	.LBB8_7
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movsbl	-1(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edx
	jne	.LBB8_4
# %bb.5:                                #   in Loop: Header=BB8_2 Depth=1
	cmpb	$93, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_6
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	notq	%r12
	addq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r12d, %r15
	movl	$.L.str.14, %edi
	movl	$cnames+16, %ebx
	jmp	.LBB8_10
	.p2align	4, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_14
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_13
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=1
	movq	-16(%rbx), %rax
	cmpb	$0, (%rax,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_13
# %bb.12:
	movb	-8(%rbx), %al
	jmp	.LBB8_20
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_19
# %bb.8:
	movl	$7, 16(%r13)
.LBB8_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_19:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB8_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	jne	.LBB8_16
# %bb.15:
	movb	(%r14), %al
	jmp	.LBB8_20
.LBB8_16:
	cmpl	$0, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_19
# %bb.17:
	movl	$3, 16(%r13)
	jmp	.LBB8_18
.Lfunc_end8:
	.size	p_b_coll_elem, .Lfunc_end8-p_b_coll_elem
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dupl
	.type	dupl,@function
dupl:                                   # @dupl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	40(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	subq	%rsi, %r15
	je	.LBB9_8
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	32(%rdi), %r13
	addq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB9_7
# %bb.2:
	movq	24(%rbx), %rdi
	leaq	(,%r13,8), %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_3
# %bb.6:
	movq	%rax, 24(%rbx)
	movq	%r13, 32(%rbx)
	jmp	.LBB9_7
.LBB9_3:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_5
# %bb.4:
	movl	$12, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_5:
	movl	$nuls, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rax
	movq	40(%rbx), %rcx
	leaq	(%rax,%rcx,8), %rdi
	leaq	(%rax,%r12,8), %rsi
	leaq	(,%r15,8), %rdx
	callq	memcpy
	addq	%r15, 40(%rbx)
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dupl, .Lfunc_end9-dupl
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function altoffset
	.type	altoffset,@function
altoffset:                              # @altoffset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB10_27
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	jne	.LBB10_4
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
.LBB10_3:
	addl	%esi, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ecx
	jmp	.LBB10_28
.LBB10_4:
	movl	%esi, -44(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	movl	$2415919104, %r13d      # imm = 0x90000000
	xorl	%r12d, %r12d
	jmp	.LBB10_8
.LBB10_5:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB10_6:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:                               #   in Loop: Header=BB10_8 Depth=1
	movq	(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rbx
	cmpq	$1610612736, %rcx       # imm = 0x60000000
	je	.LBB10_25
.LBB10_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	je	.LBB10_25
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	addq	$-268435456, %rcx       # imm = 0xF0000000
	shrq	$27, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$18, %rcx
	ja	.LBB10_26
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	leaq	8(%rbx), %rdi
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_11:                              #   in Loop: Header=BB10_8 Depth=1
	movl	%eax, %esi
	movl	%edx, %r15d
	callq	altoffset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	cmpl	$-1, %eax
	je	.LBB10_28
# %bb.12:                               #   in Loop: Header=BB10_8 Depth=1
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	leaq	(%rbx,%r14,8), %rsi
	movq	(%rbx,%r14,8), %rbx
	movl	%ebx, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1610612736, %rdx       # imm = 0x60000000
	je	.LBB10_22
	.p2align	4, 0x90
.LBB10_14:                              #   Parent Loop BB10_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	je	.LBB10_21
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=2
	leaq	-134217728(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rdx
	jne	.LBB10_28
# %bb.16:                               #   in Loop: Header=BB10_14 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rsi,%rbx,8), %rdi
	movq	(%rsi,%rbx,8), %rbx
	movl	%ebx, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rsi
	cmpq	$1610612736, %rdx       # imm = 0x60000000
	jne	.LBB10_14
	jmp	.LBB10_23
.LBB10_17:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB10_27
.LBB10_18:                              #   in Loop: Header=BB10_8 Depth=1
	addl	$1, %eax
	jmp	.LBB10_24
.LBB10_19:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	jle	.LBB10_5
# %bb.20:                               #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
	jmp	.LBB10_5
.LBB10_21:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%rsi, %rdi
.LBB10_23:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	movl	%r15d, %edx
.LBB10_24:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB10_7
	jmp	.LBB10_27
.LBB10_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	movl	-44(%rbp), %esi         # 4-byte Reload
	jg	.LBB10_2
	jmp	.LBB10_3
.LBB10_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
.LBB10_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	altoffset, .Lfunc_end10-altoffset
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_18
	.quad	.LBB10_26
	.quad	.LBB10_26
	.quad	.LBB10_18
	.quad	.LBB10_17
	.quad	.LBB10_26
	.quad	.LBB10_26
	.quad	.LBB10_26
	.quad	.LBB10_26
	.quad	.LBB10_11
	.quad	.LBB10_26
	.quad	.LBB10_6
	.quad	.LBB10_6
	.quad	.LBB10_11
	.quad	.LBB10_19
	.quad	.LBB10_6
	.quad	.LBB10_26
	.quad	.LBB10_6
	.quad	.LBB10_6
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"[:<:]]"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"[:>:]]"
	.size	.L.str.1, 7

	.type	cclasses,@object        # @cclasses
	.section	.rodata,"a",@progbits
	.p2align	4
cclasses:
	.quad	.L.str.2
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.3
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.4
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.5
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.8
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.9
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.10
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.11
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.12
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.13
	.long	11                      # 0xb
	.zero	4
	.zero	16
	.size	cclasses, 208

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"alnum"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"alpha"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"blank"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cntrl"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"digit"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"graph"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"lower"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"print"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"punct"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"space"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"upper"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"xdigit"
	.size	.L.str.13, 7

	.type	cnames,@object          # @cnames
	.section	.rodata,"a",@progbits
	.p2align	4
cnames:
	.quad	.L.str.14
	.byte	0                       # 0x0
	.zero	7
	.quad	.L.str.15
	.byte	1                       # 0x1
	.zero	7
	.quad	.L.str.16
	.byte	2                       # 0x2
	.zero	7
	.quad	.L.str.17
	.byte	3                       # 0x3
	.zero	7
	.quad	.L.str.18
	.byte	4                       # 0x4
	.zero	7
	.quad	.L.str.19
	.byte	5                       # 0x5
	.zero	7
	.quad	.L.str.20
	.byte	6                       # 0x6
	.zero	7
	.quad	.L.str.21
	.byte	7                       # 0x7
	.zero	7
	.quad	.L.str.22
	.byte	7                       # 0x7
	.zero	7
	.quad	.L.str.23
	.byte	8                       # 0x8
	.zero	7
	.quad	.L.str.24
	.byte	8                       # 0x8
	.zero	7
	.quad	.L.str.25
	.byte	9                       # 0x9
	.zero	7
	.quad	.L.str.26
	.byte	9                       # 0x9
	.zero	7
	.quad	.L.str.27
	.byte	10                      # 0xa
	.zero	7
	.quad	.L.str.28
	.byte	10                      # 0xa
	.zero	7
	.quad	.L.str.29
	.byte	11                      # 0xb
	.zero	7
	.quad	.L.str.30
	.byte	11                      # 0xb
	.zero	7
	.quad	.L.str.31
	.byte	12                      # 0xc
	.zero	7
	.quad	.L.str.32
	.byte	12                      # 0xc
	.zero	7
	.quad	.L.str.33
	.byte	13                      # 0xd
	.zero	7
	.quad	.L.str.34
	.byte	13                      # 0xd
	.zero	7
	.quad	.L.str.35
	.byte	14                      # 0xe
	.zero	7
	.quad	.L.str.36
	.byte	15                      # 0xf
	.zero	7
	.quad	.L.str.37
	.byte	16                      # 0x10
	.zero	7
	.quad	.L.str.38
	.byte	17                      # 0x11
	.zero	7
	.quad	.L.str.39
	.byte	18                      # 0x12
	.zero	7
	.quad	.L.str.40
	.byte	19                      # 0x13
	.zero	7
	.quad	.L.str.41
	.byte	20                      # 0x14
	.zero	7
	.quad	.L.str.42
	.byte	21                      # 0x15
	.zero	7
	.quad	.L.str.43
	.byte	22                      # 0x16
	.zero	7
	.quad	.L.str.44
	.byte	23                      # 0x17
	.zero	7
	.quad	.L.str.45
	.byte	24                      # 0x18
	.zero	7
	.quad	.L.str.46
	.byte	25                      # 0x19
	.zero	7
	.quad	.L.str.47
	.byte	26                      # 0x1a
	.zero	7
	.quad	.L.str.48
	.byte	27                      # 0x1b
	.zero	7
	.quad	.L.str.49
	.byte	28                      # 0x1c
	.zero	7
	.quad	.L.str.50
	.byte	28                      # 0x1c
	.zero	7
	.quad	.L.str.51
	.byte	29                      # 0x1d
	.zero	7
	.quad	.L.str.52
	.byte	29                      # 0x1d
	.zero	7
	.quad	.L.str.53
	.byte	30                      # 0x1e
	.zero	7
	.quad	.L.str.54
	.byte	30                      # 0x1e
	.zero	7
	.quad	.L.str.55
	.byte	31                      # 0x1f
	.zero	7
	.quad	.L.str.56
	.byte	31                      # 0x1f
	.zero	7
	.quad	.L.str.11
	.byte	32                      # 0x20
	.zero	7
	.quad	.L.str.57
	.byte	33                      # 0x21
	.zero	7
	.quad	.L.str.58
	.byte	34                      # 0x22
	.zero	7
	.quad	.L.str.59
	.byte	35                      # 0x23
	.zero	7
	.quad	.L.str.60
	.byte	36                      # 0x24
	.zero	7
	.quad	.L.str.61
	.byte	37                      # 0x25
	.zero	7
	.quad	.L.str.62
	.byte	38                      # 0x26
	.zero	7
	.quad	.L.str.63
	.byte	39                      # 0x27
	.zero	7
	.quad	.L.str.64
	.byte	40                      # 0x28
	.zero	7
	.quad	.L.str.65
	.byte	41                      # 0x29
	.zero	7
	.quad	.L.str.66
	.byte	42                      # 0x2a
	.zero	7
	.quad	.L.str.67
	.byte	43                      # 0x2b
	.zero	7
	.quad	.L.str.68
	.byte	44                      # 0x2c
	.zero	7
	.quad	.L.str.69
	.byte	45                      # 0x2d
	.zero	7
	.quad	.L.str.70
	.byte	45                      # 0x2d
	.zero	7
	.quad	.L.str.71
	.byte	46                      # 0x2e
	.zero	7
	.quad	.L.str.72
	.byte	46                      # 0x2e
	.zero	7
	.quad	.L.str.73
	.byte	47                      # 0x2f
	.zero	7
	.quad	.L.str.74
	.byte	47                      # 0x2f
	.zero	7
	.quad	.L.str.75
	.byte	48                      # 0x30
	.zero	7
	.quad	.L.str.76
	.byte	49                      # 0x31
	.zero	7
	.quad	.L.str.77
	.byte	50                      # 0x32
	.zero	7
	.quad	.L.str.78
	.byte	51                      # 0x33
	.zero	7
	.quad	.L.str.79
	.byte	52                      # 0x34
	.zero	7
	.quad	.L.str.80
	.byte	53                      # 0x35
	.zero	7
	.quad	.L.str.81
	.byte	54                      # 0x36
	.zero	7
	.quad	.L.str.82
	.byte	55                      # 0x37
	.zero	7
	.quad	.L.str.83
	.byte	56                      # 0x38
	.zero	7
	.quad	.L.str.84
	.byte	57                      # 0x39
	.zero	7
	.quad	.L.str.85
	.byte	58                      # 0x3a
	.zero	7
	.quad	.L.str.86
	.byte	59                      # 0x3b
	.zero	7
	.quad	.L.str.87
	.byte	60                      # 0x3c
	.zero	7
	.quad	.L.str.88
	.byte	61                      # 0x3d
	.zero	7
	.quad	.L.str.89
	.byte	62                      # 0x3e
	.zero	7
	.quad	.L.str.90
	.byte	63                      # 0x3f
	.zero	7
	.quad	.L.str.91
	.byte	64                      # 0x40
	.zero	7
	.quad	.L.str.92
	.byte	91                      # 0x5b
	.zero	7
	.quad	.L.str.93
	.byte	92                      # 0x5c
	.zero	7
	.quad	.L.str.94
	.byte	92                      # 0x5c
	.zero	7
	.quad	.L.str.95
	.byte	93                      # 0x5d
	.zero	7
	.quad	.L.str.96
	.byte	94                      # 0x5e
	.zero	7
	.quad	.L.str.97
	.byte	94                      # 0x5e
	.zero	7
	.quad	.L.str.98
	.byte	95                      # 0x5f
	.zero	7
	.quad	.L.str.99
	.byte	95                      # 0x5f
	.zero	7
	.quad	.L.str.100
	.byte	96                      # 0x60
	.zero	7
	.quad	.L.str.101
	.byte	123                     # 0x7b
	.zero	7
	.quad	.L.str.102
	.byte	123                     # 0x7b
	.zero	7
	.quad	.L.str.103
	.byte	124                     # 0x7c
	.zero	7
	.quad	.L.str.104
	.byte	125                     # 0x7d
	.zero	7
	.quad	.L.str.105
	.byte	125                     # 0x7d
	.zero	7
	.quad	.L.str.106
	.byte	126                     # 0x7e
	.zero	7
	.quad	.L.str.107
	.byte	127                     # 0x7f
	.zero	7
	.zero	16
	.size	cnames, 1536

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"NUL"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"SOH"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"STX"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ETX"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"EOT"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ENQ"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"ACK"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"BEL"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"alert"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"BS"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"backspace"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"HT"
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tab"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"LF"
	.size	.L.str.27, 3

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"newline"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"VT"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"vertical-tab"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FF"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"form-feed"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"CR"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"carriage-return"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SO"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"SI"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"DLE"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"DC1"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"DC2"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"DC3"
	.size	.L.str.40, 4

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"DC4"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"NAK"
	.size	.L.str.42, 4

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"SYN"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"ETB"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"CAN"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"EM"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"SUB"
	.size	.L.str.47, 4

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ESC"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"IS4"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"FS"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"IS3"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"GS"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"IS2"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"RS"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"IS1"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"US"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"exclamation-mark"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"quotation-mark"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"number-sign"
	.size	.L.str.59, 12

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"dollar-sign"
	.size	.L.str.60, 12

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"percent-sign"
	.size	.L.str.61, 13

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ampersand"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"apostrophe"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"left-parenthesis"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"right-parenthesis"
	.size	.L.str.65, 18

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"asterisk"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"plus-sign"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"comma"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"hyphen"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"hyphen-minus"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"period"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"full-stop"
	.size	.L.str.72, 10

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"slash"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"solidus"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"zero"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"one"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"two"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"three"
	.size	.L.str.78, 6

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"four"
	.size	.L.str.79, 5

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"five"
	.size	.L.str.80, 5

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"six"
	.size	.L.str.81, 4

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"seven"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"eight"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"nine"
	.size	.L.str.84, 5

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"colon"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"semicolon"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"less-than-sign"
	.size	.L.str.87, 15

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"equals-sign"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"greater-than-sign"
	.size	.L.str.89, 18

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"question-mark"
	.size	.L.str.90, 14

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"commercial-at"
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"left-square-bracket"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"backslash"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"reverse-solidus"
	.size	.L.str.94, 16

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"right-square-bracket"
	.size	.L.str.95, 21

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"circumflex"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"circumflex-accent"
	.size	.L.str.97, 18

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"underscore"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"low-line"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"grave-accent"
	.size	.L.str.100, 13

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"left-brace"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"left-curly-bracket"
	.size	.L.str.102, 19

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"vertical-line"
	.size	.L.str.103, 14

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"right-brace"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"right-curly-bracket"
	.size	.L.str.105, 20

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"tilde"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"DEL"
	.size	.L.str.107, 4

	.type	nuls,@object            # @nuls
	.local	nuls
	.comm	nuls,10,1
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
