	.text
	.file	"vfwscanf.c"
	.globl	vfiwscanf               # -- Begin function vfiwscanf
	.p2align	4, 0x90
	.type	vfiwscanf,@function
vfiwscanf:                              # @vfiwscanf
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
	callq	__svfiwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vfiwscanf, .Lfunc_end0-vfiwscanf
                                        # -- End function
	.globl	__svfiwscanf_r          # -- Begin function __svfiwscanf_r
	.p2align	4, 0x90
	.type	__svfiwscanf_r,@function
__svfiwscanf_r:                         # @__svfiwscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	-116(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_283
# %bb.1:
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movq	%r13, -128(%rbp)        # 8-byte Spill
	leaq	8(%r13), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	movl	$0, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_5 Depth 4
                                        #         Child Loop BB1_13 Depth 4
                                        #           Child Loop BB1_14 Depth 5
                                        #     Child Loop BB1_120 Depth 2
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_126 Depth 2
                                        #     Child Loop BB1_237 Depth 2
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_211 Depth 2
                                        #     Child Loop BB1_230 Depth 2
                                        #     Child Loop BB1_85 Depth 2
                                        #     Child Loop BB1_196 Depth 2
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_168 Depth 2
	movslq	%r13d, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #         Child Loop BB1_5 Depth 4
                                        #         Child Loop BB1_13 Depth 4
                                        #           Child Loop BB1_14 Depth 5
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_5 Depth 4
                                        #         Child Loop BB1_13 Depth 4
                                        #           Child Loop BB1_14 Depth 5
	addq	$4, %r12
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_10
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=4
	movl	%eax, %ebx
	movl	%eax, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=3
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_4
	jmp	.LBB1_284
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ebx
	jne	.LBB1_49
# %bb.11:                               # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=3
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_13 Depth=4
	leaq	(%r15,%r15,4), %rax
	leaq	(%rbx,%rax,2), %r15
	addq	$-48, %r15
.LBB1_13:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_14 Depth 5
	movq	%r12, %rax
.LBB1_14:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_4 Depth=3
                                        #         Parent Loop BB1_13 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %rbx
	ja	.LBB1_284
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=5
	leaq	4(%rax), %r12
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_16:                               #   in Loop: Header=BB1_14 Depth=5
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rcx,4), %ecx
	je	.LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_14 Depth=5
	movq	%r12, %rax
	jmp	.LBB1_23
.LBB1_18:                               #   in Loop: Header=BB1_14 Depth=5
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_14 Depth=5
	movq	%r12, %rax
	jmp	.LBB1_22
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=5
	addq	$8, %rax
	jmp	.LBB1_23
.LBB1_21:                               #   in Loop: Header=BB1_14 Depth=5
	addq	$8, %rax
.LBB1_22:                               #   in Loop: Header=BB1_14 Depth=5
	addl	$1, %ecx
.LBB1_23:                               #   in Loop: Header=BB1_14 Depth=5
	orl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_14
.LBB1_24:                               #   in Loop: Header=BB1_13 Depth=4
	orl	$1, %edi
	jmp	.LBB1_13
.LBB1_25:                               #   in Loop: Header=BB1_13 Depth=4
	orl	$16, %edi
	jmp	.LBB1_13
.LBB1_26:                               #   in Loop: Header=BB1_13 Depth=4
	orl	$2, %edi
	jmp	.LBB1_13
.LBB1_27:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB1_33
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dil
	jne	.LBB1_34
# %bb.29:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dil
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_36
# %bb.30:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	jne	.LBB1_40
# %bb.31:                               #   in Loop: Header=BB1_4 Depth=3
	cmpl	$40, %eax
	ja	.LBB1_44
# %bb.32:                               #   in Loop: Header=BB1_4 Depth=3
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_45
.LBB1_33:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_9
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_38
# %bb.35:                               #   in Loop: Header=BB1_4 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_39
.LBB1_36:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_42
# %bb.37:                               #   in Loop: Header=BB1_4 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_43
.LBB1_38:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB1_8
.LBB1_40:                               #   in Loop: Header=BB1_4 Depth=3
	cmpl	$40, %eax
	ja	.LBB1_46
# %bb.41:                               #   in Loop: Header=BB1_4 Depth=3
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_47
.LBB1_42:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_8
.LBB1_44:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_45:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_8
.LBB1_46:                               #   in Loop: Header=BB1_4 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_47:                               #   in Loop: Header=BB1_4 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB1_8
.LBB1_48:                               # %.loopexit1
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_49:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_286
# %bb.50:                               #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB1_295
# %bb.51:                               #   in Loop: Header=BB1_3 Depth=2
	addq	$1, -72(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_3
	jmp	.LBB1_284
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$512, %edi              # imm = 0x200
	jmp	.LBB1_63
.LBB1_53:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %edi
	xorl	%r14d, %r14d
	jmp	.LBB1_67
.LBB1_55:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_56:                               # %.loopexit3
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$2, %r14b
	jmp	.LBB1_67
.LBB1_57:                               #   in Loop: Header=BB1_2 Depth=1
	movl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$94, %ecx
	jne	.LBB1_115
# %bb.58:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rax), %ecx
	addq	$8, %rax
	movl	$1, -132(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_116
.LBB1_59:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB1_65
.LBB1_60:                               # %.loopexit2
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_61:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$8, -64(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_62:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$544, %edi              # imm = 0x220
.LBB1_63:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$16, -64(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_66
.LBB1_64:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB1_65:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	$10, -64(%rbp)          # 4-byte Folded Spill
.LBB1_66:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r14b
.LBB1_67:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %dil
	movl	%edi, -96(%rbp)         # 4-byte Spill
	jne	.LBB1_72
	.p2align	4, 0x90
.LBB1_68:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_285
# %bb.69:                               #   in Loop: Header=BB1_68 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_71
# %bb.70:                               #   in Loop: Header=BB1_68 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_68
.LBB1_71:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %edi         # 4-byte Reload
.LBB1_72:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_73:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB1_75
# %bb.74:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB1_75:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_96
# %bb.76:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %dil
	jne	.LBB1_164
# %bb.77:                               #   in Loop: Header=BB1_2 Depth=1
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_162
# %bb.78:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_163
.LBB1_79:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB1_81:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	je	.LBB1_99
# %bb.82:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB1_191
# %bb.83:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_253
# %bb.84:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-168(%rbp), %r14        # 8-byte Reload
	subq	-160(%rbp), %r14        # 8-byte Folded Reload
	sarq	$2, %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB1_85:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	je	.LBB1_246
# %bb.86:                               #   in Loop: Header=BB1_85 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -132(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_246
# %bb.87:                               #   in Loop: Header=BB1_85 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_85
	jmp	.LBB1_254
.LBB1_88:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB1_90
# %bb.89:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r15
.LBB1_90:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	je	.LBB1_102
# %bb.91:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %dil
	jne	.LBB1_105
# %bb.92:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_210
.LBB1_93:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rax
	jb	.LBB1_95
# %bb.94:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$39, %r15d
.LBB1_95:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1408, %edi             # imm = 0x580
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-336(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB1_126
.LBB1_96:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %dil
	jne	.LBB1_178
# %bb.97:                               #   in Loop: Header=BB1_2 Depth=1
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_176
# %bb.98:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_177
.LBB1_99:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %dil
	jne	.LBB1_111
# %bb.100:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_189
# %bb.101:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_190
.LBB1_102:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %dil
	jne	.LBB1_113
# %bb.103:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_208
# %bb.104:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_209
.LBB1_105:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_256
# %bb.106:                              # %.preheader19
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r14d
	negq	%r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_107:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	je	.LBB1_247
# %bb.108:                              #   in Loop: Header=BB1_107 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_247
# %bb.109:                              #   in Loop: Header=BB1_107 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %r14d
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_107
# %bb.110:                              # %.loopexit20
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	subl	%ebx, %r13d
	jmp	.LBB1_257
.LBB1_111:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_227
# %bb.112:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_228
.LBB1_113:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_234
# %bb.114:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_235
.LBB1_115:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	movq	%r12, %rax
.LBB1_116:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	jne	.LBB1_118
# %bb.117:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %ecx
	addq	$4, %rax
.LBB1_118:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB1_123
# %bb.119:                              # %.preheader28
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$4, %rax
	.p2align	4, 0x90
.LBB1_120:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$93, %ecx
	je	.LBB1_160
# %bb.121:                              #   in Loop: Header=BB1_120 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_120
# %bb.122:                              # %.loopexit30
                                        #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %rax
.LBB1_123:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	addq	$4, %rax
	jmp	.LBB1_161
.LBB1_124:                              #   in Loop: Header=BB1_126 Depth=2
	andl	$-1409, %edi            # imm = 0xFA7F
	.p2align	4, 0x90
.LBB1_125:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	cmpq	%rbx, %r15
	je	.LBB1_144
.LBB1_126:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edi, %r14d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rax), %ecx
	cmpl	$77, %ecx
	ja	.LBB1_142
# %bb.127:                              #   in Loop: Header=BB1_126 Depth=2
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_128:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -64(%rbp)          # 4-byte Folded Reload
	jge	.LBB1_133
	jmp	.LBB1_145
	.p2align	4, 0x90
.LBB1_129:                              #   in Loop: Header=BB1_126 Depth=2
	movslq	-64(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfiwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB1_133
.LBB1_130:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edi
	testb	%dil, %dil
	jns	.LBB1_145
# %bb.131:                              #   in Loop: Header=BB1_126 Depth=2
	andl	$-65665, %edi           # imm = 0xFFFEFF7F
	orl	$65536, %edi            # imm = 0x10000
	jmp	.LBB1_125
.LBB1_132:                              #   in Loop: Header=BB1_126 Depth=2
	movslq	-64(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfiwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rcx
	jb	.LBB1_145
	.p2align	4, 0x90
.LBB1_133:                              #   in Loop: Header=BB1_126 Depth=2
	movl	%r14d, %edi
.LBB1_134:                              #   in Loop: Header=BB1_126 Depth=2
	andl	$-897, %edi             # imm = 0xFC7F
	jmp	.LBB1_125
.LBB1_135:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r14d             # imm = 0x200
	je	.LBB1_145
# %bb.136:                              #   in Loop: Header=BB1_126 Depth=2
	movl	%r14d, %edi
	movl	%r14d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-332(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, -80(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_145
# %bb.137:                              #   in Loop: Header=BB1_126 Depth=2
	andl	$-513, %edi             # imm = 0xFDFF
	movl	$16, -64(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_125
.LBB1_138:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB1_140
# %bb.139:                              #   in Loop: Header=BB1_126 Depth=2
	movl	%r14d, %edi
	jmp	.LBB1_141
.LBB1_140:                              #   in Loop: Header=BB1_126 Depth=2
	movl	%r14d, %edi
	orl	$512, %edi              # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -64(%rbp)           # 4-byte Folded Spill
.LBB1_141:                              #   in Loop: Header=BB1_126 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %edi             # imm = 0x400
	jne	.LBB1_124
	jmp	.LBB1_134
.LBB1_142:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_146
# %bb.143:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_147
.LBB1_144:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %ebx
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_148
.LBB1_145:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_146:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB1_147:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%r14d, %edi
.LBB1_148:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %edi              # imm = 0x100
	jne	.LBB1_293
# %bb.149:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	-4(%rcx), %esi
	movl	%esi, %eax
	orl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	jne	.LBB1_151
# %bb.150:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%edi, %ebx
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movl	%ebx, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_151:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %r14        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB1_281
# %bb.152:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	%edi, %ebx
	movq	%r15, %rdi
	leaq	-336(%rbp), %rsi
	xorl	%edx, %edx
	movl	-64(%rbp), %ecx         # 4-byte Reload
	callq	*-152(%rbp)             # 8-byte Folded Reload
	movl	%ebx, %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dl
	jne	.LBB1_158
# %bb.153:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB1_242
# %bb.154:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB1_258
# %bb.155:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB1_271
# %bb.156:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_275
# %bb.157:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_276
.LBB1_158:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_244
# %bb.159:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_245
.LBB1_160:                              # %.loopexit29
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-4(%rax), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB1_161:                              #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %edi
	movb	$1, %r14b
	movq	%r12, -160(%rbp)        # 8-byte Spill
	movq	%rax, %r12
	jmp	.LBB1_67
.LBB1_162:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_163:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_164:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r13d, %r13d
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_168
	.p2align	4, 0x90
.LBB1_165:                              #   in Loop: Header=BB1_168 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r14d, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
.LBB1_166:                              #   in Loop: Header=BB1_168 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -104(%rbp)        # 8-byte Folded Spill
.LBB1_167:                              #   in Loop: Header=BB1_168 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	je	.LBB1_175
.LBB1_168:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_249
# %bb.169:                              #   in Loop: Header=BB1_168 Depth=2
	movl	%eax, %r14d
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB1_171
# %bb.170:                              #   in Loop: Header=BB1_168 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	je	.LBB1_165
.LBB1_171:                              #   in Loop: Header=BB1_168 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movl	%r14d, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
# %bb.172:                              #   in Loop: Header=BB1_168 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB1_248
# %bb.173:                              #   in Loop: Header=BB1_168 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_167
# %bb.174:                              #   in Loop: Header=BB1_168 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_166
.LBB1_175:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_250
.LBB1_176:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_177:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_178:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB1_180
	.p2align	4, 0x90
.LBB1_179:                              #   in Loop: Header=BB1_180 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	cmpq	%r13, %r15
	je	.LBB1_185
.LBB1_180:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_183
# %bb.181:                              #   in Loop: Header=BB1_180 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %ecx         # 4-byte Reload
	testb	$16, %cl
	jne	.LBB1_179
# %bb.182:                              #   in Loop: Header=BB1_180 Depth=2
	movl	%eax, (%rbx)
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_179
.LBB1_183:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB1_286
# %bb.184:                              # %._crit_edge54
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	-96(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB1_186
.LBB1_185:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_186:                              #   in Loop: Header=BB1_2 Depth=1
	addl	-72(%rbp), %r13d        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	je	.LBB1_188
# %bb.187:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_282
.LBB1_188:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_282
.LBB1_189:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_190:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_191:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_205
# %bb.192:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	-160(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB1_196
.LBB1_193:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%ebx, %edx
	leaq	-144(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
.LBB1_194:                              #   in Loop: Header=BB1_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, -104(%rbp)        # 8-byte Folded Spill
.LBB1_195:                              #   in Loop: Header=BB1_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %r15
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_205
.LBB1_196:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB1_204
# %bb.197:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -132(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_204
# %bb.198:                              #   in Loop: Header=BB1_196 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB1_200
# %bb.199:                              #   in Loop: Header=BB1_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	je	.LBB1_193
.LBB1_200:                              #   in Loop: Header=BB1_196 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%ebx, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
# %bb.201:                              #   in Loop: Header=BB1_196 Depth=2
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB1_204
# %bb.202:                              #   in Loop: Header=BB1_196 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_195
# %bb.203:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%r14, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_194
.LBB1_204:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ungetwc_r
.LBB1_205:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_207
# %bb.206:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_207:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_266
.LBB1_208:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_209:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_210:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	setne	%al
	je	.LBB1_222
	.p2align	4, 0x90
.LBB1_211:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_223
# %bb.212:                              #   in Loop: Header=BB1_211 Depth=2
	callq	__locale_mb_cur_max
	cltq
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB1_214
# %bb.213:                              #   in Loop: Header=BB1_211 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	je	.LBB1_218
.LBB1_214:                              #   in Loop: Header=BB1_211 Depth=2
	leaq	-57(%rbp), %rdi
	movl	%r14d, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
# %bb.215:                              #   in Loop: Header=BB1_211 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB1_223
# %bb.216:                              #   in Loop: Header=BB1_211 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_220
# %bb.217:                              #   in Loop: Header=BB1_211 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-57(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_219
.LBB1_218:                              #   in Loop: Header=BB1_211 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	leaq	-144(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_286
.LBB1_219:                              #   in Loop: Header=BB1_211 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, -104(%rbp)        # 8-byte Folded Spill
.LBB1_220:                              #   in Loop: Header=BB1_211 Depth=2
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r14d
	cmpl	$-1, %eax
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r15
	je	.LBB1_222
# %bb.221:                              #   in Loop: Header=BB1_211 Depth=2
	cmpl	$-1, %r14d
	jne	.LBB1_211
.LBB1_222:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %r13d
	testb	%al, %al
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_224
	jmp	.LBB1_225
.LBB1_223:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB1_224:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r13d
.LBB1_225:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_282
# %bb.226:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_282
.LBB1_227:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_228:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%r14, %rax
	movq	%r14, -80(%rbp)         # 8-byte Spill
	cmpl	$-1, %ebx
	je	.LBB1_233
# %bb.229:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-168(%rbp), %r14        # 8-byte Reload
	subq	-160(%rbp), %r14        # 8-byte Folded Reload
	sarq	$2, %r14
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_230:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %r15
	jb	.LBB1_262
# %bb.231:                              #   in Loop: Header=BB1_230 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -132(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB1_263
# %bb.232:                              #   in Loop: Header=BB1_230 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_230
.LBB1_233:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_264
.LBB1_234:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_235:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_241
# %bb.236:                              # %.preheader21
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r14d
	negq	%r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_237:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	je	.LBB1_267
# %bb.238:                              #   in Loop: Header=BB1_237 Depth=2
	movl	%r14d, %edi
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_268
# %bb.239:                              #   in Loop: Header=BB1_237 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r14d, (%rax)
	addq	$4, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	_fgetwc_r
	movl	%eax, %r14d
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_237
# %bb.240:                              # %.loopexit23
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	subl	%ebx, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB1_241:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_269
.LBB1_242:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_260
# %bb.243:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_261
.LBB1_244:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_245:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB1_279:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_280
.LBB1_246:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ungetwc_r
	jmp	.LBB1_255
.LBB1_247:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movq	-72(%rbp), %r13         # 8-byte Reload
	subl	%ebx, %r13d
	jmp	.LBB1_270
.LBB1_248:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB1_249:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB1_286
.LBB1_250:                              #   in Loop: Header=BB1_2 Depth=1
	addl	-72(%rbp), %r13d        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -96(%rbp)          # 1-byte Folded Reload
	je	.LBB1_252
# %bb.251:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_282
.LBB1_252:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_282
.LBB1_253:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r13d, %r13d
.LBB1_254:                              # %.loopexit13
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_255:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB1_266
	jmp	.LBB1_284
.LBB1_256:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB1_257:                              #   in Loop: Header=BB1_2 Depth=1
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_282
.LBB1_258:                              #   in Loop: Header=BB1_2 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_273
# %bb.259:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_274
.LBB1_260:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_261:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_280
.LBB1_262:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_263:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
.LBB1_264:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r13
	subq	-96(%rbp), %r13         # 8-byte Folded Reload
	shrq	$2, %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB1_296
# %bb.265:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%rax)
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_266:                              #   in Loop: Header=BB1_2 Depth=1
	addl	-72(%rbp), %r13d        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_282
.LBB1_267:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_268:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movq	-72(%rbp), %r13         # 8-byte Reload
	subl	%ebx, %r13d
	movl	-44(%rbp), %ecx         # 4-byte Reload
.LBB1_269:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB1_270:                              #   in Loop: Header=BB1_2 Depth=1
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_282
.LBB1_271:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_277
# %bb.272:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_278
.LBB1_273:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_274:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_280
.LBB1_275:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_276:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_280:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_281:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	-336(%rbp), %rcx
	subq	%rcx, %rax
	shrq	$2, %rax
	movq	-72(%rbp), %r13         # 8-byte Reload
	addl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB1_282:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_2
	jmp	.LBB1_284
.LBB1_277:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_278:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB1_279
.LBB1_283:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB1_284:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	jmp	.LBB1_292
.LBB1_289:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_290
.LBB1_293:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_284
# %bb.294:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-4(%rax), %esi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	_ungetwc_r
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_284
.LBB1_295:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	_ungetwc_r
.LBB1_285:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_286:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	je	.LBB1_290
# %bb.287:
	movq	-112(%rbp), %rax        # 8-byte Reload
	movzwl	16(%rax), %eax
	andl	$64, %eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_291
.LBB1_290:
	movl	$-1, %edx
.LBB1_291:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_292:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_296:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_284
.Lfunc_end1:
	.size	__svfiwscanf_r, .Lfunc_end1-__svfiwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_289
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_48
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_25
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_12
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_53
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_26
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_55
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_52
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_57
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_54
	.quad	.LBB1_59
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_16
	.quad	.LBB1_60
	.quad	.LBB1_24
	.quad	.LBB1_284
	.quad	.LBB1_18
	.quad	.LBB1_284
	.quad	.LBB1_27
	.quad	.LBB1_61
	.quad	.LBB1_62
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_56
	.quad	.LBB1_24
	.quad	.LBB1_64
	.quad	.LBB1_284
	.quad	.LBB1_284
	.quad	.LBB1_52
	.quad	.LBB1_284
	.quad	.LBB1_24
.LJTI1_1:
	.quad	.LBB1_73
	.quad	.LBB1_79
	.quad	.LBB1_88
	.quad	.LBB1_93
.LJTI1_2:
	.quad	.LBB1_130
	.quad	.LBB1_142
	.quad	.LBB1_130
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_138
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_129
	.quad	.LBB1_132
	.quad	.LBB1_132
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_135
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_128
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_135
                                        # -- End function
	.text
	.globl	__svfiwscanf            # -- Begin function __svfiwscanf
	.p2align	4, 0x90
	.type	__svfiwscanf,@function
__svfiwscanf:                           # @__svfiwscanf
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
	callq	__svfiwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__svfiwscanf, .Lfunc_end2-__svfiwscanf
                                        # -- End function
	.globl	_vfiwscanf_r            # -- Begin function _vfiwscanf_r
	.p2align	4, 0x90
	.type	_vfiwscanf_r,@function
_vfiwscanf_r:                           # @_vfiwscanf_r
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
	callq	__svfiwscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_vfiwscanf_r, .Lfunc_end3-_vfiwscanf_r
                                        # -- End function
	.type	__svfiwscanf_r.basefix,@object # @__svfiwscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	4
__svfiwscanf_r.basefix:
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
	.size	__svfiwscanf_r.basefix, 34

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
