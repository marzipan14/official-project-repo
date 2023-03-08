	.text
	.file	"glob.c"
	.globl	glob                    # -- Begin function glob
	.p2align	4, 0x90
	.type	glob,@function
glob:                                   # @glob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$2064, %rsp             # imm = 0x810
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:
	movl	$0, (%rcx)
	movq	$0, 16(%rcx)
	testb	$2, %sil
	jne	.LBB0_3
# %bb.2:
	movl	$0, 8(%rcx)
.LBB0_3:
	xorl	%eax, %eax
	testl	$4096, %esi             # imm = 0x1000
	je	.LBB0_5
# %bb.4:
	movl	4(%rcx), %r8d
	testl	%r8d, %r8d
	movl	$65536, %eax            # imm = 0x10000
	cmovnel	%r8d, %eax
.LBB0_5:
	movl	%eax, -4(%rbp)
	movl	%esi, %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movl	%eax, 12(%rcx)
	movq	%rdx, 24(%rcx)
	movl	$0, 4(%rcx)
	leaq	-18(%rbp), %r9
	leaq	-2064(%rbp), %rax
	testl	$1024, %esi             # imm = 0x400
	jne	.LBB0_6
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %edx
	testw	%dx, %dx
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	addq	$1, %rdi
	movw	%dx, (%rax)
	addq	$2, %rax
	cmpq	%r9, %rax
	jb	.LBB0_10
	jmp	.LBB0_12
.LBB0_6:                                # %.preheader1
	movl	$92, %r8d
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	1(%rdi), %edx
	addq	$2, %rdi
	testb	%dl, %dl
	cmovneq	%rdi, %r10
	cmovel	%r8d, %edx
	movzbl	%dl, %edx
	orl	$16384, %edx            # imm = 0x4000
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movw	%dx, (%rax)
	addq	$2, %rax
	movq	%r10, %rdi
	cmpq	%r9, %rax
	jae	.LBB0_12
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	leaq	1(%rdi), %r10
	movzbl	(%rdi), %edx
	cmpw	$92, %dx
	je	.LBB0_16
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	testb	%dl, %dl
	jne	.LBB0_9
.LBB0_12:
	movw	$0, (%rax)
	leaq	-2064(%rbp), %rdi
	leaq	-4(%rbp), %rdx
	testb	%sil, %sil
	js	.LBB0_13
# %bb.14:
	movq	%rcx, %rsi
	callq	glob0
	jmp	.LBB0_15
.LBB0_13:
	movq	%rcx, %rsi
	callq	globexp1
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$2064, %rsp             # imm = 0x810
	popq	%rbp
	retq
.Lfunc_end0:
	.size	glob, .Lfunc_end0-glob
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function globexp1
	.type	globexp1,@function
globexp1:                               # @globexp1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2088, %rsp             # imm = 0x828
	movzwl	(%rdi), %eax
	cmpw	$123, %ax
	jne	.LBB1_5
# %bb.1:
	cmpw	$125, 2(%rdi)
	jne	.LBB1_3
# %bb.2:
	cmpw	$0, 4(%rdi)
	je	.LBB1_16
.LBB1_3:
	cmpw	$123, %ax
	jne	.LBB1_5
# %bb.4:
	xorl	%ebx, %ebx
	jmp	.LBB1_8
.LBB1_5:
	xorl	%ebx, %ebx
	movl	%eax, %ecx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	testw	%cx, %cx
	je	.LBB1_15
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%rdi,%rbx,2), %ecx
	addq	$1, %rbx
	cmpw	$123, %cx
	jne	.LBB1_6
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_17
# %bb.9:
	leaq	(%rdi,%rbx,2), %r14
	movq	%r14, %r9
	subq	%rdi, %r9
	leaq	-2(%r9), %r8
	shrq	%r8
	addq	$1, %r8
	movw	%ax, -2128(%rbp)
	cmpq	$1, %rbx
	je	.LBB1_32
# %bb.10:
	leaq	2(%rdi), %r15
	leaq	-2128(%rbp), %r12
	addq	$-4, %r9
	movq	%r9, %r10
	shrq	%r10
	addq	$1, %r10
	cmpq	$16, %r10
	jb	.LBB1_25
# %bb.11:
	leaq	-2126(%rbp), %r11
	andq	$-2, %r9
	leaq	(%rdi,%r9), %rax
	addq	$4, %rax
	cmpq	%rax, %r11
	jae	.LBB1_13
# %bb.12:
	leaq	(%r9,%rbp), %rax
	addq	$-2124, %rax            # imm = 0xF7B4
	cmpq	%rax, %r15
	jb	.LBB1_25
.LBB1_13:
	movq	%r10, %r9
	andq	$-16, %r9
	leaq	-16(%r9), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movl	%eax, %r11d
	andl	$3, %r11d
	cmpq	$48, %rcx
	jae	.LBB1_18
# %bb.14:
	xorl	%eax, %eax
	jmp	.LBB1_20
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	callq	glob0
	jmp	.LBB1_49
.LBB1_17:
	leaq	-2128(%rbp), %r13
	movq	%rdi, %r14
	jmp	.LBB1_33
.LBB1_18:
	movq	%r11, %rcx
	subq	%rax, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	movups	2(%rdi,%rax,2), %xmm0
	movups	18(%rdi,%rax,2), %xmm1
	movups	%xmm0, -2126(%rbp,%rax,2)
	movups	%xmm1, -2110(%rbp,%rax,2)
	movups	34(%rdi,%rax,2), %xmm0
	movups	50(%rdi,%rax,2), %xmm1
	movups	%xmm0, -2094(%rbp,%rax,2)
	movups	%xmm1, -2078(%rbp,%rax,2)
	movups	66(%rdi,%rax,2), %xmm0
	movups	82(%rdi,%rax,2), %xmm1
	movups	%xmm0, -2062(%rbp,%rax,2)
	movups	%xmm1, -2046(%rbp,%rax,2)
	movups	98(%rdi,%rax,2), %xmm0
	movups	114(%rdi,%rax,2), %xmm1
	movups	%xmm0, -2030(%rbp,%rax,2)
	movups	%xmm1, -2014(%rbp,%rax,2)
	addq	$64, %rax
	addq	$4, %rcx
	jne	.LBB1_19
.LBB1_20:
	testq	%r11, %r11
	je	.LBB1_23
# %bb.21:                               # %.preheader13
	addq	%rax, %rax
	addq	$18, %rax
	negq	%r11
	.p2align	4, 0x90
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rdi,%rax), %xmm0
	movups	(%rdi,%rax), %xmm1
	movups	%xmm0, -2144(%rbp,%rax)
	movups	%xmm1, -2128(%rbp,%rax)
	addq	$32, %rax
	incq	%r11
	jne	.LBB1_22
.LBB1_23:
	cmpq	%r9, %r10
	je	.LBB1_32
# %bb.24:
	leaq	(%r15,%r9,2), %r15
	leaq	-2128(,%r9,2), %r12
	addq	%rbp, %r12
.LBB1_25:
	leaq	(%rdi,%rbx,2), %r9
	subq	%r15, %r9
	addq	$-2, %r9
	movl	%r9d, %r10d
	shrl	%r10d
	addl	$1, %r10d
	andq	$7, %r10
	je	.LBB1_29
# %bb.26:                               # %.preheader11
	xorl	%eax, %eax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%rax,2), %ecx
	movw	%cx, 2(%r12,%rax,2)
	addq	$-2, %rdi
	addq	$1, %rax
	cmpq	%rax, %r10
	jne	.LBB1_27
# %bb.28:                               # %.loopexit12
	subq	%rdi, %r15
	subq	%rdi, %r12
.LBB1_29:
	cmpq	$14, %r9
	jb	.LBB1_32
# %bb.30:                               # %.preheader9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r15,%rax), %ecx
	movw	%cx, 2(%r12,%rax)
	movzwl	2(%r15,%rax), %ecx
	movw	%cx, 4(%r12,%rax)
	movzwl	4(%r15,%rax), %ecx
	movw	%cx, 6(%r12,%rax)
	movzwl	6(%r15,%rax), %ecx
	movw	%cx, 8(%r12,%rax)
	movzwl	8(%r15,%rax), %ecx
	movw	%cx, 10(%r12,%rax)
	movzwl	10(%r15,%rax), %ecx
	movw	%cx, 12(%r12,%rax)
	movzwl	12(%r15,%rax), %ecx
	movw	%cx, 14(%r12,%rax)
	movzwl	14(%r15,%rax), %ecx
	movw	%cx, 16(%r12,%rax)
	leaq	(%r15,%rax), %rcx
	addq	$16, %rcx
	addq	$16, %rax
	cmpq	%r14, %rcx
	jne	.LBB1_31
.LBB1_32:
	leaq	-2128(,%r8,2), %r13
	addq	%rbp, %r13
.LBB1_33:
	movw	$0, (%r13)
	addq	$2, %r14
	xorl	%eax, %eax
	movq	%r14, %rbx
	jmp	.LBB1_36
.LBB1_34:                               #   in Loop: Header=BB1_36 Depth=1
	testw	%cx, %cx
	je	.LBB1_47
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=1
	addq	$2, %rbx
.LBB1_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_43 Depth 2
	movzwl	(%rbx), %ecx
	cmpw	$122, %cx
	jle	.LBB1_41
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=1
	cmpw	$123, %cx
	je	.LBB1_46
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=1
	cmpw	$125, %cx
	jne	.LBB1_35
# %bb.39:                               #   in Loop: Header=BB1_36 Depth=1
	testl	%eax, %eax
	je	.LBB1_50
# %bb.40:                               #   in Loop: Header=BB1_36 Depth=1
	addl	$-1, %eax
	jmp	.LBB1_35
	.p2align	4, 0x90
.LBB1_41:                               #   in Loop: Header=BB1_36 Depth=1
	cmpw	$91, %cx
	jne	.LBB1_34
# %bb.42:                               # %.preheader8
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB1_43:                               #   Parent Loop BB1_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	2(%rcx), %edi
	addq	$2, %rcx
	cmpw	$93, %di
	je	.LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=2
	testw	%di, %di
	jne	.LBB1_43
.LBB1_45:                               #   in Loop: Header=BB1_36 Depth=1
	testw	%di, %di
	cmovneq	%rcx, %rbx
	addq	$2, %rbx
	jmp	.LBB1_36
	.p2align	4, 0x90
.LBB1_46:                               #   in Loop: Header=BB1_36 Depth=1
	addl	$1, %eax
	addq	$2, %rbx
	jmp	.LBB1_36
.LBB1_47:
	leaq	-2128(%rbp), %rdi
	callq	glob0
.LBB1_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_49:
	movl	$42, __A_VARIABLE(%rip)
	addq	$2088, %rsp             # imm = 0x828
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_50:
	xorl	%eax, %eax
	cmpq	%rbx, %r14
	ja	.LBB1_48
# %bb.51:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	leaq	2(%r13), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	16(%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%r14, %r12
	jmp	.LBB1_55
	.p2align	4, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_55 Depth=1
	addl	$1, %r15d
.LBB1_53:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%r12, %rax
	movq	%r14, %r12
.LBB1_54:                               #   in Loop: Header=BB1_55 Depth=1
	addq	$2, %rax
	movq	%r12, %r14
	movq	%rax, %r12
	cmpq	%rbx, %rax
	ja	.LBB1_92
.LBB1_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_59 Depth 2
                                        #     Child Loop BB1_82 Depth 2
                                        #     Child Loop BB1_85 Depth 2
                                        #     Child Loop BB1_74 Depth 2
                                        #     Child Loop BB1_78 Depth 2
                                        #     Child Loop BB1_89 Depth 2
	movzwl	(%r12), %eax
	cmpw	$122, %ax
	jg	.LBB1_62
# %bb.56:                               #   in Loop: Header=BB1_55 Depth=1
	cmpw	$44, %ax
	je	.LBB1_66
# %bb.57:                               #   in Loop: Header=BB1_55 Depth=1
	cmpw	$91, %ax
	jne	.LBB1_53
# %bb.58:                               # %.preheader
                                        #   in Loop: Header=BB1_55 Depth=1
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB1_59:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	2(%rax), %ecx
	addq	$2, %rax
	cmpw	$93, %cx
	je	.LBB1_61
# %bb.60:                               #   in Loop: Header=BB1_59 Depth=2
	testw	%cx, %cx
	jne	.LBB1_59
.LBB1_61:                               #   in Loop: Header=BB1_55 Depth=1
	testw	%cx, %cx
	cmoveq	%r12, %rax
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_62:                               #   in Loop: Header=BB1_55 Depth=1
	cmpw	$123, %ax
	je	.LBB1_52
# %bb.63:                               #   in Loop: Header=BB1_55 Depth=1
	cmpw	$125, %ax
	jne	.LBB1_53
# %bb.64:                               #   in Loop: Header=BB1_55 Depth=1
	testl	%r15d, %r15d
	je	.LBB1_67
# %bb.65:                               #   in Loop: Header=BB1_55 Depth=1
	addl	$-1, %r15d
	jmp	.LBB1_53
	.p2align	4, 0x90
.LBB1_66:                               #   in Loop: Header=BB1_55 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_53
.LBB1_67:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%r13, %rax
	cmpq	%r12, %r14
	jae	.LBB1_88
# %bb.68:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%r14, %rax
	notq	%rax
	addq	%r12, %rax
	movq	%rax, %r10
	shrq	%r10
	leaq	1(%r10), %r9
	cmpq	$15, %r9
	jbe	.LBB1_71
# %bb.69:                               #   in Loop: Header=BB1_55 Depth=1
	andq	$-2, %rax
	leaq	(%r14,%rax), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %r13
	jae	.LBB1_79
# %bb.70:                               #   in Loop: Header=BB1_55 Depth=1
	addq	-48(%rbp), %rax         # 8-byte Folded Reload
	cmpq	%rax, %r14
	jae	.LBB1_79
.LBB1_71:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%r13, %rdx
.LBB1_72:                               #   in Loop: Header=BB1_55 Depth=1
	leaq	2(%r14), %rax
	cmpq	%rax, %r12
	cmovaq	%r12, %rax
	movq	%r14, %r8
	notq	%r8
	addq	%rax, %r8
	movl	%r8d, %edi
	shrl	%edi
	addl	$1, %edi
	andq	$7, %rdi
	je	.LBB1_76
# %bb.73:                               # %.preheader2
                                        #   in Loop: Header=BB1_55 Depth=1
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_74:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14,%rsi,2), %ecx
	movw	%cx, (%rdx,%rsi,2)
	addq	$1, %rsi
	addq	$-2, %rax
	cmpq	%rsi, %rdi
	jne	.LBB1_74
# %bb.75:                               # %.loopexit3
                                        #   in Loop: Header=BB1_55 Depth=1
	subq	%rax, %r14
	subq	%rax, %rdx
.LBB1_76:                               #   in Loop: Header=BB1_55 Depth=1
	cmpq	$14, %r8
	jb	.LBB1_87
# %bb.77:                               # %.preheader1
                                        #   in Loop: Header=BB1_55 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_78:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14,%rsi), %eax
	movw	%ax, (%rdx,%rsi)
	movzwl	2(%r14,%rsi), %eax
	movw	%ax, 2(%rdx,%rsi)
	movzwl	4(%r14,%rsi), %eax
	movw	%ax, 4(%rdx,%rsi)
	movzwl	6(%r14,%rsi), %eax
	movw	%ax, 6(%rdx,%rsi)
	movzwl	8(%r14,%rsi), %eax
	movw	%ax, 8(%rdx,%rsi)
	movzwl	10(%r14,%rsi), %eax
	movw	%ax, 10(%rdx,%rsi)
	movzwl	12(%r14,%rsi), %eax
	movw	%ax, 12(%rdx,%rsi)
	movzwl	14(%r14,%rsi), %eax
	movw	%ax, 14(%rdx,%rsi)
	leaq	(%r14,%rsi), %rax
	addq	$16, %rax
	addq	$16, %rsi
	cmpq	%r12, %rax
	jb	.LBB1_78
	jmp	.LBB1_87
.LBB1_79:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%r9, %r8
	andq	$-16, %r8
	leaq	-16(%r8), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	addq	$1, %rax
	movl	%eax, %edx
	andl	$3, %edx
	cmpq	$48, %rcx
	jae	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_55 Depth=1
	xorl	%esi, %esi
	jmp	.LBB1_83
.LBB1_81:                               #   in Loop: Header=BB1_55 Depth=1
	movq	%rdx, %rdi
	subq	%rax, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_82:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r14,%rsi,2), %xmm0
	movups	16(%r14,%rsi,2), %xmm1
	movups	%xmm0, (%r13,%rsi,2)
	movups	%xmm1, 16(%r13,%rsi,2)
	movups	32(%r14,%rsi,2), %xmm0
	movups	48(%r14,%rsi,2), %xmm1
	movups	%xmm0, 32(%r13,%rsi,2)
	movups	%xmm1, 48(%r13,%rsi,2)
	movups	64(%r14,%rsi,2), %xmm0
	movups	80(%r14,%rsi,2), %xmm1
	movups	%xmm0, 64(%r13,%rsi,2)
	movups	%xmm1, 80(%r13,%rsi,2)
	movups	96(%r14,%rsi,2), %xmm0
	movups	112(%r14,%rsi,2), %xmm1
	movups	%xmm0, 96(%r13,%rsi,2)
	movups	%xmm1, 112(%r13,%rsi,2)
	addq	$64, %rsi
	addq	$4, %rdi
	jne	.LBB1_82
.LBB1_83:                               #   in Loop: Header=BB1_55 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_86
# %bb.84:                               # %.preheader4
                                        #   in Loop: Header=BB1_55 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi,2), %rax
	leaq	(%r14,%rsi,2), %rsi
	addq	$16, %rsi
	shlq	$5, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_85:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rsi,%rdi), %xmm0
	movups	(%rsi,%rdi), %xmm1
	movups	%xmm0, -16(%rax,%rdi)
	movups	%xmm1, (%rax,%rdi)
	addq	$32, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB1_85
.LBB1_86:                               #   in Loop: Header=BB1_55 Depth=1
	cmpq	%r8, %r9
	jne	.LBB1_91
.LBB1_87:                               #   in Loop: Header=BB1_55 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r10,2), %rax
.LBB1_88:                               #   in Loop: Header=BB1_55 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_89:                               #   Parent Loop BB1_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	2(%rbx,%rcx), %edx
	movw	%dx, (%rax,%rcx)
	addq	$2, %rcx
	testw	%dx, %dx
	jne	.LBB1_89
# %bb.90:                               #   in Loop: Header=BB1_55 Depth=1
	leaq	-2128(%rbp), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	globexp1
	movq	%r12, %rax
	addq	$2, %r12
	jmp	.LBB1_54
.LBB1_91:                               #   in Loop: Header=BB1_55 Depth=1
	leaq	(%r14,%r8,2), %r14
	leaq	(,%r8,2), %rdx
	addq	%r13, %rdx
	jmp	.LBB1_72
.LBB1_92:
	xorl	%eax, %eax
	jmp	.LBB1_48
.Lfunc_end1:
	.size	globexp1, .Lfunc_end1-globexp1
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function glob0
	.type	glob0,@function
glob0:                                  # @glob0
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4104, %rsp             # imm = 0x1008
	movq	%rdx, %r10
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpw	$126, (%rdi)
	movq	%rdi, %rcx
	jne	.LBB2_21
# %bb.1:
	testb	$8, 13(%rbx)
	movq	%r15, %rcx
	je	.LBB2_21
# %bb.2:
	leaq	-2096(%rbp), %rax
	leaq	-50(%rbp), %r14
	leaq	2(%r15), %r12
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%r12), %ecx
	testw	%cx, %cx
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	cmpw	$47, %cx
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movb	%cl, (%rax)
	addq	$1, %rax
	addq	$2, %r12
	cmpq	%r14, %rax
	jb	.LBB2_3
.LBB2_6:
	movq	%r10, %r13
	movb	$0, (%rax)
	cmpb	$0, -2096(%rbp)
	je	.LBB2_8
# %bb.7:
	leaq	-2096(%rbp), %rdi
	callq	getpwnam
	movq	%r15, %rcx
	testq	%rax, %rax
	movq	%r13, %r10
	jne	.LBB2_13
	jmp	.LBB2_21
.LBB2_8:
	callq	issetugid
	testl	%eax, %eax
	jne	.LBB2_10
# %bb.9:
	movl	$.L.str, %edi
	callq	getenv
	testq	%rax, %rax
	jne	.LBB2_14
.LBB2_10:
	callq	getlogin
	testq	%rax, %rax
	je	.LBB2_12
# %bb.11:
	movq	%rax, %rdi
	callq	getpwnam
	testq	%rax, %rax
	jne	.LBB2_13
.LBB2_12:
	callq	getuid
	movzwl	%ax, %edi
	callq	getpwuid
	movq	%r13, %r10
	movq	%r15, %rcx
	testq	%rax, %rax
	je	.LBB2_21
.LBB2_13:
	movq	40(%rax), %rax
.LBB2_14:
	leaq	-2096(%rbp), %rdx
	.p2align	4, 0x90
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%rax), %ecx
	testw	%cx, %cx
	je	.LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	addq	$1, %rax
	movw	%cx, (%rdx)
	addq	$2, %rdx
	cmpq	%r14, %rdx
	jb	.LBB2_15
.LBB2_17:
	movq	%r13, %r10
	.p2align	4, 0x90
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r14, %rdx
	jae	.LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=1
	movzwl	(%r12), %eax
	addq	$2, %r12
	movw	%ax, (%rdx)
	addq	$2, %rdx
	testw	%ax, %ax
	jne	.LBB2_18
.LBB2_20:
	leaq	-2096(%rbp), %rcx
	movw	$0, (%rdx)
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %r13d
	movslq	%r13d, %r11
	xorl	%eax, %eax
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_24 Depth=1
	movw	$-32726, -2096(%rbp,%rax,2) # imm = 0x802A
.LBB2_23:                               #   in Loop: Header=BB2_24 Depth=1
	addq	$1, %rax
	movq	%rdx, %rcx
.LBB2_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_33 Depth 2
                                        #     Child Loop BB2_45 Depth 2
	addq	$2, %rcx
	.p2align	4, 0x90
.LBB2_25:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	movzwl	-2(%rcx), %ecx
	cmpw	$42, %cx
	jne	.LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=2
	orb	$1, 13(%rbx)
	testq	%rax, %rax
	je	.LBB2_22
# %bb.27:                               #   in Loop: Header=BB2_25 Depth=2
	movzwl	-2098(%rbp,%rax,2), %esi
	leaq	2(%rdx), %rcx
	cmpl	$32810, %esi            # imm = 0x802A
	je	.LBB2_25
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_28:                               #   in Loop: Header=BB2_24 Depth=1
	testw	%cx, %cx
	je	.LBB2_50
# %bb.29:                               #   in Loop: Header=BB2_24 Depth=1
	cmpw	$63, %cx
	je	.LBB2_37
# %bb.30:                               #   in Loop: Header=BB2_24 Depth=1
	cmpw	$91, %cx
	jne	.LBB2_38
# %bb.31:                               #   in Loop: Header=BB2_24 Depth=1
	movzwl	(%rdx), %r8d
	leaq	2(%rdx), %r9
	cmpw	$33, %r8w
	cmovneq	%rdx, %r9
	cmpw	$0, (%r9)
	je	.LBB2_36
# %bb.32:                               #   in Loop: Header=BB2_24 Depth=1
	leaq	2(%r9), %rcx
	movq	%rcx, %rdi
	.p2align	4, 0x90
.LBB2_33:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi), %esi
	cmpw	$93, %si
	je	.LBB2_39
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=2
	addq	$2, %rdi
	testw	%si, %si
	jne	.LBB2_33
# %bb.35:                               #   in Loop: Header=BB2_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:                               #   in Loop: Header=BB2_24 Depth=1
	addq	$-2, %r9
	cmpw	$33, %r8w
	movw	$91, -2096(%rbp,%rax,2)
	cmoveq	%r9, %rdx
	jmp	.LBB2_23
.LBB2_37:                               #   in Loop: Header=BB2_24 Depth=1
	orb	$1, 13(%rbx)
	movw	$-32705, -2096(%rbp,%rax,2) # imm = 0x803F
	jmp	.LBB2_23
.LBB2_38:                               #   in Loop: Header=BB2_24 Depth=1
	movzbl	%cl, %ecx
	movw	%cx, -2096(%rbp,%rax,2)
	jmp	.LBB2_23
.LBB2_39:                               #   in Loop: Header=BB2_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32677, -2096(%rbp,%rax,2) # imm = 0x805B
	cmpw	$33, %r8w
	jne	.LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_24 Depth=1
	movw	$-32735, -2094(%rbp,%rax,2) # imm = 0x8021
	addq	$2, %rax
	jmp	.LBB2_42
.LBB2_41:                               #   in Loop: Header=BB2_24 Depth=1
	addq	$1, %rax
.LBB2_42:                               #   in Loop: Header=BB2_24 Depth=1
	movzbl	(%r9), %edx
	jmp	.LBB2_45
	.p2align	4, 0x90
.LBB2_43:                               #   in Loop: Header=BB2_45 Depth=2
	movq	%rsi, %rax
.LBB2_44:                               #   in Loop: Header=BB2_45 Depth=2
	addq	$2, %rcx
	cmpw	$93, %dx
	je	.LBB2_49
.LBB2_45:                               #   Parent Loop BB2_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%dl, %edx
	leaq	1(%rax), %rsi
	movw	%dx, -2096(%rbp,%rax,2)
	movzwl	(%rcx), %edx
	cmpw	$45, %dx
	jne	.LBB2_43
# %bb.46:                               #   in Loop: Header=BB2_45 Depth=2
	movzwl	2(%rcx), %edi
	movw	$45, %dx
	cmpw	$93, %di
	je	.LBB2_43
# %bb.48:                               #   in Loop: Header=BB2_45 Depth=2
	movw	$-32723, -2094(%rbp,%rax,2) # imm = 0x802D
	movzbl	%dil, %edx
	movw	%dx, -2092(%rbp,%rax,2)
	addq	$3, %rax
	movzwl	4(%rcx), %edx
	addq	$4, %rcx
	jmp	.LBB2_44
.LBB2_49:                               #   in Loop: Header=BB2_24 Depth=1
	orb	$1, 13(%rbx)
	movw	$-32675, -2096(%rbp,%rax,2) # imm = 0x805D
	addq	$1, %rax
	jmp	.LBB2_24
.LBB2_50:
	movw	$0, -2096(%rbp,%rax,2)
	cmpw	$0, -2096(%rbp)
	je	.LBB2_54
# %bb.51:
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r11, %r15
	leaq	-2098(%rbp), %rdx
	leaq	-4144(%rbp), %rdi
	leaq	-2096(%rbp), %rcx
	movq	%rdi, %rsi
	movq	%rbx, %r8
	movq	%r10, %r9
	movq	%r10, %r14
	callq	glob2
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_61
# %bb.52:
	movl	(%rbx), %eax
	cmpl	%r13d, %eax
	jne	.LBB2_58
# %bb.53:
	movq	%r14, %r10
	movq	%r15, %r11
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_55
.LBB2_54:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
.LBB2_55:
	movl	12(%rbx), %ecx
	testb	$16, %cl
	jne	.LBB2_57
# %bb.56:
	movl	%ecx, %edx
	andl	$768, %edx              # imm = 0x300
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB2_59
.LBB2_57:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rdx
	callq	globextend
	movl	%eax, %r12d
	jmp	.LBB2_61
.LBB2_58:
	movl	12(%rbx), %ecx
	movq	%r15, %r11
.LBB2_59:
	xorl	%r12d, %r12d
	testb	$32, %cl
	jne	.LBB2_61
# %bb.60:
	movslq	8(%rbx), %rcx
	shlq	$3, %rcx
	addq	16(%rbx), %rcx
	leaq	(%rcx,%r11,8), %rdi
	subl	%r13d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare, %ecx
	callq	qsort
.LBB2_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$4104, %rsp             # imm = 0x1008
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	glob0, .Lfunc_end2-glob0
                                        # -- End function
	.globl	globfree                # -- Begin function globfree
	.p2align	4, 0x90
	.type	globfree,@function
globfree:                               # @globfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_8
# %bb.1:
	movl	(%r14), %r15d
	testq	%r15, %r15
	je	.LBB3_7
# %bb.2:
	movslq	8(%r14), %rax
	leaq	(%rdi,%rax,8), %r12
	xorl	%ebx, %ebx
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	addq	$1, %rbx
	cmpl	%ebx, %r15d
	je	.LBB3_6
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	callq	free
	jmp	.LBB3_5
.LBB3_6:
	movq	16(%r14), %rdi
.LBB3_7:
	callq	free
	movq	$0, 16(%r14)
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	globfree, .Lfunc_end3-globfree
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function globextend
	.type	globextend,@function
globextend:                             # @globextend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rdx), %ecx
	movl	(%rsi), %eax
	testl	%ecx, %ecx
	je	.LBB4_3
# %bb.1:
	cmpl	%ecx, %eax
	jle	.LBB4_3
# %bb.2:
	callq	__errno
	movl	$0, (%rax)
.LBB4_29:
	movl	$-1, %ebx
	jmp	.LBB4_30
.LBB4_3:
	addl	8(%r14), %eax
	leal	16(,%rax,8), %eax
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_5
# %bb.4:
	movl	%eax, %esi
	callq	realloc
	jmp	.LBB4_6
.LBB4_5:
	movl	%eax, %edi
	callq	malloc
.LBB4_6:
	movq	16(%r14), %rdi
	testq	%rax, %rax
	je	.LBB4_11
# %bb.7:
	movq	%rax, %r12
	testq	%rdi, %rdi
	jne	.LBB4_19
# %bb.8:
	movslq	8(%r14), %rsi
	testq	%rsi, %rsi
	jle	.LBB4_13
# %bb.9:
	movl	%esi, %ecx
	notl	%ecx
	cmpl	$-3, %ecx
	movl	$-2, %edx
	cmovgl	%ecx, %edx
	leaq	(%rax,%rsi,8), %r12
	leal	(%rsi,%rdx), %edi
	addl	$1, %edi
	leaq	1(%rdi), %rbx
	cmpq	$4, %rbx
	jae	.LBB4_14
# %bb.10:
	movl	%esi, %ecx
	jmp	.LBB4_17
.LBB4_11:
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB4_30
# %bb.12:
	callq	free
	movq	$0, 16(%r14)
	jmp	.LBB4_30
.LBB4_13:
	movq	%rax, %r12
	jmp	.LBB4_19
.LBB4_14:
	addl	%esi, %edx
	addl	$2, %edx
	andl	$3, %edx
	notq	%rdi
	addq	%rdx, %rdi
	leaq	(%r12,%rdi,8), %r12
	movl	%edx, %ecx
	subl	%ebx, %ecx
	addl	%esi, %ecx
	leaq	(%rax,%rsi,8), %rax
	addq	$-16, %rax
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rsi,8)
	movups	%xmm0, -16(%rax,%rsi,8)
	addq	$-4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB4_15
# %bb.16:
	testl	%edx, %edx
	je	.LBB4_19
.LBB4_17:
	addl	$1, %ecx
	.p2align	4, 0x90
.LBB4_18:                               # =>This Inner Loop Header: Depth=1
	movq	$0, -8(%r12)
	addq	$-8, %r12
	addl	$-1, %ecx
	cmpl	$1, %ecx
	jg	.LBB4_18
.LBB4_19:
	movq	%r12, 16(%r14)
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	cmpw	$0, (%rbx)
	leaq	2(%rbx), %rbx
	jne	.LBB4_20
# %bb.21:
	subq	%r15, %rbx
	shrq	%rbx
	movl	%ebx, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB4_26
# %bb.22:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %ebx
	je	.LBB4_28
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	movzbl	(%r15,%rcx,2), %edx
	movb	%dl, (%rax,%rcx)
	addq	$1, %rcx
	testb	%dl, %dl
	jne	.LBB4_23
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %esi
	movl	8(%r14), %edx
	leal	1(%rsi), %ecx
	movl	%ecx, (%r14)
	addl	%edx, %esi
	movslq	%esi, %rsi
	movq	%rax, (%r12,%rsi,8)
	jmp	.LBB4_27
.LBB4_26:
	movl	(%r14), %ecx
	movl	8(%r14), %edx
.LBB4_27:
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	$0, (%r12,%rcx,8)
	cmpq	$1, %rax
	sbbl	%ebx, %ebx
.LBB4_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_28:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	free
	jmp	.LBB4_29
.Lfunc_end4:
	.size	globextend, .Lfunc_end4-globextend
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function compare
	.type	compare,@function
compare:                                # @compare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compare, .Lfunc_end5-compare
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function glob2
	.type	glob2,@function
glob2:                                  # @glob2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1160, %rsp             # imm = 0x488
	movq	%rdx, %r13
	movq	%rsi, %r12
	movzwl	(%rcx), %eax
	testw	%ax, %ax
	je	.LBB6_12
# %bb.1:
	movl	$1, %r10d
	movq	%rcx, %r15
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_8 Depth 2
	xorl	%esi, %esi
	movq	%r12, %rbx
	testw	%ax, %ax
	je	.LBB6_6
	.p2align	4, 0x90
.LBB6_3:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	$47, %ax
	je	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	leaq	2(%rbx), %rdx
	cmpq	%r13, %rdx
	ja	.LBB6_17
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=2
	testw	%ax, %ax
	cmovsl	%r10d, %esi
	movw	%ax, (%rbx)
	movzwl	2(%r15), %eax
	addq	$2, %r15
	movq	%rdx, %rbx
	testw	%ax, %ax
	jne	.LBB6_3
.LBB6_6:                                #   in Loop: Header=BB6_2 Depth=1
	testl	%esi, %esi
	jne	.LBB6_31
# %bb.7:                                #   in Loop: Header=BB6_2 Depth=1
	cmpw	$47, %ax
	jne	.LBB6_10
	.p2align	4, 0x90
.LBB6_8:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	2(%rbx), %r12
	cmpq	%r13, %r12
	ja	.LBB6_17
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=2
	movw	$47, (%rbx)
	movzwl	2(%r15), %eax
	addq	$2, %r15
	movq	%r12, %rbx
	cmpw	$47, %ax
	je	.LBB6_8
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rbx, %r12
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rcx
	testw	%ax, %ax
	jne	.LBB6_2
.LBB6_12:
	movw	$0, (%r12)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_18
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=1
	movzbl	(%rdi,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB6_13
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, 12(%r8)
	movq	%r9, -72(%rbp)          # 8-byte Spill
	jne	.LBB6_20
# %bb.16:
	movq	%r8, %rbx
	movq	%rdi, %r15
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	lstat
	jmp	.LBB6_21
.LBB6_17:
	movl	$1, %r14d
	jmp	.LBB6_76
.LBB6_18:
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	$91, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB6_76
.LBB6_20:
	movq	%rdi, %r15
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movq	%r8, %rbx
	callq	*56(%r8)
.LBB6_21:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jne	.LBB6_76
# %bb.22:
	testb	$8, 12(%rbx)
	je	.LBB6_75
# %bb.23:
	cmpw	$47, -2(%r12)
	je	.LBB6_75
# %bb.24:
	movzwl	-164(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB6_73
# %bb.25:
	movzwl	%ax, %eax
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB6_75
# %bb.26:
	xorl	%eax, %eax
.LBB6_27:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_38
# %bb.28:                               #   in Loop: Header=BB6_27 Depth=1
	movzbl	(%r15,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB6_27
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, 12(%rbx)
	jne	.LBB6_70
# %bb.30:
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	stat
	jmp	.LBB6_71
.LBB6_31:
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$1, %r14d
	cmpq	%r13, %r12
	jbe	.LBB6_33
.LBB6_32:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_76
.LBB6_33:
	movq	%r8, %rbx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movw	$0, (%r12)
	callq	__errno
	movl	$0, (%rax)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpw	$0, (%rdx)
	je	.LBB6_39
# %bb.34:                               # %.preheader3
	xorl	%eax, %eax
	movq	%rbx, %r14
.LBB6_35:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_61
# %bb.36:                               #   in Loop: Header=BB6_35 Depth=1
	movzbl	(%rdx,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB6_35
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_40
.LBB6_38:
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	$91, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_75
.LBB6_39:
	leaq	-1200(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	%rbx, %r14
.LBB6_40:
	testb	$64, 12(%r14)
	jne	.LBB6_42
# %bb.41:
	leaq	-1200(%rbp), %rdi
	callq	opendir
	jmp	.LBB6_43
.LBB6_42:
	leaq	-1200(%rbp), %rdi
	callq	*48(%r14)
.LBB6_43:
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_62
# %bb.44:
	movl	$readdir, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testb	$64, 12(%r14)
	je	.LBB6_46
# %bb.45:
	movq	40(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB6_46:
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB6_47:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_49 Depth 2
                                        #       Child Loop BB6_53 Depth 3
	xorl	%r14d, %r14d
	jmp	.LBB6_49
.LBB6_48:                               #   in Loop: Header=BB6_49 Depth=2
	xorl	%r14d, %r14d
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB6_49:                               #   Parent Loop BB6_47 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_53 Depth 3
	xorl	%eax, %eax
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testq	%rax, %rax
	je	.LBB6_59
# %bb.50:                               #   in Loop: Header=BB6_49 Depth=2
	cmpb	$46, 19(%rax)
	jne	.LBB6_52
# %bb.51:                               #   in Loop: Header=BB6_49 Depth=2
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpw	$46, (%rcx)
	jne	.LBB6_48
.LBB6_52:                               #   in Loop: Header=BB6_49 Depth=2
	movq	%rbx, %r14
	addq	$19, %rax
	movq	%r12, %rbx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB6_53:                               #   Parent Loop BB6_47 Depth=1
                                        #     Parent Loop BB6_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r13, %rbx
	jae	.LBB6_55
# %bb.54:                               #   in Loop: Header=BB6_53 Depth=3
	movzbl	(%rax), %ecx
	addq	$1, %rax
	movw	%cx, (%rbx)
	addq	$2, %rbx
	testw	%cx, %cx
	jne	.LBB6_53
.LBB6_55:                               #   in Loop: Header=BB6_49 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	match
	testl	%eax, %eax
	jne	.LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_49 Depth=2
	movw	$0, (%r12)
	movq	%r14, %rbx
	jmp	.LBB6_48
.LBB6_57:                               #   in Loop: Header=BB6_47 Depth=1
	addq	$-2, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	%r14, %rbx
	movq	-72(%rbp), %r9          # 8-byte Reload
	callq	glob2
	testl	%eax, %eax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB6_47
# %bb.58:
	movl	%eax, %r14d
.LBB6_59:
	testb	$64, 12(%rbx)
	jne	.LBB6_69
# %bb.60:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	closedir
	jmp	.LBB6_32
.LBB6_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_62:
	cmpq	$0, 24(%r14)
	je	.LBB6_68
# %bb.63:                               # %.preheader
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB6_64:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_77
# %bb.65:                               #   in Loop: Header=BB6_64 Depth=1
	movzbl	(%rdx,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB6_64
# %bb.66:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	movq	24(%rbx), %rbx
	callq	__errno
	movl	(%rax), %esi
	leaq	-1200(%rbp), %rdi
	callq	*%rbx
	movl	$-2, %r14d
	testl	%eax, %eax
	jne	.LBB6_32
# %bb.67:
	testb	$4, 12(%r15)
	jne	.LBB6_32
.LBB6_68:
	xorl	%r14d, %r14d
	jmp	.LBB6_32
.LBB6_69:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*32(%rbx)
	jmp	.LBB6_32
.LBB6_70:
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	*64(%rbx)
.LBB6_71:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_75
# %bb.72:
	movl	$61440, %eax            # imm = 0xF000
	andl	-164(%rbp), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB6_75
.LBB6_73:
	leaq	2(%r12), %rax
	movl	$1, %r14d
	cmpq	%r13, %rax
	ja	.LBB6_76
# %bb.74:
	movl	$47, (%r12)
.LBB6_75:
	addl	$1, 4(%rbx)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	globextend
	movl	%eax, %r14d
.LBB6_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$1160, %rsp             # imm = 0x488
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_77:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %r14d
	jmp	.LBB6_32
.Lfunc_end6:
	.size	glob2, .Lfunc_end6-glob2
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function match
	.type	match,@function
match:                                  # @match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	cmpq	%rdx, %rsi
	jae	.LBB7_26
# %bb.1:                                # %.preheader2
	movq	%rdx, %r12
	movl	$1, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	cmpw	$0, (%r15)
	je	.LBB7_28
.LBB7_25:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$2, %r15
	movq	%rbx, %rsi
	cmpq	%r12, %rbx
	jae	.LBB7_26
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_13 Depth 2
	leaq	2(%rsi), %rbx
	movzwl	(%rsi), %eax
	cmpl	$32831, %eax            # imm = 0x803F
	je	.LBB7_8
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movzwl	%ax, %ecx
	cmpl	$32859, %ecx            # imm = 0x805B
	je	.LBB7_9
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	cmpl	$32810, %ecx            # imm = 0x802A
	je	.LBB7_5
# %bb.27:                               #   in Loop: Header=BB7_2 Depth=1
	cmpw	%ax, (%r15)
	je	.LBB7_25
	jmp	.LBB7_28
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movzwl	(%r15), %r14d
	testl	%r14d, %r14d
	je	.LBB7_28
# %bb.10:                               #   in Loop: Header=BB7_2 Depth=1
	movzwl	2(%rsi), %eax
	leaq	4(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	$32801, %eax            # imm = 0x8021
	sete	%dl
	cmoveq	%rcx, %rbx
	leaq	2(%rbx), %rcx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movzwl	2(%rsi,%rdx,2), %eax
	cmpl	$32861, %eax            # imm = 0x805D
	jne	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_2 Depth=1
	xorl	%r12d, %r12d
.LBB7_24:                               #   in Loop: Header=BB7_2 Depth=1
	movq	%rcx, %rbx
	cmpl	-56(%rbp), %r12d        # 4-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	$0, %r14d
	jne	.LBB7_25
	jmp	.LBB7_29
.LBB7_12:                               #   in Loop: Header=BB7_2 Depth=1
	movzbl	%r14b, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB7_13
	.p2align	4, 0x90
.LBB7_22:                               #   in Loop: Header=BB7_13 Depth=2
	cmpw	%r14w, %ax
	cmovel	%edi, %r12d
	movl	%edx, %eax
	movq	%rcx, %rbx
.LBB7_23:                               #   in Loop: Header=BB7_13 Depth=2
	leaq	2(%rbx), %rcx
	movzwl	%ax, %edx
	cmpl	$32861, %edx            # imm = 0x805D
	je	.LBB7_24
.LBB7_13:                               #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	2(%rbx), %edx
	cmpl	$32813, %edx            # imm = 0x802D
	jne	.LBB7_22
# %bb.14:                               #   in Loop: Header=BB7_13 Depth=2
	cmpl	$0, __collate_load_error(%rip)
	movzbl	%al, %eax
	je	.LBB7_17
# %bb.15:                               #   in Loop: Header=BB7_13 Depth=2
	cmpw	%r13w, %ax
	ja	.LBB7_21
# %bb.16:                               #   in Loop: Header=BB7_13 Depth=2
	movzbl	4(%rbx), %eax
	cmpw	%ax, %r13w
	jbe	.LBB7_20
	jmp	.LBB7_21
.LBB7_17:                               #   in Loop: Header=BB7_13 Depth=2
	movzwl	%ax, %edi
	movl	%r13d, %esi
	callq	__collate_range_cmp
	testl	%eax, %eax
	jle	.LBB7_19
# %bb.18:                               #   in Loop: Header=BB7_13 Depth=2
	movl	$1, %edi
	jmp	.LBB7_21
.LBB7_19:                               #   in Loop: Header=BB7_13 Depth=2
	movzbl	4(%rbx), %esi
	movl	%r13d, %edi
	callq	__collate_range_cmp
	testl	%eax, %eax
	movl	$1, %edi
	jg	.LBB7_21
.LBB7_20:                               #   in Loop: Header=BB7_13 Depth=2
	movl	$1, %r12d
.LBB7_21:                               #   in Loop: Header=BB7_13 Depth=2
	movzwl	6(%rbx), %eax
	addq	$6, %rbx
	jmp	.LBB7_23
.LBB7_26:
	xorl	%r14d, %r14d
	cmpw	$0, (%r15)
	sete	%r14b
	jmp	.LBB7_29
.LBB7_5:
	movl	$1, %r14d
	cmpq	%r12, %rbx
	je	.LBB7_29
	.p2align	4, 0x90
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	match
	testl	%eax, %eax
	jne	.LBB7_29
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	cmpw	$0, (%r15)
	leaq	2(%r15), %r15
	jne	.LBB7_6
.LBB7_28:
	xorl	%r14d, %r14d
.LBB7_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	match, .Lfunc_end7-match
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HOME"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
