	.text
	.file	"vfwscanf.c"
	.globl	__ssvfiwscanf_r         # -- Begin function __ssvfiwscanf_r
	.p2align	4, 0x90
	.type	__ssvfiwscanf_r,@function
__ssvfiwscanf_r:                        # @__ssvfiwscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	(%rdx), %r14d
	testl	%r14d, %r14d
	je	.LBB0_404
# %bb.1:
	movq	%rsi, %r15
	movq	%rdx, %rsi
	leaq	8(%r15), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	leaq	116(%r15), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leaq	115(%r15), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movq	%rdx, %rcx
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_23 Depth 5
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_134 Depth 2
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_226 Depth 2
                                        #     Child Loop BB0_287 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_212 Depth 2
                                        #     Child Loop BB0_264 Depth 2
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_187 Depth 2
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movslq	%r13d, %r13
	movq	%rcx, %r12
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_23 Depth 5
	movq	%r13, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_7 Depth=3
	movq	(%r15), %rax
.LBB0_5:                                #   in Loop: Header=BB0_7 Depth=3
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=3
	movl	(%r12), %r14d
	testl	%r14d, %r14d
	je	.LBB0_424
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_9 Depth 4
                                        #         Child Loop BB0_22 Depth 4
                                        #           Child Loop BB0_23 Depth 5
	addq	$4, %r12
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_19
# %bb.8:                                # %.preheader4
                                        #   in Loop: Header=BB0_7 Depth=3
	movq	-88(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=4
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=4
	movl	(%r14), %eax
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=4
	movq	(%r15), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %ebx
	je	.LBB0_6
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=4
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=3
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_35
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=3
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_6
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=3
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=3
	addl	$4, 8(%r15)
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=3
	cmpl	$37, %r14d
	jne	.LBB0_59
# %bb.20:                               # %.preheader
                                        #   in Loop: Header=BB0_7 Depth=3
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_22 Depth=4
	leaq	(,%r13,4), %rax
	addq	%r13, %rax
	leaq	(%r14,%rax,2), %r13
	addq	$-48, %r13
.LBB0_22:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_23 Depth 5
	movq	%r12, %rax
.LBB0_23:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_7 Depth=3
                                        #         Parent Loop BB0_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	(%rax), %r14d
	cmpq	$122, %r14
	ja	.LBB0_424
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=5
	leaq	4(%rax), %r12
	jmpq	*.LJTI0_0(,%r14,8)
.LBB0_25:                               #   in Loop: Header=BB0_23 Depth=5
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_23 Depth=5
	movq	%r12, %rax
	orl	%ecx, %edx
	jmp	.LBB0_23
.LBB0_27:                               #   in Loop: Header=BB0_23 Depth=5
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_23 Depth=5
	movq	%r12, %rax
	jmp	.LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_23 Depth=5
	addq	$8, %rax
	orl	%ecx, %edx
	jmp	.LBB0_23
.LBB0_30:                               #   in Loop: Header=BB0_23 Depth=5
	addq	$8, %rax
.LBB0_31:                               #   in Loop: Header=BB0_23 Depth=5
	addl	$1, %ecx
	orl	%ecx, %edx
	jmp	.LBB0_23
.LBB0_32:                               #   in Loop: Header=BB0_22 Depth=4
	orl	$1, %edx
	jmp	.LBB0_22
.LBB0_33:                               #   in Loop: Header=BB0_22 Depth=4
	orl	$16, %edx
	jmp	.LBB0_22
.LBB0_34:                               #   in Loop: Header=BB0_22 Depth=4
	orl	$2, %edx
	jmp	.LBB0_22
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=3
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=3
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_5
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=3
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_5
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=3
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_18
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=3
	testb	$16, %dl
	jne	.LBB0_6
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=3
	testb	$8, %dl
	movq	-112(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_45
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=3
	testb	$4, %dl
	movl	%edx, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jne	.LBB0_47
# %bb.42:                               #   in Loop: Header=BB0_7 Depth=3
	movslq	(%rdx), %rax
	testb	$1, %cl
	jne	.LBB0_51
# %bb.43:                               #   in Loop: Header=BB0_7 Depth=3
	cmpl	$40, %eax
	ja	.LBB0_55
# %bb.44:                               #   in Loop: Header=BB0_7 Depth=3
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_56
.LBB0_45:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_49
# %bb.46:                               #   in Loop: Header=BB0_7 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_50
.LBB0_47:                               #   in Loop: Header=BB0_7 Depth=3
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movl	-48(%rbp), %esi         # 4-byte Reload
	ja	.LBB0_53
# %bb.48:                               #   in Loop: Header=BB0_7 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_54
.LBB0_49:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_50:                               #   in Loop: Header=BB0_7 Depth=3
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB0_6
.LBB0_51:                               #   in Loop: Header=BB0_7 Depth=3
	cmpl	$40, %eax
	ja	.LBB0_57
# %bb.52:                               #   in Loop: Header=BB0_7 Depth=3
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_58
.LBB0_53:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_54:                               #   in Loop: Header=BB0_7 Depth=3
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_6
.LBB0_55:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_56:                               #   in Loop: Header=BB0_7 Depth=3
	movq	(%rcx), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_6
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=3
	movq	(%rcx), %rax
	movq	%r13, (%rax)
	jmp	.LBB0_6
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_62
# %bb.60:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_421
# %bb.61:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r15), %rdx
	movl	(%rdx), %ebx
	leaq	4(%rdx), %rax
	movq	%rax, (%r15)
	leal	-4(%rcx), %esi
	movl	%esi, 8(%r15)
	cmpl	$-1, %ebx
	je	.LBB0_421
# %bb.63:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	%ebx, %r14d
	jne	.LBB0_411
# %bb.64:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %r13        # 8-byte Reload
	addq	$1, %r13
	movl	(%r12), %r14d
	testl	%r14d, %r14d
	jne	.LBB0_3
	jmp	.LBB0_424
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %edx              # imm = 0x200
	jmp	.LBB0_78
.LBB0_66:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %edx
	xorl	%r14d, %r14d
	jmp	.LBB0_82
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
.LBB0_69:                               # %.loopexit2
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %r14b
	jmp	.LBB0_82
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %edi
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r12, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_71:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	addq	$4, %rcx
	cmpl	$93, %eax
	je	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_71 Depth=2
	testl	%eax, %eax
	jne	.LBB0_71
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edi, %edx
	orl	$64, %edx
	leaq	-4(%rcx), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movb	$1, %r14b
	movq	%r12, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_83
.LBB0_74:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB0_80
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_81
.LBB0_76:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$8, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_81
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %edx              # imm = 0x220
.LBB0_78:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_81
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$10, -52(%rbp)          # 4-byte Folded Spill
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r14b
.LBB0_82:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rcx
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$64, %dl
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_90
	.p2align	4, 0x90
.LBB0_84:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_87
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_421
# %bb.86:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_87:                               #   in Loop: Header=BB0_84 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %ebx
	je	.LBB0_421
# %bb.88:                               #   in Loop: Header=BB0_84 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_95
# %bb.89:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movzbl	%r14b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	testq	%r13, %r13
	movl	$1, %eax
	cmoveq	%rax, %r13
	testb	$1, %dl
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_100
# %bb.92:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	jne	.LBB0_184
# %bb.93:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_182
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_183
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_103
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_99
# %bb.97:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	je	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movzbl	%r14b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
	addl	$4, 8(%r15)
	movzbl	%r14b, %eax
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_100:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	jne	.LBB0_199
# %bb.101:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_197
# %bb.102:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_198
.LBB0_103:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	movl	-80(%rbp), %edx         # 4-byte Reload
	je	.LBB0_107
# %bb.104:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	movq	-96(%rbp), %r12         # 8-byte Reload
	jbe	.LBB0_108
# %bb.105:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_108
# %bb.106:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	addl	$4, 8(%r15)
	movzbl	%r14b, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	movq	-96(%rbp), %r12         # 8-byte Reload
.LBB0_108:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzbl	%r14b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_109:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r13
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r13, %r12
	testb	$1, %dl
	movq	-88(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_152
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %eax
	andl	$16, %eax
	je	.LBB0_152
# %bb.111:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-176(%rbp), %r13        # 8-byte Reload
	subq	-168(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_112:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB0_115
# %bb.113:                              #   in Loop: Header=BB0_112 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %rbx
	movq	%r15, %rsi
	callq	__ssrefill_r
	movq	%rbx, %rsi
	testl	%eax, %eax
	jne	.LBB0_323
# %bb.114:                              #   in Loop: Header=BB0_112 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_115:                              #   in Loop: Header=BB0_112 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_323
# %bb.116:                              #   in Loop: Header=BB0_112 Depth=2
	cmpq	%rsi, %r12
	je	.LBB0_157
# %bb.117:                              #   in Loop: Header=BB0_112 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, %rbx
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	wmemchr
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -184(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_157
# %bb.118:                              #   in Loop: Header=BB0_112 Depth=2
	addq	$1, %rsi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_112
.LBB0_119:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	$1, %r13
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r13, %r12
	testb	$1, %dl
	movq	-88(%rbp), %r14         # 8-byte Reload
	je	.LBB0_170
# %bb.120:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %eax
	andl	$16, %eax
	movq	-112(%rbp), %r13        # 8-byte Reload
	je	.LBB0_171
# %bb.121:                              # %.preheader20
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	%r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_122:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_125
# %bb.123:                              #   in Loop: Header=BB0_122 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_179
# %bb.124:                              #   in Loop: Header=BB0_122 Depth=2
	movl	(%r14), %eax
.LBB0_125:                              #   in Loop: Header=BB0_122 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_179
# %bb.126:                              #   in Loop: Header=BB0_122 Depth=2
	cmpq	%rbx, %r12
	je	.LBB0_162
# %bb.127:                              #   in Loop: Header=BB0_122 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_162
# %bb.128:                              #   in Loop: Header=BB0_122 Depth=2
	addq	$-1, %rbx
	movq	-88(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_122
.LBB0_129:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r13), %rax
	orl	$1408, %edx             # imm = 0x580
	cmpq	$38, %rax
	movl	$39, %eax
	cmovaq	%rax, %r13
	testq	%r13, %r13
	movq	-88(%rbp), %rax         # 8-byte Reload
	je	.LBB0_156
# %bb.130:                              #   in Loop: Header=BB0_2 Depth=1
	movl	(%rax), %eax
	leaq	-352(%rbp), %r12
	xorl	%r14d, %r14d
	jmp	.LBB0_134
	.p2align	4, 0x90
.LBB0_131:                              #   in Loop: Header=BB0_134 Depth=2
	movslq	-52(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB0_132:                              #   in Loop: Header=BB0_134 Depth=2
	andl	$-897, %edx             # imm = 0xFC7F
.LBB0_133:                              #   in Loop: Header=BB0_134 Depth=2
	addq	$1, %r14
	movl	%ebx, (%r12)
	addq	$4, %r12
	cmpq	%r14, %r13
	je	.LBB0_180
.LBB0_134:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r8d
	testl	%eax, %eax
	jg	.LBB0_137
# %bb.135:                              #   in Loop: Header=BB0_134 Depth=2
	movl	%edx, %ebx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_252
# %bb.136:                              #   in Loop: Header=BB0_134 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r8d
	movl	%ebx, %edx
.LBB0_137:                              #   in Loop: Header=BB0_134 Depth=2
	movq	(%r15), %rsi
	movl	(%rsi), %ebx
	leaq	4(%rsi), %rcx
	movq	%rcx, (%r15)
	leal	-4(%r8), %eax
	movl	%eax, 8(%r15)
	leal	1(%rbx), %edi
	cmpl	$121, %edi
	ja	.LBB0_166
# %bb.138:                              #   in Loop: Header=BB0_134 Depth=2
	jmpq	*.LJTI0_2(,%rdi,8)
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=2
	cmpl	$11, -52(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_132
	jmp	.LBB0_166
.LBB0_141:                              #   in Loop: Header=BB0_134 Depth=2
	testb	%dl, %dl
	jns	.LBB0_166
# %bb.142:                              #   in Loop: Header=BB0_134 Depth=2
	andl	$-65665, %edx           # imm = 0xFFFEFF7F
	orl	$65536, %edx            # imm = 0x10000
	jmp	.LBB0_133
.LBB0_143:                              #   in Loop: Header=BB0_134 Depth=2
	movl	%edx, %r9d
	movslq	-52(%rbp), %rdi         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rdi,%rdi), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	addq	$-1, %rdi
	movl	%r9d, %edx
	cmpq	$8, %rdi
	jae	.LBB0_132
	jmp	.LBB0_166
.LBB0_145:                              #   in Loop: Header=BB0_134 Depth=2
	testl	$512, %edx              # imm = 0x200
	je	.LBB0_166
# %bb.146:                              #   in Loop: Header=BB0_134 Depth=2
	movl	%edx, %edi
	shrl	$16, %edi
	andl	$1, %edi
	movl	%edx, %r9d
	leaq	-348(%rbp), %rdx
	leaq	(%rdx,%rdi,4), %rdi
	movl	%r9d, %edx
	cmpq	%rdi, %r12
	jne	.LBB0_166
# %bb.147:                              #   in Loop: Header=BB0_134 Depth=2
	andl	$-513, %edx             # imm = 0xFDFF
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_133
.LBB0_148:                              #   in Loop: Header=BB0_134 Depth=2
	movl	%edx, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-52(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%edx, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_150
# %bb.149:                              #   in Loop: Header=BB0_134 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_134 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB0_151:                              #   in Loop: Header=BB0_134 Depth=2
	movl	%ecx, %edx
	jmp	.LBB0_133
.LBB0_152:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %dl
	jne	.LBB0_175
# %bb.153:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jne	.LBB0_261
# %bb.154:                              #   in Loop: Header=BB0_2 Depth=1
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_259
# %bb.155:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_260
.LBB0_156:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	leaq	-352(%rbp), %r12
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_330
.LBB0_157:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_240
# %bb.158:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_160
# %bb.159:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %rbx
	movq	%r15, %rsi
	callq	__submore
	movq	%rbx, %rsi
	testl	%eax, %eax
	jne	.LBB0_323
.LBB0_160:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_161:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_323
.LBB0_162:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	movl	%r13d, %r13d
	subq	%rbx, %r13
	cmpq	$0, 88(%r15)
	movq	-96(%rbp), %r12         # 8-byte Reload
	je	.LBB0_244
# %bb.163:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_238
# %bb.164:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_165
.LBB0_238:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_166:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_248
# %bb.167:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	96(%r15), %eax
	movq	-112(%rbp), %r13        # 8-byte Reload
	jl	.LBB0_328
# %bb.168:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	je	.LBB0_327
# %bb.169:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_330
.LBB0_170:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %dl
	jne	.LBB0_177
# %bb.172:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jne	.LBB0_284
# %bb.173:                              #   in Loop: Header=BB0_2 Depth=1
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_282
# %bb.174:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_283
.LBB0_175:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_210
# %bb.176:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_211
.LBB0_177:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_224
# %bb.178:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_225
.LBB0_179:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subl	%ebx, %r13d
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_180:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %r14d
.LBB0_181:                              # %..loopexit22_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_329
.LBB0_182:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_183:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_184:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%esi, %esi
	jmp	.LBB0_187
	.p2align	4, 0x90
.LBB0_185:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	movq	%r12, %rsi
	je	.LBB0_421
.LBB0_186:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	addl	$1, %esi
	subq	%rbx, %r13
	je	.LBB0_398
.LBB0_187:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	movq	%rsi, %r12
	jg	.LBB0_190
# %bb.188:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	movq	%r12, %rsi
	testl	%eax, %eax
	jne	.LBB0_397
# %bb.189:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_190:                              #   in Loop: Header=BB0_187 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_397
# %bb.191:                              #   in Loop: Header=BB0_187 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_187 Depth=2
	cltq
	cmpq	%rax, %r13
	jae	.LBB0_185
.LBB0_193:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movl	%r14d, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB0_421
# %bb.194:                              #   in Loop: Header=BB0_187 Depth=2
	movq	%rax, %rbx
	movq	%r12, %rsi
	cmpq	%r13, %rax
	ja	.LBB0_254
# %bb.195:                              #   in Loop: Header=BB0_187 Depth=2
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_186
# %bb.196:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r12, %rsi
	jmp	.LBB0_186
.LBB0_197:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_198:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %r12
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%esi, %esi
	jmp	.LBB0_201
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_201 Depth=2
	addq	$1, %rsi
	cmpq	%rsi, %r13
	je	.LBB0_209
.LBB0_201:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB0_204
# %bb.202:                              #   in Loop: Header=BB0_201 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %r14
	movq	%r15, %rsi
	callq	__ssrefill_r
	movq	%r14, %rsi
	testl	%eax, %eax
	jne	.LBB0_207
# %bb.203:                              #   in Loop: Header=BB0_201 Depth=2
	movl	(%rbx), %eax
.LBB0_204:                              #   in Loop: Header=BB0_201 Depth=2
	movq	(%r15), %rdx
	movl	(%rdx), %ecx
	addq	$4, %rdx
	movq	%rdx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %ecx
	je	.LBB0_207
# %bb.205:                              #   in Loop: Header=BB0_201 Depth=2
	movl	-80(%rbp), %eax         # 4-byte Reload
	testb	$16, %al
	jne	.LBB0_200
# %bb.206:                              #   in Loop: Header=BB0_201 Depth=2
	movl	%ecx, (%r12)
	addq	$4, %r12
	jmp	.LBB0_200
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%esi, %esi
	je	.LBB0_421
# %bb.208:                              # %._crit_edge55
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
.LBB0_209:                              #   in Loop: Header=BB0_2 Depth=1
	andl	$16, %eax
	cmpl	$1, %eax
	adcl	$0, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_374
.LBB0_210:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_211:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	-176(%rbp), %r13        # 8-byte Reload
	subq	-168(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_212:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB0_215
# %bb.213:                              #   in Loop: Header=BB0_212 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_372
# %bb.214:                              #   in Loop: Header=BB0_212 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_215:                              #   in Loop: Header=BB0_212 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_372
# %bb.216:                              #   in Loop: Header=BB0_212 Depth=2
	subq	$1, %r12
	jb	.LBB0_219
# %bb.217:                              #   in Loop: Header=BB0_212 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -184(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_212 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r14d, (%rax)
	addq	$4, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_212
.LBB0_219:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_305
# %bb.220:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_372
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_372
.LBB0_224:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_225:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	negq	%r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_226:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_229
# %bb.227:                              #   in Loop: Header=BB0_226 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_377
# %bb.228:                              #   in Loop: Header=BB0_226 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_229:                              #   in Loop: Header=BB0_226 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_377
# %bb.230:                              #   in Loop: Header=BB0_226 Depth=2
	cmpq	%rbx, %r12
	je	.LBB0_233
# %bb.231:                              #   in Loop: Header=BB0_226 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_226 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r14d, (%rax)
	addq	$4, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$-1, %rbx
	movq	-88(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_226
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_309
# %bb.234:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_377
.LBB0_236:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_377
.LBB0_240:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_321
# %bb.241:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_322
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_322
# %bb.243:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_161
.LBB0_244:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_325
# %bb.245:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_326
# %bb.246:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_326
# %bb.247:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_239
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	movq	-112(%rbp), %r13        # 8-byte Reload
	je	.LBB0_253
# %bb.249:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdi, %rcx
	jbe	.LBB0_253
# %bb.250:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, (%rsi)
	jne	.LBB0_253
# %bb.251:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, (%r15)
	movl	%r8d, 8(%r15)
	jmp	.LBB0_329
.LBB0_252:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ebx, %edx
	jmp	.LBB0_330
.LBB0_253:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, 112(%r15)
	movq	%rcx, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
	jmp	.LBB0_329
.LBB0_254:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_366
# %bb.255:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	movq	%r12, %rsi
	testl	%eax, %eax
	jne	.LBB0_397
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_258:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_397
.LBB0_259:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_260:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%esi, %esi
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	-168(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	-80(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_264
.LBB0_262:                              #   in Loop: Header=BB0_264 Depth=2
	movq	%r13, %rsi
.LBB0_263:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	movl	-80(%rbp), %edx         # 4-byte Reload
	testb	$16, %dl
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	addl	$1, %esi
	movq	-88(%rbp), %rbx         # 8-byte Reload
.LBB0_264:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	movq	%rsi, %r13
	jg	.LBB0_267
# %bb.265:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	movq	%r13, %rsi
	movl	-80(%rbp), %edx         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB0_386
# %bb.266:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_267:                              #   in Loop: Header=BB0_264 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	cmpl	$-1, %r14d
	je	.LBB0_386
# %bb.268:                              #   in Loop: Header=BB0_264 Depth=2
	subq	$1, %r12
	jb	.LBB0_277
# %bb.269:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -184(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_277
# %bb.270:                              #   in Loop: Header=BB0_264 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_273
# %bb.271:                              #   in Loop: Header=BB0_264 Depth=2
	cltq
	cmpq	%rax, %r12
	jb	.LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	movq	%r13, %rsi
	jne	.LBB0_263
	jmp	.LBB0_421
.LBB0_273:                              #   in Loop: Header=BB0_264 Depth=2
	leaq	-41(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_421
# %bb.274:                              #   in Loop: Header=BB0_264 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	ja	.LBB0_277
# %bb.275:                              #   in Loop: Header=BB0_264 Depth=2
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_262
# %bb.276:                              #   in Loop: Header=BB0_264 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_262
.LBB0_277:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_317
# %bb.278:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%r13, %rsi
	jl	.LBB0_280
# %bb.279:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	movq	%r13, %rsi
	movl	-80(%rbp), %edx         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB0_386
.LBB0_280:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_386
.LBB0_282:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_283:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_284:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_287
.LBB0_285:                              #   in Loop: Header=BB0_287 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_421
.LBB0_286:                              #   in Loop: Header=BB0_287 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	addl	$1, %r13d
	movq	-88(%rbp), %r14         # 8-byte Reload
.LBB0_287:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_290
# %bb.288:                              #   in Loop: Header=BB0_287 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_380
# %bb.289:                              #   in Loop: Header=BB0_287 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_290:                              #   in Loop: Header=BB0_287 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	testq	%r12, %r12
	je	.LBB0_299
# %bb.291:                              #   in Loop: Header=BB0_287 Depth=2
	cmpl	$-1, %r14d
	je	.LBB0_299
# %bb.292:                              #   in Loop: Header=BB0_287 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_300
# %bb.293:                              #   in Loop: Header=BB0_287 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_287 Depth=2
	cltq
	cmpq	%rax, %r12
	jae	.LBB0_285
.LBB0_295:                              #   in Loop: Header=BB0_287 Depth=2
	leaq	-41(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_421
# %bb.296:                              #   in Loop: Header=BB0_287 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	ja	.LBB0_300
# %bb.297:                              #   in Loop: Header=BB0_287 Depth=2
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_286
# %bb.298:                              #   in Loop: Header=BB0_287 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_286
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %r14d
	je	.LBB0_380
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_313
# %bb.301:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_303
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_380
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_380
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_370
# %bb.306:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_371
# %bb.307:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_371
# %bb.308:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_223
.LBB0_309:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_375
# %bb.310:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_376
# %bb.311:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_376
# %bb.312:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_237
.LBB0_313:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_378
# %bb.314:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_379
# %bb.315:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_379
# %bb.316:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_304
.LBB0_317:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_383
# %bb.318:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_384
# %bb.319:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%r13, %rsi
	jne	.LBB0_385
# %bb.320:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_281
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_322:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%esi, %esi
	jne	.LBB0_399
	jmp	.LBB0_424
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_326:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rcx
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rcx), %rax
	movq	%rax, (%r15)
	movb	%bl, -4(%rcx)
	addl	$4, 8(%r15)
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_330:                              #   in Loop: Header=BB0_2 Depth=1
	testl	$256, %edx              # imm = 0x100
	jne	.LBB0_405
# %bb.331:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%r12), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_345
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %r12
	cmpl	$-1, %ebx
	je	.LBB0_345
# %bb.333:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_338
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movl	%edx, %r14d
	callq	__submore
	movl	%r14d, %edx
	testl	%eax, %eax
	jne	.LBB0_344
.LBB0_336:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$4, 8(%r15)
	jmp	.LBB0_344
.LBB0_338:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_342
# %bb.339:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_343
# %bb.340:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_343
# %bb.341:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_337
.LBB0_342:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_345:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	jne	.LBB0_394
# %bb.346:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %r14
	movl	$0, (%r12)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	leaq	-352(%rbp), %rsi
	movl	%edx, %ebx
	xorl	%edx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	*-160(%rbp)             # 8-byte Folded Reload
	movl	%ebx, %edx
	testb	$32, %dl
	jne	.LBB0_352
# %bb.347:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$8, %dl
	jne	.LBB0_354
# %bb.348:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$4, %dl
	jne	.LBB0_358
# %bb.349:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %dl
	jne	.LBB0_362
# %bb.350:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_388
# %bb.351:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_389
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_356
# %bb.353:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_357
.LBB0_354:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_360
# %bb.355:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_361
.LBB0_356:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
.LBB0_392:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_393
.LBB0_358:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_364
# %bb.359:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_365
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_361:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_393
.LBB0_362:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_390
# %bb.363:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_391
.LBB0_364:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_393
.LBB0_366:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_395
# %bb.367:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_396
# %bb.368:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_396
# %bb.369:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_258
.LBB0_370:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_371:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_372:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	subq	-80(%rbp), %rsi         # 8-byte Folded Reload
	shrq	$2, %rsi
	testl	%esi, %esi
	je	.LBB0_424
# %bb.373:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r12)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
.LBB0_374:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_401
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_376:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_377:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movl	$0, (%r12)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	subl	%ebx, %r13d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_378:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_379:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_380:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	je	.LBB0_382
.LBB0_165:                              # %._crit_edge38
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_382:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_403
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%r13, %rsi
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_386:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dl
	movq	-112(%rbp), %r13        # 8-byte Reload
	jne	.LBB0_400
# %bb.387:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_400
.LBB0_388:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movq	%r14, %rcx
.LBB0_394:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rsi
	leaq	-352(%rbp), %rax
	subq	%rax, %rsi
	shrq	$2, %rsi
	jmp	.LBB0_402
.LBB0_390:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB0_392
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_396:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%esi, %esi
	je	.LBB0_421
.LBB0_398:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	andl	$16, %eax
	cmpl	$1, %eax
	adcl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB0_400:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
.LBB0_401:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_402:                              #   in Loop: Header=BB0_2 Depth=1
	addl	%esi, %r13d
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jne	.LBB0_2
	jmp	.LBB0_424
.LBB0_404:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_424
.LBB0_405:
	testq	%r14, %r14
	je	.LBB0_424
# %bb.406:
	movl	-4(%r12), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_424
# %bb.407:
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_425
# %bb.408:
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_410
# %bb.409:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_424
.LBB0_410:
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
	addl	$4, 8(%r15)
	jmp	.LBB0_424
.LBB0_411:
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_416
# %bb.412:
	cmpl	96(%r15), %esi
	jl	.LBB0_415
# %bb.413:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_421
# %bb.414:
	movq	(%r15), %rax
.LBB0_415:
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
	addl	$4, 8(%r15)
	jmp	.LBB0_421
.LBB0_416:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB0_420
# %bb.417:
	cmpq	%rdi, %rax
	jbe	.LBB0_420
# %bb.418:
	cmpl	%ebx, (%rdx)
	jne	.LBB0_420
# %bb.419:
	movq	%rdx, (%r15)
	movl	%ecx, 8(%r15)
	jmp	.LBB0_421
.LBB0_420:
	movl	%esi, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
.LBB0_421:
	movl	-48(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	je	.LBB0_423
# %bb.422:
	movb	16(%r15), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB0_424
.LBB0_423:
	movl	$-1, -48(%rbp)          # 4-byte Folded Spill
.LBB0_424:
	movl	-48(%rbp), %eax         # 4-byte Reload
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_425:
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_429
# %bb.426:
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_430
# %bb.427:
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_430
# %bb.428:
	addq	$-4, %rax
	movq	%rax, (%r15)
	addl	$4, 8(%r15)
	jmp	.LBB0_424
.LBB0_429:
	movq	(%r15), %rax
.LBB0_430:
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, 8(%r15)
	jmp	.LBB0_424
.Lfunc_end0:
	.size	__ssvfiwscanf_r, .Lfunc_end0-__ssvfiwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_423
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_59
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_33
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_66
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_34
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_68
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_65
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_70
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_67
	.quad	.LBB0_74
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_25
	.quad	.LBB0_75
	.quad	.LBB0_32
	.quad	.LBB0_424
	.quad	.LBB0_27
	.quad	.LBB0_424
	.quad	.LBB0_39
	.quad	.LBB0_76
	.quad	.LBB0_77
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_69
	.quad	.LBB0_32
	.quad	.LBB0_79
	.quad	.LBB0_424
	.quad	.LBB0_424
	.quad	.LBB0_65
	.quad	.LBB0_424
	.quad	.LBB0_32
.LJTI0_1:
	.quad	.LBB0_91
	.quad	.LBB0_109
	.quad	.LBB0_119
	.quad	.LBB0_129
.LJTI0_2:
	.quad	.LBB0_181
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_141
	.quad	.LBB0_166
	.quad	.LBB0_141
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_148
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_143
	.quad	.LBB0_143
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_145
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_139
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_166
	.quad	.LBB0_145
                                        # -- End function
	.type	__ssvfiwscanf_r.basefix,@object # @__ssvfiwscanf_r.basefix
	.p2align	4
__ssvfiwscanf_r.basefix:
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
	.size	__ssvfiwscanf_r.basefix, 34

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
