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
	subq	$328, %rsp              # imm = 0x148
	movl	(%rdx), %r14d
	testl	%r14d, %r14d
	je	.LBB0_423
# %bb.1:
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	%rdx, %rsi
	leaq	8(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	leaq	116(%r15), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leaq	115(%r15), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rcx
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_137 Depth 2
                                        #     Child Loop BB0_125 Depth 2
                                        #     Child Loop BB0_223 Depth 2
                                        #     Child Loop BB0_307 Depth 2
                                        #     Child Loop BB0_115 Depth 2
                                        #     Child Loop BB0_209 Depth 2
                                        #     Child Loop BB0_285 Depth 2
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_187 Depth 2
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movslq	%ebx, %rbx
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %r12
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #         Child Loop BB0_19 Depth 4
	addq	$4, %r12
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_15
# %bb.4:                                # %.preheader4
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_39
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=3
	movl	(%r14), %eax
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=3
	movq	(%r15), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_40
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=3
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=2
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_32
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_39
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$37, %r14d
	jne	.LBB0_42
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=3
	leaq	(,%r13,4), %rax
	addq	%r13, %rax
	leaq	(%r14,%rax,2), %r13
	addq	$-48, %r13
.LBB0_18:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_19 Depth 4
	movq	%r12, %rax
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %r14d
	cmpq	$122, %r14
	ja	.LBB0_432
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=4
	leaq	4(%rax), %r12
	jmpq	*.LJTI0_0(,%r14,8)
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=4
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_19 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_28
.LBB0_23:                               #   in Loop: Header=BB0_19 Depth=4
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_27
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=4
	addq	$8, %rax
	jmp	.LBB0_28
.LBB0_26:                               #   in Loop: Header=BB0_19 Depth=4
	addq	$8, %rax
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=4
	addl	$1, %ecx
.LBB0_28:                               #   in Loop: Header=BB0_19 Depth=4
	orl	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB0_19
.LBB0_29:                               #   in Loop: Header=BB0_18 Depth=3
	orl	$1, %ecx
	jmp	.LBB0_18
.LBB0_30:                               #   in Loop: Header=BB0_18 Depth=3
	orl	$16, %ecx
	jmp	.LBB0_18
.LBB0_31:                               #   in Loop: Header=BB0_18 Depth=3
	orl	$2, %ecx
	jmp	.LBB0_18
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=2
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_36
# %bb.33:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_14
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r15), %rax
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=2
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, %eax
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=2
	movl	%eax, (%r14)
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=2
	movl	(%r12), %r14d
	testl	%r14d, %r14d
	jne	.LBB0_3
	jmp	.LBB0_432
.LBB0_41:                               # %.loopexit1
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_45
# %bb.43:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_444
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r15), %rdx
	movl	(%rdx), %ebx
	leaq	4(%rdx), %rcx
	movq	%rcx, (%r15)
	leal	-4(%rax), %esi
	movl	%esi, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_445
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	%ebx, %r14d
	jne	.LBB0_433
# %bb.47:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$1, -96(%rbp)           # 8-byte Folded Spill
	movl	(%r12), %r14d
	testl	%r14d, %r14d
	movq	-72(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_3
	jmp	.LBB0_432
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$16, %cl
	jne	.LBB0_54
# %bb.49:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$8, %cl
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	jne	.LBB0_55
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=2
	testb	$4, %cl
	jne	.LBB0_57
# %bb.51:                               #   in Loop: Header=BB0_3 Depth=2
	movslq	(%rax), %rax
	testb	$1, %cl
	jne	.LBB0_61
# %bb.52:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_65
# %bb.53:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_66
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_40
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=2
	movslq	(%rax), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_59
# %bb.56:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rdx
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_60
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=2
	movslq	(%rax), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_63
# %bb.58:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rdx
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_64
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_60:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB0_40
.LBB0_61:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_67
# %bb.62:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_68
.LBB0_63:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_40
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_40
.LBB0_67:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB0_40
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %ecx              # imm = 0x200
	jmp	.LBB0_82
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %ecx
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB0_86
.LBB0_72:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %ecx
.LBB0_73:                               # %.loopexit2
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %r14b
	jmp	.LBB0_86
.LBB0_74:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %edi
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r12, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_75:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	addq	$4, %rcx
	cmpl	$93, %eax
	je	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=2
	testl	%eax, %eax
	jne	.LBB0_75
.LBB0_77:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edi, %edx
	orl	$64, %edx
	leaq	-4(%rcx), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movb	$1, %r14b
	movq	%r12, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_87
.LBB0_78:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB0_84
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_85
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$8, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_85
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %ecx              # imm = 0x220
.LBB0_82:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$16, -76(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_85
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB0_84:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$10, -76(%rbp)          # 4-byte Folded Spill
.LBB0_85:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r14b
.LBB0_86:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %edx
	movq	%r12, %rcx
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, -64(%rbp)         # 4-byte Spill
	testb	$64, %dl
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jne	.LBB0_88
	.p2align	4, 0x90
.LBB0_89:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_92
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_444
# %bb.91:                               #   in Loop: Header=BB0_89 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_92:                               #   in Loop: Header=BB0_89 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_445
# %bb.93:                               #   in Loop: Header=BB0_89 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_89 Depth=2
	addl	$1, %r12d
	jmp	.LBB0_89
	.p2align	4, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r14b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_100
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_107
.LBB0_98:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_106
.LBB0_100:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_104
# %bb.101:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_105
# %bb.102:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_105
# %bb.103:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_99
.LBB0_104:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_105:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, %eax
.LBB0_106:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movzbl	%r14b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_108:                              #   in Loop: Header=BB0_2 Depth=1
	testq	%r13, %r13
	movl	$1, %eax
	cmoveq	%rax, %r13
	movl	-64(%rbp), %eax         # 4-byte Reload
	testb	$1, %al
	jne	.LBB0_155
# %bb.109:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %al
	jne	.LBB0_184
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_182
# %bb.111:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_183
.LBB0_112:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -96(%rbp)         # 8-byte Spill
	cmpq	$1, %r13
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r13, %r12
	movl	-64(%rbp), %ecx         # 4-byte Reload
	testb	$1, %cl
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_158
# %bb.113:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %eax
	andl	$16, %eax
	je	.LBB0_158
# %bb.114:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-184(%rbp), %r13        # 8-byte Reload
	subq	-176(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_115:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB0_118
# %bb.116:                              #   in Loop: Header=BB0_115 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_367
# %bb.117:                              #   in Loop: Header=BB0_115 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_118:                              #   in Loop: Header=BB0_115 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_368
# %bb.119:                              #   in Loop: Header=BB0_115 Depth=2
	cmpq	%r13, %r12
	je	.LBB0_167
# %bb.120:                              #   in Loop: Header=BB0_115 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -192(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_167
# %bb.121:                              #   in Loop: Header=BB0_115 Depth=2
	addq	$1, %r13
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_115
.LBB0_122:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, -96(%rbp)         # 8-byte Spill
	cmpq	$1, %r13
	movl	$0, %ebx
	sbbq	%rbx, %rbx
	orq	%r13, %rbx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	testb	$1, %cl
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB0_162
# %bb.123:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %eax
	andl	$16, %eax
	je	.LBB0_162
# %bb.124:                              # %.preheader26
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	%rbx
	xorl	%r12d, %r12d
	movq	-72(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_125:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_128
# %bb.126:                              #   in Loop: Header=BB0_125 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_325
# %bb.127:                              #   in Loop: Header=BB0_125 Depth=2
	movl	(%r14), %eax
.LBB0_128:                              #   in Loop: Header=BB0_125 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_326
# %bb.129:                              #   in Loop: Header=BB0_125 Depth=2
	cmpq	%r12, %rbx
	je	.LBB0_172
# %bb.130:                              #   in Loop: Header=BB0_125 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_172
# %bb.131:                              #   in Loop: Header=BB0_125 Depth=2
	addq	$-1, %r12
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_125
.LBB0_132:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r13), %rax
	orl	$1408, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0x580
	cmpq	$38, %rax
	movl	$39, %eax
	cmovaq	%rax, %r13
	testq	%r13, %r13
	movq	-56(%rbp), %rax         # 8-byte Reload
	je	.LBB0_166
# %bb.133:                              #   in Loop: Header=BB0_2 Depth=1
	movl	(%rax), %eax
	leaq	-368(%rbp), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB0_137
	.p2align	4, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_137 Depth=2
	movslq	-76(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB0_135:                              #   in Loop: Header=BB0_137 Depth=2
	andl	$-897, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0xFC7F
.LBB0_136:                              #   in Loop: Header=BB0_137 Depth=2
	addq	$1, %r14
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	%ebx, (%rcx)
	movq	%rcx, %rbx
	addq	$4, %rbx
	cmpq	%r14, %r13
	je	.LBB0_181
.LBB0_137:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r8d
	testl	%eax, %eax
	jg	.LBB0_140
# %bb.138:                              #   in Loop: Header=BB0_137 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_248
# %bb.139:                              #   in Loop: Header=BB0_137 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r8d
.LBB0_140:                              #   in Loop: Header=BB0_137 Depth=2
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	(%r15), %rsi
	movl	(%rsi), %ebx
	leaq	4(%rsi), %rdx
	movq	%rdx, (%r15)
	leal	-4(%r8), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %edi
	cmpl	$121, %edi
	ja	.LBB0_250
# %bb.141:                              #   in Loop: Header=BB0_137 Depth=2
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmpq	*.LJTI0_2(,%rdi,8)
.LBB0_142:                              #   in Loop: Header=BB0_137 Depth=2
	cmpl	$11, -76(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_135
	jmp	.LBB0_251
.LBB0_144:                              #   in Loop: Header=BB0_137 Depth=2
	movl	-64(%rbp), %edi         # 4-byte Reload
	testb	%dil, %dil
	jns	.LBB0_251
# %bb.145:                              #   in Loop: Header=BB0_137 Depth=2
	andl	$-65665, %edi           # imm = 0xFFFEFF7F
	orl	$65536, %edi            # imm = 0x10000
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jmp	.LBB0_136
.LBB0_146:                              #   in Loop: Header=BB0_137 Depth=2
	movslq	-76(%rbp), %rdi         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rdi,%rdi), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	addq	$-1, %rdi
	cmpq	$8, %rdi
	jae	.LBB0_135
	jmp	.LBB0_250
.LBB0_148:                              #   in Loop: Header=BB0_137 Depth=2
	movl	-64(%rbp), %edi         # 4-byte Reload
	testl	$512, %edi              # imm = 0x200
	je	.LBB0_251
# %bb.149:                              #   in Loop: Header=BB0_137 Depth=2
                                        # kill: def $edi killed $edi def $rdi
	shrl	$16, %edi
	andl	$1, %edi
	leaq	-364(%rbp), %rcx
	leaq	(%rcx,%rdi,4), %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rdi, -112(%rbp)        # 8-byte Folded Reload
	jne	.LBB0_251
# %bb.150:                              #   in Loop: Header=BB0_137 Depth=2
	andl	$-513, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0xFDFF
	movl	$16, -76(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_136
.LBB0_151:                              #   in Loop: Header=BB0_137 Depth=2
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-76(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%edx, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_137 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_137 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB0_154:                              #   in Loop: Header=BB0_137 Depth=2
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB0_136
.LBB0_155:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_199
# %bb.156:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_197
# %bb.157:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_198
.LBB0_158:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %cl
	jne	.LBB0_177
# %bb.159:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %cl
	movq	-72(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_282
# %bb.160:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_280
# %bb.161:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_281
.LBB0_162:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %cl
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_179
# %bb.163:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %cl
	jne	.LBB0_304
# %bb.164:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_302
# %bb.165:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_303
.LBB0_166:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	leaq	-368(%rbp), %rbx
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_264
.LBB0_167:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_235
# %bb.168:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_367
.LBB0_170:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_366
.LBB0_172:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %ebx
	subq	%r12, %rbx
	cmpq	$0, 88(%r15)
	je	.LBB0_239
# %bb.173:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	movl	-48(%rbp), %r12d        # 4-byte Reload
	jl	.LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_373
.LBB0_175:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_176:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_372
.LBB0_177:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_207
# %bb.178:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_208
.LBB0_179:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	ja	.LBB0_221
# %bb.180:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_222
.LBB0_181:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %r14d
	jmp	.LBB0_249
.LBB0_182:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_183:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_184:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_187
	.p2align	4, 0x90
.LBB0_185:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_445
.LBB0_186:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	subq	%rbx, %r13
	je	.LBB0_419
.LBB0_187:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%eax, %eax
	jg	.LBB0_190
# %bb.188:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_417
# %bb.189:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_190:                              #   in Loop: Header=BB0_187 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_418
# %bb.191:                              #   in Loop: Header=BB0_187 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_187 Depth=2
	cltq
	cmpq	%rax, %r13
	jae	.LBB0_185
.LBB0_193:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movl	%r14d, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB0_445
# %bb.194:                              #   in Loop: Header=BB0_187 Depth=2
	movq	%rax, %rbx
	cmpq	%r13, %rax
	ja	.LBB0_275
# %bb.195:                              #   in Loop: Header=BB0_187 Depth=2
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_186
# %bb.196:                              #   in Loop: Header=BB0_187 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_186
.LBB0_197:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_198:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB0_201
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_201 Depth=2
	addq	$1, %r14
	cmpq	%r14, %r13
	je	.LBB0_247
.LBB0_201:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_204
# %bb.202:                              #   in Loop: Header=BB0_201 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_244
# %bb.203:                              #   in Loop: Header=BB0_201 Depth=2
	movl	(%rbx), %ecx
.LBB0_204:                              #   in Loop: Header=BB0_201 Depth=2
	movq	(%r15), %rdx
	movl	(%rdx), %eax
	addq	$4, %rdx
	movq	%rdx, (%r15)
	addl	$-4, %ecx
	movl	%ecx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_245
# %bb.205:                              #   in Loop: Header=BB0_201 Depth=2
	movl	-64(%rbp), %ecx         # 4-byte Reload
	testb	$16, %cl
	jne	.LBB0_200
# %bb.206:                              #   in Loop: Header=BB0_201 Depth=2
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	-64(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB0_200
.LBB0_207:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_208:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	-184(%rbp), %r13        # 8-byte Reload
	subq	-176(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_209:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	movq	-112(%rbp), %rbx        # 8-byte Reload
	jg	.LBB0_212
# %bb.210:                              #   in Loop: Header=BB0_209 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_385
# %bb.211:                              #   in Loop: Header=BB0_209 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_212:                              #   in Loop: Header=BB0_209 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_386
# %bb.213:                              #   in Loop: Header=BB0_209 Depth=2
	subq	$1, %r12
	jb	.LBB0_216
# %bb.214:                              #   in Loop: Header=BB0_209 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -192(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_209 Depth=2
	movl	%r14d, (%rbx)
	addq	$4, %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_209
.LBB0_216:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_327
# %bb.217:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_385
.LBB0_219:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_220:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_384
.LBB0_221:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	negq	-152(%rbp)              # 8-byte Folded Spill
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_223:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_226
# %bb.224:                              #   in Loop: Header=BB0_223 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rdx, %rbx
	callq	__ssrefill_r
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_391
# %bb.225:                              #   in Loop: Header=BB0_223 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_226:                              #   in Loop: Header=BB0_223 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_392
# %bb.227:                              #   in Loop: Header=BB0_223 Depth=2
	cmpq	%rdx, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_230
# %bb.228:                              #   in Loop: Header=BB0_223 Depth=2
	movl	%r14d, %edi
	movq	%rdx, %rbx
	callq	iswspace
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_230
# %bb.229:                              #   in Loop: Header=BB0_223 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r14d, (%rax)
	addq	$4, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	addq	$-1, %rdx
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_223
.LBB0_230:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_331
# %bb.231:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rdx, %rbx
	callq	__submore
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB0_391
.LBB0_233:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_234:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_390
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_364
# %bb.236:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_365
# %bb.237:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_365
# %bb.238:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_171
.LBB0_239:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	je	.LBB0_370
# %bb.240:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_371
# %bb.241:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_371
# %bb.242:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_176
.LBB0_243:                              # %..loopexit28_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_263
.LBB0_244:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_245:                              #   in Loop: Header=BB0_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB0_445
# %bb.246:                              # %._crit_edge55
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rax
	movl	-64(%rbp), %ecx         # 4-byte Reload
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	andl	$16, %ecx
	cmpl	$1, %ecx
	adcl	$0, -48(%rbp)           # 4-byte Folded Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_420
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_249:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_264
.LBB0_250:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB0_251:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_256
# %bb.252:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	96(%r15), %eax
	movq	-72(%rbp), %r13         # 8-byte Reload
	jl	.LBB0_255
# %bb.253:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	movq	-88(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_262
# %bb.254:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rdx
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rdx), %rax
	movq	%rax, (%r15)
	movb	%bl, -4(%rdx)
	movl	8(%r15), %r8d
	addl	$4, %r8d
	jmp	.LBB0_261
.LBB0_256:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	movq	-72(%rbp), %r13         # 8-byte Reload
	je	.LBB0_260
# %bb.257:                              #   in Loop: Header=BB0_2 Depth=1
	cmpq	%rdi, %rdx
	jbe	.LBB0_260
# %bb.258:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, (%rsi)
	jne	.LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, (%r15)
	jmp	.LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, 112(%r15)
	movq	%rdx, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, %r8d
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r8d, (%rax)
.LBB0_262:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_263:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rbx        # 8-byte Reload
.LBB0_264:                              #   in Loop: Header=BB0_2 Depth=1
	testl	$256, -64(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB0_424
# %bb.265:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %r14
	movl	-4(%rbx), %ebx
	movl	%ebx, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_347
# %bb.266:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %ebx
	je	.LBB0_346
# %bb.267:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_271
# %bb.268:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_270
# %bb.269:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	movq	-88(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_346
.LBB0_270:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movb	%bl, -4(%rax)
	addl	$4, 8(%r15)
	jmp	.LBB0_346
.LBB0_271:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_343
# %bb.272:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_344
# %bb.273:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_344
# %bb.274:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	addl	$4, 8(%r15)
	jmp	.LBB0_345
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_378
# %bb.276:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_417
.LBB0_278:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB0_417
.LBB0_280:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_282:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	-184(%rbp), %rax        # 8-byte Reload
	subq	-176(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_285 Depth=2
	movq	%r13, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_445
.LBB0_284:                              #   in Loop: Header=BB0_285 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	movq	-152(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB0_285:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	jg	.LBB0_288
# %bb.286:                              #   in Loop: Header=BB0_285 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_404
# %bb.287:                              #   in Loop: Header=BB0_285 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_288:                              #   in Loop: Header=BB0_285 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	je	.LBB0_405
# %bb.289:                              #   in Loop: Header=BB0_285 Depth=2
	subq	$1, %r12
	jb	.LBB0_297
# %bb.290:                              #   in Loop: Header=BB0_285 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -192(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB0_297
# %bb.291:                              #   in Loop: Header=BB0_285 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_285 Depth=2
	cltq
	cmpq	%rax, %r12
	jae	.LBB0_283
.LBB0_293:                              #   in Loop: Header=BB0_285 Depth=2
	leaq	-41(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_445
# %bb.294:                              #   in Loop: Header=BB0_285 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	movq	-72(%rbp), %r13         # 8-byte Reload
	ja	.LBB0_297
# %bb.295:                              #   in Loop: Header=BB0_285 Depth=2
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_284
# %bb.296:                              #   in Loop: Header=BB0_285 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_284
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_339
# %bb.298:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_300
# %bb.299:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_404
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_403
.LBB0_302:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_307
.LBB0_305:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB0_445
.LBB0_306:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	subq	%rbx, %r12
	movq	%r12, %rbx
	movq	-96(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB0_307:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	jg	.LBB0_310
# %bb.308:                              #   in Loop: Header=BB0_307 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_396
# %bb.309:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_310:                              #   in Loop: Header=BB0_307 Depth=2
	movq	(%r15), %rcx
	movl	(%rcx), %r14d
	addq	$4, %rcx
	movq	%rcx, (%r15)
	addl	$-4, %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_319
# %bb.311:                              #   in Loop: Header=BB0_307 Depth=2
	cmpl	$-1, %r14d
	je	.LBB0_319
# %bb.312:                              #   in Loop: Header=BB0_307 Depth=2
	movq	%rbx, %r12
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_320
# %bb.313:                              #   in Loop: Header=BB0_307 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_315
# %bb.314:                              #   in Loop: Header=BB0_307 Depth=2
	cltq
	cmpq	%rax, %r12
	jae	.LBB0_305
.LBB0_315:                              #   in Loop: Header=BB0_307 Depth=2
	leaq	-41(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB0_445
# %bb.316:                              #   in Loop: Header=BB0_307 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	movq	-72(%rbp), %r13         # 8-byte Reload
	ja	.LBB0_320
# %bb.317:                              #   in Loop: Header=BB0_307 Depth=2
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_306
# %bb.318:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-41(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_306
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-1, %r14d
	je	.LBB0_397
.LBB0_320:                              #   in Loop: Header=BB0_2 Depth=1
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_335
# %bb.321:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_323
# %bb.322:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_396
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%r14b, -4(%rax)
.LBB0_324:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_395
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_326:                              # %.loopexit27
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %rbx         # 8-byte Reload
	subl	%r12d, %ebx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_421
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_382
# %bb.328:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_383
# %bb.329:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_383
# %bb.330:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_220
.LBB0_331:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_388
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_389
# %bb.333:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_389
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_234
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_393
# %bb.336:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_394
# %bb.337:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_394
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_324
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_401
# %bb.340:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_402
# %bb.341:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_402
# %bb.342:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_301
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
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
.LBB0_345:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB0_346:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB0_347:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-64(%rbp), %ebx         # 4-byte Reload
	testb	$16, %bl
	jne	.LBB0_414
# %bb.348:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r14)
	movq	%r13, %rdi
	leaq	-368(%rbp), %rsi
	xorl	%edx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	*-168(%rbp)             # 8-byte Folded Reload
	testb	$32, %bl
	jne	.LBB0_354
# %bb.349:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$8, %bl
	jne	.LBB0_356
# %bb.350:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$4, %bl
	jne	.LBB0_360
# %bb.351:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %bl
	jne	.LBB0_374
# %bb.352:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_408
# %bb.353:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_409
.LBB0_354:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_358
# %bb.355:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_359
.LBB0_356:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_362
# %bb.357:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_363
.LBB0_358:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
.LBB0_412:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_413
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_376
# %bb.361:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_377
.LBB0_362:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_363:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_413
.LBB0_364:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, %eax
.LBB0_366:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_367:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_368:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %r14
	testl	%r14d, %r14d
	je	.LBB0_432
# %bb.369:                              # %._crit_edge49
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_407
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
	movl	$2, %eax
.LBB0_372:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_373:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_422
.LBB0_374:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_410
# %bb.375:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_411
.LBB0_376:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_377:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_413
.LBB0_378:                              #   in Loop: Header=BB0_2 Depth=1
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_415
# %bb.379:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_416
# %bb.380:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	%r14d, -4(%rax)
	jne	.LBB0_416
# %bb.381:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_279
.LBB0_382:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, %eax
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_386:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %r14
	subq	-64(%rbp), %r14         # 8-byte Folded Reload
	shrq	$2, %r14
	testl	%r14d, %r14d
	je	.LBB0_432
# %bb.387:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rbx)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_407
.LBB0_388:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, %eax
.LBB0_390:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_392:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, %r12d
	movq	-96(%rbp), %rbx         # 8-byte Reload
	subl	%edx, %ebx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_422
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_394:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, %eax
.LBB0_395:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_396:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_397:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	je	.LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-48(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB0_400
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-48(%rbp), %r12d        # 4-byte Reload
	addl	$1, %r12d
.LBB0_400:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_422
.LBB0_401:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_402:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movl	$2, %eax
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
.LBB0_404:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	movq	-152(%rbp), %r14        # 8-byte Reload
	jne	.LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
.LBB0_407:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_420
.LBB0_408:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_413:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB0_414:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rax
	movq	%r14, -112(%rbp)        # 8-byte Spill
	leaq	-368(%rbp), %rax
	subq	%rax, %r14
	shrq	$2, %r14
	jmp	.LBB0_420
.LBB0_410:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_411:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB0_412
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rax
.LBB0_416:                              #   in Loop: Header=BB0_2 Depth=1
	movl	8(%r15), %ecx
	movl	%ecx, 112(%r15)
	movq	%rax, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%r14d, 115(%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$2, %ecx
	movl	%ecx, (%rax)
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_418:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -152(%rbp)          # 4-byte Folded Reload
	je	.LBB0_445
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	andl	$16, %eax
	cmpl	$1, %eax
	adcl	$0, -48(%rbp)           # 4-byte Folded Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-152(%rbp), %r14        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_420:                              #   in Loop: Header=BB0_2 Depth=1
	addl	%r12d, %r14d
	movl	%r14d, %ebx
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-48(%rbp), %r12d        # 4-byte Reload
.LBB0_422:                              #   in Loop: Header=BB0_2 Depth=1
	movl	(%rcx), %r14d
	testl	%r14d, %r14d
	jne	.LBB0_2
	jmp	.LBB0_448
.LBB0_423:
	xorl	%r12d, %r12d
	jmp	.LBB0_448
.LBB0_424:
	testq	%r14, %r14
	je	.LBB0_432
# %bb.425:
	movl	-4(%rbx), %ebx
	cmpl	$-1, %ebx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	je	.LBB0_431
# %bb.426:
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	je	.LBB0_449
# %bb.427:
	movl	8(%r15), %eax
	cmpl	96(%r15), %eax
	jl	.LBB0_429
# %bb.428:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_431
.LBB0_429:
	movq	(%r15), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%r15)
	movb	%bl, -4(%rax)
.LBB0_430:
	addl	$4, 8(%r15)
.LBB0_431:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_448
.LBB0_432:                              # %.loopexit
	movl	-48(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB0_448
.LBB0_433:
	andb	$-33, 16(%r15)
	cmpq	$0, 88(%r15)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_438
# %bb.434:
	cmpl	96(%r15), %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	jl	.LBB0_437
# %bb.435:
	movq	%r15, %rsi
	callq	__submore
	testl	%eax, %eax
	jne	.LBB0_444
# %bb.436:
	movq	(%r15), %rcx
.LBB0_437:
	leaq	-4(%rcx), %rax
	movq	%rax, (%r15)
	movb	%bl, -4(%rcx)
	movl	8(%r15), %eax
	addl	$4, %eax
	jmp	.LBB0_443
.LBB0_438:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB0_442
# %bb.439:
	cmpq	%rdi, %rcx
	jbe	.LBB0_442
# %bb.440:
	cmpl	%ebx, (%rdx)
	jne	.LBB0_442
# %bb.441:
	movq	%rdx, (%r15)
	jmp	.LBB0_443
.LBB0_442:
	movl	%esi, 112(%r15)
	movq	%rcx, 104(%r15)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 88(%r15)
	movl	$3, 96(%r15)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%r15)
	movl	%ebx, 115(%r15)
	movl	$2, %eax
.LBB0_443:
	movl	%eax, (%r14)
.LBB0_444:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_445:
	movl	-48(%rbp), %r12d        # 4-byte Reload
	testl	%r12d, %r12d
	je	.LBB0_447
# %bb.446:
	movb	16(%r15), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r12d
	jmp	.LBB0_448
.LBB0_447:
	movl	$-1, %r12d
.LBB0_448:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_449:
	movq	24(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB0_453
# %bb.450:
	movq	(%r15), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_454
# %bb.451:
	cmpl	%ebx, -4(%rax)
	jne	.LBB0_454
# %bb.452:
	addq	$-4, %rax
	movq	%rax, (%r15)
	jmp	.LBB0_430
.LBB0_453:
	movq	(%r15), %rax
.LBB0_454:
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_448
.Lfunc_end0:
	.size	__ssvfiwscanf_r, .Lfunc_end0-__ssvfiwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_447
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_41
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_30
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_17
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_70
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_31
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_72
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_69
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_74
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_71
	.quad	.LBB0_78
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_21
	.quad	.LBB0_79
	.quad	.LBB0_29
	.quad	.LBB0_432
	.quad	.LBB0_23
	.quad	.LBB0_432
	.quad	.LBB0_48
	.quad	.LBB0_80
	.quad	.LBB0_81
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_73
	.quad	.LBB0_29
	.quad	.LBB0_83
	.quad	.LBB0_432
	.quad	.LBB0_432
	.quad	.LBB0_69
	.quad	.LBB0_432
	.quad	.LBB0_29
.LJTI0_1:
	.quad	.LBB0_108
	.quad	.LBB0_112
	.quad	.LBB0_122
	.quad	.LBB0_132
.LJTI0_2:
	.quad	.LBB0_243
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_144
	.quad	.LBB0_251
	.quad	.LBB0_144
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_151
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_134
	.quad	.LBB0_146
	.quad	.LBB0_146
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_148
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_142
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_251
	.quad	.LBB0_148
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
