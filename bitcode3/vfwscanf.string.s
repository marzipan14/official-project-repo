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
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	_localeconv_r
	movq	%rbx, %rcx
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	je	.LBB0_550
# %bb.1:
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	leaq	116(%r14), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leaq	115(%r14), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movq	%r15, -72(%rbp)         # 8-byte Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_436 Depth 2
                                        #     Child Loop BB0_129 Depth 2
                                        #     Child Loop BB0_116 Depth 2
                                        #     Child Loop BB0_290 Depth 2
                                        #     Child Loop BB0_362 Depth 2
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_276 Depth 2
                                        #     Child Loop BB0_340 Depth 2
                                        #     Child Loop BB0_266 Depth 2
                                        #     Child Loop BB0_252 Depth 2
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movslq	%r12d, %r12
	movq	%r12, %r13
	movq	%rcx, %r12
	jmp	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=2
	movq	(%r14), %rax
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=2
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	je	.LBB0_594
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_20 Depth 3
                                        #         Child Loop BB0_21 Depth 4
	addq	$4, %r12
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_17
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=3
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=3
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_5
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=3
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_7
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=2
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_34
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=2
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_5
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_16:                               #   in Loop: Header=BB0_6 Depth=2
	addl	$4, 8(%r14)
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	$37, %ebx
	jne	.LBB0_39
# %bb.18:                               # %.preheader5
                                        #   in Loop: Header=BB0_6 Depth=2
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=3
	leaq	(%r15,%r15,4), %rax
	leaq	(%rbx,%rax,2), %r15
	addq	$-48, %r15
.LBB0_20:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
	movq	%r12, %rax
.LBB0_21:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ebx
	cmpq	$122, %rbx
	ja	.LBB0_594
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=4
	leaq	4(%rax), %r12
	jmpq	*.LJTI0_0(,%rbx,8)
.LBB0_23:                               #   in Loop: Header=BB0_21 Depth=4
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_30
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=4
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_21 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_29
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=4
	addq	$8, %rax
	jmp	.LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_21 Depth=4
	addq	$8, %rax
.LBB0_29:                               #   in Loop: Header=BB0_21 Depth=4
	addl	$1, %ecx
.LBB0_30:                               #   in Loop: Header=BB0_21 Depth=4
	orl	%ecx, %edx
	movq	%rdx, %rcx
	jmp	.LBB0_21
.LBB0_31:                               #   in Loop: Header=BB0_20 Depth=3
	orl	$1, %ecx
	jmp	.LBB0_20
.LBB0_32:                               #   in Loop: Header=BB0_20 Depth=3
	orl	$16, %ecx
	jmp	.LBB0_20
.LBB0_33:                               #   in Loop: Header=BB0_20 Depth=3
	orl	$2, %ecx
	jmp	.LBB0_20
.LBB0_34:                               #   in Loop: Header=BB0_6 Depth=2
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.35:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_4
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_4
# %bb.37:                               #   in Loop: Header=BB0_6 Depth=2
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_16
.LBB0_38:                               # %.loopexit7
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_39:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_42
# %bb.40:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_613
# %bb.41:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%r14), %rdx
	movl	(%rdx), %r15d
	leaq	4(%rdx), %rax
	movq	%rax, (%r14)
	leal	-4(%rcx), %esi
	movl	%esi, 8(%r14)
	cmpl	$-1, %r15d
	je	.LBB0_613
# %bb.43:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	%r15d, %ebx
	jne	.LBB0_572
# %bb.44:                               #   in Loop: Header=BB0_6 Depth=2
	addq	$1, %r13
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	movq	-72(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_6
	jmp	.LBB0_594
.LBB0_45:                               #   in Loop: Header=BB0_6 Depth=2
	testb	$16, %cl
	jne	.LBB0_51
# %bb.46:                               #   in Loop: Header=BB0_6 Depth=2
	testb	$8, %cl
	movq	-72(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_52
# %bb.47:                               #   in Loop: Header=BB0_6 Depth=2
	testb	$4, %cl
	jne	.LBB0_54
# %bb.48:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %cl
	jne	.LBB0_58
# %bb.49:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_62
# %bb.50:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_63
.LBB0_51:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_52:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_56
# %bb.53:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_57
.LBB0_54:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_60
# %bb.55:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_61
.LBB0_56:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB0_5
.LBB0_58:                               #   in Loop: Header=BB0_6 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_64
# %bb.59:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_65
.LBB0_60:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_5
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_63:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rcx), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_5
.LBB0_64:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_65:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rcx), %rax
	movq	%r13, (%rax)
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_66:                               # %.loopexit8
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$4, %al
	jmp	.LBB0_83
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %ecx              # imm = 0x200
	jmp	.LBB0_80
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %ecx
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_83
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %ecx
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %al
	jmp	.LBB0_83
.LBB0_72:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdi
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r12, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_73:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	addq	$4, %rcx
	cmpl	$93, %eax
	je	.LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	testl	%eax, %eax
	jne	.LBB0_73
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, %rdx
	orl	$64, %edx
	leaq	-4(%rcx), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movb	$1, %al
	movq	%r12, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_84
.LBB0_76:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB0_82
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$3, %al
	movl	$0, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_78:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$3, %al
	movl	$8, -92(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %ecx              # imm = 0x220
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$3, %al
	movl	$16, -92(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB0_82:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$3, %al
	movl	$10, -92(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	%r12, %rcx
.LBB0_84:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testb	$64, %dl
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_92
# %bb.85:                               # %.preheader35
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, -88(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB0_86:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_89
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_613
# %bb.88:                               #   in Loop: Header=BB0_86 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_89:                               #   in Loop: Header=BB0_86 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_613
# %bb.90:                               #   in Loop: Header=BB0_86 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_98
# %bb.91:                               #   in Loop: Header=BB0_86 Depth=2
	addl	$1, %r13d
	jmp	.LBB0_86
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %r12
	cmpb	$4, %al
	ja	.LBB0_234
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	%al, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_94:                               #   in Loop: Header=BB0_2 Depth=1
	testq	%r15, %r15
	movl	$1, %eax
	cmoveq	%rax, %r15
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$1, %al
	jne	.LBB0_200
# %bb.95:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -88(%rbp)         # 8-byte Spill
	testb	$16, %al
	jne	.LBB0_249
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_247
# %bb.97:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_248
.LBB0_98:                               #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	movq	%r13, %r12
	je	.LBB0_196
# %bb.99:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_101
# %bb.100:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_233
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_102:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_233
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -88(%rbp)         # 8-byte Spill
	cmpq	$1, %r15
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r15, %r12
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testb	$1, %cl
	je	.LBB0_203
# %bb.104:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %eax
	andl	$16, %eax
	je	.LBB0_203
# %bb.105:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-216(%rbp), %r15        # 8-byte Reload
	subq	-192(%rbp), %r15        # 8-byte Folded Reload
	sarq	$2, %r15
	movq	%r15, -56(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_109
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_419
# %bb.108:                              #   in Loop: Header=BB0_106 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_109:                              #   in Loop: Header=BB0_106 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_419
# %bb.110:                              #   in Loop: Header=BB0_106 Depth=2
	cmpq	%rdx, %r12
	je	.LBB0_213
# %bb.111:                              #   in Loop: Header=BB0_106 Depth=2
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%rdx, %r15
	movq	-56(%rbp), %rdx         # 8-byte Reload
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
	jne	.LBB0_213
# %bb.112:                              #   in Loop: Header=BB0_106 Depth=2
	addq	$1, %rdx
	jmp	.LBB0_106
.LBB0_113:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r15
	movl	$0, %eax
	sbbq	%rax, %rax
	orq	%r15, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testb	$1, %cl
	je	.LBB0_207
# %bb.114:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %eax
	andl	$16, %eax
	je	.LBB0_207
# %bb.115:                              # %.preheader26
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	-88(%rbp)               # 8-byte Folded Spill
	xorl	%r15d, %r15d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_116:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_119
# %bb.117:                              #   in Loop: Header=BB0_116 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_477
# %bb.118:                              #   in Loop: Header=BB0_116 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_119:                              #   in Loop: Header=BB0_116 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_477
# %bb.120:                              #   in Loop: Header=BB0_116 Depth=2
	cmpq	%r15, -88(%rbp)         # 8-byte Folded Reload
	je	.LBB0_218
# %bb.121:                              #   in Loop: Header=BB0_116 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_218
# %bb.122:                              #   in Loop: Header=BB0_116 Depth=2
	addq	$-1, %r15
	jmp	.LBB0_116
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -88(%rbp)         # 8-byte Spill
	leaq	-1(%r15), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	orl	$1408, %ecx             # imm = 0x580
	cmpq	$348, %rax              # imm = 0x15C
	movl	$349, %eax              # imm = 0x15D
	cmovaq	%rax, %r15
	testq	%r15, %r15
	je	.LBB0_211
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	leaq	-1648(%rbp), %r13
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_129:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r8d
	testl	%eax, %eax
	jg	.LBB0_132
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_236
# %bb.131:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %r8d
.LBB0_132:                              #   in Loop: Header=BB0_129 Depth=2
	movq	(%r14), %rsi
	movl	(%rsi), %ebx
	leaq	4(%rsi), %rcx
	movq	%rcx, (%r14)
	leal	-4(%r8), %eax
	movl	%eax, 8(%r14)
	leal	1(%rbx), %edi
	cmpl	$121, %edi
	ja	.LBB0_222
# %bb.133:                              #   in Loop: Header=BB0_129 Depth=2
	jmpq	*.LJTI0_3(,%rdi,8)
.LBB0_134:                              #   in Loop: Header=BB0_129 Depth=2
	cmpl	$11, -92(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_126
	jmp	.LBB0_222
	.p2align	4, 0x90
.LBB0_125:                              #   in Loop: Header=BB0_129 Depth=2
	movslq	-92(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB0_126
.LBB0_135:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	testb	%dl, %dl
	jns	.LBB0_222
# %bb.136:                              #   in Loop: Header=BB0_129 Depth=2
	andl	$-65665, %edx           # imm = 0xFFFEFF7F
	orl	$65536, %edx            # imm = 0x10000
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_128
.LBB0_137:                              #   in Loop: Header=BB0_129 Depth=2
	movslq	-92(%rbp), %rdi         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rdi,%rdi), %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	addq	$-1, %rdi
	cmpq	$8, %rdi
	jb	.LBB0_222
	.p2align	4, 0x90
.LBB0_126:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	andl	$-897, %ecx             # imm = 0xFC7F
.LBB0_127:                              #   in Loop: Header=BB0_129 Depth=2
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB0_128:                              #   in Loop: Header=BB0_129 Depth=2
	addq	$1, %r12
	movl	%ebx, (%r13)
	addq	$4, %r13
	cmpq	%r12, %r15
	jne	.LBB0_129
	jmp	.LBB0_235
.LBB0_138:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testl	$512, %edi              # imm = 0x200
	je	.LBB0_222
# %bb.139:                              #   in Loop: Header=BB0_129 Depth=2
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	shrl	$16, %edi
	andl	$1, %edi
	leaq	-1644(%rbp), %rdx
	leaq	(%rdx,%rdi,4), %rdi
	cmpq	%rdi, %r13
	jne	.LBB0_222
# %bb.140:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	andl	$-513, %ecx             # imm = 0xFDFF
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$16, -92(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_128
.LBB0_141:                              #   in Loop: Header=BB0_129 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-92(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%edx, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_129 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_129 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB0_144:                              #   in Loop: Header=BB0_129 Depth=2
                                        # kill: def $ecx killed $ecx def $rcx
	jmp	.LBB0_127
.LBB0_145:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -88(%rbp)         # 8-byte Spill
	leaq	-1(%r15), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	orl	$1920, %ecx             # imm = 0x780
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	cmpq	$348, %rax              # imm = 0x15C
	movq	%r15, %rdx
	movl	$349, %ecx              # imm = 0x15D
	cmovaq	%rcx, %rdx
	xorl	%ecx, %ecx
	testq	%rdx, %rdx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	je	.LBB0_212
# %bb.146:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$-349, %r15d            # imm = 0xFEA3
	cmpq	$348, %rax              # imm = 0x15C
	cmovbel	%ecx, %r15d
	leaq	-1648(%rbp), %rdi
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_147:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_153
.LBB0_148:                              #   in Loop: Header=BB0_147 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	leal	-43(%rbx), %eax
	cmpl	$78, %eax
	ja	.LBB0_154
# %bb.149:                              #   in Loop: Header=BB0_147 Depth=2
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_150:                              #   in Loop: Header=BB0_147 Depth=2
	movsbl	-160(%rbp), %eax        # 1-byte Folded Reload
	movsbl	%r13b, %ecx
	addl	%eax, %ecx
	jne	.LBB0_319
# %bb.151:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-385, %eax             # imm = 0xFE7F
.LBB0_152:                              #   in Loop: Header=BB0_147 Depth=2
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_157
	.p2align	4, 0x90
.LBB0_153:                              #   in Loop: Header=BB0_147 Depth=2
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	%r13, %r12
	movq	%r8, %r13
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %r8
	movq	%r12, %r13
	movq	-184(%rbp), %r9         # 8-byte Reload
	movl	$-1, %ebx
	testl	%eax, %eax
	je	.LBB0_160
.LBB0_154:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testl	$512, %ecx              # imm = 0x200
	movl	-236(%rbp), %eax        # 4-byte Reload
	je	.LBB0_318
# %bb.155:                              #   in Loop: Header=BB0_147 Depth=2
	cmpl	%eax, %ebx
	jne	.LBB0_318
# %bb.156:                              #   in Loop: Header=BB0_147 Depth=2
	andl	$-641, %ecx             # imm = 0xFD7F
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %ebx
	movq	%r8, -208(%rbp)         # 8-byte Spill
.LBB0_157:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_158:                              #   in Loop: Header=BB0_147 Depth=2
	addq	$1, %r9
	movl	%ebx, (%rdi)
.LBB0_159:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	-1648(,%r9,4), %rdi
	addq	%rbp, %rdi
	addq	$-1, %rdx
	jne	.LBB0_147
	jmp	.LBB0_425
.LBB0_160:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	jmp	.LBB0_148
.LBB0_161:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	%al, %al
	jns	.LBB0_319
# %bb.162:                              #   in Loop: Header=BB0_147 Depth=2
	andl	$-129, %eax
	jmp	.LBB0_152
.LBB0_163:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$1, -160(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_319
# %bb.164:                              #   in Loop: Header=BB0_147 Depth=2
	movb	$2, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_157
.LBB0_165:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %eax
	andl	$1280, %eax             # imm = 0x500
	cmpl	$1024, %eax             # imm = 0x400
	movq	-64(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_168
# %bb.166:                              #   in Loop: Header=BB0_147 Depth=2
	testl	$1024, %esi             # imm = 0x400
	je	.LBB0_319
# %bb.167:                              #   in Loop: Header=BB0_147 Depth=2
	testq	%r8, %r8
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_319
.LBB0_168:                              #   in Loop: Header=BB0_147 Depth=2
	subq	-208(%rbp), %r8         # 8-byte Folded Reload
	testl	$512, %esi              # imm = 0x200
	movq	-200(%rbp), %rax        # 8-byte Reload
	cmoveq	%r8, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %rax        # 8-byte Reload
	cmoveq	%rdi, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	andl	$-1921, %esi            # imm = 0xF87F
	orl	$384, %esi              # imm = 0x180
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	xorl	%r8d, %r8d
	jmp	.LBB0_158
.LBB0_169:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$2, %r13b
	jne	.LBB0_319
# %bb.170:                              #   in Loop: Header=BB0_147 Depth=2
	movb	$3, %r13b
	jmp	.LBB0_157
.LBB0_171:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_187
# %bb.172:                              #   in Loop: Header=BB0_147 Depth=2
	testq	%r8, %r8
	jne	.LBB0_187
# %bb.173:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$0, -160(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_187
# %bb.174:                              #   in Loop: Header=BB0_147 Depth=2
	andl	$-1921, %ecx            # imm = 0xF87F
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$1, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_186
.LBB0_175:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$6, %r13b
	jne	.LBB0_319
# %bb.176:                              #   in Loop: Header=BB0_147 Depth=2
	movb	$7, %r13b
	jmp	.LBB0_157
.LBB0_177:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$7, %r13b
	jne	.LBB0_319
# %bb.178:                              #   in Loop: Header=BB0_147 Depth=2
	movb	$8, %r13b
	jmp	.LBB0_157
.LBB0_179:                              #   in Loop: Header=BB0_147 Depth=2
	testl	$256, -56(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	je	.LBB0_150
# %bb.180:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-129, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$1, %r8
	testl	%r15d, %r15d
	je	.LBB0_195
# %bb.181:                              #   in Loop: Header=BB0_147 Depth=2
	addl	$-1, %r15d
	addq	$1, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_159
.LBB0_182:                              #   in Loop: Header=BB0_147 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_189
# %bb.183:                              #   in Loop: Header=BB0_147 Depth=2
	testq	%r8, %r8
	jne	.LBB0_189
# %bb.184:                              #   in Loop: Header=BB0_147 Depth=2
	testb	%r13b, %r13b
	jne	.LBB0_189
# %bb.185:                              #   in Loop: Header=BB0_147 Depth=2
	andl	$-1921, %ecx            # imm = 0xF87F
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$1, %r13b
	movl	$105, %ebx
.LBB0_186:                              #   in Loop: Header=BB0_147 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB0_157
.LBB0_187:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$2, -160(%rbp)          # 1-byte Folded Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jne	.LBB0_192
# %bb.188:                              #   in Loop: Header=BB0_147 Depth=2
	movb	$3, %al
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_158
.LBB0_189:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$5, %r13b
	movq	-64(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_191
# %bb.190:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$3, %r13b
	jne	.LBB0_549
.LBB0_191:                              #   in Loop: Header=BB0_147 Depth=2
	addb	$1, %r13b
	movl	$105, %ebx
	jmp	.LBB0_158
.LBB0_192:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$4, %r13b
	je	.LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_147 Depth=2
	cmpb	$1, %r13b
	jne	.LBB0_319
.LBB0_194:                              #   in Loop: Header=BB0_147 Depth=2
	addb	$1, %r13b
	jmp	.LBB0_158
.LBB0_195:                              #   in Loop: Header=BB0_147 Depth=2
	xorl	%r15d, %r15d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_159
.LBB0_196:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_231
# %bb.197:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_232
# %bb.198:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_232
# %bb.199:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_102
.LBB0_200:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %al
	jne	.LBB0_264
# %bb.201:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_262
# %bb.202:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_263
.LBB0_203:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %cl
	jne	.LBB0_227
# %bb.204:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %cl
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_337
# %bb.205:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_335
# %bb.206:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_336
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %cl
	jne	.LBB0_229
# %bb.208:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %cl
	movq	-72(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_359
# %bb.209:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_357
# %bb.210:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_358
.LBB0_211:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r12d, %r12d
	leaq	-1648(%rbp), %r13
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_238
.LBB0_212:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1648(%rbp), %rdi
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_428
.LBB0_213:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_306
# %bb.214:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rdx, %r15
	callq	__submore
	movq	%r15, %rdx
	testl	%eax, %eax
	jne	.LBB0_419
.LBB0_216:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_217:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_419
.LBB0_218:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	movl	%r12d, %r12d
	subq	%r15, %r12
	cmpq	$0, 88(%r14)
	je	.LBB0_310
# %bb.219:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	movq	-72(%rbp), %r15         # 8-byte Reload
	jl	.LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_547
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
	addl	$4, 8(%r14)
	jmp	.LBB0_547
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_314
# %bb.223:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	96(%r14), %eax
	movq	-72(%rbp), %r15         # 8-byte Reload
	jl	.LBB0_226
# %bb.224:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_237
# %bb.225:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rcx
.LBB0_226:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rcx), %rax
	movq	%rax, (%r14)
	movb	%bl, -4(%rcx)
	addl	$4, 8(%r14)
	jmp	.LBB0_237
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_274
# %bb.228:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_275
.LBB0_229:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_288
# %bb.230:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_289
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_232:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-88(%rbp), %eax         # 4-byte Reload
	cmpb	$4, %al
	jbe	.LBB0_93
.LBB0_234:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_548
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %r12d
.LBB0_236:                              # %..loopexit28_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB0_238:                              #   in Loop: Header=BB0_2 Depth=1
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB0_551
# %bb.239:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%r13), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_246
# %bb.240:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %r13
	cmpl	$-1, %ebx
	movq	-88(%rbp), %r12         # 8-byte Reload
	je	.LBB0_399
# %bb.241:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_302
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_244
# %bb.243:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_398
.LBB0_244:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_245:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_398
.LBB0_246:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_399
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_249:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r13d, %r13d
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_252
	.p2align	4, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_613
.LBB0_251:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	addl	$1, %r13d
	subq	%rbx, %r15
	je	.LBB0_545
.LBB0_252:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_255
# %bb.253:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_544
# %bb.254:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_255:                              #   in Loop: Header=BB0_252 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %r12d
	je	.LBB0_544
# %bb.256:                              #   in Loop: Header=BB0_252 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_252 Depth=2
	cltq
	cmpq	%rax, %r15
	jae	.LBB0_250
.LBB0_258:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	leaq	-73(%rbp), %rsi
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB0_613
# %bb.259:                              #   in Loop: Header=BB0_252 Depth=2
	movq	%rax, %rbx
	cmpq	%r15, %rax
	ja	.LBB0_330
# %bb.260:                              #   in Loop: Header=BB0_252 Depth=2
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_251
# %bb.261:                              #   in Loop: Header=BB0_252 Depth=2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	leaq	-73(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_251
.LBB0_262:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_263:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_264:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_266
	.p2align	4, 0x90
.LBB0_265:                              #   in Loop: Header=BB0_266 Depth=2
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB0_273
.LBB0_266:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_269
# %bb.267:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_272
# %bb.268:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_269:                              #   in Loop: Header=BB0_266 Depth=2
	movq	(%r14), %rdx
	movl	(%rdx), %ecx
	addq	$4, %rdx
	movq	%rdx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ecx
	je	.LBB0_272
# %bb.270:                              #   in Loop: Header=BB0_266 Depth=2
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_265
# %bb.271:                              #   in Loop: Header=BB0_266 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_265
.LBB0_272:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%ebx, %ebx
	je	.LBB0_613
.LBB0_273:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$16, %eax
	addl	%r12d, %ebx
	cmpl	$1, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
	movl	%ebx, %r12d
	jmp	.LBB0_546
.LBB0_274:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %r13
	movq	-216(%rbp), %r15        # 8-byte Reload
	subq	-192(%rbp), %r15        # 8-byte Folded Reload
	sarq	$2, %r15
	movq	%r13, %rax
	movq	%r13, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_276:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_279
# %bb.277:                              #   in Loop: Header=BB0_276 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_471
# %bb.278:                              #   in Loop: Header=BB0_276 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_279:                              #   in Loop: Header=BB0_276 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_471
# %bb.280:                              #   in Loop: Header=BB0_276 Depth=2
	subq	$1, %r12
	jb	.LBB0_283
# %bb.281:                              #   in Loop: Header=BB0_276 Depth=2
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	jne	.LBB0_283
# %bb.282:                              #   in Loop: Header=BB0_276 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_276
.LBB0_283:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_380
# %bb.284:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_471
.LBB0_286:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_287:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_471
.LBB0_288:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_289:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	negq	-88(%rbp)               # 8-byte Folded Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_290:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_293
# %bb.291:                              #   in Loop: Header=BB0_290 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_476
# %bb.292:                              #   in Loop: Header=BB0_290 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_293:                              #   in Loop: Header=BB0_290 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %ebx
	je	.LBB0_476
# %bb.294:                              #   in Loop: Header=BB0_290 Depth=2
	cmpq	%r15, -88(%rbp)         # 8-byte Folded Reload
	je	.LBB0_297
# %bb.295:                              #   in Loop: Header=BB0_290 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_297
# %bb.296:                              #   in Loop: Header=BB0_290 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	addq	$-1, %r15
	jmp	.LBB0_290
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_384
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_300
# %bb.299:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_476
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_476
.LBB0_302:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_396
# %bb.303:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_397
# %bb.304:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_397
# %bb.305:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_245
.LBB0_306:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_417
# %bb.307:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_418
# %bb.308:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_418
# %bb.309:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_217
.LBB0_310:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB0_420
# %bb.311:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_421
# %bb.312:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_421
# %bb.313:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	addl	$4, 8(%r14)
	jmp	.LBB0_547
.LBB0_314:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB0_329
# %bb.315:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdi, %rcx
	jbe	.LBB0_329
# %bb.316:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, (%rsi)
	jne	.LBB0_329
# %bb.317:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, (%r14)
	movl	%r8d, 8(%r14)
	jmp	.LBB0_237
.LBB0_318:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_424
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_325
# %bb.320:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_323
# %bb.321:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %r15
	movq	%r14, %rsi
	movq	%r8, %r12
	callq	__submore
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %r8
	movq	%r15, %r9
	testl	%eax, %eax
	jne	.LBB0_424
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_324:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_424
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_422
# %bb.326:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_423
# %bb.327:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_423
# %bb.328:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_324
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, 112(%r14)
	movq	%rcx, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
	jmp	.LBB0_237
.LBB0_330:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_465
# %bb.331:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_333
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_544
.LBB0_333:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_334:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_544
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_336:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%edx, %edx
	movq	-216(%rbp), %rax        # 8-byte Reload
	subq	-192(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_340
.LBB0_338:                              #   in Loop: Header=BB0_340 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	%r15d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_613
.LBB0_339:                              #   in Loop: Header=BB0_340 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	movq	%r13, %rdx
	addl	$1, %edx
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB0_340:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_343
# %bb.341:                              #   in Loop: Header=BB0_340 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_530
# %bb.342:                              #   in Loop: Header=BB0_340 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_343:                              #   in Loop: Header=BB0_340 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r15d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpl	$-1, %r15d
	je	.LBB0_530
# %bb.344:                              #   in Loop: Header=BB0_340 Depth=2
	movq	%rdx, %r13
	subq	$1, %r12
	jb	.LBB0_352
# %bb.345:                              #   in Loop: Header=BB0_340 Depth=2
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%r15d, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -224(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_352
# %bb.346:                              #   in Loop: Header=BB0_340 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_340 Depth=2
	cltq
	cmpq	%rax, %r12
	jae	.LBB0_338
.LBB0_348:                              #   in Loop: Header=BB0_340 Depth=2
	leaq	-73(%rbp), %rdi
	movl	%r15d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_613
# %bb.349:                              #   in Loop: Header=BB0_340 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	ja	.LBB0_352
# %bb.350:                              #   in Loop: Header=BB0_340 Depth=2
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_339
# %bb.351:                              #   in Loop: Header=BB0_340 Depth=2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	leaq	-73(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_339
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_392
# %bb.353:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	movq	%r13, %rdx
	jl	.LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	movq	%r13, %rdx
	testl	%eax, %eax
	jne	.LBB0_530
.LBB0_355:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r15b, -4(%rax)
.LBB0_356:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_530
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_358:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %r13
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_362
.LBB0_360:                              #   in Loop: Header=BB0_362 Depth=2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_613
.LBB0_361:                              #   in Loop: Header=BB0_362 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	subq	%rbx, -88(%rbp)         # 8-byte Folded Spill
	addl	$1, %r13d
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_362:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_365
# %bb.363:                              #   in Loop: Header=BB0_362 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_523
# %bb.364:                              #   in Loop: Header=BB0_362 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %eax
.LBB0_365:                              #   in Loop: Header=BB0_362 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	je	.LBB0_374
# %bb.366:                              #   in Loop: Header=BB0_362 Depth=2
	cmpl	$-1, %r12d
	je	.LBB0_374
# %bb.367:                              #   in Loop: Header=BB0_362 Depth=2
	movl	%r12d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_375
# %bb.368:                              #   in Loop: Header=BB0_362 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_362 Depth=2
	cltq
	cmpq	%rax, -88(%rbp)         # 8-byte Folded Reload
	jae	.LBB0_360
.LBB0_370:                              #   in Loop: Header=BB0_362 Depth=2
	leaq	-73(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_613
# %bb.371:                              #   in Loop: Header=BB0_362 Depth=2
	movq	%rax, %rbx
	cmpq	-88(%rbp), %rax         # 8-byte Folded Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	ja	.LBB0_375
# %bb.372:                              #   in Loop: Header=BB0_362 Depth=2
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_361
# %bb.373:                              #   in Loop: Header=BB0_362 Depth=2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	leaq	-73(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_361
.LBB0_374:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %r12d
	je	.LBB0_523
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_388
# %bb.376:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_523
.LBB0_378:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r12b, -4(%rax)
.LBB0_379:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_523
.LBB0_380:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_469
# %bb.381:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_470
# %bb.382:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_470
# %bb.383:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_287
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_474
# %bb.385:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_475
# %bb.386:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_475
# %bb.387:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_301
.LBB0_388:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_521
# %bb.389:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_522
# %bb.390:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_522
# %bb.391:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_379
.LBB0_392:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_527
# %bb.393:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_528
# %bb.394:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r15d, -4(%rax)
	movq	%r13, %rdx
	jne	.LBB0_529
# %bb.395:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_356
.LBB0_396:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_398:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %cl
	movq	%r13, %rax
	movq	%r13, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_406
# %bb.400:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r13)
	movq	%r15, %rdi
	leaq	-1648(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rcx, %rbx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	*-176(%rbp)             # 8-byte Folded Reload
	movq	%rbx, %rcx
	testb	$32, %cl
	jne	.LBB0_407
# %bb.401:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$8, %cl
	jne	.LBB0_409
# %bb.402:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$4, %cl
	jne	.LBB0_413
# %bb.403:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %dl
	jne	.LBB0_461
# %bb.404:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %edi         # 4-byte Reload
	ja	.LBB0_535
# %bb.405:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_536
.LBB0_406:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %edi         # 4-byte Reload
	jmp	.LBB0_541
.LBB0_407:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_411
# %bb.408:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_412
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_415
# %bb.410:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_416
.LBB0_411:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_412:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	(%rcx), %rcx
.LBB0_539:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_540
.LBB0_413:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_463
# %bb.414:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_464
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_416:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_540
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_418:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%edx, %edx
	jne	.LBB0_473
	jmp	.LBB0_616
.LBB0_420:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
	jmp	.LBB0_547
.LBB0_422:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_423:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_424:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_425:                              #   in Loop: Header=BB0_2 Depth=1
	testq	%r8, %r8
	je	.LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-257, %eax             # imm = 0xFEFF
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_429
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB0_428:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r8d, %r8d
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	-160(%rbp), %eax        # 1-byte Folded Reload
	addl	$-1, %eax
	cmpl	$1, %eax
	movq	-72(%rbp), %r15         # 8-byte Reload
	jbe	.LBB0_557
# %bb.430:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	%r13b, %eax
	addl	$-1, %eax
	cmpl	$6, %eax
	movq	%r8, -184(%rbp)         # 8-byte Spill
	ja	.LBB0_448
# %bb.431:                              #   in Loop: Header=BB0_2 Depth=1
	cmpb	$3, %r13b
	jl	.LBB0_577
# %bb.432:                              #   in Loop: Header=BB0_2 Depth=1
	je	.LBB0_448
# %bb.433:                              #   in Loop: Header=BB0_2 Depth=1
	leal	-4(%r13), %eax
	movzbl	%al, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	notl	%eax
	addl	%eax, %r12d
	movq	%r12, -88(%rbp)         # 8-byte Spill
	addb	$1, %r13b
	leaq	-1644(%rbp), %rax
	leaq	(%rax,%r9,4), %rbx
	addq	$-8, %rbx
	jmp	.LBB0_436
	.p2align	4, 0x90
.LBB0_434:                              #   in Loop: Header=BB0_436 Depth=2
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	%r12b, -4(%rax)
	addl	$4, 8(%r14)
.LBB0_435:                              #   in Loop: Header=BB0_436 Depth=2
	addb	$-1, %r13b
	addq	$-4, %rbx
	cmpb	$4, %r13b
	jle	.LBB0_447
.LBB0_436:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %r12d
	cmpl	$-1, %r12d
	je	.LBB0_435
# %bb.437:                              #   in Loop: Header=BB0_436 Depth=2
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_440
# %bb.438:                              #   in Loop: Header=BB0_436 Depth=2
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_434
# %bb.439:                              #   in Loop: Header=BB0_436 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %r15
	movq	%r9, %r13
	movq	%r14, %rsi
	callq	__submore
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%r13, %r9
	movq	%r15, %r13
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_435
	jmp	.LBB0_434
	.p2align	4, 0x90
.LBB0_440:                              #   in Loop: Header=BB0_436 Depth=2
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_444
# %bb.441:                              #   in Loop: Header=BB0_436 Depth=2
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_445
# %bb.442:                              #   in Loop: Header=BB0_436 Depth=2
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_445
# %bb.443:                              #   in Loop: Header=BB0_436 Depth=2
	addq	$-4, %rax
	movq	%rax, (%r14)
	addl	$4, 8(%r14)
	jmp	.LBB0_446
.LBB0_444:                              #   in Loop: Header=BB0_436 Depth=2
	movq	(%r14), %rax
.LBB0_445:                              #   in Loop: Header=BB0_436 Depth=2
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_446:                              #   in Loop: Header=BB0_436 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_435
.LBB0_447:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	notq	%rax
	addq	%rax, %r9
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
.LBB0_448:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1648(,%r9,4), %rax
	addq	%rbp, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	testl	$256, %eax              # imm = 0x100
	je	.LBB0_495
# %bb.449:                              #   in Loop: Header=BB0_2 Depth=1
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB0_592
# %bb.450:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	-4(%rdx), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$101, %eax
	jne	.LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	addl	$-1, %r12d
	jmp	.LBB0_482
.LBB0_452:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_481
# %bb.453:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_457
# %bb.454:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_481
.LBB0_456:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movb	%bl, -4(%rax)
	addl	$4, 8(%r14)
	jmp	.LBB0_481
.LBB0_457:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_478
# %bb.458:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_479
# %bb.459:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_479
# %bb.460:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	addl	$4, 8(%r14)
	jmp	.LBB0_480
.LBB0_461:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %edi         # 4-byte Reload
	ja	.LBB0_537
# %bb.462:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_538
.LBB0_463:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_464:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_540
.LBB0_465:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_542
# %bb.466:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_543
# %bb.467:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r12d, -4(%rax)
	jne	.LBB0_543
# %bb.468:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_334
.LBB0_469:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_470:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_471:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdx
	subq	%r13, %rdx
	shrq	$2, %rdx
	testl	%edx, %edx
	je	.LBB0_594
# %bb.472:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rax)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
.LBB0_473:                              # %._crit_edge75
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_534
.LBB0_474:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_475:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_476:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, %r13d
.LBB0_477:                              # %.loopexit27
                                        #   in Loop: Header=BB0_2 Depth=1
	subl	%r15d, %r12d
	jmp	.LBB0_546
.LBB0_478:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_479:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_480:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_481:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	-8(%rax), %ebx
	addq	$-8, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	addl	$-2, %r12d
.LBB0_482:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_495
# %bb.483:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_488
# %bb.484:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	movq	-184(%rbp), %r8         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_494
.LBB0_486:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_487:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_494
.LBB0_488:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_492
# %bb.489:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_493
# %bb.490:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_493
# %bb.491:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_487
.LBB0_492:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_493:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_494:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_495:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	testb	$16, %dl
	jne	.LBB0_499
# %bb.496:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	movl	%edx, %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_500
# %bb.497:                              #   in Loop: Header=BB0_2 Depth=1
	subq	-208(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_503
# %bb.498:                              #   in Loop: Header=BB0_2 Depth=1
	negq	%r8
	movq	-104(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_502
.LBB0_499:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_548
.LBB0_500:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-200(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_503
# %bb.501:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-232(%rbp), %rbx        # 8-byte Reload
	leaq	4(%rbx), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movq	%rcx, %r13
	movl	$10, %ecx
	callq	_wcstol_r
	movq	%rbx, %rdi
	movq	%rax, %r8
	subq	%r13, %r8
.LBB0_502:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-332(%rbp), %rax
	cmpq	%rax, %rdi
	leaq	-336(%rbp), %rax
	cmovaeq	%rax, %rdi
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%r8, %rcx
	xorl	%eax, %eax
	callq	swprintf
.LBB0_503:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	leaq	-1648(%rbp), %rsi
	xorl	%edx, %edx
	callq	_wcstod_r
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testb	$1, %cl
	jne	.LBB0_507
# %bb.504:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$2, %cl
	jne	.LBB0_509
# %bb.505:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_513
# %bb.506:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_514
.LBB0_507:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_511
# %bb.508:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_512
.LBB0_509:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_516
# %bb.510:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_517
.LBB0_511:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_512:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB0_520
.LBB0_513:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_514:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rbx
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_518
# %bb.515:                              #   in Loop: Header=BB0_2 Depth=1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_519
.LBB0_516:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_517:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rax
	movsd	%xmm0, -248(%rbp)
	fldl	-248(%rbp)
	fstpt	(%rax)
	jmp	.LBB0_520
.LBB0_518:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB0_519:                              #   in Loop: Header=BB0_2 Depth=1
	movss	%xmm0, (%rbx)
.LBB0_520:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r13d
	jmp	.LBB0_547
.LBB0_521:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_522:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_523:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_525
# %bb.524:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
.LBB0_526:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %r12
	movl	%eax, %r13d
	jmp	.LBB0_548
.LBB0_527:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_528:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdx
.LBB0_529:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r15d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_530:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_532
# %bb.531:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
.LBB0_533:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
.LBB0_534:                              #   in Loop: Header=BB0_2 Depth=1
	addl	%eax, %edx
	movl	%edx, %r12d
	jmp	.LBB0_548
.LBB0_535:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_536:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_540:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %edi
	movq	-104(%rbp), %r13        # 8-byte Reload
.LBB0_541:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1648(%rbp), %rcx
	subq	%rcx, %r13
	shrq	$2, %r13
	addl	%r13d, %r12d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%edi, %r13d
	jmp	.LBB0_548
.LBB0_537:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_538:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB0_539
.LBB0_542:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rax
.LBB0_543:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r12d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_544:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%r13d, %r13d
	je	.LBB0_613
.LBB0_545:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$16, %eax
	movl	%r13d, %ecx
	addl	-88(%rbp), %ecx         # 4-byte Folded Reload
	cmpl	$1, %eax
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
	movl	%ecx, %r12d
.LBB0_546:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB0_547:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_548:                              #   in Loop: Header=BB0_2 Depth=1
	movl	(%rcx), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_2
	jmp	.LBB0_616
.LBB0_549:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$105, %ebx
	jmp	.LBB0_319
.LBB0_550:
	xorl	%r13d, %r13d
	jmp	.LBB0_616
.LBB0_551:
	testq	%r12, %r12
	je	.LBB0_594
# %bb.552:
	movl	-4(%r13), %ebx
	cmpl	$-1, %ebx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	je	.LBB0_616
# %bb.553:
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_617
# %bb.554:
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_556
# %bb.555:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_616
.LBB0_556:
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
	addl	$4, 8(%r14)
	jmp	.LBB0_616
.LBB0_557:
	leaq	-1648(%rbp), %r15
	cmpq	%r15, %rdi
	jbe	.LBB0_594
# %bb.558:                              # %.preheader
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_562
.LBB0_559:                              #   in Loop: Header=BB0_562 Depth=1
	movq	(%r14), %rax
.LBB0_560:                              #   in Loop: Header=BB0_562 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_561:                              #   in Loop: Header=BB0_562 Depth=1
	cmpq	%r15, %rdi
	jbe	.LBB0_616
.LBB0_562:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rdi), %ebx
	addq	$-4, %rdi
	cmpl	$-1, %ebx
	je	.LBB0_561
# %bb.563:                              #   in Loop: Header=BB0_562 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_568
# %bb.564:                              #   in Loop: Header=BB0_562 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_566
# %bb.565:                              #   in Loop: Header=BB0_562 Depth=1
	movq	%r14, %r12
	movq	%rdi, %r14
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__submore
	movq	%r14, %rdi
	movq	%r12, %r14
	testl	%eax, %eax
	jne	.LBB0_561
.LBB0_566:                              #   in Loop: Header=BB0_562 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_567:                              #   in Loop: Header=BB0_562 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_561
.LBB0_568:                              #   in Loop: Header=BB0_562 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_559
# %bb.569:                              #   in Loop: Header=BB0_562 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_560
# %bb.570:                              #   in Loop: Header=BB0_562 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_560
# %bb.571:                              #   in Loop: Header=BB0_562 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_567
.LBB0_572:
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_608
# %bb.573:
	cmpl	96(%r14), %esi
	jl	.LBB0_576
# %bb.574:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_613
# %bb.575:
	movq	(%r14), %rax
.LBB0_576:
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%r15b, -4(%rax)
	addl	$4, 8(%r14)
	jmp	.LBB0_613
.LBB0_577:
	testq	%r9, %r9
	jle	.LBB0_594
# %bb.578:                              # %.preheader3
	addq	$1, %r9
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_582
.LBB0_579:                              #   in Loop: Header=BB0_582 Depth=1
	movq	(%r14), %rax
.LBB0_580:                              #   in Loop: Header=BB0_582 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_581:                              #   in Loop: Header=BB0_582 Depth=1
	addq	$-1, %r9
	cmpq	$1, %r9
	jle	.LBB0_616
.LBB0_582:                              # =>This Inner Loop Header: Depth=1
	movl	-1656(%rbp,%r9,4), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_581
# %bb.583:                              #   in Loop: Header=BB0_582 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_588
# %bb.584:                              #   in Loop: Header=BB0_582 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_586
# %bb.585:                              #   in Loop: Header=BB0_582 Depth=1
	movq	%r15, %rdi
	movq	%r9, %r12
	movq	%r14, %rsi
	callq	__submore
	movq	%r12, %r9
	testl	%eax, %eax
	jne	.LBB0_581
.LBB0_586:                              #   in Loop: Header=BB0_582 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_587:                              #   in Loop: Header=BB0_582 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_581
.LBB0_588:                              #   in Loop: Header=BB0_582 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_579
# %bb.589:                              #   in Loop: Header=BB0_582 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_580
# %bb.590:                              #   in Loop: Header=BB0_582 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_580
# %bb.591:                              #   in Loop: Header=BB0_582 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_587
.LBB0_592:
	testq	%r9, %r9
	jle	.LBB0_594
# %bb.593:                              # %.preheader1
	addq	$1, %r9
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_598
.LBB0_594:                              # %.loopexit6
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB0_616
.LBB0_595:                              #   in Loop: Header=BB0_598 Depth=1
	movq	(%r14), %rax
.LBB0_596:                              #   in Loop: Header=BB0_598 Depth=1
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_597:                              #   in Loop: Header=BB0_598 Depth=1
	addq	$-1, %r9
	cmpq	$1, %r9
	jle	.LBB0_616
.LBB0_598:                              # =>This Inner Loop Header: Depth=1
	movl	-1656(%rbp,%r9,4), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_597
# %bb.599:                              #   in Loop: Header=BB0_598 Depth=1
	andb	$-33, 16(%r14)
	cmpq	$0, 88(%r14)
	je	.LBB0_604
# %bb.600:                              #   in Loop: Header=BB0_598 Depth=1
	movl	8(%r14), %eax
	cmpl	96(%r14), %eax
	jl	.LBB0_602
# %bb.601:                              #   in Loop: Header=BB0_598 Depth=1
	movq	%r15, %rdi
	movq	%r9, %r12
	movq	%r14, %rsi
	callq	__submore
	movq	%r12, %r9
	testl	%eax, %eax
	jne	.LBB0_597
.LBB0_602:                              #   in Loop: Header=BB0_598 Depth=1
	movq	(%r14), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r14)
	movb	%bl, -4(%rax)
.LBB0_603:                              #   in Loop: Header=BB0_598 Depth=1
	addl	$4, 8(%r14)
	jmp	.LBB0_597
.LBB0_604:                              #   in Loop: Header=BB0_598 Depth=1
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_595
# %bb.605:                              #   in Loop: Header=BB0_598 Depth=1
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_596
# %bb.606:                              #   in Loop: Header=BB0_598 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_596
# %bb.607:                              #   in Loop: Header=BB0_598 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r14)
	jmp	.LBB0_603
.LBB0_608:
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB0_612
# %bb.609:
	cmpq	%rdi, %rax
	jbe	.LBB0_612
# %bb.610:
	cmpl	%r15d, (%rdx)
	jne	.LBB0_612
# %bb.611:
	movq	%rdx, (%r14)
	movl	%ecx, 8(%r14)
	jmp	.LBB0_613
.LBB0_612:
	movl	%esi, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%r15d, 115(%r14)
	movl	$2, 8(%r14)
.LBB0_613:
	movl	-44(%rbp), %r13d        # 4-byte Reload
	testl	%r13d, %r13d
	je	.LBB0_615
# %bb.614:
	movb	16(%r14), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r13d
	jmp	.LBB0_616
.LBB0_615:
	movl	$-1, %r13d
.LBB0_616:
	movl	%r13d, %eax
	addq	$1608, %rsp             # imm = 0x648
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_617:
	movq	24(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB0_621
# %bb.618:
	movq	(%r14), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_622
# %bb.619:
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_622
# %bb.620:
	addq	$-4, %rax
	movq	%rax, (%r14)
	addl	$4, 8(%r14)
	jmp	.LBB0_616
.LBB0_621:
	movq	(%r14), %rax
.LBB0_622:
	movl	8(%r14), %ecx
	movl	%ecx, 112(%r14)
	movq	%rax, 104(%r14)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r14)
	movl	$3, 96(%r14)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r14)
	movl	%ebx, 115(%r14)
	movl	$2, 8(%r14)
	jmp	.LBB0_616
.Lfunc_end0:
	.size	__ssvfwscanf_r, .Lfunc_end0-__ssvfwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_615
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_38
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_32
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_66
	.quad	.LBB0_594
	.quad	.LBB0_68
	.quad	.LBB0_594
	.quad	.LBB0_66
	.quad	.LBB0_66
	.quad	.LBB0_66
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_33
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_70
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_67
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_72
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_66
	.quad	.LBB0_594
	.quad	.LBB0_69
	.quad	.LBB0_76
	.quad	.LBB0_66
	.quad	.LBB0_66
	.quad	.LBB0_66
	.quad	.LBB0_23
	.quad	.LBB0_77
	.quad	.LBB0_31
	.quad	.LBB0_594
	.quad	.LBB0_25
	.quad	.LBB0_594
	.quad	.LBB0_45
	.quad	.LBB0_78
	.quad	.LBB0_79
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_71
	.quad	.LBB0_31
	.quad	.LBB0_81
	.quad	.LBB0_594
	.quad	.LBB0_594
	.quad	.LBB0_67
	.quad	.LBB0_594
	.quad	.LBB0_31
.LJTI0_1:
	.quad	.LBB0_94
	.quad	.LBB0_103
	.quad	.LBB0_113
	.quad	.LBB0_123
	.quad	.LBB0_145
.LJTI0_2:
	.quad	.LBB0_161
	.quad	.LBB0_154
	.quad	.LBB0_161
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_179
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_150
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_163
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_165
	.quad	.LBB0_169
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_171
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_175
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_177
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_163
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_165
	.quad	.LBB0_169
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_182
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_171
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_175
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_154
	.quad	.LBB0_177
.LJTI0_3:
	.quad	.LBB0_236
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_135
	.quad	.LBB0_222
	.quad	.LBB0_135
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_141
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_125
	.quad	.LBB0_137
	.quad	.LBB0_137
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_138
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_138
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
