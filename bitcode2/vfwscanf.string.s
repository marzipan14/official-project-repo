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
	subq	$1576, %rsp             # imm = 0x628
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_442
# %bb.1:
	leaq	8(%r14), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r15, -112(%rbp)        # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -140(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	movq	%r12, -64(%rbp)         # 8-byte Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_401 Depth 2
                                        #     Child Loop BB0_203 Depth 2
                                        #     Child Loop BB0_316 Depth 2
                                        #     Child Loop BB0_189 Depth 2
                                        #     Child Loop BB0_286 Depth 2
                                        #     Child Loop BB0_307 Depth 2
                                        #     Child Loop BB0_181 Depth 2
                                        #     Child Loop BB0_263 Depth 2
                                        #     Child Loop BB0_250 Depth 2
                                        #     Child Loop BB0_236 Depth 2
	movslq	%esi, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r15d, -44(%rbp)        # 4-byte Spill
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
	addq	$4, %r13
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=3
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_27
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=3
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=3
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_28
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=3
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ebx
	jne	.LBB0_30
# %bb.11:                               # %.preheader5
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=3
	leaq	(%r15,%r15,4), %rax
	leaq	(%rbx,%rax,2), %r15
	addq	$-48, %r15
.LBB0_13:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_14 Depth 4
	movq	%r13, %rax
.LBB0_14:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %rbx
	ja	.LBB0_461
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=4
	leaq	4(%rax), %r13
	jmpq	*.LJTI0_0(,%rbx,8)
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rcx,4), %ecx
	je	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=4
	movq	%r13, %rax
	jmp	.LBB0_23
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=4
	movq	%r13, %rax
	jmp	.LBB0_22
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=4
	addq	$8, %rax
	jmp	.LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=4
	addq	$8, %rax
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=4
	addl	$1, %ecx
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=4
	orl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_24:                               #   in Loop: Header=BB0_13 Depth=3
	orl	$1, %edx
	jmp	.LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_13 Depth=3
	orl	$16, %edx
	jmp	.LBB0_13
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=3
	orl	$2, %edx
	jmp	.LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=2
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_3
	jmp	.LBB0_462
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_444
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %esi
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB0_446
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ebx
	jne	.LBB0_453
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$1, -80(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_3
	jmp	.LBB0_462
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dl
	jne	.LBB0_42
# %bb.37:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB0_43
# %bb.38:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB0_45
# %bb.39:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jne	.LBB0_49
# %bb.40:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_53
# %bb.41:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_54
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_29
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_47
# %bb.44:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_48
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	-44(%rbp), %r15d        # 4-byte Reload
	ja	.LBB0_51
# %bb.46:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_52
.LBB0_47:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB0_28
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_55
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_56
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_28
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_28
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$4, %r12b
	jmp	.LBB0_83
.LBB0_58:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %edx              # imm = 0x200
	jmp	.LBB0_69
.LBB0_59:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_60:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %edx
	xorl	%r12d, %r12d
	jmp	.LBB0_83
.LBB0_61:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_62:                               # %.loopexit9
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %r12b
	jmp	.LBB0_83
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	movl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$94, %ecx
	jne	.LBB0_72
# %bb.64:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	addq	$8, %rax
	movl	$1, -140(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_73
.LBB0_65:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r12b
	movl	$_wcstol_r, %eax
	jmp	.LBB0_71
.LBB0_66:                               # %.loopexit8
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r12b
	movl	$_wcstol_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r12b
	movl	$_wcstoul_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$8, -72(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %edx              # imm = 0x220
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r12b
	movl	$_wcstoul_r, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$16, -72(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r12b
	movl	$_wcstoul_r, %eax
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	$10, -72(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_83
.LBB0_72:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -140(%rbp)          # 4-byte Folded Spill
	movq	%r13, %rax
.LBB0_73:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	jne	.LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %ecx
	addq	$4, %rax
.LBB0_75:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_80
# %bb.76:                               # %.preheader34
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rax
	.p2align	4, 0x90
.LBB0_77:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	je	.LBB0_81
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_77
# %bb.79:                               # %.loopexit36
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	addq	$4, %rax
	jmp	.LBB0_82
.LBB0_81:                               # %.loopexit35
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rax), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB0_82:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %edx
	movb	$1, %r12b
	movq	%r13, -168(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testb	$64, %dl
	jne	.LBB0_91
	.p2align	4, 0x90
.LBB0_84:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_87
# %bb.85:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_443
# %bb.86:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_87:                               #   in Loop: Header=BB0_84 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_445
# %bb.88:                               #   in Loop: Header=BB0_84 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_84 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_84
.LBB0_90:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_91:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r12b
	ja	.LBB0_99
# %bb.92:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r12b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_93:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB0_95:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testb	$1, %dil
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_117
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dil
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_232
# %bb.97:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_230
# %bb.98:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_231
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
.LBB0_100:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %esi
.LBB0_101:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_441
.LBB0_102:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB0_104:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$16, %al
	movq	-184(%rbp), %r12        # 8-byte Reload
	je	.LBB0_120
# %bb.105:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_180
# %bb.106:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_259
.LBB0_107:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_109
# %bb.108:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB0_109:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$16, %al
	je	.LBB0_123
# %bb.110:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_188
# %bb.111:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_282
.LBB0_112:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r15d             # imm = 0x15D
.LBB0_114:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	orl	$1408, %eax             # imm = 0x580
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leaq	-1616(%rbp), %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_203:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_206
# %bb.204:                              #   in Loop: Header=BB0_203 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_323
# %bb.205:                              #   in Loop: Header=BB0_203 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_206:                              #   in Loop: Header=BB0_203 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %esi
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rsi), %ecx
	cmpl	$77, %ecx
	ja	.LBB0_222
# %bb.207:                              #   in Loop: Header=BB0_203 Depth=2
	jmpq	*.LJTI0_3(,%rcx,8)
.LBB0_208:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -72(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_213
	jmp	.LBB0_225
	.p2align	4, 0x90
.LBB0_209:                              #   in Loop: Header=BB0_203 Depth=2
	movslq	-72(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB0_213
.LBB0_210:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testb	%cl, %cl
	jns	.LBB0_225
# %bb.211:                              #   in Loop: Header=BB0_203 Depth=2
	andl	$-65665, %ecx           # imm = 0xFFFEFF7F
	orl	$65536, %ecx            # imm = 0x10000
	jmp	.LBB0_201
.LBB0_212:                              #   in Loop: Header=BB0_203 Depth=2
	movslq	-72(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rcx
	jb	.LBB0_225
	.p2align	4, 0x90
.LBB0_213:                              #   in Loop: Header=BB0_203 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB0_214:                              #   in Loop: Header=BB0_203 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
.LBB0_201:                              #   in Loop: Header=BB0_203 Depth=2
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB0_202:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	%esi, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r12
	cmpq	%rbx, %r15
	jne	.LBB0_203
	jmp	.LBB0_223
.LBB0_215:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	testl	$512, %edi              # imm = 0x200
	je	.LBB0_225
# %bb.216:                              #   in Loop: Header=BB0_203 Depth=2
	movl	%edi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-1612(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jne	.LBB0_225
# %bb.217:                              #   in Loop: Header=BB0_203 Depth=2
	andl	$-513, %edi             # imm = 0xFDFF
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$16, -72(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_202
.LBB0_218:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB0_220
# %bb.219:                              #   in Loop: Header=BB0_203 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_203 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	orl	$512, %ecx              # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -72(%rbp)           # 4-byte Folded Spill
.LBB0_221:                              #   in Loop: Header=BB0_203 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %ecx             # imm = 0x400
	je	.LBB0_214
# %bb.200:                              #   in Loop: Header=BB0_203 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
	jmp	.LBB0_201
.LBB0_115:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB0_126
# %bb.116:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%r15d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r15d             # imm = 0x15D
	jmp	.LBB0_127
.LBB0_117:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dil
	jne	.LBB0_248
# %bb.118:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_246
# %bb.119:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_247
.LBB0_120:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_196
# %bb.121:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_257
# %bb.122:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_258
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_198
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-64(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_280
# %bb.125:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_281
.LBB0_126:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -144(%rbp)          # 4-byte Folded Spill
.LBB0_127:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	orl	$1920, %eax             # imm = 0x780
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	leaq	-1616(%rbp), %rbx
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_128:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_133
.LBB0_129:                              #   in Loop: Header=BB0_128 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %esi
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rsi), %eax
	cmpl	$78, %eax
	ja	.LBB0_135
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=2
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_131:                              #   in Loop: Header=BB0_128 Depth=2
	movsbl	-128(%rbp), %eax        # 1-byte Folded Reload
	movsbl	%dil, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ecx
	jne	.LBB0_389
# %bb.132:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-385, %eax             # imm = 0xFE7F
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_176
	.p2align	4, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_128 Depth=2
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%r8, %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_138
# %bb.134:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
	movq	%r12, %r8
	movq	%rbx, %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rbx        # 8-byte Reload
.LBB0_135:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %esi
	jne	.LBB0_342
# %bb.136:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testl	$512, %eax              # imm = 0x200
	je	.LBB0_341
# %bb.137:                              #   in Loop: Header=BB0_128 Depth=2
	andl	$-641, %eax             # imm = 0xFD7F
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	%r8, -192(%rbp)         # 8-byte Spill
	jmp	.LBB0_176
.LBB0_138:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%r12, %r8
	movq	%rbx, %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_129
.LBB0_139:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -56(%rbp)           # 1-byte Folded Reload
	jns	.LBB0_389
# %bb.140:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-129, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_176
.LBB0_141:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, -128(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_389
# %bb.142:                              #   in Loop: Header=BB0_128 Depth=2
	movb	$2, %al
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_176
.LBB0_143:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	andl	$1280, %eax             # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB0_146
# %bb.144:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, -56(%rbp)        # 4-byte Folded Reload
                                        # imm = 0x400
	je	.LBB0_389
# %bb.145:                              #   in Loop: Header=BB0_128 Depth=2
	testq	%r8, %r8
	je	.LBB0_389
.LBB0_146:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testl	$512, %eax              # imm = 0x200
	jne	.LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_128 Depth=2
	subq	-192(%rbp), %r8         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	%rbx, -208(%rbp)        # 8-byte Spill
.LBB0_148:                              #   in Loop: Header=BB0_128 Depth=2
	andl	$-1921, %eax            # imm = 0xF87F
	orl	$384, %eax              # imm = 0x180
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_166
.LBB0_149:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %dil
	jne	.LBB0_389
# %bb.150:                              #   in Loop: Header=BB0_128 Depth=2
	movb	$3, %dil
	jmp	.LBB0_176
.LBB0_151:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB0_167
# %bb.152:                              #   in Loop: Header=BB0_128 Depth=2
	cmpb	$0, -128(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_167
# %bb.153:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_169
# %bb.154:                              #   in Loop: Header=BB0_128 Depth=2
	andl	$-1921, %ecx            # imm = 0xF87F
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$1, %al
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_166
.LBB0_155:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dil
	jne	.LBB0_389
# %bb.156:                              #   in Loop: Header=BB0_128 Depth=2
	movb	$7, %dil
	jmp	.LBB0_176
.LBB0_157:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$7, %dil
	jne	.LBB0_389
# %bb.158:                              #   in Loop: Header=BB0_128 Depth=2
	movb	$8, %dil
	jmp	.LBB0_176
.LBB0_159:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, -56(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	je	.LBB0_131
# %bb.160:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	andl	$-129, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$1, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	-144(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_179
# %bb.161:                              #   in Loop: Header=BB0_128 Depth=2
	addl	$-1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	addq	$1, %r15
	jmp	.LBB0_177
.LBB0_162:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB0_173
# %bb.163:                              #   in Loop: Header=BB0_128 Depth=2
	testb	%dil, %dil
	jne	.LBB0_173
# %bb.164:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_388
# %bb.165:                              #   in Loop: Header=BB0_128 Depth=2
	andl	$-1921, %ecx            # imm = 0xF87F
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$1, %dil
	movl	$105, %esi
.LBB0_166:                              #   in Loop: Header=BB0_128 Depth=2
	xorl	%r8d, %r8d
	jmp	.LBB0_176
.LBB0_167:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, -128(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_170
# %bb.168:                              #   in Loop: Header=BB0_128 Depth=2
	movb	$3, %al
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_176
.LBB0_169:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_170:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %dil
	je	.LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %dil
	jne	.LBB0_389
.LBB0_172:                              #   in Loop: Header=BB0_128 Depth=2
	addb	$1, %dil
	jmp	.LBB0_176
.LBB0_173:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %dil
	je	.LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %dil
	jne	.LBB0_389
.LBB0_175:                              #   in Loop: Header=BB0_128 Depth=2
	addb	$1, %dil
	movl	$105, %esi
	.p2align	4, 0x90
.LBB0_176:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	movl	%esi, (%rbx)
.LBB0_177:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_178:                              #   in Loop: Header=BB0_128 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1616(,%rdx,4), %rbx
	addq	%rbp, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r15
	jne	.LBB0_128
	jmp	.LBB0_391
.LBB0_179:                              #   in Loop: Header=BB0_128 Depth=2
	movl	$0, -144(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_178
.LBB0_222:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB0_226
	jmp	.LBB0_324
.LBB0_223:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %ebx
	jmp	.LBB0_324
.LBB0_180:                              #   in Loop: Header=BB0_2 Depth=1
	subq	-168(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	movq	%r12, -56(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_181:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_184
# %bb.182:                              #   in Loop: Header=BB0_181 Depth=2
	movq	%rsi, %rbx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_370
# %bb.183:                              #   in Loop: Header=BB0_181 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%rbx, %rsi
.LBB0_184:                              #   in Loop: Header=BB0_181 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_228
# %bb.185:                              #   in Loop: Header=BB0_181 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r12
	cmpq	%rsi, %r15
	je	.LBB0_227
# %bb.186:                              #   in Loop: Header=BB0_181 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -140(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_227
# %bb.187:                              #   in Loop: Header=BB0_181 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	addq	$1, %rsi
	jmp	.LBB0_181
.LBB0_188:                              # %.preheader24
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	%r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_189:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_192
# %bb.190:                              #   in Loop: Header=BB0_189 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_371
# %bb.191:                              #   in Loop: Header=BB0_189 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_192:                              #   in Loop: Header=BB0_189 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_372
# %bb.193:                              #   in Loop: Header=BB0_189 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	je	.LBB0_229
# %bb.194:                              #   in Loop: Header=BB0_189 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_229
# %bb.195:                              #   in Loop: Header=BB0_189 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	jmp	.LBB0_189
.LBB0_196:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_305
# %bb.197:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_306
.LBB0_198:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_314
# %bb.199:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_315
.LBB0_225:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_226:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_325
.LBB0_227:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	%r12, %rsi
.LBB0_228:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB0_277
	jmp	.LBB0_461
.LBB0_229:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	-80(%rbp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_441
.LBB0_230:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_232:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_236
.LBB0_233:                              #   in Loop: Header=BB0_236 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
.LBB0_234:                              #   in Loop: Header=BB0_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -136(%rbp)        # 8-byte Folded Spill
.LBB0_235:                              #   in Loop: Header=BB0_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	movq	-64(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_343
.LBB0_236:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jg	.LBB0_239
# %bb.237:                              #   in Loop: Header=BB0_236 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_358
# %bb.238:                              #   in Loop: Header=BB0_236 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	-104(%rbp), %rdx        # 8-byte Reload
.LBB0_239:                              #   in Loop: Header=BB0_236 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB0_360
# %bb.240:                              #   in Loop: Header=BB0_236 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_242
# %bb.241:                              #   in Loop: Header=BB0_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	je	.LBB0_233
.LBB0_242:                              #   in Loop: Header=BB0_236 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-65(%rbp), %rsi
	movl	%r12d, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
# %bb.243:                              #   in Loop: Header=BB0_236 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_344
# %bb.244:                              #   in Loop: Header=BB0_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_235
# %bb.245:                              #   in Loop: Header=BB0_236 Depth=2
	movq	-136(%rbp), %rdi        # 8-byte Reload
	leaq	-65(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_234
.LBB0_246:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_247:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_248:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB0_250
	.p2align	4, 0x90
.LBB0_249:                              #   in Loop: Header=BB0_250 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %r15
	je	.LBB0_256
.LBB0_250:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_253
# %bb.251:                              #   in Loop: Header=BB0_250 Depth=2
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rsi, %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_345
# %bb.252:                              #   in Loop: Header=BB0_250 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB0_253:                              #   in Loop: Header=BB0_250 Depth=2
	movq	(%r14), %rdx
	movl	(%rdx), %eax
	addq	$4, %rdx
	movq	%rdx, (%r14)
	addl	$-4, %ecx
	movl	%ecx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_346
# %bb.254:                              #   in Loop: Header=BB0_250 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB0_249
# %bb.255:                              #   in Loop: Header=BB0_250 Depth=2
	movl	%eax, (%rbx)
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_249
.LBB0_256:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_348
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_258:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_259:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rax        # 8-byte Reload
	subq	-168(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_263
.LBB0_260:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	%ebx, %edx
	leaq	-152(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
.LBB0_261:                              #   in Loop: Header=BB0_263 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%r12, -136(%rbp)        # 8-byte Folded Spill
.LBB0_262:                              #   in Loop: Header=BB0_263 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	%r12, %r15
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_263:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_266
# %bb.264:                              #   in Loop: Header=BB0_263 Depth=2
	movq	%rsi, %rbx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_365
# %bb.265:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%rbx, %rsi
.LBB0_266:                              #   in Loop: Header=BB0_263 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_276
# %bb.267:                              #   in Loop: Header=BB0_263 Depth=2
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB0_275
# %bb.268:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -140(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_275
# %bb.269:                              #   in Loop: Header=BB0_263 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_263 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	je	.LBB0_260
.LBB0_271:                              #   in Loop: Header=BB0_263 Depth=2
	leaq	-65(%rbp), %rdi
	movl	%ebx, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
# %bb.272:                              #   in Loop: Header=BB0_263 Depth=2
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_275
# %bb.273:                              #   in Loop: Header=BB0_263 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_262
# %bb.274:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-136(%rbp), %rdi        # 8-byte Reload
	leaq	-65(%rbp), %rsi
	movq	%r12, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_261
.LBB0_275:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
.LBB0_276:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r12b
	je	.LBB0_278
.LBB0_277:                              # %._crit_edge72
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	addl	-80(%rbp), %esi         # 4-byte Folded Reload
	jmp	.LBB0_440
.LBB0_280:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_282:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_286
.LBB0_283:                              #   in Loop: Header=BB0_286 Depth=2
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
.LBB0_284:                              #   in Loop: Header=BB0_286 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -136(%rbp)        # 8-byte Folded Spill
.LBB0_285:                              #   in Loop: Header=BB0_286 Depth=2
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_286:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_289
# %bb.287:                              #   in Loop: Header=BB0_286 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_364
# %bb.288:                              #   in Loop: Header=BB0_286 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_289:                              #   in Loop: Header=BB0_286 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r12d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_299
# %bb.290:                              #   in Loop: Header=BB0_286 Depth=2
	cmpl	$-1, %r12d
	je	.LBB0_299
# %bb.291:                              #   in Loop: Header=BB0_286 Depth=2
	movl	%r12d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_298
# %bb.292:                              #   in Loop: Header=BB0_286 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_286 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	je	.LBB0_283
.LBB0_294:                              #   in Loop: Header=BB0_286 Depth=2
	leaq	-65(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-152(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_446
# %bb.295:                              #   in Loop: Header=BB0_286 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_298
# %bb.296:                              #   in Loop: Header=BB0_286 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_285
# %bb.297:                              #   in Loop: Header=BB0_286 Depth=2
	movq	-136(%rbp), %rdi        # 8-byte Reload
	leaq	-65(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_284
.LBB0_298:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB0_302
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_302:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_304
# %bb.303:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_380
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_306:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	-168(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	movq	%rax, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_307:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_310
# %bb.308:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_373
# %bb.309:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_310:                              #   in Loop: Header=BB0_307 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_374
# %bb.311:                              #   in Loop: Header=BB0_307 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB0_350
# %bb.312:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -140(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_351
# %bb.313:                              #   in Loop: Header=BB0_307 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_307
.LBB0_314:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_315:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	negq	%r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_316:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	jg	.LBB0_319
# %bb.317:                              #   in Loop: Header=BB0_316 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_377
# %bb.318:                              #   in Loop: Header=BB0_316 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_319:                              #   in Loop: Header=BB0_316 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %ebx
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	je	.LBB0_378
# %bb.320:                              #   in Loop: Header=BB0_316 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	je	.LBB0_352
# %bb.321:                              #   in Loop: Header=BB0_316 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_353
# %bb.322:                              #   in Loop: Header=BB0_316 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%rax, %rbx
	addq	$4, %rbx
	addq	$-1, %r12
	jmp	.LBB0_316
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_324:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, -56(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB0_449
# %bb.326:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%r12), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	jne	.LBB0_328
# %bb.327:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %bl
	jne	.LBB0_387
# %bb.329:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r12)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-1616(%rbp), %rsi
	xorl	%edx, %edx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	callq	*-160(%rbp)             # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %bl
	jne	.LBB0_335
# %bb.330:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	jne	.LBB0_337
# %bb.331:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	jne	.LBB0_354
# %bb.332:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB0_366
# %bb.333:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_381
# %bb.334:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_382
.LBB0_335:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_339
# %bb.336:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_340
.LBB0_337:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_356
# %bb.338:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_357
.LBB0_339:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_340:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB0_385:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_386
.LBB0_341:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %esi
.LBB0_342:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB0_390
	jmp	.LBB0_391
.LBB0_343:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_361
.LBB0_344:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_359
.LBB0_345:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB0_346:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_446
# %bb.347:                              # %._crit_edge80
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_348:                              #   in Loop: Header=BB0_2 Depth=1
	addl	-80(%rbp), %esi         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB0_363
# %bb.349:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_441
.LBB0_350:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_351:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_375
.LBB0_352:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_353:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_379
.LBB0_354:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_368
# %bb.355:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_369
.LBB0_356:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_357:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_386
.LBB0_358:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_359:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_360:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_446
.LBB0_361:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addl	-80(%rbp), %esi         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_101
# %bb.362:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_363:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_441
.LBB0_364:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_301
.LBB0_365:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	jmp	.LBB0_276
.LBB0_366:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_383
# %bb.367:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_384
.LBB0_368:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_369:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_386
.LBB0_370:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	jmp	.LBB0_228
.LBB0_371:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_372:                              # %.loopexit25
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_100
.LBB0_373:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_374:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB0_375:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rsi
	subq	-56(%rbp), %rsi         # 8-byte Folded Reload
	shrq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB0_462
# %bb.376:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rax)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	addl	-80(%rbp), %esi         # 4-byte Folded Reload
	jmp	.LBB0_440
.LBB0_377:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_378:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_379:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movq	-80(%rbp), %rax         # 8-byte Reload
	subl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_380:                              #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %esi
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_441
.LBB0_381:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_382:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_386:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_387:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r12, %rax
	movq	%r12, -96(%rbp)         # 8-byte Spill
	leaq	-1616(%rbp), %rcx
	subq	%rcx, %r12
	shrq	$2, %r12
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_441
.LBB0_383:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_384:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB0_385
.LBB0_388:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_389:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_390:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%rbx, %r12
	movq	%rdx, %rbx
	movq	%r14, %rdx
	movq	%r8, %r15
	callq	_sungetwc_r
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r12, %rbx
	movq	%r15, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB0_391:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	andl	$-257, %r12d            # imm = 0xFEFF
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_394
.LBB0_393:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_394:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	-128(%rbp), %eax        # 1-byte Folded Reload
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB0_451
# %bb.395:                              #   in Loop: Header=BB0_2 Depth=1
	movsbl	%dil, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	ja	.LBB0_399
# %bb.396:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %dil
	jl	.LBB0_454
# %bb.397:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_400
.LBB0_399:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rbx
	jmp	.LBB0_403
.LBB0_400:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r12, -56(%rbp)         # 8-byte Spill
	leal	-4(%rdi), %eax
	movzbl	%al, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	notq	%rax
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addb	$1, %dil
	leaq	-1612(%rbp), %rax
	leaq	(%rax,%rdx,4), %r15
	addq	$-8, %r15
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_401:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %esi
	movq	%rdi, %rbx
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %dil
	addq	$-4, %r15
	cmpb	$4, %dil
	jg	.LBB0_401
# %bb.402:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	notl	%ecx
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	%ecx, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB0_403:                              #   in Loop: Header=BB0_2 Depth=1
	leaq	-1616(,%rbx,4), %rcx
	addq	%rbp, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r12d             # imm = 0x100
	jne	.LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%eax, %esi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	%rcx, %rbx
	jmp	.LBB0_410
.LBB0_405:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r12d            # imm = 0x400
	jne	.LBB0_457
# %bb.406:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movl	-4(%rcx), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %eax
	jne	.LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$-1, %eax
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_409
.LBB0_408:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rbx
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	-8(%rbx), %esi
	addq	$-8, %rbx
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$-2, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax def $rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_409:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB0_410:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r12b
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	jne	.LBB0_414
# %bb.411:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%rbx)
	movl	%r12d, %eax
	andl	$1536, %eax             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_415
# %bb.412:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	-192(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_421
# %bb.413:                              #   in Loop: Header=BB0_2 Depth=1
	negq	%r8
	jmp	.LBB0_417
.LBB0_414:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_439
.LBB0_415:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_420
# %bb.416:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-208(%rbp), %rbx        # 8-byte Reload
	leaq	4(%rbx), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	xorl	%edx, %edx
	movl	$10, %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	_wcstol_r
	movq	%rax, %r8
	subq	-176(%rbp), %r8         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_417:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-300(%rbp), %rax
	cmpq	%rax, %rbx
	movq	%rbx, %rdi
	jb	.LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-304(%rbp), %rdi
.LBB0_419:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%r8, %rcx
	xorl	%eax, %eax
	callq	swprintf
.LBB0_420:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_421:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	leaq	-1616(%rbp), %rsi
	xorl	%edx, %edx
	callq	_wcstod_r
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB0_425
# %bb.422:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r12b
	jne	.LBB0_427
# %bb.423:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_431
# %bb.424:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_432
.LBB0_425:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_429
# %bb.426:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_430
.LBB0_427:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	ja	.LBB0_434
# %bb.428:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_435
.LBB0_429:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_430:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB0_438
.LBB0_431:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_432:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_436
# %bb.433:                              #   in Loop: Header=BB0_2 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_437
.LBB0_434:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_435:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movsd	%xmm0, -216(%rbp)
	fldl	-216(%rbp)
	fstpt	(%rax)
	jmp	.LBB0_438
.LBB0_436:                              #   in Loop: Header=BB0_2 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB0_437:                              #   in Loop: Header=BB0_2 Depth=1
	movss	%xmm0, (%rbx)
	movq	-104(%rbp), %rsi        # 8-byte Reload
.LBB0_438:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_439:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_440:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_441:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_2
	jmp	.LBB0_462
.LBB0_442:
	xorl	%r15d, %r15d
	jmp	.LBB0_462
.LBB0_443:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_444:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_445:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_446:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB0_448
# %bb.447:
	movzwl	16(%r14), %eax
	andl	$64, %eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_462
.LBB0_448:
	movl	$-1, %r15d
	jmp	.LBB0_462
.LBB0_449:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_462
# %bb.450:
	movl	-4(%r12), %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_462
.LBB0_451:
	leaq	-1616(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jbe	.LBB0_460
.LBB0_452:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	addq	$-4, %rbx
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	ja	.LBB0_452
	jmp	.LBB0_460
.LBB0_453:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_445
.LBB0_454:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	movq	-64(%rbp), %r15         # 8-byte Reload
	jle	.LBB0_460
# %bb.455:                              # %.preheader3
	addq	$1, %rdx
.LBB0_456:                              # =>This Inner Loop Header: Depth=1
	movl	-1624(%rbp,%rdx,4), %esi
	movq	%r15, %rdi
	movq	%rdx, %rbx
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_456
	jmp	.LBB0_460
.LBB0_457:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	-64(%rbp), %r15         # 8-byte Reload
	jle	.LBB0_460
# %bb.458:                              # %.preheader1
	addq	$1, %rbx
.LBB0_459:                              # =>This Inner Loop Header: Depth=1
	movl	-1624(%rbp,%rbx,4), %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB0_459
.LBB0_460:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_461:                              # %.loopexit6
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_462:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$1576, %rsp             # imm = 0x628
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ssvfwscanf_r, .Lfunc_end0-__ssvfwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_448
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_30
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_25
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_12
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_57
	.quad	.LBB0_461
	.quad	.LBB0_59
	.quad	.LBB0_461
	.quad	.LBB0_57
	.quad	.LBB0_57
	.quad	.LBB0_57
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_26
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_61
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_58
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_63
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_57
	.quad	.LBB0_461
	.quad	.LBB0_60
	.quad	.LBB0_65
	.quad	.LBB0_57
	.quad	.LBB0_57
	.quad	.LBB0_57
	.quad	.LBB0_16
	.quad	.LBB0_66
	.quad	.LBB0_24
	.quad	.LBB0_461
	.quad	.LBB0_18
	.quad	.LBB0_461
	.quad	.LBB0_36
	.quad	.LBB0_67
	.quad	.LBB0_68
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_62
	.quad	.LBB0_24
	.quad	.LBB0_70
	.quad	.LBB0_461
	.quad	.LBB0_461
	.quad	.LBB0_58
	.quad	.LBB0_461
	.quad	.LBB0_24
.LJTI0_1:
	.quad	.LBB0_93
	.quad	.LBB0_102
	.quad	.LBB0_107
	.quad	.LBB0_112
	.quad	.LBB0_115
.LJTI0_2:
	.quad	.LBB0_139
	.quad	.LBB0_135
	.quad	.LBB0_139
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_159
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_131
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_141
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_143
	.quad	.LBB0_149
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_151
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_155
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_157
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_141
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_143
	.quad	.LBB0_149
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_162
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_151
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_155
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_157
.LJTI0_3:
	.quad	.LBB0_210
	.quad	.LBB0_222
	.quad	.LBB0_210
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_218
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_209
	.quad	.LBB0_212
	.quad	.LBB0_212
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
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
	.quad	.LBB0_215
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_222
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
	.quad	.LBB0_208
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
	.quad	.LBB0_215
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function _sungetwc_r
	.type	_sungetwc_r,@function
_sungetwc_r:                            # @_sungetwc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	je	.LBB1_12
# %bb.1:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	andb	$-33, 16(%rdx)
	cmpq	$0, 88(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_5
# %bb.2:
	movl	8(%rbx), %eax
	cmpl	96(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB1_4
# %bb.3:
	movq	%rbx, %rsi
	callq	__submore
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_12
.LBB1_4:
	movq	(%rbx), %rax
	leaq	-4(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r14b, -4(%rax)
.LBB1_11:
	addl	$4, 8(%rbx)
	jmp	.LBB1_12
.LBB1_5:
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_6
# %bb.8:
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB1_7
# %bb.9:
	cmpl	%r14d, -4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_7
# %bb.10:
	addq	$-4, %rax
	movq	%rax, (%rbx)
	jmp	.LBB1_11
.LBB1_6:
	movq	(%rbx), %rax
.LBB1_7:
	movl	8(%rbx), %ecx
	movl	%ecx, 112(%rbx)
	movq	%rax, 104(%rbx)
	leaq	116(%rbx), %rax
	movq	%rax, 88(%rbx)
	movl	$3, 96(%rbx)
	leaq	115(%rbx), %rax
	movq	%rax, (%rbx)
	movl	%r14d, 115(%rbx)
	movl	$2, 8(%rbx)
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_sungetwc_r, .Lfunc_end1-_sungetwc_r
                                        # -- End function
	.type	__ssvfwscanf_r.basefix,@object # @__ssvfwscanf_r.basefix
	.section	.rodata,"a",@progbits
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
