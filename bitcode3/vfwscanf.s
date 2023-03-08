	.text
	.file	"vfwscanf.c"
	.globl	vfwscanf                # -- Begin function vfwscanf
	.p2align	4, 0x90
	.type	vfwscanf,@function
vfwscanf:                               # @vfwscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB0_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__svfwscanf_r           # TAILCALL
.Lfunc_end0:
	.size	vfwscanf, .Lfunc_end0-vfwscanf
                                        # -- End function
	.globl	__svfwscanf_r           # -- Begin function __svfwscanf_r
	.p2align	4, 0x90
	.type	__svfwscanf_r,@function
__svfwscanf_r:                          # @__svfwscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1592, %rsp             # imm = 0x638
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %r13d
	leaq	-148(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%rbx, %rsi
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	je	.LBB1_359
# %bb.1:
	movl	%r13d, -220(%rbp)       # 4-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	leaq	8(%r12), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_12 Depth 4
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_119 Depth 2
                                        #     Child Loop BB1_323 Depth 2
                                        #     Child Loop BB1_102 Depth 2
                                        #     Child Loop BB1_92 Depth 2
                                        #     Child Loop BB1_232 Depth 2
                                        #     Child Loop BB1_276 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_226 Depth 2
                                        #     Child Loop BB1_258 Depth 2
                                        #     Child Loop BB1_216 Depth 2
                                        #     Child Loop BB1_205 Depth 2
	movslq	%r12d, %r13
	movq	%rsi, %r12
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_12 Depth 4
	addq	$4, %r12
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB1_8
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=3
	movl	%eax, %ebx
	movl	%eax, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=2
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	_ungetwc_r
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=2
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	jne	.LBB1_3
	jmp	.LBB1_360
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
	cmpl	$37, %ebx
	jne	.LBB1_25
# %bb.9:                                # %.preheader5
                                        #   in Loop: Header=BB1_3 Depth=2
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%rbx,%rax,2), %r14
	addq	$-48, %r14
.LBB1_11:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_12 Depth 4
	movq	%r12, %rax
.LBB1_12:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ebx
	cmpq	$122, %rbx
	ja	.LBB1_360
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=4
	leaq	4(%rax), %r12
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB1_18
# %bb.15:                               #   in Loop: Header=BB1_12 Depth=4
	movq	%r12, %rax
	orl	%ecx, %r15d
	jmp	.LBB1_12
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_12 Depth=4
	movq	%r12, %rax
	jmp	.LBB1_20
.LBB1_18:                               #   in Loop: Header=BB1_12 Depth=4
	addq	$8, %rax
	orl	%ecx, %r15d
	jmp	.LBB1_12
.LBB1_19:                               #   in Loop: Header=BB1_12 Depth=4
	addq	$8, %rax
.LBB1_20:                               #   in Loop: Header=BB1_12 Depth=4
	addl	$1, %ecx
	orl	%ecx, %r15d
	jmp	.LBB1_12
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$1, %r15d
	jmp	.LBB1_11
.LBB1_22:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$16, %r15d
	jmp	.LBB1_11
.LBB1_23:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$2, %r15d
	jmp	.LBB1_11
.LBB1_24:                               # %.loopexit7
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_368
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	%ebx, %eax
	jne	.LBB1_367
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=2
	addq	$1, %r13
	movl	(%r12), %ebx
	testl	%ebx, %ebx
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB1_3
	jmp	.LBB1_360
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$16, %r15b
	jne	.LBB1_34
# %bb.29:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$8, %r15b
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB1_35
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$4, %r15b
	jne	.LBB1_37
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %r15b
	jne	.LBB1_41
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_45
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_46
.LBB1_34:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_7
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_39
# %bb.36:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_40
.LBB1_37:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_43
# %bb.38:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_44
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_40:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB1_7
.LBB1_41:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_48
.LBB1_43:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_44:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB1_7
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_46:                               #   in Loop: Header=BB1_3 Depth=2
	movq	(%rcx), %rax
	movl	%r13d, (%rax)
	jmp	.LBB1_7
.LBB1_47:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_48:                               #   in Loop: Header=BB1_3 Depth=2
	movq	(%rcx), %rax
	movq	%r13, (%rax)
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_49:                               # %.loopexit8
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$4, %cl
	jmp	.LBB1_66
.LBB1_50:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$512, %r15d             # imm = 0x200
	jmp	.LBB1_63
.LBB1_51:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r15d
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r15d
	xorl	%ecx, %ecx
	jmp	.LBB1_66
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r15d
.LBB1_54:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$2, %cl
	jmp	.LBB1_66
.LBB1_55:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r12, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	.p2align	4, 0x90
.LBB1_56:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsi), %eax
	addq	$4, %rsi
	cmpl	$93, %eax
	je	.LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_56 Depth=2
	testl	%eax, %eax
	jne	.LBB1_56
.LBB1_58:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r15d
	leaq	-4(%rsi), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movb	$1, %cl
	movq	%r12, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_67
.LBB1_59:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %cl
	movl	$_wcstol_r, %eax
	jmp	.LBB1_65
.LBB1_60:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %cl
	movl	$_wcstol_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_61:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$8, -100(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_62:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$544, %r15d             # imm = 0x220
.LBB1_63:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$16, -100(%rbp)         # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_64:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %cl
	movl	$_wcstoul_r, %eax
.LBB1_65:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$10, -100(%rbp)         # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_66:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rsi
.LBB1_67:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$64, %r15b
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	jne	.LBB1_73
# %bb.68:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %r12d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_368
# %bb.69:                               # %.preheader38
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	.p2align	4, 0x90
.LBB1_70:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_70 Depth=2
	addl	$1, %r13d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	.LBB1_70
	jmp	.LBB1_368
	.p2align	4, 0x90
.LBB1_72:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%r12d, %ecx
.LBB1_73:                               #   in Loop: Header=BB1_2 Depth=1
	cmpb	$4, %cl
	ja	.LBB1_79
# %bb.74:                               #   in Loop: Header=BB1_2 Depth=1
	movzbl	%cl, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_75:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%r14, %r14
	movl	$1, %eax
	cmoveq	%rax, %r14
	testb	$1, %r15b
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_164
# %bb.76:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	jne	.LBB1_202
# %bb.77:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_200
# %bb.78:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_201
.LBB1_79:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %r12d
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_356
.LBB1_80:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$1, %r14
	movl	$0, %ebx
	sbbq	%rbx, %rbx
	orq	%r14, %rbx
	testb	$1, %r15b
	je	.LBB1_167
# %bb.81:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %eax
	andl	$16, %eax
	je	.LBB1_167
# %bb.82:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_360
# %bb.83:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-200(%rbp), %r12        # 8-byte Reload
	subq	-184(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	movq	%r12, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_84:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	cmpq	%rax, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB1_177
# %bb.85:                               #   in Loop: Header=BB1_84 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -208(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_177
# %bb.86:                               #   in Loop: Header=BB1_84 Depth=2
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movq	%r12, %rax
	addq	$1, %rax
	cmpl	$-1, %ebx
	jne	.LBB1_84
# %bb.87:                               # %.loopexit21
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r12
	addl	%r13d, %r12d
	jmp	.LBB1_356
.LBB1_88:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$1, %r14
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r14, %r12
	testb	$1, %r15b
	je	.LBB1_171
# %bb.89:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %eax
	andl	$16, %eax
	je	.LBB1_171
# %bb.90:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_96
# %bb.91:                               # %.preheader28
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r14d
	negq	%r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_92:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %r12
	je	.LBB1_199
# %bb.93:                               #   in Loop: Header=BB1_92 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_199
# %bb.94:                               #   in Loop: Header=BB1_92 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	movl	%eax, %r14d
	addq	$-1, %rbx
	cmpl	$-1, %eax
	jne	.LBB1_92
# %bb.95:                               # %.loopexit29
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	%ebx, %r13d
.LBB1_96:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %r12d
	jmp	.LBB1_250
.LBB1_97:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%r14), %rax
	orl	$1408, %r15d            # imm = 0x580
	cmpq	$348, %rax              # imm = 0x15C
	movl	$349, %eax              # imm = 0x15D
	cmovaq	%rax, %r14
	testq	%r14, %r14
	je	.LBB1_175
# %bb.98:                               # %.preheader30
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-1632(%rbp), %r12
	xorl	%ebx, %ebx
	jmp	.LBB1_102
	.p2align	4, 0x90
.LBB1_99:                               #   in Loop: Header=BB1_102 Depth=2
	movslq	-100(%rbp), %rcx        # 4-byte Folded Reload
	movswl	__svfwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB1_100:                              #   in Loop: Header=BB1_102 Depth=2
	andl	$-897, %r15d            # imm = 0xFC7F
.LBB1_101:                              #   in Loop: Header=BB1_102 Depth=2
	addq	$1, %rbx
	movl	%eax, (%r12)
	addq	$4, %r12
	cmpq	%rbx, %r14
	je	.LBB1_184
.LBB1_102:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ecx
	addl	$1, %ecx
	cmpl	$121, %ecx
	ja	.LBB1_179
# %bb.103:                              #   in Loop: Header=BB1_102 Depth=2
	jmpq	*.LJTI1_3(,%rcx,8)
.LBB1_104:                              #   in Loop: Header=BB1_102 Depth=2
	cmpl	$11, -100(%rbp)         # 4-byte Folded Reload
	jge	.LBB1_100
	jmp	.LBB1_179
.LBB1_106:                              #   in Loop: Header=BB1_102 Depth=2
	testb	%r15b, %r15b
	jns	.LBB1_179
# %bb.107:                              #   in Loop: Header=BB1_102 Depth=2
	andl	$-65665, %r15d          # imm = 0xFFFEFF7F
	orl	$65536, %r15d           # imm = 0x10000
	jmp	.LBB1_101
.LBB1_108:                              #   in Loop: Header=BB1_102 Depth=2
	movslq	-100(%rbp), %rcx        # 4-byte Folded Reload
	movswl	__svfwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	addq	$-1, %rcx
	cmpq	$8, %rcx
	jae	.LBB1_100
	jmp	.LBB1_179
.LBB1_110:                              #   in Loop: Header=BB1_102 Depth=2
	testl	$512, %r15d             # imm = 0x200
	je	.LBB1_179
# %bb.111:                              #   in Loop: Header=BB1_102 Depth=2
	movl	%r15d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-1628(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	cmpq	%rcx, %r12
	jne	.LBB1_179
# %bb.112:                              #   in Loop: Header=BB1_102 Depth=2
	andl	$-513, %r15d            # imm = 0xFDFF
	movl	$16, -100(%rbp)         # 4-byte Folded Spill
	jmp	.LBB1_101
.LBB1_113:                              #   in Loop: Header=BB1_102 Depth=2
	movl	%r15d, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-100(%rbp), %esi        # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%r15d, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_115
# %bb.114:                              #   in Loop: Header=BB1_102 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB1_116
.LBB1_115:                              #   in Loop: Header=BB1_102 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB1_116:                              #   in Loop: Header=BB1_102 Depth=2
	movl	%ecx, %r15d
	jmp	.LBB1_101
.LBB1_117:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%r14), %rax
	orl	$1920, %r15d            # imm = 0x780
	cmpq	$348, %rax              # imm = 0x15C
	movq	%r14, %r12
	movl	$349, %ecx              # imm = 0x15D
	cmovaq	%rcx, %r12
	xorl	%ecx, %ecx
	testq	%r12, %r12
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	je	.LBB1_176
# %bb.118:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$-349, %r14d            # imm = 0xFEA3
	cmpq	$348, %rax              # imm = 0x15C
	cmovbel	%ecx, %r14d
	leaq	-1632(%rbp), %rbx
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_119:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
                                        # kill: def $eax killed $eax def $rax
	leal	-43(%rax), %ecx
	cmpl	$78, %ecx
	ja	.LBB1_141
# %bb.120:                              #   in Loop: Header=BB1_119 Depth=2
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_121:                              #   in Loop: Header=BB1_119 Depth=2
	movsbl	-112(%rbp), %ecx        # 1-byte Folded Reload
	movsbl	-96(%rbp), %edx         # 1-byte Folded Reload
	addl	%ecx, %edx
	jne	.LBB1_310
# %bb.122:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-385, %r15d            # imm = 0xFE7F
	jmp	.LBB1_160
.LBB1_123:                              #   in Loop: Header=BB1_119 Depth=2
	testb	%r15b, %r15b
	jns	.LBB1_310
# %bb.124:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-129, %r15d
	jmp	.LBB1_160
.LBB1_125:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$1, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_310
# %bb.126:                              #   in Loop: Header=BB1_119 Depth=2
	movb	$2, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_160
.LBB1_127:                              #   in Loop: Header=BB1_119 Depth=2
	movl	%r15d, %ecx
	andl	$1280, %ecx             # imm = 0x500
	cmpl	$1024, %ecx             # imm = 0x400
	je	.LBB1_130
# %bb.128:                              #   in Loop: Header=BB1_119 Depth=2
	testl	$1024, %r15d            # imm = 0x400
	je	.LBB1_310
# %bb.129:                              #   in Loop: Header=BB1_119 Depth=2
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	je	.LBB1_310
.LBB1_130:                              #   in Loop: Header=BB1_119 Depth=2
	movq	-136(%rbp), %rdx        # 8-byte Reload
	subq	-192(%rbp), %rdx        # 8-byte Folded Reload
	testl	$512, %r15d             # imm = 0x200
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmoveq	%rdx, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmoveq	%rbx, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	andl	$-1921, %r15d           # imm = 0xF87F
	orl	$384, %r15d             # imm = 0x180
	jmp	.LBB1_151
.LBB1_131:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$2, -96(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_310
# %bb.132:                              #   in Loop: Header=BB1_119 Depth=2
	movb	$3, %cl
	jmp	.LBB1_159
.LBB1_133:                              #   in Loop: Header=BB1_119 Depth=2
	movl	%r15d, %ecx
	andl	$1792, %ecx             # imm = 0x700
	cmpl	$1792, %ecx             # imm = 0x700
	jne	.LBB1_152
# %bb.134:                              #   in Loop: Header=BB1_119 Depth=2
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_152
# %bb.135:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$0, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_152
# %bb.136:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-1921, %r15d           # imm = 0xF87F
	movb	$1, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_151
.LBB1_137:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$6, -96(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_310
# %bb.138:                              #   in Loop: Header=BB1_119 Depth=2
	movb	$7, %cl
	jmp	.LBB1_159
.LBB1_139:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$7, -96(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_310
# %bb.140:                              #   in Loop: Header=BB1_119 Depth=2
	movb	$8, %cl
	jmp	.LBB1_159
.LBB1_141:                              #   in Loop: Header=BB1_119 Depth=2
	testl	$512, %r15d             # imm = 0x200
	je	.LBB1_309
# %bb.142:                              #   in Loop: Header=BB1_119 Depth=2
	cmpl	-220(%rbp), %eax        # 4-byte Folded Reload
	jne	.LBB1_309
# %bb.143:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-641, %r15d            # imm = 0xFD7F
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB1_160
.LBB1_144:                              #   in Loop: Header=BB1_119 Depth=2
	testl	$256, %r15d             # imm = 0x100
	je	.LBB1_121
# %bb.145:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-129, %r15d
	addq	$1, -136(%rbp)          # 8-byte Folded Spill
	testl	%r14d, %r14d
	je	.LBB1_162
# %bb.146:                              #   in Loop: Header=BB1_119 Depth=2
	addl	$-1, %r14d
	addq	$1, %r12
	jmp	.LBB1_163
.LBB1_147:                              #   in Loop: Header=BB1_119 Depth=2
	movl	%r15d, %ecx
	andl	$1792, %ecx             # imm = 0x700
	cmpl	$1792, %ecx             # imm = 0x700
	jne	.LBB1_154
# %bb.148:                              #   in Loop: Header=BB1_119 Depth=2
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_154
# %bb.149:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$0, -96(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_154
# %bb.150:                              #   in Loop: Header=BB1_119 Depth=2
	andl	$-1921, %r15d           # imm = 0xF87F
	movb	$1, %cl
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB1_151:                              #   in Loop: Header=BB1_119 Depth=2
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_160
.LBB1_152:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$2, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_156
# %bb.153:                              #   in Loop: Header=BB1_119 Depth=2
	movb	$3, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_160
.LBB1_154:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$5, -96(%rbp)           # 1-byte Folded Reload
	je	.LBB1_158
# %bb.155:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$3, -96(%rbp)           # 1-byte Folded Reload
	je	.LBB1_158
	jmp	.LBB1_310
.LBB1_156:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$4, -96(%rbp)           # 1-byte Folded Reload
	je	.LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_119 Depth=2
	cmpb	$1, -96(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_310
.LBB1_158:                              #   in Loop: Header=BB1_119 Depth=2
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addb	$1, %cl
	.p2align	4, 0x90
.LBB1_159:                              #   in Loop: Header=BB1_119 Depth=2
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB1_160:                              #   in Loop: Header=BB1_119 Depth=2
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	%eax, (%rbx)
.LBB1_161:                              #   in Loop: Header=BB1_119 Depth=2
	addl	$1, %r13d
	leaq	-1632(,%rcx,4), %rbx
	addq	%rbp, %rbx
	addq	$-1, %r12
	jne	.LBB1_119
	jmp	.LBB1_312
.LBB1_162:                              #   in Loop: Header=BB1_119 Depth=2
	xorl	%r14d, %r14d
.LBB1_163:                              #   in Loop: Header=BB1_119 Depth=2
	movq	-72(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_161
.LBB1_164:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	jne	.LBB1_214
# %bb.165:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_212
# %bb.166:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_213
.LBB1_167:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r15b
	jne	.LBB1_180
# %bb.168:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB1_254
# %bb.169:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_252
# %bb.170:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_253
.LBB1_171:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r15b
	jne	.LBB1_182
# %bb.172:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB1_273
# %bb.173:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_271
# %bb.174:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_272
.LBB1_175:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%ebx, %ebx
	leaq	-1632(%rbp), %r12
	jmp	.LBB1_185
.LBB1_176:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-1632(%rbp), %rbx
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_315
.LBB1_177:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	_ungetwc_r
	testl	%r12d, %r12d
	jne	.LBB1_178
	jmp	.LBB1_360
.LBB1_179:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	jmp	.LBB1_186
.LBB1_180:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movq	%rbx, %r14
	cmpq	$40, %rcx
	ja	.LBB1_223
# %bb.181:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_224
.LBB1_182:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	%r12, -112(%rbp)        # 8-byte Spill
	ja	.LBB1_229
# %bb.183:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_230
.LBB1_184:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %ebx
.LBB1_185:                              # %..loopexit32_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_186:                              #   in Loop: Header=BB1_2 Depth=1
	testl	$256, %r15d             # imm = 0x100
	jne	.LBB1_362
# %bb.187:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%r12), %esi
	movl	%esi, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB1_189
# %bb.188:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %r12
	movq	%r14, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_189:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	jne	.LBB1_196
# %bb.190:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%r12)
	movq	%r14, %rdi
	leaq	-1632(%rbp), %rsi
	xorl	%edx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	callq	*-176(%rbp)             # 8-byte Folded Reload
	testb	$32, %r15b
	jne	.LBB1_197
# %bb.191:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$8, %r15b
	jne	.LBB1_236
# %bb.192:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$4, %r15b
	jne	.LBB1_287
# %bb.193:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r15b
	jne	.LBB1_292
# %bb.194:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_302
# %bb.195:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_303
.LBB1_196:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_308
.LBB1_197:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_238
# %bb.198:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_239
.LBB1_199:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	%rdi, %r14
	movq	%r15, %rdx
	callq	_ungetwc_r
	subl	%ebx, %r13d
	movl	%r13d, %r12d
	jmp	.LBB1_251
.LBB1_200:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_201:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_202:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, -72(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB1_205
	.p2align	4, 0x90
.LBB1_203:                              #   in Loop: Header=BB1_205 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB1_368
.LBB1_204:                              #   in Loop: Header=BB1_205 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	addl	$1, %r15d
	subq	%rbx, %r14
	je	.LBB1_248
.LBB1_205:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_247
# %bb.206:                              #   in Loop: Header=BB1_205 Depth=2
	movl	%eax, %r12d
	callq	__locale_mb_cur_max
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_208
# %bb.207:                              #   in Loop: Header=BB1_205 Depth=2
	cltq
	cmpq	%rax, %r14
	jae	.LBB1_203
.LBB1_208:                              #   in Loop: Header=BB1_205 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB1_368
# %bb.209:                              #   in Loop: Header=BB1_205 Depth=2
	movq	%rax, %rbx
	cmpq	%r14, %rax
	ja	.LBB1_246
# %bb.210:                              #   in Loop: Header=BB1_205 Depth=2
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_204
# %bb.211:                              #   in Loop: Header=BB1_205 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_204
.LBB1_212:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_213:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rbx
.LBB1_214:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB1_216
	.p2align	4, 0x90
.LBB1_215:                              #   in Loop: Header=BB1_216 Depth=2
	addq	$1, %r12
	cmpq	%r12, %r14
	je	.LBB1_221
.LBB1_216:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_219
# %bb.217:                              #   in Loop: Header=BB1_216 Depth=2
	testb	$16, %r15b
	jne	.LBB1_215
# %bb.218:                              #   in Loop: Header=BB1_216 Depth=2
	movl	%eax, (%rbx)
	addq	$4, %rbx
	jmp	.LBB1_215
.LBB1_219:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	testl	%r12d, %r12d
	je	.LBB1_368
# %bb.220:                              # %._crit_edge78
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rax
	jmp	.LBB1_222
.LBB1_221:                              # %.loopexit17
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -96(%rbp)         # 8-byte Spill
.LBB1_222:                              #   in Loop: Header=BB1_2 Depth=1
	andl	$16, %r15d
	addl	%r13d, %r12d
	cmpl	$1, %r15d
	jmp	.LBB1_249
.LBB1_223:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_224:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%r12, %rax
	movq	%r12, -96(%rbp)         # 8-byte Spill
	cmpl	$-1, %ebx
	je	.LBB1_241
# %bb.225:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-200(%rbp), %r12        # 8-byte Reload
	subq	-184(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_226:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %r14
	jb	.LBB1_240
# %bb.227:                              #   in Loop: Header=BB1_226 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -208(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_240
# %bb.228:                              #   in Loop: Header=BB1_226 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	.LBB1_226
	jmp	.LBB1_241
.LBB1_229:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_230:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	(%rax), %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_244
# %bb.231:                              # %.preheader26
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	negq	-112(%rbp)              # 8-byte Folded Spill
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_232:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB1_243
# %bb.233:                              #   in Loop: Header=BB1_232 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_243
# %bb.234:                              #   in Loop: Header=BB1_232 Depth=2
	movl	%ebx, (%r12)
	addq	$4, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	addq	$-1, %r14
	cmpl	$-1, %eax
	jne	.LBB1_232
# %bb.235:                              # %.loopexit27
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	%r14d, %r13d
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_245
.LBB1_236:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_289
# %bb.237:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_290
.LBB1_238:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_239:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rcx), %rcx
.LBB1_306:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_307
.LBB1_240:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	_ungetwc_r
.LBB1_241:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r12
	subq	-72(%rbp), %r12         # 8-byte Folded Reload
	shrq	$2, %r12
	testl	%r12d, %r12d
	je	.LBB1_360
# %bb.242:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%rax)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_178:                              # %._crit_edge72
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addl	%r13d, %r12d
	jmp	.LBB1_356
.LBB1_243:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	_ungetwc_r
	subl	%r14d, %r13d
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_244:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
.LBB1_245:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rcx
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movl	$0, (%r12)
	addl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%r13d, %r12d
	jmp	.LBB1_356
.LBB1_246:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_247:                              #   in Loop: Header=BB1_2 Depth=1
	testl	%r15d, %r15d
	je	.LBB1_368
.LBB1_248:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	andl	$16, %eax
	movq	%r15, %r12
	addl	%r13d, %r12d
	cmpl	$1, %eax
.LBB1_249:                              #   in Loop: Header=BB1_2 Depth=1
	adcl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB1_250:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_251:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_356
.LBB1_252:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_253:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_254:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_266
# %bb.255:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r12d
	movq	-200(%rbp), %rax        # 8-byte Reload
	subq	-184(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_258
.LBB1_256:                              #   in Loop: Header=BB1_258 Depth=2
	movq	%r14, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-168(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB1_368
.LBB1_257:                              #   in Loop: Header=BB1_258 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	movq	-72(%rbp), %r15         # 8-byte Reload
	testb	$16, %r15b
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	subq	%rbx, %rax
	movq	%rax, %rbx
	movq	-136(%rbp), %rax        # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r12d
	cmpl	$-1, %eax
	je	.LBB1_268
.LBB1_258:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	jb	.LBB1_267
# %bb.259:                              #   in Loop: Header=BB1_258 Depth=2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -208(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_267
# %bb.260:                              #   in Loop: Header=BB1_258 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r15b
	jne	.LBB1_262
# %bb.261:                              #   in Loop: Header=BB1_258 Depth=2
	cltq
	cmpq	%rax, -112(%rbp)        # 8-byte Folded Reload
	jae	.LBB1_256
.LBB1_262:                              #   in Loop: Header=BB1_258 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB1_368
# %bb.263:                              #   in Loop: Header=BB1_258 Depth=2
	movq	%rax, %rbx
	cmpq	-112(%rbp), %rax        # 8-byte Folded Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_267
# %bb.264:                              #   in Loop: Header=BB1_258 Depth=2
	testb	$16, %r15b
	jne	.LBB1_257
# %bb.265:                              #   in Loop: Header=BB1_258 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_257
.LBB1_266:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_268
.LBB1_267:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movl	%r12d, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_268:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	jne	.LBB1_270
# %bb.269:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_270:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-136(%rbp), %r12        # 8-byte Reload
	addl	%r13d, %r12d
	jmp	.LBB1_356
.LBB1_271:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_272:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_273:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %esi
	cmpl	$-1, %eax
	setne	%al
	testq	%r12, %r12
	je	.LBB1_286
# %bb.274:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %esi
	je	.LBB1_286
# %bb.275:                              # %.preheader22
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, -72(%rbp)         # 8-byte Spill
.LBB1_276:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movl	%esi, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_297
# %bb.277:                              #   in Loop: Header=BB1_276 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r15b
	jne	.LBB1_280
# %bb.278:                              #   in Loop: Header=BB1_276 Depth=2
	cltq
	cmpq	%rax, %r12
	jb	.LBB1_280
# %bb.279:                              #   in Loop: Header=BB1_276 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-112(%rbp), %esi        # 4-byte Reload
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	jne	.LBB1_284
	jmp	.LBB1_368
.LBB1_280:                              #   in Loop: Header=BB1_276 Depth=2
	leaq	-57(%rbp), %rdi
	movl	-112(%rbp), %esi        # 4-byte Reload
	leaq	-168(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB1_368
# %bb.281:                              #   in Loop: Header=BB1_276 Depth=2
	movq	%rax, %rbx
	cmpq	%r12, %rax
	ja	.LBB1_296
# %bb.282:                              #   in Loop: Header=BB1_276 Depth=2
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_284
# %bb.283:                              #   in Loop: Header=BB1_276 Depth=2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
.LBB1_284:                              #   in Loop: Header=BB1_276 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	movq	-72(%rbp), %r15         # 8-byte Reload
	testb	$16, %r15b
	cmoveq	%rax, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	addl	$1, %r13d
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %esi
	cmpl	$-1, %eax
	setne	%al
	subq	%rbx, %r12
	je	.LBB1_286
# %bb.285:                              #   in Loop: Header=BB1_276 Depth=2
	cmpl	$-1, %esi
	jne	.LBB1_276
.LBB1_286:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %r12d
	testb	%al, %al
	jne	.LBB1_298
	jmp	.LBB1_299
.LBB1_287:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_294
# %bb.288:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_295
.LBB1_289:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_290:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_307
.LBB1_292:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_304
# %bb.293:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_305
.LBB1_294:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_295:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_307
.LBB1_296:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB1_297:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-112(%rbp), %esi        # 4-byte Reload
.LBB1_298:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	%r13d, %r12d
.LBB1_299:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r15b
	je	.LBB1_301
# %bb.300:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_251
.LBB1_301:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_251
.LBB1_302:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_303:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_307:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_308:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rax
	movq	%r12, -96(%rbp)         # 8-byte Spill
	leaq	-1632(%rbp), %rcx
	subq	%rcx, %r12
	shrq	$2, %r12
	addl	%r12d, %r13d
	movl	%r13d, %r12d
	jmp	.LBB1_356
.LBB1_304:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_305:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rdx), %rcx
	jmp	.LBB1_306
.LBB1_309:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_311
.LBB1_310:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_311:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB1_312:                              #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	je	.LBB1_314
# %bb.313:                              #   in Loop: Header=BB1_2 Depth=1
	andl	$-257, %r15d            # imm = 0xFEFF
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_316
.LBB1_314:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
.LBB1_315:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB1_316:                              #   in Loop: Header=BB1_2 Depth=1
	movsbl	-112(%rbp), %eax        # 1-byte Folded Reload
	addl	$-1, %eax
	cmpl	$1, %eax
	jbe	.LBB1_364
# %bb.317:                              #   in Loop: Header=BB1_2 Depth=1
	movsbl	%r12b, %eax
	addl	$-1, %eax
	cmpl	$6, %eax
	ja	.LBB1_321
# %bb.318:                              #   in Loop: Header=BB1_2 Depth=1
	cmpb	$3, %r12b
	jl	.LBB1_372
# %bb.319:                              #   in Loop: Header=BB1_2 Depth=1
	jne	.LBB1_322
.LBB1_321:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rbx
	jmp	.LBB1_325
.LBB1_322:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, -72(%rbp)         # 8-byte Spill
	leal	-4(%r12), %eax
	movzbl	%al, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	notq	%rax
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addb	$1, %r12b
	leaq	-1628(%rbp), %rax
	leaq	(%rax,%rcx,4), %rbx
	addq	$-8, %rbx
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_323:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	callq	_ungetwc_r
	addb	$-1, %r12b
	addq	$-4, %rbx
	cmpb	$4, %r12b
	jg	.LBB1_323
# %bb.324:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	notl	%eax
	movq	-72(%rbp), %r13         # 8-byte Reload
	addl	%eax, %r13d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB1_325:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-1632(,%rbx,4), %rdx
	addq	%rbp, %rdx
	testl	$256, %r15d             # imm = 0x100
	jne	.LBB1_327
# %bb.326:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %r12d
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_332
.LBB1_327:                              #   in Loop: Header=BB1_2 Depth=1
	testl	$1024, %r15d            # imm = 0x400
	jne	.LBB1_375
# %bb.328:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%rdx), %esi
	movl	%esi, %eax
	orl	$32, %eax
	cmpl	$101, %eax
	jne	.LBB1_330
# %bb.329:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %rdx
	movq	%rdx, %r12
	addl	$-1, %r13d
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_331
.LBB1_330:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rdx, %r12
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	_ungetwc_r
	movl	-8(%r12), %esi
	addq	$-8, %r12
	addl	$-2, %r13d
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB1_331:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_ungetwc_r
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %r12
.LBB1_332:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-160(%rbp), %rcx        # 8-byte Reload
	testb	$16, %r15b
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jne	.LBB1_336
# %bb.333:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%rdx)
	movl	%r15d, %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_337
# %bb.334:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subq	-192(%rbp), %rcx        # 8-byte Folded Reload
	je	.LBB1_340
# %bb.335:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rbx
	negq	%rcx
	movq	%rdx, %r13
	jmp	.LBB1_339
.LBB1_336:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_356
.LBB1_337:                              #   in Loop: Header=BB1_2 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_340
# %bb.338:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %r13        # 8-byte Reload
	leaq	4(%r13), %rsi
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_wcstol_r
	movq	%rax, %rcx
	subq	-160(%rbp), %rcx        # 8-byte Folded Reload
.LBB1_339:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-316(%rbp), %rax
	cmpq	%rax, %r13
	leaq	-320(%rbp), %rax
	cmovaeq	%rax, %r13
	movl	$21, %esi
	movl	$.L.str, %edx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	swprintf
.LBB1_340:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	leaq	-1632(%rbp), %rsi
	xorl	%edx, %edx
	callq	_wcstod_r
	testb	$1, %r15b
	jne	.LBB1_344
# %bb.341:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testb	$2, %r15b
	jne	.LBB1_346
# %bb.342:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_350
# %bb.343:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_351
.LBB1_344:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_348
# %bb.345:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_349
.LBB1_346:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	ja	.LBB1_353
# %bb.347:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_354
.LBB1_348:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_349:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB1_355
.LBB1_350:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_351:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rcx), %rbx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB1_357
# %bb.352:                              #   in Loop: Header=BB1_2 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB1_358
.LBB1_353:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_354:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rcx), %rax
	movsd	%xmm0, -232(%rbp)
	fldl	-232(%rbp)
	fstpt	(%rax)
.LBB1_355:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_356:                              #   in Loop: Header=BB1_2 Depth=1
	movl	(%rsi), %ebx
	testl	%ebx, %ebx
	jne	.LBB1_2
	jmp	.LBB1_360
.LBB1_357:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB1_358:                              #   in Loop: Header=BB1_2 Depth=1
	movss	%xmm0, (%rbx)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_251
.LBB1_359:
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
.LBB1_360:
	movl	-148(%rbp), %edi
	leaq	-148(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	-84(%rbp), %eax         # 4-byte Reload
	jmp	.LBB1_371
.LBB1_361:
	movl	-148(%rbp), %edi
	leaq	-148(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_370
.LBB1_362:
	testq	%rbx, %rbx
	je	.LBB1_360
# %bb.363:
	movl	-4(%r12), %esi
	movq	%r14, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	jmp	.LBB1_360
.LBB1_364:
	leaq	-1632(%rbp), %r14
	cmpq	%r14, %rbx
	jbe	.LBB1_360
# %bb.365:                              # %.preheader
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB1_366:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %esi
	addq	$-4, %rbx
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_ungetwc_r
	cmpq	%r14, %rbx
	ja	.LBB1_366
	jmp	.LBB1_360
.LBB1_367:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_368:
	movl	-148(%rbp), %edi
	leaq	-148(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_370
# %bb.369:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	16(%rcx), %dl
	andb	$64, %dl
	xorl	%ecx, %ecx
	cmpb	$1, %dl
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %eax
	jmp	.LBB1_371
.LBB1_370:
	movl	$-1, %eax
.LBB1_371:
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_372:
	testq	%rcx, %rcx
	jle	.LBB1_360
# %bb.373:                              # %.preheader3
	addq	$1, %rcx
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB1_374:                              # =>This Inner Loop Header: Depth=1
	movl	-1640(%rbp,%rcx,4), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	%rcx, %rbx
	callq	_ungetwc_r
	movq	%rbx, %rcx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_374
	jmp	.LBB1_360
.LBB1_375:
	testq	%rbx, %rbx
	jle	.LBB1_360
# %bb.376:                              # %.preheader1
	addq	$1, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_377:                              # =>This Inner Loop Header: Depth=1
	movl	-1640(%rbp,%rbx,4), %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_ungetwc_r
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB1_377
	jmp	.LBB1_360
.Lfunc_end1:
	.size	__svfwscanf_r, .Lfunc_end1-__svfwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_361
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_24
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_22
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_49
	.quad	.LBB1_360
	.quad	.LBB1_51
	.quad	.LBB1_360
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_23
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_53
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_50
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_55
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_49
	.quad	.LBB1_360
	.quad	.LBB1_52
	.quad	.LBB1_59
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_14
	.quad	.LBB1_60
	.quad	.LBB1_21
	.quad	.LBB1_360
	.quad	.LBB1_16
	.quad	.LBB1_360
	.quad	.LBB1_28
	.quad	.LBB1_61
	.quad	.LBB1_62
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_54
	.quad	.LBB1_21
	.quad	.LBB1_64
	.quad	.LBB1_360
	.quad	.LBB1_360
	.quad	.LBB1_50
	.quad	.LBB1_360
	.quad	.LBB1_21
.LJTI1_1:
	.quad	.LBB1_75
	.quad	.LBB1_80
	.quad	.LBB1_88
	.quad	.LBB1_97
	.quad	.LBB1_117
.LJTI1_2:
	.quad	.LBB1_123
	.quad	.LBB1_141
	.quad	.LBB1_123
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_144
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_125
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_127
	.quad	.LBB1_131
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_133
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_137
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_139
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_125
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_127
	.quad	.LBB1_131
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_147
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_133
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_137
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_139
.LJTI1_3:
	.quad	.LBB1_185
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_106
	.quad	.LBB1_179
	.quad	.LBB1_106
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_113
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_99
	.quad	.LBB1_108
	.quad	.LBB1_108
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_110
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_179
	.quad	.LBB1_110
                                        # -- End function
	.text
	.globl	__svfwscanf             # -- Begin function __svfwscanf
	.p2align	4, 0x90
	.type	__svfwscanf,@function
__svfwscanf:                            # @__svfwscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__svfwscanf_r           # TAILCALL
.Lfunc_end2:
	.size	__svfwscanf, .Lfunc_end2-__svfwscanf
                                        # -- End function
	.globl	_vfwscanf_r             # -- Begin function _vfwscanf_r
	.p2align	4, 0x90
	.type	_vfwscanf_r,@function
_vfwscanf_r:                            # @_vfwscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB3_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB3_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__svfwscanf_r           # TAILCALL
.Lfunc_end3:
	.size	_vfwscanf_r, .Lfunc_end3-_vfwscanf_r
                                        # -- End function
	.type	__svfwscanf_r.basefix,@object # @__svfwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	4
__svfwscanf_r.basefix:
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
	.size	__svfwscanf_r.basefix, 34

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
