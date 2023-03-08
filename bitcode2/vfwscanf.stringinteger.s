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
	subq	$296, %rsp              # imm = 0x128
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_333
# %bb.1:
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	8(%rsi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -124(%rbp)          # 4-byte Folded Spill
	movl	$0, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_272 Depth 2
                                        #     Child Loop BB0_143 Depth 2
                                        #     Child Loop BB0_242 Depth 2
                                        #     Child Loop BB0_263 Depth 2
                                        #     Child Loop BB0_135 Depth 2
                                        #     Child Loop BB0_219 Depth 2
                                        #     Child Loop BB0_206 Depth 2
                                        #     Child Loop BB0_177 Depth 2
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movslq	%esi, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r15d, -44(%rbp)        # 4-byte Spill
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #         Child Loop BB0_14 Depth 4
	addq	$4, %r12
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=3
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_27
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
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
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ebx
	jne	.LBB0_30
# %bb.11:                               # %.preheader
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%r15d, %r15d
	xorl	%edx, %edx
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
	movq	%r12, %rax
.LBB0_14:                               #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %rbx
	ja	.LBB0_334
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=4
	leaq	4(%rax), %r12
	jmpq	*.LJTI0_0(,%rbx,8)
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rcx,4), %ecx
	je	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=4
	movq	%r12, %rax
	jmp	.LBB0_23
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=4
	movq	%r12, %rax
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
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_3
	jmp	.LBB0_342
.LBB0_30:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_337
# %bb.32:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
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
	je	.LBB0_339
# %bb.34:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ebx
	jne	.LBB0_345
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=2
	addq	$1, -96(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_3
	jmp	.LBB0_342
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
	movq	-104(%rbp), %rax        # 8-byte Reload
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
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_54
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_29
.LBB0_43:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
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
	movq	-104(%rbp), %rdx        # 8-byte Reload
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
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB0_28
.LBB0_49:                               #   in Loop: Header=BB0_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_55
# %bb.50:                               #   in Loop: Header=BB0_3 Depth=2
	movq	%rax, %rcx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_56
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_52:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_28
.LBB0_53:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_54:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_28
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_56:                               #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB0_28
.LBB0_57:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$512, %edx              # imm = 0x200
	jmp	.LBB0_68
.LBB0_58:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_59:                               # %.loopexit3
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$2, %r13b
	jmp	.LBB0_72
.LBB0_60:                               #   in Loop: Header=BB0_2 Depth=1
	movl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$94, %ecx
	jne	.LBB0_156
# %bb.61:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	addq	$8, %rax
	movl	$1, -124(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_157
.LBB0_62:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_63:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %edx
	xorl	%r13d, %r13d
	jmp	.LBB0_72
.LBB0_64:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB0_70
.LBB0_65:                               # %.loopexit2
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_71
.LBB0_66:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$8, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_71
.LBB0_67:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$544, %edx              # imm = 0x220
.LBB0_68:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$16, -68(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB0_70:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$10, -68(%rbp)          # 4-byte Folded Spill
.LBB0_71:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$3, %r13b
.LBB0_72:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -64(%rbp)         # 4-byte Spill
	testb	$64, %dl
	jne	.LBB0_80
	.p2align	4, 0x90
.LBB0_73:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_76
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_336
# %bb.75:                               #   in Loop: Header=BB0_73 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_76:                               #   in Loop: Header=BB0_73 Depth=2
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
	je	.LBB0_338
# %bb.77:                               #   in Loop: Header=BB0_73 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_79
# %bb.78:                               #   in Loop: Header=BB0_73 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_73
.LBB0_79:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_80:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_81:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_83
# %bb.82:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB0_83:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %edi         # 4-byte Reload
	testb	$1, %dil
	movq	-88(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_123
# %bb.84:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dil
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_173
# %bb.85:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_171
# %bb.86:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_172
.LBB0_87:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB0_89:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax         # 4-byte Reload
	testb	$16, %al
	movq	-168(%rbp), %r13        # 8-byte Reload
	je	.LBB0_126
# %bb.90:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_134
# %bb.91:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %r13d
	jmp	.LBB0_215
.LBB0_92:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_94
# %bb.93:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB0_94:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax         # 4-byte Reload
	testb	$16, %al
	je	.LBB0_129
# %bb.95:                               #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_142
# %bb.96:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_238
.LBB0_97:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	-1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rax
	jb	.LBB0_99
# %bb.98:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$39, %r15d
.LBB0_99:                               #   in Loop: Header=BB0_2 Depth=1
	orl	$1408, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0x580
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leaq	-336(%rbp), %r13
	xorl	%ebx, %ebx
	jmp	.LBB0_103
	.p2align	4, 0x90
.LBB0_100:                              #   in Loop: Header=BB0_103 Depth=2
	movslq	-68(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB0_101:                              #   in Loop: Header=BB0_103 Depth=2
	andl	$-897, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0xFC7F
.LBB0_102:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	%esi, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r13
	cmpq	%rbx, %r15
	je	.LBB0_133
.LBB0_103:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_103 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_187
# %bb.105:                              #   in Loop: Header=BB0_103 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_106:                              #   in Loop: Header=BB0_103 Depth=2
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
	ja	.LBB0_132
# %bb.107:                              #   in Loop: Header=BB0_103 Depth=2
	jmpq	*.LJTI0_2(,%rcx,8)
.LBB0_108:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -68(%rbp)          # 4-byte Folded Reload
	jge	.LBB0_101
	jmp	.LBB0_154
.LBB0_110:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %ecx         # 4-byte Reload
	testb	%cl, %cl
	jns	.LBB0_154
# %bb.111:                              #   in Loop: Header=BB0_103 Depth=2
	andl	$-65665, %ecx           # imm = 0xFFFEFF7F
	orl	$65536, %ecx            # imm = 0x10000
	jmp	.LBB0_122
.LBB0_112:                              #   in Loop: Header=BB0_103 Depth=2
	movslq	-68(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__ssvfiwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rcx
	jae	.LBB0_101
	jmp	.LBB0_154
.LBB0_114:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %edi         # 4-byte Reload
	testl	$512, %edi              # imm = 0x200
	je	.LBB0_154
# %bb.115:                              #   in Loop: Header=BB0_103 Depth=2
	movl	%edi, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-332(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r13
	jne	.LBB0_154
# %bb.116:                              #   in Loop: Header=BB0_103 Depth=2
	andl	$-513, %edi             # imm = 0xFDFF
	movl	%edi, -64(%rbp)         # 4-byte Spill
	movl	$16, -68(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_102
.LBB0_117:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	jne	.LBB0_119
# %bb.118:                              #   in Loop: Header=BB0_103 Depth=2
	orl	$512, -64(%rbp)         # 4-byte Folded Spill
                                        # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -68(%rbp)           # 4-byte Folded Spill
.LBB0_119:                              #   in Loop: Header=BB0_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %ecx         # 4-byte Reload
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_103 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_103 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB0_122:                              #   in Loop: Header=BB0_103 Depth=2
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB0_102
.LBB0_123:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$16, %dil
	jne	.LBB0_203
# %bb.124:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_201
# %bb.125:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_202
.LBB0_126:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_150
# %bb.127:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_213
# %bb.128:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_214
.LBB0_129:                              #   in Loop: Header=BB0_2 Depth=1
	testb	$1, %al
	jne	.LBB0_152
# %bb.130:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_236
# %bb.131:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_237
.LBB0_132:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB0_155
	jmp	.LBB0_188
.LBB0_133:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %ebx
	jmp	.LBB0_188
.LBB0_134:                              #   in Loop: Header=BB0_2 Depth=1
	subq	-160(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_135:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_138
# %bb.136:                              #   in Loop: Header=BB0_135 Depth=2
	movq	%rsi, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_309
# %bb.137:                              #   in Loop: Header=BB0_135 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%rbx, %rsi
.LBB0_138:                              #   in Loop: Header=BB0_135 Depth=2
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
	je	.LBB0_168
# %bb.139:                              #   in Loop: Header=BB0_135 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r13
	cmpq	%rsi, %r15
	je	.LBB0_167
# %bb.140:                              #   in Loop: Header=BB0_135 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_167
# %bb.141:                              #   in Loop: Header=BB0_135 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rsi
	addq	$1, %rsi
	jmp	.LBB0_135
.LBB0_142:                              # %.preheader18
                                        #   in Loop: Header=BB0_2 Depth=1
	negq	%r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_143:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_146
# %bb.144:                              #   in Loop: Header=BB0_143 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_310
# %bb.145:                              #   in Loop: Header=BB0_143 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_146:                              #   in Loop: Header=BB0_143 Depth=2
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
	je	.LBB0_311
# %bb.147:                              #   in Loop: Header=BB0_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	je	.LBB0_170
# %bb.148:                              #   in Loop: Header=BB0_143 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_170
# %bb.149:                              #   in Loop: Header=BB0_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r13
	jmp	.LBB0_143
.LBB0_150:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_261
# %bb.151:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_262
.LBB0_152:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_270
# %bb.153:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_271
.LBB0_154:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_155:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_189
.LBB0_156:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -124(%rbp)          # 4-byte Folded Spill
	movq	%r12, %rax
.LBB0_157:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	jne	.LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %ecx
	addq	$4, %rax
.LBB0_159:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_164
# %bb.160:                              # %.preheader26
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rax
	.p2align	4, 0x90
.LBB0_161:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	je	.LBB0_165
# %bb.162:                              #   in Loop: Header=BB0_161 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_161
# %bb.163:                              # %.loopexit28
                                        #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %rax
.LBB0_164:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	addq	$4, %rax
	jmp	.LBB0_166
.LBB0_165:                              # %.loopexit27
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-4(%rax), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB0_166:                              #   in Loop: Header=BB0_2 Depth=1
	orl	$64, %edx
	movb	$1, %r13b
	movq	%r12, -160(%rbp)        # 8-byte Spill
	movq	%rax, %r12
	jmp	.LBB0_72
.LBB0_167:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	%r13, %rsi
.LBB0_168:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_334
# %bb.169:                              # %._crit_edge48
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_319
.LBB0_170:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movq	-96(%rbp), %rax         # 8-byte Reload
	subl	%r13d, %eax
	movq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_332
.LBB0_171:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_172:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_173:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_177
.LBB0_174:                              #   in Loop: Header=BB0_177 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%r13d, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
.LBB0_175:                              #   in Loop: Header=BB0_177 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -120(%rbp)        # 8-byte Folded Spill
.LBB0_176:                              #   in Loop: Header=BB0_177 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_283
.LBB0_177:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	jg	.LBB0_180
# %bb.178:                              #   in Loop: Header=BB0_177 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_298
# %bb.179:                              #   in Loop: Header=BB0_177 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	-136(%rbp), %rdx        # 8-byte Reload
.LBB0_180:                              #   in Loop: Header=BB0_177 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r13d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	je	.LBB0_300
# %bb.181:                              #   in Loop: Header=BB0_177 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_177 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	je	.LBB0_174
.LBB0_183:                              #   in Loop: Header=BB0_177 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movl	%r13d, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
# %bb.184:                              #   in Loop: Header=BB0_177 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_284
# %bb.185:                              #   in Loop: Header=BB0_177 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_176
# %bb.186:                              #   in Loop: Header=BB0_177 Depth=2
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_175
.LBB0_187:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_188:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_189:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, -64(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB0_343
# %bb.190:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-4(%r13), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	jne	.LBB0_192
# %bb.191:                              #   in Loop: Header=BB0_2 Depth=1
	addq	$-4, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_192:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-64(%rbp), %ebx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %bl
	jne	.LBB0_329
# %bb.193:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$0, (%r13)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-336(%rbp), %rsi
	xorl	%edx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	callq	*-152(%rbp)             # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %bl
	jne	.LBB0_199
# %bb.194:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	jne	.LBB0_279
# %bb.195:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	jne	.LBB0_294
# %bb.196:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB0_305
# %bb.197:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_323
# %bb.198:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_324
.LBB0_199:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_281
# %bb.200:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_282
.LBB0_201:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_202:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_203:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB0_206
	.p2align	4, 0x90
.LBB0_204:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	%eax, (%rbx)
	movq	%rbx, %rax
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_205:                              #   in Loop: Header=BB0_206 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %r15
	je	.LBB0_212
.LBB0_206:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_209
# %bb.207:                              #   in Loop: Header=BB0_206 Depth=2
	movl	%edi, %ebx
	movq	%rsi, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_285
# %bb.208:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	%r13, %rsi
	movl	%ebx, %edi
.LBB0_209:                              #   in Loop: Header=BB0_206 Depth=2
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
	je	.LBB0_286
# %bb.210:                              #   in Loop: Header=BB0_206 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	je	.LBB0_204
# %bb.211:                              #   in Loop: Header=BB0_206 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_205
.LBB0_212:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_288
.LBB0_213:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_214:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-64(%rbp), %r13d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_215:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	-160(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_219
.LBB0_216:                              #   in Loop: Header=BB0_219 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%ebx, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
.LBB0_217:                              #   in Loop: Header=BB0_219 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%r13, -120(%rbp)        # 8-byte Folded Spill
.LBB0_218:                              #   in Loop: Header=BB0_219 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %r15
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %r13d        # 4-byte Reload
.LBB0_219:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_222
# %bb.220:                              #   in Loop: Header=BB0_219 Depth=2
	movq	%rsi, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_304
# %bb.221:                              #   in Loop: Header=BB0_219 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	%rbx, %rsi
.LBB0_222:                              #   in Loop: Header=BB0_219 Depth=2
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
	je	.LBB0_232
# %bb.223:                              #   in Loop: Header=BB0_219 Depth=2
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB0_231
# %bb.224:                              #   in Loop: Header=BB0_219 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_231
# %bb.225:                              #   in Loop: Header=BB0_219 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_227
# %bb.226:                              #   in Loop: Header=BB0_219 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	je	.LBB0_216
.LBB0_227:                              #   in Loop: Header=BB0_219 Depth=2
	leaq	-45(%rbp), %rdi
	movl	%ebx, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
# %bb.228:                              #   in Loop: Header=BB0_219 Depth=2
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_231
# %bb.229:                              #   in Loop: Header=BB0_219 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_218
# %bb.230:                              #   in Loop: Header=BB0_219 Depth=2
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%r13, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_217
.LBB0_231:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	-64(%rbp), %r13d        # 4-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
.LBB0_232:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	je	.LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_235
.LBB0_234:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_235:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_318
.LBB0_236:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_237:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_238:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_242
.LBB0_239:                              #   in Loop: Header=BB0_242 Depth=2
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%r13d, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
.LBB0_240:                              #   in Loop: Header=BB0_242 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -120(%rbp)        # 8-byte Folded Spill
.LBB0_241:                              #   in Loop: Header=BB0_242 Depth=2
	movq	-56(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	movq	-96(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB0_242:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_245
# %bb.243:                              #   in Loop: Header=BB0_242 Depth=2
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_303
# %bb.244:                              #   in Loop: Header=BB0_242 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_245:                              #   in Loop: Header=BB0_242 Depth=2
	movq	(%r14), %rcx
	movl	(%rcx), %r13d
	addq	$4, %rcx
	movq	%rcx, (%r14)
	addl	$-4, %eax
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_255
# %bb.246:                              #   in Loop: Header=BB0_242 Depth=2
	cmpl	$-1, %r13d
	je	.LBB0_255
# %bb.247:                              #   in Loop: Header=BB0_242 Depth=2
	movl	%r13d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_254
# %bb.248:                              #   in Loop: Header=BB0_242 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_242 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	je	.LBB0_239
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=2
	leaq	-45(%rbp), %rdi
	movl	%r13d, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_339
# %bb.251:                              #   in Loop: Header=BB0_242 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB0_254
# %bb.252:                              #   in Loop: Header=BB0_242 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_241
# %bb.253:                              #   in Loop: Header=BB0_242 Depth=2
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_240
.LBB0_254:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_256
.LBB0_255:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB0_258
.LBB0_256:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
.LBB0_257:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_258:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_260:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, %esi
	jmp	.LBB0_313
.LBB0_261:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_262:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	-160(%rbp), %r13        # 8-byte Folded Reload
	sarq	$2, %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, %r13
	.p2align	4, 0x90
.LBB0_263:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_266
# %bb.264:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_314
# %bb.265:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
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
	je	.LBB0_315
# %bb.267:                              #   in Loop: Header=BB0_263 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB0_290
# %bb.268:                              #   in Loop: Header=BB0_263 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB0_291
# %bb.269:                              #   in Loop: Header=BB0_263 Depth=2
	movl	%ebx, (%r13)
	addq	$4, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_263
.LBB0_270:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_271:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	negq	%r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_272:                              #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_275
# %bb.273:                              #   in Loop: Header=BB0_272 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_320
# %bb.274:                              #   in Loop: Header=BB0_272 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB0_275:                              #   in Loop: Header=BB0_272 Depth=2
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
	je	.LBB0_321
# %bb.276:                              #   in Loop: Header=BB0_272 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	je	.LBB0_292
# %bb.277:                              #   in Loop: Header=BB0_272 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_293
# %bb.278:                              #   in Loop: Header=BB0_272 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$-1, %r13
	jmp	.LBB0_272
.LBB0_279:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_296
# %bb.280:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_297
.LBB0_281:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_282:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB0_327:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_328
.LBB0_283:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_301
.LBB0_284:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_299
.LBB0_285:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rsi
.LBB0_286:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_339
# %bb.287:                              # %._crit_edge54
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	-64(%rbp), %edi         # 4-byte Reload
.LBB0_288:                              #   in Loop: Header=BB0_2 Depth=1
	addl	-96(%rbp), %esi         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jne	.LBB0_331
# %bb.289:                              #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_331
.LBB0_290:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_291:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_316
.LBB0_292:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_293:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_322
.LBB0_294:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_307
# %bb.295:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_308
.LBB0_296:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_297:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_328
.LBB0_298:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_299:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_300:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_339
.LBB0_301:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addl	-96(%rbp), %esi         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -64(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_312
# %bb.302:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_313
.LBB0_303:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_257
.LBB0_304:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	jmp	.LBB0_232
.LBB0_305:                              #   in Loop: Header=BB0_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_325
# %bb.306:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_326
.LBB0_307:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_308:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_328
.LBB0_309:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	jmp	.LBB0_168
.LBB0_310:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_311:                              # %.loopexit19
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	subl	%r13d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB0_312:                              #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB0_313:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_332
.LBB0_314:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_315:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_316:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rsi
	subq	-88(%rbp), %rsi         # 8-byte Folded Reload
	shrq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB0_342
# %bb.317:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rax
	movl	$0, (%r13)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_318:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_319:                              #   in Loop: Header=BB0_2 Depth=1
	addl	-96(%rbp), %esi         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_332
.LBB0_320:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_321:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_322:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subl	%r13d, %ecx
	jmp	.LBB0_330
.LBB0_323:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_324:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_328:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_329:                              #   in Loop: Header=BB0_2 Depth=1
	movq	%r13, %rax
	leaq	-336(%rbp), %rcx
	subq	%rcx, %rax
	shrq	$2, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addl	%eax, %ecx
	movq	%r13, %rax
.LBB0_330:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB0_331:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB0_332:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_2
	jmp	.LBB0_342
.LBB0_325:                              #   in Loop: Header=BB0_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_326:                              #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB0_327
.LBB0_333:
	xorl	%r15d, %r15d
	jmp	.LBB0_342
.LBB0_334:                              # %.loopexit
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_342
.LBB0_336:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_337:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_338:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_339:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB0_341
# %bb.340:
	movzwl	16(%r14), %eax
	andl	$64, %eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_342
.LBB0_341:
	movl	$-1, %r15d
.LBB0_342:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_343:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_342
# %bb.344:
	movl	-4(%r13), %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_342
.LBB0_345:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	callq	_sungetwc_r
	jmp	.LBB0_338
.Lfunc_end0:
	.size	__ssvfiwscanf_r, .Lfunc_end0-__ssvfiwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_341
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_30
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_25
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
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
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_62
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_26
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_58
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_57
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_60
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_63
	.quad	.LBB0_64
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_16
	.quad	.LBB0_65
	.quad	.LBB0_24
	.quad	.LBB0_334
	.quad	.LBB0_18
	.quad	.LBB0_334
	.quad	.LBB0_36
	.quad	.LBB0_66
	.quad	.LBB0_67
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_59
	.quad	.LBB0_24
	.quad	.LBB0_69
	.quad	.LBB0_334
	.quad	.LBB0_334
	.quad	.LBB0_57
	.quad	.LBB0_334
	.quad	.LBB0_24
.LJTI0_1:
	.quad	.LBB0_81
	.quad	.LBB0_87
	.quad	.LBB0_92
	.quad	.LBB0_97
.LJTI0_2:
	.quad	.LBB0_110
	.quad	.LBB0_132
	.quad	.LBB0_110
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_117
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_100
	.quad	.LBB0_112
	.quad	.LBB0_112
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_114
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_108
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_132
	.quad	.LBB0_114
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
	.type	__ssvfiwscanf_r.basefix,@object # @__ssvfiwscanf_r.basefix
	.section	.rodata,"a",@progbits
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
