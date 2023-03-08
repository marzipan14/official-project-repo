	.text
	.file	"vfwscanf.c"
	.globl	__ssvfwscanf_r          # -- Begin function __ssvfwscanf_r
	.p2align	4, 0x90
	.type	__ssvfwscanf_r,@function
__ssvfwscanf_r:                         # @__ssvfwscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1608, %rsp             # imm = 0x648
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_localeconv_r
	movl	(%r13), %ebx
	testl	%ebx, %ebx
	je	.LBB0_565
# %bb.1:
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r12, -112(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leaq	116(%r14), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	leaq	115(%r14), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movq	%r13, %rax
	xorl	%r13d, %r13d
	movq	%r15, -56(%rbp)         # 8-byte Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_18 Depth 4
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_158 Depth 2
                                        #     Child Loop BB0_446 Depth 2
                                        #     Child Loop BB0_138 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_280 Depth 2
                                        #     Child Loop BB0_368 Depth 2
                                        #     Child Loop BB0_116 Depth 2
                                        #     Child Loop BB0_266 Depth 2
                                        #     Child Loop BB0_346 Depth 2
                                        #     Child Loop BB0_257 Depth 2
                                        #     Child Loop BB0_243 Depth 2
	movslq	%r12d, %r12
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movq	%rax, %r12
	movl	%r13d, -44(%rbp)        # 4-byte Spill
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_18 Depth 4
	addq	$4, %r12
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=3
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_37
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=3
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=3
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_38
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=3
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_30
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_37
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$37, %ebx
	jne	.LBB0_40
# %bb.15:                               # %.preheader5
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=3
	leaq	(%r15,%r15,4), %rax
	leaq	(%rbx,%rax,2), %r15
	addq	$-48, %r15
.LBB0_17:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_18 Depth 4
	movq	%r12, %rax
.LBB0_18:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ebx
	cmpq	$122, %rbx
	ja	.LBB0_612
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=4
	leaq	4(%rax), %r12
	jmpq	*.LJTI0_0(,%rbx,8)
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_18 Depth=4
	movq	%r12, %rax
	orl	%ecx, %r13d
	jmp	.LBB0_18
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=4
	addq	$8, %rax
	orl	%ecx, %r13d
	jmp	.LBB0_18
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=4
	addq	$8, %rax
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=4
	addl	$1, %ecx
	orl	%ecx, %r13d
	jmp	.LBB0_18
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$1, %r13d
	jmp	.LBB0_17
.LBB0_28:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$16, %r13d
	jmp	.LBB0_17
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$2, %r13d
	jmp	.LBB0_17
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=2
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_35
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_13
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r14), %rax
.LBB0_35:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_3
	jmp	.LBB0_636
.LBB0_39:                               # %.loopexit7
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_43
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_632
# %bb.42:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r14), %rdx
	movl	(%rdx), %r15d
	leaq	4(%rdx), %rcx
	movq	%rcx, (%r14)
	leal	-4(%rax), %esi
	movl	%esi, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB0_633
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	%r15d, %ebx
	jne	.LBB0_590
# %bb.45:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$1, -104(%rbp)          # 8-byte Folded Spill
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_3
	jmp	.LBB0_636
.LBB0_46:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$16, %r13b
	jne	.LBB0_52
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$8, %r13b
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_53
# %bb.48:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$4, %r13b
	jne	.LBB0_55
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %r13b
	jne	.LBB0_59
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_63
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_64
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_38
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_58
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_61
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_62
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB0_38
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_65
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_66
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_38
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rcx), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_38
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rcx), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_67:                               # %.loopexit8
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$4, %cl
	jmp	.LBB0_84
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %r13d             # imm = 0x200
	jmp	.LBB0_81
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %r13d
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %r13d
	xorl	%ecx, %ecx
	jmp	.LBB0_84
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %r13d
.LBB0_72:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %cl
	jmp	.LBB0_84
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r12, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_74:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx), %eax
	addq	$4, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	cmpl	$93, %eax
	je	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	testl	%eax, %eax
	jne	.LBB0_74
.LBB0_76:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %r13d
	movq	-152(%rbp), %rax        # 8-byte Reload
	addq	$-4, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movb	$1, %cl
	movq	%r12, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_85
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %cl
	movl	$_wcstol_r, %eax
	jmp	.LBB0_83
.LBB0_78:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %cl
	movl	$_wcstol_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_84
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$8, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_84
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %r13d             # imm = 0x220
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$16, -92(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_84
.LBB0_82:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$10, -92(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -152(%rbp)        # 8-byte Spill
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$64, %r13b
	movq	-104(%rbp), %r12        # 8-byte Reload
	jne	.LBB0_106
# %bb.86:                               # %.preheader41
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB0_87:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_90
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_632
# %bb.89:                               #   in Loop: Header=BB0_87 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_90:                               #   in Loop: Header=BB0_87 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_633
# %bb.91:                               #   in Loop: Header=BB0_87 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_87 Depth=2
	addl	$1, %r12d
	jmp	.LBB0_87
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_105
.LBB0_96:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_104
.LBB0_98:                               #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_102
# %bb.99:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_103
# %bb.100:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_103
# %bb.101:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_97
.LBB0_102:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_104:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_105:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-88(%rbp), %ecx         # 4-byte Reload
.LBB0_106:                              #   in Loop: Header=BB0_2 Depth=1
	cmpb	$4, %cl
	ja	.LBB0_112
# %bb.107:                              #   in Loop: Header=BB0_2 Depth=1
	movzbl	%cl, %eax
	movq	%r12, -104(%rbp)        # 8-byte Spill
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_108:                              #   in Loop: Header=BB0_2 Depth=1
	testq	%r15, %r15
	movl	$1, %eax
	cmoveq	%rax, %r15
	testb	$1, %r13b
	jne	.LBB0_205
# %bb.109:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	jne	.LBB0_240
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_238
# %bb.111:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_239
.LBB0_112:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_562
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r15
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r15, %r12
	testb	$1, %r13b
	je	.LBB0_208
# %bb.114:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%r13d, %eax
	andl	$16, %eax
	je	.LBB0_208
# %bb.115:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-216(%rbp), %r15        # 8-byte Reload
	subq	-184(%rbp), %r15        # 8-byte Folded Reload
	sarq	$2, %r15
	movq	%r15, -88(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_116:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_119
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_425
# %bb.118:                              #   in Loop: Header=BB0_116 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_119:                              #   in Loop: Header=BB0_116 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_426
# %bb.120:                              #   in Loop: Header=BB0_116 Depth=2
	cmpq	%rdx, %r12
	je	.LBB0_218
# %bb.121:                              #   in Loop: Header=BB0_116 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%rdx, %r15
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -224(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movq	%r15, %rdx
	cmpb	$1, %cl
	jne	.LBB0_218
# %bb.122:                              #   in Loop: Header=BB0_116 Depth=2
	addq	$1, %rdx
	jmp	.LBB0_116
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r15
	movl	$0, %eax
	sbbq	%rax, %rax
	orq	%r15, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	testb	$1, %r13b
	je	.LBB0_212
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%r13d, %eax
	andl	$16, %eax
	je	.LBB0_212
# %bb.125:                              # %.preheader32
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	-88(%rbp)               # 8-byte Folded Spill
	xorl	%r15d, %r15d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_126:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_129
# %bb.127:                              #   in Loop: Header=BB0_126 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_386
# %bb.128:                              #   in Loop: Header=BB0_126 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_129:                              #   in Loop: Header=BB0_126 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_490
# %bb.130:                              #   in Loop: Header=BB0_126 Depth=2
	cmpq	%r15, -88(%rbp)         # 8-byte Folded Reload
	je	.LBB0_223
# %bb.131:                              #   in Loop: Header=BB0_126 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_223
# %bb.132:                              #   in Loop: Header=BB0_126 Depth=2
	addq	$-1, %r15
	jmp	.LBB0_126
.LBB0_133:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r15), %rax
	orl	$1408, %r13d            # imm = 0x580
	cmpq	$348, %rax              # imm = 0x15C
	movl	$349, %eax              # imm = 0x15D
	cmovaq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_216
# %bb.134:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leaq	-1648(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB0_138
	.p2align	4, 0x90
.LBB0_135:                              #   in Loop: Header=BB0_138 Depth=2
	movslq	-92(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB0_136:                              #   in Loop: Header=BB0_138 Depth=2
	andl	$-897, %r13d            # imm = 0xFC7F
.LBB0_137:                              #   in Loop: Header=BB0_138 Depth=2
	addq	$1, %r12
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%ebx, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	cmpq	%r12, %r15
	je	.LBB0_237
.LBB0_138:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r8d
	testl	%eax, %eax
	jg	.LBB0_141
# %bb.139:                              #   in Loop: Header=BB0_138 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_318
# %bb.140:                              #   in Loop: Header=BB0_138 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r8d
.LBB0_141:                              #   in Loop: Header=BB0_138 Depth=2
	movq	(%r14), %rsi
	movl	(%rsi), %ebx
	leaq	4(%rsi), %rdx
	movq	%rdx, (%r14)
	leal	-4(%r8), %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %edi
	cmpl	$121, %edi
	ja	.LBB0_228
# %bb.142:                              #   in Loop: Header=BB0_138 Depth=2
	jmpq	*.LJTI0_3(,%rdi,8)
.LBB0_143:                              #   in Loop: Header=BB0_138 Depth=2
	cmpl	$11, -92(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_136
	jmp	.LBB0_228
.LBB0_145:                              #   in Loop: Header=BB0_138 Depth=2
	testb	%r13b, %r13b
	jns	.LBB0_228
# %bb.146:                              #   in Loop: Header=BB0_138 Depth=2
	andl	$-65665, %r13d          # imm = 0xFFFEFF7F
	orl	$65536, %r13d           # imm = 0x10000
	jmp	.LBB0_137
.LBB0_147:                              #   in Loop: Header=BB0_138 Depth=2
	movslq	-92(%rbp), %rdi         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rdi,%rdi), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	addq	$-1, %rdi
	cmpq	$8, %rdi
	jae	.LBB0_136
	jmp	.LBB0_228
.LBB0_149:                              #   in Loop: Header=BB0_138 Depth=2
	testl	$512, %r13d             # imm = 0x200
	je	.LBB0_228
# %bb.150:                              #   in Loop: Header=BB0_138 Depth=2
	movl	%r13d, %edi
	shrl	$16, %edi
	andl	$1, %edi
	leaq	-1644(%rbp), %rcx
	leaq	(%rcx,%rdi,4), %rdi
	cmpq	%rdi, -80(%rbp)         # 8-byte Folded Reload
	jne	.LBB0_228
# %bb.151:                              #   in Loop: Header=BB0_138 Depth=2
	andl	$-513, %r13d            # imm = 0xFDFF
	movl	$16, -92(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_137
.LBB0_152:                              #   in Loop: Header=BB0_138 Depth=2
	movl	%r13d, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-92(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%r13d, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_154
# %bb.153:                              #   in Loop: Header=BB0_138 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_138 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB0_155:                              #   in Loop: Header=BB0_138 Depth=2
	movl	%ecx, %r13d
	jmp	.LBB0_137
.LBB0_156:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r15), %rax
	orl	$1920, %r13d            # imm = 0x780
	cmpq	$348, %rax              # imm = 0x15C
	movq	%r15, %rdi
	movl	$349, %ecx              # imm = 0x15D
	cmovaq	%rcx, %rdi
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	je	.LBB0_217
# %bb.157:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$-349, %r15d            # imm = 0xFEA3
	cmpq	$348, %rax              # imm = 0x15C
	cmovbel	%ecx, %r15d
	leaq	-1648(%rbp), %rbx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_158:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_163
.LBB0_159:                              #   in Loop: Header=BB0_158 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %edx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rdx), %eax
	cmpl	$78, %eax
	ja	.LBB0_165
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=2
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_161:                              #   in Loop: Header=BB0_158 Depth=2
	movsbl	-160(%rbp), %eax        # 1-byte Folded Reload
	movsbl	%sil, %ecx
	addl	%eax, %ecx
	jne	.LBB0_305
# %bb.162:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-385, %r13d            # imm = 0xFE7F
	jmp	.LBB0_168
	.p2align	4, 0x90
.LBB0_163:                              #   in Loop: Header=BB0_158 Depth=2
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r13, %r12
	movq	%r8, %r13
	movq	%r9, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	je	.LBB0_170
# %bb.164:                              #   in Loop: Header=BB0_158 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	movq	%rbx, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
.LBB0_165:                              #   in Loop: Header=BB0_158 Depth=2
	testl	$512, %r13d             # imm = 0x200
	movl	-236(%rbp), %eax        # 4-byte Reload
	je	.LBB0_304
# %bb.166:                              #   in Loop: Header=BB0_158 Depth=2
	cmpl	%eax, %edx
	jne	.LBB0_304
# %bb.167:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-641, %r13d            # imm = 0xFD7F
	movl	%eax, %edx
	movq	%r8, -208(%rbp)         # 8-byte Spill
.LBB0_168:                              #   in Loop: Header=BB0_158 Depth=2
	addq	$1, %r9
	movl	%edx, (%rbx)
.LBB0_169:                              #   in Loop: Header=BB0_158 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	-1648(,%r9,4), %rbx
	addq	%rbp, %rbx
	addq	$-1, %rdi
	jne	.LBB0_158
	jmp	.LBB0_435
.LBB0_170:                              #   in Loop: Header=BB0_158 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%rbx, %r9
	movq	%r13, %r8
	movq	%r12, %r13
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_159
.LBB0_171:                              #   in Loop: Header=BB0_158 Depth=2
	testb	%r13b, %r13b
	jns	.LBB0_305
# %bb.172:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-129, %r13d
	jmp	.LBB0_168
.LBB0_173:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$1, -160(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_305
# %bb.174:                              #   in Loop: Header=BB0_158 Depth=2
	movb	$2, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_168
.LBB0_175:                              #   in Loop: Header=BB0_158 Depth=2
	movl	%r13d, %eax
	andl	$1280, %eax             # imm = 0x500
	cmpl	$1024, %eax             # imm = 0x400
	movq	-232(%rbp), %rax        # 8-byte Reload
	je	.LBB0_178
# %bb.176:                              #   in Loop: Header=BB0_158 Depth=2
	testl	$1024, %r13d            # imm = 0x400
	je	.LBB0_305
# %bb.177:                              #   in Loop: Header=BB0_158 Depth=2
	testq	%r8, %r8
	je	.LBB0_305
.LBB0_178:                              #   in Loop: Header=BB0_158 Depth=2
	subq	-208(%rbp), %r8         # 8-byte Folded Reload
	testl	$512, %r13d             # imm = 0x200
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmoveq	%r8, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	cmoveq	%rbx, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	andl	$-1921, %r13d           # imm = 0xF87F
	orl	$384, %r13d             # imm = 0x180
	xorl	%r8d, %r8d
	jmp	.LBB0_168
.LBB0_179:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$2, %sil
	jne	.LBB0_305
# %bb.180:                              #   in Loop: Header=BB0_158 Depth=2
	movb	$3, %sil
	jmp	.LBB0_168
.LBB0_181:                              #   in Loop: Header=BB0_158 Depth=2
	movl	%r13d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_196
# %bb.182:                              #   in Loop: Header=BB0_158 Depth=2
	testq	%r8, %r8
	jne	.LBB0_196
# %bb.183:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$0, -160(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_196
# %bb.184:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-1921, %r13d           # imm = 0xF87F
	movb	$1, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	jmp	.LBB0_168
.LBB0_185:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$6, %sil
	jne	.LBB0_305
# %bb.186:                              #   in Loop: Header=BB0_158 Depth=2
	movb	$7, %sil
	jmp	.LBB0_168
.LBB0_187:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$7, %sil
	jne	.LBB0_305
# %bb.188:                              #   in Loop: Header=BB0_158 Depth=2
	movb	$8, %sil
	jmp	.LBB0_168
.LBB0_189:                              #   in Loop: Header=BB0_158 Depth=2
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_161
# %bb.190:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-129, %r13d
	addq	$1, %r8
	testl	%r15d, %r15d
	je	.LBB0_204
# %bb.191:                              #   in Loop: Header=BB0_158 Depth=2
	addl	$-1, %r15d
	addq	$1, %rdi
	jmp	.LBB0_169
.LBB0_192:                              #   in Loop: Header=BB0_158 Depth=2
	movl	%r13d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_198
# %bb.193:                              #   in Loop: Header=BB0_158 Depth=2
	testq	%r8, %r8
	jne	.LBB0_198
# %bb.194:                              #   in Loop: Header=BB0_158 Depth=2
	testb	%sil, %sil
	jne	.LBB0_198
# %bb.195:                              #   in Loop: Header=BB0_158 Depth=2
	andl	$-1921, %r13d           # imm = 0xF87F
	movb	$1, %sil
	movl	$105, %edx
	xorl	%r8d, %r8d
	jmp	.LBB0_168
.LBB0_196:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$2, -160(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_201
# %bb.197:                              #   in Loop: Header=BB0_158 Depth=2
	movb	$3, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_168
.LBB0_198:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$5, %sil
	je	.LBB0_200
# %bb.199:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$3, %sil
	jne	.LBB0_564
.LBB0_200:                              #   in Loop: Header=BB0_158 Depth=2
	addb	$1, %sil
	movl	$105, %edx
	jmp	.LBB0_168
.LBB0_201:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$4, %sil
	je	.LBB0_203
# %bb.202:                              #   in Loop: Header=BB0_158 Depth=2
	cmpb	$1, %sil
	jne	.LBB0_305
.LBB0_203:                              #   in Loop: Header=BB0_158 Depth=2
	addb	$1, %sil
	jmp	.LBB0_168
.LBB0_204:                              #   in Loop: Header=BB0_158 Depth=2
	xorl	%r15d, %r15d
	jmp	.LBB0_169
.LBB0_205:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	movq	-80(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_255
# %bb.206:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_253
# %bb.207:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_254
.LBB0_208:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %r13b
	jne	.LBB0_233
# %bb.209:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_343
# %bb.210:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_341
# %bb.211:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_342
.LBB0_212:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %r13b
	jne	.LBB0_235
# %bb.213:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_365
# %bb.214:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_363
# %bb.215:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_364
.LBB0_216:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r12d, %r12d
	leaq	-1648(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_319
.LBB0_217:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1648(%rbp), %rbx
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	jmp	.LBB0_437
.LBB0_218:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_292
# %bb.219:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rdx, %r15
	callq	__submore
	movq	%r15, %rdx
	testl	%eax, %eax
	jne	.LBB0_425
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_424
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	movl	%r12d, %r12d
	subq	%r15, %r12
	cmpq	$0, 88(%r14)
	je	.LBB0_296
# %bb.224:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jl	.LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_430
.LBB0_226:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_429
.LBB0_228:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_300
# %bb.229:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	96(%r14), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jl	.LBB0_232
# %bb.230:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_322
# %bb.231:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rdx
.LBB0_232:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rdx), %rax
	movq	%rax, (%r14)
	movb	%bl, -4(%rdx)
	movl	8(%r14), %r8d
	addl	$4, %r8d
	jmp	.LBB0_321
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_264
# %bb.234:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_265
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_278
# %bb.236:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_279
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %r12d
	jmp	.LBB0_319
.LBB0_238:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_240:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_243
	.p2align	4, 0x90
.LBB0_241:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_633
.LBB0_242:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	addl	$1, -88(%rbp)           # 4-byte Folded Spill
	subq	%rbx, %r15
	je	.LBB0_561
.LBB0_243:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_246
# %bb.244:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_559
# %bb.245:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_246:                              #   in Loop: Header=BB0_243 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB0_560
# %bb.247:                              #   in Loop: Header=BB0_243 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_243 Depth=2
	cltq
	cmpq	%rax, %r15
	jae	.LBB0_241
.LBB0_249:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB0_633
# %bb.250:                              #   in Loop: Header=BB0_243 Depth=2
	movq	%rax, %rbx
	cmpq	%r15, %rax
	ja	.LBB0_336
# %bb.251:                              #   in Loop: Header=BB0_243 Depth=2
	testb	$16, %r13b
	jne	.LBB0_242
# %bb.252:                              #   in Loop: Header=BB0_243 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_242
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_254:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %r12
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_257
	.p2align	4, 0x90
.LBB0_256:                              #   in Loop: Header=BB0_257 Depth=2
	addq	$1, %rbx
	cmpq	%rbx, %r15
	movq	-104(%rbp), %rax        # 8-byte Reload
	je	.LBB0_263
.LBB0_257:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_257 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_314
# %bb.259:                              #   in Loop: Header=BB0_257 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
.LBB0_260:                              #   in Loop: Header=BB0_257 Depth=2
	movq	(%r14), %rdx
	movl	(%rdx), %eax
	addq	$4, %rdx
	movq	%rdx, (%r14)
	addl	$-4, %ecx
	movl	%ecx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_315
# %bb.261:                              #   in Loop: Header=BB0_257 Depth=2
	testb	$16, %r13b
	jne	.LBB0_256
# %bb.262:                              #   in Loop: Header=BB0_257 Depth=2
	movl	%eax, (%r12)
	addq	$4, %r12
	jmp	.LBB0_256
.LBB0_263:                              # %.loopexit19
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_317
.LBB0_264:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_265:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %r13
	movq	-216(%rbp), %r15        # 8-byte Reload
	subq	-184(%rbp), %r15        # 8-byte Folded Reload
	sarq	$2, %r15
	movq	%r13, %rax
	movq	%r13, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_266:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_269
# %bb.267:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_482
# %bb.268:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_269:                              #   in Loop: Header=BB0_266 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_483
# %bb.270:                              #   in Loop: Header=BB0_266 Depth=2
	subq	$1, %r12
	jb	.LBB0_273
# %bb.271:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -224(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_266
.LBB0_273:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_387
# %bb.274:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_482
.LBB0_276:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_277:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_481
.LBB0_278:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	negq	-88(%rbp)               # 8-byte Folded Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_280:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_283
# %bb.281:                              #   in Loop: Header=BB0_280 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_488
# %bb.282:                              #   in Loop: Header=BB0_280 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_283:                              #   in Loop: Header=BB0_280 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_489
# %bb.284:                              #   in Loop: Header=BB0_280 Depth=2
	cmpq	%r15, -88(%rbp)         # 8-byte Folded Reload
	je	.LBB0_287
# %bb.285:                              #   in Loop: Header=BB0_280 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_280 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	$-1, %r15
	jmp	.LBB0_280
.LBB0_287:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_391
# %bb.288:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_290
# %bb.289:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_488
.LBB0_290:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_291:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_487
.LBB0_292:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_422
# %bb.293:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_423
# %bb.294:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_423
# %bb.295:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_222
.LBB0_296:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB0_427
# %bb.297:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_428
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_428
# %bb.299:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_227
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB0_320
# %bb.301:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdi, %rdx
	jbe	.LBB0_320
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, (%rsi)
	jne	.LBB0_320
# %bb.303:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, (%r14)
	jmp	.LBB0_321
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %edx
	je	.LBB0_435
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_310
# %bb.306:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jl	.LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r9, %r12
	movq	%rdx, %r15
	callq	__submore
	movq	%r15, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %r9
	movq	-88(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_434
.LBB0_308:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%dl, -4(%rax)
.LBB0_309:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_433
.LBB0_310:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_431
# %bb.311:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_432
# %bb.312:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%edx, -4(%rax)
	jne	.LBB0_432
# %bb.313:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_309
.LBB0_314:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_315:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB0_633
# %bb.316:                              # %._crit_edge82
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_317:                              #   in Loop: Header=BB0_2 Depth=1
	andl	$16, %r13d
	addl	%eax, %ebx
	cmpl	$1, %r13d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
	movl	%ebx, %r12d
	jmp	.LBB0_562
.LBB0_318:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_319:                              # %..loopexit34_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_323
	jmp	.LBB0_567
.LBB0_320:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, 112(%r14)
	movq	%rdx, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %r8d
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	%r8d, (%rax)
.LBB0_322:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r13d             # imm = 0x100
	jne	.LBB0_567
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-4(%rax), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_330
# %bb.324:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	movq	-104(%rbp), %r12        # 8-byte Reload
	je	.LBB0_405
# %bb.325:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_332
# %bb.326:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_328
# %bb.327:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_405
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_405
.LBB0_330:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %r12        # 8-byte Reload
	testb	$16, %r13b
	je	.LBB0_406
.LBB0_331:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_556
.LBB0_332:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_403
# %bb.333:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_404
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_404
# %bb.335:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_329
.LBB0_336:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_475
# %bb.337:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_339
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_559
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_340:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB0_559
.LBB0_341:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_342:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%edx, %edx
	movq	-216(%rbp), %rax        # 8-byte Reload
	subq	-184(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB0_346
.LBB0_344:                              #   in Loop: Header=BB0_346 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%r15d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_633
.LBB0_345:                              #   in Loop: Header=BB0_346 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addl	$1, %edx
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB0_346:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_349
# %bb.347:                              #   in Loop: Header=BB0_346 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_544
# %bb.348:                              #   in Loop: Header=BB0_346 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_349:                              #   in Loop: Header=BB0_346 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r15d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	je	.LBB0_545
# %bb.350:                              #   in Loop: Header=BB0_346 Depth=2
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	subq	$1, %r12
	jb	.LBB0_358
# %bb.351:                              #   in Loop: Header=BB0_346 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%r15d, %esi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -224(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_358
# %bb.352:                              #   in Loop: Header=BB0_346 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_346 Depth=2
	cltq
	cmpq	%rax, %r12
	jae	.LBB0_344
.LBB0_354:                              #   in Loop: Header=BB0_346 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%r15d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_633
# %bb.355:                              #   in Loop: Header=BB0_346 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	ja	.LBB0_358
# %bb.356:                              #   in Loop: Header=BB0_346 Depth=2
	testb	$16, %r13b
	jne	.LBB0_345
# %bb.357:                              #   in Loop: Header=BB0_346 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_345
.LBB0_358:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_399
# %bb.359:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jl	.LBB0_361
# %bb.360:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	movq	-88(%rbp), %rdx         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_544
.LBB0_361:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r15b, -4(%rax)
.LBB0_362:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_543
.LBB0_363:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_364:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_368
.LBB0_366:                              #   in Loop: Header=BB0_368 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_633
.LBB0_367:                              #   in Loop: Header=BB0_368 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	subq	%rbx, -88(%rbp)         # 8-byte Folded Spill
	movq	-104(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_368:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_371
# %bb.369:                              #   in Loop: Header=BB0_368 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_536
# %bb.370:                              #   in Loop: Header=BB0_368 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_371:                              #   in Loop: Header=BB0_368 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	je	.LBB0_380
# %bb.372:                              #   in Loop: Header=BB0_368 Depth=2
	cmpl	$-1, %r12d
	je	.LBB0_380
# %bb.373:                              #   in Loop: Header=BB0_368 Depth=2
	movl	%r12d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_381
# %bb.374:                              #   in Loop: Header=BB0_368 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_368 Depth=2
	cltq
	cmpq	%rax, -88(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_366
.LBB0_376:                              #   in Loop: Header=BB0_368 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_633
# %bb.377:                              #   in Loop: Header=BB0_368 Depth=2
	movq	%rax, %rbx
	cmpq	-88(%rbp), %rax         # 8-byte Folded Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB0_381
# %bb.378:                              #   in Loop: Header=BB0_368 Depth=2
	testb	$16, %r13b
	jne	.LBB0_367
# %bb.379:                              #   in Loop: Header=BB0_368 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_367
.LBB0_380:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %r12d
	je	.LBB0_537
.LBB0_381:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_395
# %bb.382:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_384
# %bb.383:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_536
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_535
.LBB0_386:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_490
.LBB0_387:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_479
# %bb.388:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_480
# %bb.389:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_480
# %bb.390:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_277
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_485
# %bb.392:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_486
# %bb.393:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_486
# %bb.394:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_291
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_533
# %bb.396:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_534
# %bb.397:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_534
# %bb.398:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_385
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_540
# %bb.400:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_541
# %bb.401:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r15d, -4(%rax)
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jne	.LBB0_542
# %bb.402:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_362
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_404:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, -80(%rbp)          # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB0_331
.LBB0_406:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	%r15, %rdi
	leaq	-1648(%rbp), %rsi
	xorl	%edx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	*-176(%rbp)             # 8-byte Folded Reload
	testb	$32, %r13b
	jne	.LBB0_412
# %bb.407:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$8, %r13b
	jne	.LBB0_414
# %bb.408:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$4, %r13b
	jne	.LBB0_418
# %bb.409:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r13b
	jne	.LBB0_471
# %bb.410:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_550
# %bb.411:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_551
.LBB0_412:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_416
# %bb.413:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_417
.LBB0_414:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_420
# %bb.415:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_421
.LBB0_416:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
.LBB0_554:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_555
.LBB0_418:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_473
# %bb.419:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_474
.LBB0_420:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_555
.LBB0_422:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_423:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_424:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_425:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_426:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%edx, %edx
	jne	.LBB0_549
	jmp	.LBB0_636
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_428:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_430:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_563
.LBB0_431:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_432:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%edx, 115(%r14)
	movl	$2, %eax
.LBB0_433:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_434:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_435:                              #   in Loop: Header=BB0_2 Depth=1
	testq	%r8, %r8
	je	.LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_2 Depth=1
	andl	$-257, %r13d            # imm = 0xFEFF
	movq	-104(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_438
.LBB0_437:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %r12        # 8-byte Reload
	xorl	%r8d, %r8d
.LBB0_438:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	-160(%rbp), %eax        # 1-byte Folded Reload
	addl	$-1, %eax
	cmpl	$1, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jbe	.LBB0_575
# %bb.439:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	%sil, %eax
	addl	$-1, %eax
	cmpl	$6, %eax
	ja	.LBB0_457
# %bb.440:                              #   in Loop: Header=BB0_2 Depth=1
	cmpb	$3, %sil
	jl	.LBB0_595
# %bb.441:                              #   in Loop: Header=BB0_2 Depth=1
	je	.LBB0_457
# %bb.442:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r8, -88(%rbp)          # 8-byte Spill
	leal	-4(%rsi), %eax
	movzbl	%al, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	notl	%eax
	addl	%eax, %r12d
	movq	%r12, -104(%rbp)        # 8-byte Spill
	addb	$1, %sil
	leaq	-1644(%rbp), %rax
	leaq	(%rax,%r9,4), %rbx
	addq	$-8, %rbx
	jmp	.LBB0_446
.LBB0_443:                              #   in Loop: Header=BB0_446 Depth=2
	movq	(%r14), %rax
.LBB0_444:                              #   in Loop: Header=BB0_446 Depth=2
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, 8(%r14)
	.p2align	4, 0x90
.LBB0_445:                              #   in Loop: Header=BB0_446 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %sil
	addq	$-4, %rbx
	cmpb	$4, %sil
	jle	.LBB0_456
.LBB0_446:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %r12d
	cmpl	$-1, %r12d
	je	.LBB0_445
# %bb.447:                              #   in Loop: Header=BB0_446 Depth=2
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_452
# %bb.448:                              #   in Loop: Header=BB0_446 Depth=2
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_446 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	%r9, %r15
	callq	__submore
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %r9
	testl	%eax, %eax
	jne	.LBB0_445
.LBB0_450:                              #   in Loop: Header=BB0_446 Depth=2
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_451:                              #   in Loop: Header=BB0_446 Depth=2
	addl	$4, 8(%r14)
	jmp	.LBB0_445
	.p2align	4, 0x90
.LBB0_452:                              #   in Loop: Header=BB0_446 Depth=2
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_443
# %bb.453:                              #   in Loop: Header=BB0_446 Depth=2
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_444
# %bb.454:                              #   in Loop: Header=BB0_446 Depth=2
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_444
# %bb.455:                              #   in Loop: Header=BB0_446 Depth=2
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_451
.LBB0_456:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	notq	%rax
	addq	%rax, %r9
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
.LBB0_457:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1648(,%r9,4), %rax
	addq	%rbp, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_507
# %bb.458:                              #   in Loop: Header=BB0_2 Depth=1
	testl	$1024, %r13d            # imm = 0x400
	jne	.LBB0_610
# %bb.459:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	-4(%rcx), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$101, %eax
	jne	.LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	addl	$-1, %r12d
	jmp	.LBB0_494
.LBB0_461:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_493
# %bb.462:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_467
# %bb.463:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_465
# %bb.464:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_493
.LBB0_465:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_466:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_493
.LBB0_467:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_491
# %bb.468:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_492
# %bb.469:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_492
# %bb.470:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_466
.LBB0_471:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_552
# %bb.472:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_553
.LBB0_473:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_474:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_555
.LBB0_475:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_557
# %bb.476:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_558
# %bb.477:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_558
# %bb.478:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_340
.LBB0_479:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_480:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_481:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_482:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_483:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdx
	subq	%r13, %rdx
	shrq	$2, %rdx
	testl	%edx, %edx
	je	.LBB0_612
# %bb.484:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rax)
	jmp	.LBB0_548
.LBB0_485:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_486:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, %eax
.LBB0_487:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_488:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_489:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, %r13d
.LBB0_490:                              # %.loopexit33
                                        #   in Loop: Header=BB0_2 Depth=1
	subl	%r15d, %r12d
	jmp	.LBB0_562
.LBB0_491:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_492:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_493:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-8(%rax), %ebx
	addq	$-8, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addl	$-2, %r12d
.LBB0_494:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_506
# %bb.495:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_500
# %bb.496:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_506
.LBB0_498:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_499:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_506
.LBB0_500:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_504
# %bb.501:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_505
# %bb.502:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_505
# %bb.503:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_499
.LBB0_504:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_505:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_506:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r8          # 8-byte Reload
.LBB0_507:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	jne	.LBB0_511
# %bb.508:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	%r13d, %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_512
# %bb.509:                              #   in Loop: Header=BB0_2 Depth=1
	subq	-208(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_515
# %bb.510:                              #   in Loop: Header=BB0_2 Depth=1
	negq	%r8
	movq	%r8, %rcx
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_514
.LBB0_511:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_563
.LBB0_512:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_515
# %bb.513:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-232(%rbp), %rbx        # 8-byte Reload
	leaq	4(%rbx), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$10, %ecx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	_wcstol_r
	movq	%rax, %rcx
	subq	-192(%rbp), %rcx        # 8-byte Folded Reload
.LBB0_514:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-332(%rbp), %rax
	cmpq	%rax, %rbx
	leaq	-336(%rbp), %rax
	cmovaeq	%rax, %rbx
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	swprintf
.LBB0_515:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	leaq	-1648(%rbp), %rsi
	xorl	%edx, %edx
	callq	_wcstod_r
	testb	$1, %r13b
	jne	.LBB0_519
# %bb.516:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$2, %r13b
	jne	.LBB0_521
# %bb.517:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_525
# %bb.518:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_526
.LBB0_519:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_523
# %bb.520:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_524
.LBB0_521:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_528
# %bb.522:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_529
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_524:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB0_532
.LBB0_525:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_526:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rbx
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_530
# %bb.527:                              #   in Loop: Header=BB0_2 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_531
.LBB0_528:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_529:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rax
	movsd	%xmm0, -248(%rbp)
	fldl	-248(%rbp)
	fstpt	(%rax)
	jmp	.LBB0_532
.LBB0_530:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB0_531:                              #   in Loop: Header=BB0_2 Depth=1
	movss	%xmm0, (%rbx)
.LBB0_532:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r13d
	jmp	.LBB0_563
.LBB0_533:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_534:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, %eax
.LBB0_535:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_536:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_537:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	je	.LBB0_539
# %bb.538:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_563
.LBB0_539:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
	movq	-104(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_563
.LBB0_540:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_541:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
.LBB0_542:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r15d, 115(%r14)
	movl	$2, %eax
.LBB0_543:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_544:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_545:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %r13b
	je	.LBB0_547
# %bb.546:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_549
.LBB0_547:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
.LBB0_548:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
.LBB0_549:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	addl	%eax, %edx
	movl	%edx, %r12d
	jmp	.LBB0_563
.LBB0_550:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_551:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_555:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r13d
.LBB0_556:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	-1648(%rbp), %rcx
	subq	%rcx, %rax
	shrq	$2, %rax
	addl	%eax, %r12d
	jmp	.LBB0_563
.LBB0_552:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_553:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB0_554
.LBB0_557:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_558:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, (%rax)
.LBB0_559:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_560:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB0_633
.LBB0_561:                              #   in Loop: Header=BB0_2 Depth=1
	andl	$16, %r13d
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	-104(%rbp), %eax        # 4-byte Folded Reload
	cmpl	$1, %r13d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
	movl	%eax, %r12d
	.p2align	4, 0x90
.LBB0_562:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_563:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_2
	jmp	.LBB0_636
.LBB0_564:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$105, %edx
	jmp	.LBB0_305
.LBB0_565:
	xorl	%r13d, %r13d
	jmp	.LBB0_636
.LBB0_567:
	testq	%r12, %r12
	je	.LBB0_612
# %bb.568:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-4(%rax), %ebx
	cmpl	$-1, %ebx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	je	.LBB0_574
# %bb.569:
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_637
# %bb.570:
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_572
# %bb.571:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_574
.LBB0_572:
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_573:
	addl	$4, 8(%r14)
.LBB0_574:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_636
.LBB0_575:
	leaq	-1648(%rbp), %r15
	cmpq	%r15, %rbx
	jbe	.LBB0_612
# %bb.576:                              # %.preheader
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_580
.LBB0_577:                              #   in Loop: Header=BB0_580 Depth=1
	movq	(%r14), %rax
.LBB0_578:                              #   in Loop: Header=BB0_580 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_579:                              #   in Loop: Header=BB0_580 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jbe	.LBB0_636
.LBB0_580:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %r12d
	addq	$-4, %rbx
	cmpl	$-1, %r12d
	je	.LBB0_579
# %bb.581:                              #   in Loop: Header=BB0_580 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_586
# %bb.582:                              #   in Loop: Header=BB0_580 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_584
# %bb.583:                              #   in Loop: Header=BB0_580 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_579
.LBB0_584:                              #   in Loop: Header=BB0_580 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_585:                              #   in Loop: Header=BB0_580 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_579
.LBB0_586:                              #   in Loop: Header=BB0_580 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_577
# %bb.587:                              #   in Loop: Header=BB0_580 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_578
# %bb.588:                              #   in Loop: Header=BB0_580 Depth=1
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_578
# %bb.589:                              #   in Loop: Header=BB0_580 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_585
.LBB0_590:
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_626
# %bb.591:
	cmpl	96(%r14), %esi
	jl	.LBB0_594
# %bb.592:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_632
# %bb.593:
	movq	(%r14), %rcx
.LBB0_594:
	leaq	-4(%rcx), %rax
	movq	%rax, (%r14)
	movb	%r15b, -4(%rcx)
	movl	8(%r14), %eax
	addl	$4, %eax
	jmp	.LBB0_631
.LBB0_595:
	testq	%r9, %r9
	jle	.LBB0_612
# %bb.596:                              # %.preheader3
	addq	$1, %r9
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_600
.LBB0_597:                              #   in Loop: Header=BB0_600 Depth=1
	movq	(%r14), %rax
.LBB0_598:                              #   in Loop: Header=BB0_600 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_599:                              #   in Loop: Header=BB0_600 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r9
	cmpq	$1, %r9
	jle	.LBB0_636
.LBB0_600:                              # =>This Inner Loop Header: Depth=1
	movl	-1656(%rbp,%r9,4), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_599
# %bb.601:                              #   in Loop: Header=BB0_600 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_606
# %bb.602:                              #   in Loop: Header=BB0_600 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_604
# %bb.603:                              #   in Loop: Header=BB0_600 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %r12
	callq	__submore
	movq	%r12, %r9
	testl	%eax, %eax
	jne	.LBB0_599
.LBB0_604:                              #   in Loop: Header=BB0_600 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_605:                              #   in Loop: Header=BB0_600 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_599
.LBB0_606:                              #   in Loop: Header=BB0_600 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_597
# %bb.607:                              #   in Loop: Header=BB0_600 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_598
# %bb.608:                              #   in Loop: Header=BB0_600 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_598
# %bb.609:                              #   in Loop: Header=BB0_600 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_605
.LBB0_610:
	testq	%r9, %r9
	jle	.LBB0_612
# %bb.611:                              # %.preheader1
	addq	$1, %r9
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_616
.LBB0_612:                              # %.loopexit6
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_636
.LBB0_613:                              #   in Loop: Header=BB0_616 Depth=1
	movq	(%r14), %rax
.LBB0_614:                              #   in Loop: Header=BB0_616 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_615:                              #   in Loop: Header=BB0_616 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r9
	cmpq	$1, %r9
	jle	.LBB0_636
.LBB0_616:                              # =>This Inner Loop Header: Depth=1
	movl	-1656(%rbp,%r9,4), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_615
# %bb.617:                              #   in Loop: Header=BB0_616 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_622
# %bb.618:                              #   in Loop: Header=BB0_616 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_620
# %bb.619:                              #   in Loop: Header=BB0_616 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %r12
	callq	__submore
	movq	%r12, %r9
	testl	%eax, %eax
	jne	.LBB0_615
.LBB0_620:                              #   in Loop: Header=BB0_616 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_621:                              #   in Loop: Header=BB0_616 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_615
.LBB0_622:                              #   in Loop: Header=BB0_616 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_613
# %bb.623:                              #   in Loop: Header=BB0_616 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_614
# %bb.624:                              #   in Loop: Header=BB0_616 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_614
# %bb.625:                              #   in Loop: Header=BB0_616 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_621
.LBB0_626:
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_630
# %bb.627:
	cmpq	%rdi, %rcx
	jbe	.LBB0_630
# %bb.628:
	cmpl	%r15d, (%rdx)
	jne	.LBB0_630
# %bb.629:
	movq	%rdx, (%r14)
	jmp	.LBB0_631
.LBB0_630:
	movl	%esi, 112(%r14)
	movq	%rcx, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r15d, 115(%r14)
	movl	$2, %eax
.LBB0_631:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_632:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_633:
	movl	-44(%rbp), %r13d        # 4-byte Reload
	testl	%r13d, %r13d
	je	.LBB0_635
# %bb.634:
	movb	16(%r14), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r13d
	jmp	.LBB0_636
.LBB0_635:
	movl	$-1, %r13d
.LBB0_636:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$1608, %rsp             # imm = 0x648
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_637:
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_641
# %bb.638:
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_642
# %bb.639:
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_642
# %bb.640:
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_573
.LBB0_641:
	movq	(%r14), %rax
.LBB0_642:
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_636
.Lfunc_end0:
	.size	__ssvfwscanf_r, .Lfunc_end0-__ssvfwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_635
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_39
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_28
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_16
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_67
	.quad	.LBB0_612
	.quad	.LBB0_69
	.quad	.LBB0_612
	.quad	.LBB0_67
	.quad	.LBB0_67
	.quad	.LBB0_67
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_29
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_71
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_68
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_73
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_67
	.quad	.LBB0_612
	.quad	.LBB0_70
	.quad	.LBB0_77
	.quad	.LBB0_67
	.quad	.LBB0_67
	.quad	.LBB0_67
	.quad	.LBB0_20
	.quad	.LBB0_78
	.quad	.LBB0_27
	.quad	.LBB0_612
	.quad	.LBB0_22
	.quad	.LBB0_612
	.quad	.LBB0_46
	.quad	.LBB0_79
	.quad	.LBB0_80
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_72
	.quad	.LBB0_27
	.quad	.LBB0_82
	.quad	.LBB0_612
	.quad	.LBB0_612
	.quad	.LBB0_68
	.quad	.LBB0_612
	.quad	.LBB0_27
.LJTI0_1:
	.quad	.LBB0_108
	.quad	.LBB0_113
	.quad	.LBB0_123
	.quad	.LBB0_133
	.quad	.LBB0_156
.LJTI0_2:
	.quad	.LBB0_171
	.quad	.LBB0_165
	.quad	.LBB0_171
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_189
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_161
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_173
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_175
	.quad	.LBB0_179
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_181
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_185
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_187
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_173
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_175
	.quad	.LBB0_179
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_192
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_181
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_185
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_165
	.quad	.LBB0_187
.LJTI0_3:
	.quad	.LBB0_319
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_145
	.quad	.LBB0_228
	.quad	.LBB0_145
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_152
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_147
	.quad	.LBB0_147
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_149
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_228
	.quad	.LBB0_149
                                        # -- End function
	.type	__ssvfwscanf_r.basefix,@object # @__ssvfwscanf_r.basefix
	.p2align	4
__ssvfwscanf_r.basefix:
	.short	10                      # 0xa
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.size	__ssvfwscanf_r.basefix, 34

	.type	.L.str,@object          # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str:
	.long	101                     # 0x65
	.long	37                      # 0x25
	.long	108                     # 0x6c
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str, 20

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
