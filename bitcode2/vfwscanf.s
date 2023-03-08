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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__svfwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r12
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	leaq	-132(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_391
# %bb.1:
	movq	%r15, -96(%rbp)         # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -148(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	xorl	%esi, %esi
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_12 Depth 3
                                        #         Child Loop BB1_13 Depth 4
                                        #     Child Loop BB1_71 Depth 2
                                        #     Child Loop BB1_78 Depth 2
                                        #     Child Loop BB1_123 Depth 2
                                        #     Child Loop BB1_350 Depth 2
                                        #     Child Loop BB1_184 Depth 2
                                        #     Child Loop BB1_295 Depth 2
                                        #     Child Loop BB1_173 Depth 2
                                        #     Child Loop BB1_267 Depth 2
                                        #     Child Loop BB1_288 Depth 2
                                        #     Child Loop BB1_98 Depth 2
                                        #     Child Loop BB1_251 Depth 2
                                        #     Child Loop BB1_236 Depth 2
                                        #     Child Loop BB1_224 Depth 2
	movslq	%esi, %r15
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_12 Depth 3
                                        #         Child Loop BB1_13 Depth 4
	addq	$4, %r13
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_9
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=3
	movl	%eax, %ebx
	movl	%eax, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_ungetwc_r
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_3
	jmp	.LBB1_392
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ebx
	jne	.LBB1_27
# %bb.10:                               # %.preheader5
                                        #   in Loop: Header=BB1_3 Depth=2
	xorl	%r8d, %r8d
	xorl	%r12d, %r12d
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=3
	leaq	(%r12,%r12,4), %rax
	leaq	(%rbx,%rax,2), %r12
	addq	$-48, %r12
.LBB1_12:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_13 Depth 4
	movq	%r13, %rax
.LBB1_13:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_12 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %rbx
	ja	.LBB1_392
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=4
	leaq	4(%rax), %r13
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rcx,4), %ecx
	je	.LBB1_19
# %bb.16:                               #   in Loop: Header=BB1_13 Depth=4
	movq	%r13, %rax
	jmp	.LBB1_22
.LBB1_17:                               #   in Loop: Header=BB1_13 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_13 Depth=4
	movq	%r13, %rax
	jmp	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_13 Depth=4
	addq	$8, %rax
	jmp	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_13 Depth=4
	addq	$8, %rax
.LBB1_21:                               #   in Loop: Header=BB1_13 Depth=4
	addl	$1, %ecx
.LBB1_22:                               #   in Loop: Header=BB1_13 Depth=4
	orl	%ecx, %r8d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_13
.LBB1_23:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$1, %r8d
	jmp	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$16, %r8d
	jmp	.LBB1_12
.LBB1_25:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$2, %r8d
	jmp	.LBB1_12
.LBB1_26:                               # %.loopexit7
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB1_27:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_394
# %bb.28:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB1_405
# %bb.29:                               #   in Loop: Header=BB1_3 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_3
	jmp	.LBB1_392
.LBB1_30:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	jne	.LBB1_36
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r8b
	jne	.LBB1_37
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r8b
	jne	.LBB1_39
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r8b
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_43
# %bb.34:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_47
# %bb.35:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_48
.LBB1_36:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_8
.LBB1_37:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	ja	.LBB1_41
# %bb.38:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_42
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	ja	.LBB1_45
# %bb.40:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_46
.LBB1_41:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_42:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r15b, (%rax)
	jmp	.LBB1_7
.LBB1_43:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_49
# %bb.44:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_50
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_46:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r15w, (%rax)
	jmp	.LBB1_7
.LBB1_47:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_48:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	%r15d, (%rax)
	jmp	.LBB1_7
.LBB1_49:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_50:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	%r15, (%rax)
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_51:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$4, %r14b
	jmp	.LBB1_77
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$512, %r8d              # imm = 0x200
	jmp	.LBB1_63
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r8d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r8d
	xorl	%r14d, %r14d
	jmp	.LBB1_77
.LBB1_55:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r8d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_56:                               # %.loopexit9
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$2, %r14b
	jmp	.LBB1_77
.LBB1_57:                               #   in Loop: Header=BB1_2 Depth=1
	movl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$94, %ecx
	jne	.LBB1_66
# %bb.58:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	addq	$8, %rax
	movl	$1, -148(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_67
.LBB1_59:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
	movl	$_wcstol_r, %eax
	jmp	.LBB1_65
.LBB1_60:                               # %.loopexit8
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
	movl	$_wcstol_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_77
.LBB1_61:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
	movl	$_wcstoul_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$8, -88(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_77
.LBB1_62:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$544, %r8d              # imm = 0x220
.LBB1_63:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
	movl	$_wcstoul_r, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$16, -88(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_77
.LBB1_64:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
	movl	$_wcstoul_r, %eax
.LBB1_65:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$10, -88(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_77
.LBB1_66:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -148(%rbp)          # 4-byte Folded Spill
	movq	%r13, %rax
.LBB1_67:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	jne	.LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %ecx
	addq	$4, %rax
.LBB1_69:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB1_74
# %bb.70:                               # %.preheader36
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$4, %rax
	.p2align	4, 0x90
.LBB1_71:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	je	.LBB1_75
# %bb.72:                               #   in Loop: Header=BB1_71 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_71
# %bb.73:                               # %.loopexit38
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %rax
.LBB1_74:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	addq	$4, %rax
	jmp	.LBB1_76
.LBB1_75:                               # %.loopexit37
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-4(%rax), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB1_76:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r8d
	movb	$1, %r14b
	movq	%r13, -176(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	.p2align	4, 0x90
.LBB1_77:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r8b
	movq	%r8, -80(%rbp)          # 8-byte Spill
	jne	.LBB1_82
	.p2align	4, 0x90
.LBB1_78:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_393
# %bb.79:                               #   in Loop: Header=BB1_78 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_78 Depth=2
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_78
	.p2align	4, 0x90
.LBB1_81:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r8          # 8-byte Reload
.LBB1_82:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r14b
	ja	.LBB1_90
# %bb.83:                               #   in Loop: Header=BB1_2 Depth=1
	movzbl	%r14b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_84:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB1_86
# %bb.85:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB1_86:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r8b
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	jne	.LBB1_112
# %bb.87:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r8b
	jne	.LBB1_220
# %bb.88:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_218
# %bb.89:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_219
.LBB1_90:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %esi
.LBB1_91:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_390
.LBB1_92:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB1_94
# %bb.93:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB1_94:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB1_115
# %bb.95:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r8b
	je	.LBB1_246
# %bb.96:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_310
# %bb.97:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-184(%rbp), %r14        # 8-byte Reload
	subq	-176(%rbp), %r14        # 8-byte Folded Reload
	sarq	$2, %r14
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_98:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	cmpq	%rsi, %r12
	je	.LBB1_304
# %bb.99:                               #   in Loop: Header=BB1_98 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -148(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_304
# %bb.100:                              #   in Loop: Header=BB1_98 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_98
# %bb.101:                              # %.loopexit19
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_311
.LBB1_102:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB1_104
# %bb.103:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB1_104:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB1_118
# %bb.105:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r8b
	jne	.LBB1_171
# %bb.106:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_266
.LBB1_107:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, -104(%rbp)        # 8-byte Spill
	leaq	-1(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB1_109
# %bb.108:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r12d             # imm = 0x15D
.LBB1_109:                              #   in Loop: Header=BB1_2 Depth=1
	orl	$1408, %r8d             # imm = 0x580
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1632(%rbp), %r15
	xorl	%ebx, %ebx
	jmp	.LBB1_184
.LBB1_110:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB1_121
# %bb.111:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r12d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r12d             # imm = 0x15D
	jmp	.LBB1_122
.LBB1_112:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, -104(%rbp)        # 8-byte Spill
	testb	$16, %r8b
	jne	.LBB1_234
# %bb.113:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_232
# %bb.114:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_233
.LBB1_115:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r8b
	jne	.LBB1_178
# %bb.116:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_244
# %bb.117:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_245
.LBB1_118:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r8b
	jne	.LBB1_180
# %bb.119:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_264
# %bb.120:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_265
.LBB1_121:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, -152(%rbp)          # 4-byte Folded Spill
.LBB1_122:                              #   in Loop: Header=BB1_2 Depth=1
	orl	$1920, %r8d             # imm = 0x780
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	-1632(%rbp), %r14
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_123:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r8, %rbx
	callq	_fgetwc_r
	movq	%rbx, %r8
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rax), %ecx
	cmpl	$78, %ecx
	ja	.LBB1_147
# %bb.124:                              #   in Loop: Header=BB1_123 Depth=2
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_125:                              #   in Loop: Header=BB1_123 Depth=2
	movsbl	-112(%rbp), %ecx        # 1-byte Folded Reload
	movsbl	-72(%rbp), %edx         # 1-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
	jne	.LBB1_340
# %bb.126:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-385, %r8d             # imm = 0xFE7F
	jmp	.LBB1_167
.LBB1_127:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	jns	.LBB1_340
# %bb.128:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-129, %r8d
	jmp	.LBB1_167
.LBB1_129:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_340
# %bb.130:                              #   in Loop: Header=BB1_123 Depth=2
	movb	$2, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_167
.LBB1_131:                              #   in Loop: Header=BB1_123 Depth=2
	movl	%r8d, %ecx
	andl	$1280, %ecx             # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %ecx             # imm = 0x400
	je	.LBB1_134
# %bb.132:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r8d             # imm = 0x400
	je	.LBB1_340
# %bb.133:                              #   in Loop: Header=BB1_123 Depth=2
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	je	.LBB1_340
.LBB1_134:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_123 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	-200(%rbp), %rcx        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r14, -208(%rbp)        # 8-byte Spill
.LBB1_136:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	orl	$384, %r8d              # imm = 0x180
	jmp	.LBB1_157
.LBB1_137:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_340
# %bb.138:                              #   in Loop: Header=BB1_123 Depth=2
	movb	$3, %cl
	jmp	.LBB1_166
.LBB1_139:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_158
# %bb.140:                              #   in Loop: Header=BB1_123 Depth=2
	cmpb	$0, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_158
# %bb.141:                              #   in Loop: Header=BB1_123 Depth=2
	movl	%r8d, %ecx
	andl	$1792, %ecx             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %ecx             # imm = 0x700
	jne	.LBB1_160
# %bb.142:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	movb	$1, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_157
.LBB1_143:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_340
# %bb.144:                              #   in Loop: Header=BB1_123 Depth=2
	movb	$7, %cl
	jmp	.LBB1_166
.LBB1_145:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$7, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_340
# %bb.146:                              #   in Loop: Header=BB1_123 Depth=2
	movb	$8, %cl
	jmp	.LBB1_166
.LBB1_147:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-188(%rbp), %eax        # 4-byte Folded Reload
	jne	.LBB1_330
# %bb.148:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r8d              # imm = 0x200
	je	.LBB1_329
# %bb.149:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-641, %r8d             # imm = 0xFD7F
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_167
.LBB1_150:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r8d              # imm = 0x100
	je	.LBB1_125
# %bb.151:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-129, %r8d
	addq	$1, -144(%rbp)          # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	-152(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_170
# %bb.152:                              #   in Loop: Header=BB1_123 Depth=2
	addl	$-1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	addq	$1, %r12
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_168
.LBB1_153:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_163
# %bb.154:                              #   in Loop: Header=BB1_123 Depth=2
	cmpb	$0, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_163
# %bb.155:                              #   in Loop: Header=BB1_123 Depth=2
	movl	%r8d, %ecx
	andl	$1792, %ecx             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %ecx             # imm = 0x700
	jne	.LBB1_339
# %bb.156:                              #   in Loop: Header=BB1_123 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	movb	$1, %cl
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB1_157:                              #   in Loop: Header=BB1_123 Depth=2
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB1_167
.LBB1_158:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, -112(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_161
# %bb.159:                              #   in Loop: Header=BB1_123 Depth=2
	movb	$3, %cl
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_167
.LBB1_160:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_161:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, -72(%rbp)           # 1-byte Folded Reload
	je	.LBB1_165
# %bb.162:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, -72(%rbp)           # 1-byte Folded Reload
	je	.LBB1_165
	jmp	.LBB1_340
.LBB1_163:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, -72(%rbp)           # 1-byte Folded Reload
	je	.LBB1_165
# %bb.164:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, -72(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_340
.LBB1_165:                              #   in Loop: Header=BB1_123 Depth=2
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addb	$1, %cl
.LBB1_166:                              #   in Loop: Header=BB1_123 Depth=2
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB1_167:                              #   in Loop: Header=BB1_123 Depth=2
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	%eax, (%r14)
.LBB1_168:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_169:                              #   in Loop: Header=BB1_123 Depth=2
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1632(,%rcx,4), %r14
	addq	%rbp, %r14
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	jne	.LBB1_123
	jmp	.LBB1_343
.LBB1_170:                              #   in Loop: Header=BB1_123 Depth=2
	movl	$0, -152(%rbp)          # 4-byte Folded Spill
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_169
.LBB1_171:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_177
# %bb.172:                              # %.preheader25
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r14d
	negq	%r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_173:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	je	.LBB1_305
# %bb.174:                              #   in Loop: Header=BB1_173 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_305
# %bb.175:                              #   in Loop: Header=BB1_173 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r14d
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_173
# %bb.176:                              # %.loopexit26
                                        #   in Loop: Header=BB1_2 Depth=1
	subl	%ebx, %r15d
.LBB1_177:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_389
.LBB1_178:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	%r15, -104(%rbp)        # 8-byte Spill
	ja	.LBB1_285
# %bb.179:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_286
.LBB1_180:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	%r15, -104(%rbp)        # 8-byte Spill
	ja	.LBB1_292
# %bb.181:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_293
.LBB1_182:                              #   in Loop: Header=BB1_184 Depth=2
	andl	$-1409, %r8d            # imm = 0xFA7F
	.p2align	4, 0x90
.LBB1_183:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r15
	cmpq	%rbx, %r12
	je	.LBB1_202
.LBB1_184:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rax), %ecx
	cmpl	$77, %ecx
	ja	.LBB1_200
# %bb.185:                              #   in Loop: Header=BB1_184 Depth=2
	jmpq	*.LJTI1_3(,%rcx,8)
.LBB1_186:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -88(%rbp)          # 4-byte Folded Reload
	jge	.LBB1_191
	jmp	.LBB1_203
	.p2align	4, 0x90
.LBB1_187:                              #   in Loop: Header=BB1_184 Depth=2
	movslq	-88(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB1_191
.LBB1_188:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r8
	testb	%r8b, %r8b
	jns	.LBB1_203
# %bb.189:                              #   in Loop: Header=BB1_184 Depth=2
	andl	$-65665, %r8d           # imm = 0xFFFEFF7F
	orl	$65536, %r8d            # imm = 0x10000
	jmp	.LBB1_183
.LBB1_190:                              #   in Loop: Header=BB1_184 Depth=2
	movslq	-88(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rcx
	jb	.LBB1_203
	.p2align	4, 0x90
.LBB1_191:                              #   in Loop: Header=BB1_184 Depth=2
	movq	%r14, %r8
.LBB1_192:                              #   in Loop: Header=BB1_184 Depth=2
	andl	$-897, %r8d             # imm = 0xFC7F
	jmp	.LBB1_183
.LBB1_193:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r8
	testl	$512, %r8d              # imm = 0x200
	je	.LBB1_203
# %bb.194:                              #   in Loop: Header=BB1_184 Depth=2
	movl	%r8d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-1628(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r15
	jne	.LBB1_203
# %bb.195:                              #   in Loop: Header=BB1_184 Depth=2
	andl	$-513, %r8d             # imm = 0xFDFF
	movl	$16, -88(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_183
.LBB1_196:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	je	.LBB1_198
# %bb.197:                              #   in Loop: Header=BB1_184 Depth=2
	movq	%r14, %r8
	jmp	.LBB1_199
.LBB1_198:                              #   in Loop: Header=BB1_184 Depth=2
	movq	%r14, %r8
	orl	$512, %r8d              # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -88(%rbp)           # 4-byte Folded Spill
.LBB1_199:                              #   in Loop: Header=BB1_184 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r8d             # imm = 0x400
	jne	.LBB1_182
	jmp	.LBB1_192
.LBB1_200:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_204
# %bb.201:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_205
.LBB1_202:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %ebx
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_206
.LBB1_203:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_204:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%eax, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB1_205:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %r8
.LBB1_206:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r8d              # imm = 0x100
	jne	.LBB1_401
# %bb.207:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %r14
	movl	-4(%r15), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	jne	.LBB1_209
# %bb.208:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %r14
	movq	%r12, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r8, %rbx
	callq	_ungetwc_r
	movq	%rbx, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_209:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	jne	.LBB1_338
# %bb.210:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%r14)
	movq	%r12, %rdi
	leaq	-1632(%rbp), %rsi
	xorl	%edx, %edx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movq	%r8, %rbx
	callq	*-168(%rbp)             # 8-byte Folded Reload
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dl
	jne	.LBB1_216
# %bb.211:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB1_300
# %bb.212:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB1_314
# %bb.213:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB1_325
# %bb.214:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_332
# %bb.215:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_333
.LBB1_216:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_302
# %bb.217:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_303
.LBB1_218:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_219:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_220:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_224
.LBB1_221:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
.LBB1_222:                              #   in Loop: Header=BB1_224 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -128(%rbp)        # 8-byte Folded Spill
.LBB1_223:                              #   in Loop: Header=BB1_224 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	movq	-56(%rbp), %r14         # 8-byte Reload
	je	.LBB1_231
.LBB1_224:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_307
# %bb.225:                              #   in Loop: Header=BB1_224 Depth=2
	movl	%eax, %r14d
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jb	.LBB1_227
# %bb.226:                              #   in Loop: Header=BB1_224 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	je	.LBB1_221
.LBB1_227:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movl	%r14d, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
# %bb.228:                              #   in Loop: Header=BB1_224 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	ja	.LBB1_306
# %bb.229:                              #   in Loop: Header=BB1_224 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_223
# %bb.230:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_222
.LBB1_231:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_308
.LBB1_232:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_233:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_234:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB1_236
	.p2align	4, 0x90
.LBB1_235:                              #   in Loop: Header=BB1_236 Depth=2
	movq	%r15, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %r12
	je	.LBB1_241
.LBB1_236:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r15
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_239
# %bb.237:                              #   in Loop: Header=BB1_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	testb	$16, %cl
	jne	.LBB1_235
# %bb.238:                              #   in Loop: Header=BB1_236 Depth=2
	movl	%eax, (%rbx)
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_235
.LBB1_239:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_394
# %bb.240:                              # %._crit_edge80
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB1_242
.LBB1_241:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB1_242:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	jne	.LBB1_390
# %bb.243:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_389
.LBB1_244:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_245:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB1_246:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_259
# %bb.247:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-184(%rbp), %r15        # 8-byte Reload
	subq	-176(%rbp), %r15        # 8-byte Folded Reload
	sarq	$2, %r15
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_251
.LBB1_248:                              #   in Loop: Header=BB1_251 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%ebx, %edx
	leaq	-160(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
.LBB1_249:                              #   in Loop: Header=BB1_251 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, -128(%rbp)        # 8-byte Folded Spill
.LBB1_250:                              #   in Loop: Header=BB1_251 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_261
.LBB1_251:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r12
	jb	.LBB1_260
# %bb.252:                              #   in Loop: Header=BB1_251 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -148(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_260
# %bb.253:                              #   in Loop: Header=BB1_251 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jb	.LBB1_255
# %bb.254:                              #   in Loop: Header=BB1_251 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	je	.LBB1_248
.LBB1_255:                              #   in Loop: Header=BB1_251 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%ebx, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
# %bb.256:                              #   in Loop: Header=BB1_251 Depth=2
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	ja	.LBB1_260
# %bb.257:                              #   in Loop: Header=BB1_251 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_250
# %bb.258:                              #   in Loop: Header=BB1_251 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%r14, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_249
.LBB1_259:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_261
.LBB1_260:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_ungetwc_r
.LBB1_261:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	movq	-104(%rbp), %r15        # 8-byte Reload
	jne	.LBB1_263
# %bb.262:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_263:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_313
.LBB1_264:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_265:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB1_266:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	setne	%al
	je	.LBB1_279
	.p2align	4, 0x90
.LBB1_267:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_280
# %bb.268:                              #   in Loop: Header=BB1_267 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	movq	%r15, -104(%rbp)        # 8-byte Spill
	jb	.LBB1_270
# %bb.269:                              #   in Loop: Header=BB1_267 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	je	.LBB1_275
.LBB1_270:                              #   in Loop: Header=BB1_267 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
# %bb.271:                              #   in Loop: Header=BB1_267 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	movq	-104(%rbp), %r15        # 8-byte Reload
	ja	.LBB1_280
# %bb.272:                              #   in Loop: Header=BB1_267 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	je	.LBB1_274
# %bb.273:                              #   in Loop: Header=BB1_267 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_277
.LBB1_274:                              #   in Loop: Header=BB1_267 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_276
.LBB1_275:                              #   in Loop: Header=BB1_267 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	leaq	-160(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_394
.LBB1_276:                              #   in Loop: Header=BB1_267 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -128(%rbp)        # 8-byte Folded Spill
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %r15        # 8-byte Reload
.LBB1_277:                              #   in Loop: Header=BB1_267 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r14d
	cmpl	$-1, %eax
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	je	.LBB1_279
# %bb.278:                              #   in Loop: Header=BB1_267 Depth=2
	cmpl	$-1, %r14d
	jne	.LBB1_267
.LBB1_279:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %esi
	testb	%al, %al
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_281
	jmp	.LBB1_282
.LBB1_280:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB1_281:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %esi
.LBB1_282:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	je	.LBB1_284
# %bb.283:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_390
.LBB1_284:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_389
.LBB1_285:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_286:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -80(%rbp)         # 8-byte Spill
	cmpl	$-1, %eax
	je	.LBB1_291
# %bb.287:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-184(%rbp), %r14        # 8-byte Reload
	subq	-176(%rbp), %r14        # 8-byte Folded Reload
	sarq	$2, %r14
	movq	-80(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_288:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r12
	jb	.LBB1_318
# %bb.289:                              #   in Loop: Header=BB1_288 Depth=2
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -148(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_319
# %bb.290:                              #   in Loop: Header=BB1_288 Depth=2
	movl	%ebx, (%r15)
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_288
.LBB1_291:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_320
.LBB1_292:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_293:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_299
# %bb.294:                              # %.preheader27
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	negq	%r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_295:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	je	.LBB1_322
# %bb.296:                              #   in Loop: Header=BB1_295 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_323
# %bb.297:                              #   in Loop: Header=BB1_295 Depth=2
	movl	%ebx, (%r15)
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_295
# %bb.298:                              # %.loopexit29
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	subl	%r14d, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB1_299:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB1_324
.LBB1_300:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_316
# %bb.301:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_317
.LBB1_302:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_303:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB1_336:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_337
.LBB1_304:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_ungetwc_r
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_312
.LBB1_305:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_ungetwc_r
	subl	%ebx, %r15d
	movl	%r15d, %esi
	jmp	.LBB1_389
.LBB1_306:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB1_307:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	je	.LBB1_394
.LBB1_308:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addl	%r15d, %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -80(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_91
# %bb.309:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_91
.LBB1_310:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%esi, %esi
.LBB1_311:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB1_312:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_392
.LBB1_313:                              #   in Loop: Header=BB1_2 Depth=1
	addl	%r15d, %esi
	jmp	.LBB1_389
.LBB1_314:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_327
# %bb.315:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_328
.LBB1_316:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_317:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_337
.LBB1_318:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_319:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_ungetwc_r
.LBB1_320:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	subq	-80(%rbp), %rsi         # 8-byte Folded Reload
	shrq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_392
# %bb.321:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rax
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movl	$0, (%r15)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r15        # 8-byte Reload
	addl	%r15d, %esi
	jmp	.LBB1_389
.LBB1_322:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_323:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	_ungetwc_r
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subl	%r14d, %ecx
	movq	%rbx, %r14
.LBB1_324:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movl	$0, (%r15)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	%ecx, %esi
	jmp	.LBB1_389
.LBB1_325:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_334
# %bb.326:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_335
.LBB1_327:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_328:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_337
.LBB1_329:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
.LBB1_330:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_341
	jmp	.LBB1_342
.LBB1_332:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_333:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_337:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_338:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rax
	movq	%r14, -112(%rbp)        # 8-byte Spill
	leaq	-1632(%rbp), %rcx
	subq	%rcx, %rax
	shrq	$2, %rax
	addl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_390
.LBB1_334:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_335:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB1_336
.LBB1_339:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_340:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB1_341:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movq	%rbx, %r8
	movl	$42, __A_VARIABLE(%rip)
.LBB1_342:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
.LBB1_343:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	je	.LBB1_345
# %bb.344:                              #   in Loop: Header=BB1_2 Depth=1
	andl	$-257, %r8d             # imm = 0xFEFF
	movl	$42, __A_VARIABLE(%rip)
.LBB1_345:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movsbl	-112(%rbp), %eax        # 1-byte Folded Reload
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB1_403
# %bb.346:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
	movsbl	%r14b, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	movq	%r8, -80(%rbp)          # 8-byte Spill
	ja	.LBB1_352
# %bb.347:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r14b
	jl	.LBB1_406
# %bb.348:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_352
# %bb.349:                              #   in Loop: Header=BB1_2 Depth=1
	leal	-4(%r14), %eax
	movzbl	%al, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	notq	%rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	addb	$1, %r14b
	leaq	-1628(%rbp), %rax
	leaq	(%rax,%rcx,4), %r12
	addq	$-8, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_350:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12), %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %r14b
	addq	$-4, %r12
	cmpb	$4, %r14b
	jg	.LBB1_350
# %bb.351:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	notl	%eax
	addl	%eax, %r15d
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
.LBB1_352:                              #   in Loop: Header=BB1_2 Depth=1
	leaq	-1632(,%rcx,4), %rbx
	addq	%rbp, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r8d              # imm = 0x100
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB1_354
# %bb.353:                              #   in Loop: Header=BB1_2 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_359
.LBB1_354:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r8d             # imm = 0x400
	jne	.LBB1_409
# %bb.355:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%rbx), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %eax
	jne	.LBB1_357
# %bb.356:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %rbx
	addl	$-1, %r15d
	jmp	.LBB1_358
.LBB1_357:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_ungetwc_r
	movl	-8(%rbx), %esi
	addq	$-8, %rbx
	addl	$-2, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_358:                              #   in Loop: Header=BB1_2 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r8          # 8-byte Reload
.LBB1_359:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	jne	.LBB1_363
# %bb.360:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%rbx)
	movl	%r8d, %eax
	andl	$1536, %eax             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_364
# %bb.361:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rcx        # 8-byte Reload
	subq	-200(%rbp), %rcx        # 8-byte Folded Reload
	movl	-84(%rbp), %r15d        # 4-byte Reload
	je	.LBB1_370
# %bb.362:                              #   in Loop: Header=BB1_2 Depth=1
	negq	%rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB1_366
.LBB1_363:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_388
.LBB1_364:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-216(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	movl	-84(%rbp), %r15d        # 4-byte Reload
	je	.LBB1_369
# %bb.365:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	%r15d, -84(%rbp)        # 4-byte Spill
	movq	%rax, %r15
	leaq	4(%rax), %rsi
	movq	%r12, %rdi
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_wcstol_r
	movq	%r15, %rdi
	movl	-84(%rbp), %r15d        # 4-byte Reload
	movq	%rax, %rcx
	subq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_366:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-316(%rbp), %rax
	cmpq	%rax, %rdi
	jb	.LBB1_368
# %bb.367:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-320(%rbp), %rdi
.LBB1_368:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$21, %esi
	movl	$.L.str, %edx
	xorl	%eax, %eax
	callq	swprintf
.LBB1_369:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rbx         # 8-byte Reload
.LBB1_370:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r12, %rdi
	leaq	-1632(%rbp), %rsi
	xorl	%edx, %edx
	callq	_wcstod_r
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB1_374
# %bb.371:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jne	.LBB1_376
# %bb.372:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_380
# %bb.373:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB1_381
.LBB1_374:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	ja	.LBB1_378
# %bb.375:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB1_379
.LBB1_376:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_383
# %bb.377:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB1_384
.LBB1_378:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_379:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB1_387
.LBB1_380:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_381:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_385
# %bb.382:                              #   in Loop: Header=BB1_2 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB1_386
.LBB1_383:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_384:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movsd	%xmm0, -224(%rbp)
	fldl	-224(%rbp)
	fstpt	(%rax)
	jmp	.LBB1_387
.LBB1_385:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB1_386:                              #   in Loop: Header=BB1_2 Depth=1
	movss	%xmm0, (%r14)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_387:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	%r15d, -84(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_388:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_389:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_390:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_2
	jmp	.LBB1_392
.LBB1_391:
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
.LBB1_392:
	movl	-132(%rbp), %edi
	leaq	-132(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-84(%rbp), %eax         # 4-byte Reload
	jmp	.LBB1_400
.LBB1_397:
	movl	-132(%rbp), %edi
	leaq	-132(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_398
.LBB1_401:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_392
# %bb.402:
	movl	-4(%r15), %esi
	movq	%r12, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	jmp	.LBB1_413
.LBB1_403:
	leaq	-1632(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	movq	-56(%rbp), %r15         # 8-byte Reload
	jbe	.LBB1_412
.LBB1_404:                              # =>This Inner Loop Header: Depth=1
	movl	-4(%r14), %esi
	addq	$-4, %r14
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	ja	.LBB1_404
	jmp	.LBB1_412
.LBB1_405:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_393:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_394:
	movl	-132(%rbp), %edi
	leaq	-132(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_398
# %bb.395:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzwl	16(%rcx), %edx
	andl	$64, %edx
	xorl	%ecx, %ecx
	cmpw	$1, %dx
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_399
.LBB1_398:
	movl	$-1, %eax
.LBB1_399:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_400:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1592, %rsp             # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_406:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	-56(%rbp), %r14         # 8-byte Reload
	jle	.LBB1_412
# %bb.407:                              # %.preheader3
	addq	$1, %rcx
.LBB1_408:                              # =>This Inner Loop Header: Depth=1
	movl	-1640(%rbp,%rcx,4), %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%rcx, %rbx
	callq	_ungetwc_r
	movq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_408
	jmp	.LBB1_412
.LBB1_409:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jle	.LBB1_412
# %bb.410:                              # %.preheader1
	addq	$1, %rcx
.LBB1_411:                              # =>This Inner Loop Header: Depth=1
	movl	-1640(%rbp,%rcx,4), %esi
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%rcx, %rbx
	callq	_ungetwc_r
	movq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB1_411
.LBB1_412:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_413:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_392
.Lfunc_end1:
	.size	__svfwscanf_r, .Lfunc_end1-__svfwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_397
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_26
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_24
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_51
	.quad	.LBB1_392
	.quad	.LBB1_53
	.quad	.LBB1_392
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_25
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_55
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_52
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_57
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_51
	.quad	.LBB1_392
	.quad	.LBB1_54
	.quad	.LBB1_59
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_15
	.quad	.LBB1_60
	.quad	.LBB1_23
	.quad	.LBB1_392
	.quad	.LBB1_17
	.quad	.LBB1_392
	.quad	.LBB1_30
	.quad	.LBB1_61
	.quad	.LBB1_62
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_56
	.quad	.LBB1_23
	.quad	.LBB1_64
	.quad	.LBB1_392
	.quad	.LBB1_392
	.quad	.LBB1_52
	.quad	.LBB1_392
	.quad	.LBB1_23
.LJTI1_1:
	.quad	.LBB1_84
	.quad	.LBB1_92
	.quad	.LBB1_102
	.quad	.LBB1_107
	.quad	.LBB1_110
.LJTI1_2:
	.quad	.LBB1_127
	.quad	.LBB1_147
	.quad	.LBB1_127
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_150
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_129
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_131
	.quad	.LBB1_137
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_139
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_143
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_145
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_129
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_131
	.quad	.LBB1_137
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_153
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_139
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_143
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_147
	.quad	.LBB1_145
.LJTI1_3:
	.quad	.LBB1_188
	.quad	.LBB1_200
	.quad	.LBB1_188
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_196
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_190
	.quad	.LBB1_190
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_193
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_200
	.quad	.LBB1_193
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
	callq	__svfwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__svfwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
