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
	jmp	__svfiwscanf_r          # TAILCALL
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
	subq	$312, %rsp              # imm = 0x138
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	-116(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%rbx, %rcx
	movl	(%rbx), %ebx
	testl	%ebx, %ebx
	je	.LBB1_256
# %bb.1:
	movq	%r14, -96(%rbp)         # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_12 Depth 4
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_98 Depth 2
                                        #     Child Loop BB1_89 Depth 2
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_224 Depth 2
                                        #     Child Loop BB1_82 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_204 Depth 2
                                        #     Child Loop BB1_165 Depth 2
                                        #     Child Loop BB1_154 Depth 2
	movslq	%r14d, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %r14
	movl	%r13d, -44(%rbp)        # 4-byte Spill
.LBB1_3:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_4 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_12 Depth 4
	addq	$4, %r14
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	je	.LBB1_8
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rdi
	movq	%r12, %rsi
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
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	_ungetwc_r
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=2
	movl	(%r14), %ebx
	testl	%ebx, %ebx
	jne	.LBB1_3
	jmp	.LBB1_261
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
	cmpl	$37, %ebx
	jne	.LBB1_25
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB1_3 Depth=2
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=3
	leaq	(%r15,%r15,4), %rax
	leaq	(%rbx,%rax,2), %r15
	addq	$-48, %r15
.LBB1_11:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_12 Depth 4
	movq	%r14, %rax
.LBB1_12:                               #   Parent Loop BB1_2 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rax), %ebx
	cmpq	$122, %rbx
	ja	.LBB1_260
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=4
	leaq	4(%rax), %r14
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=4
	xorl	%ecx, %ecx
	cmpl	$104, 4(%rax)
	sete	%cl
	leal	4(,%rcx,4), %ecx
	je	.LBB1_18
# %bb.15:                               #   in Loop: Header=BB1_12 Depth=4
	movq	%r14, %rax
	orl	%ecx, %r13d
	jmp	.LBB1_12
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=4
	xorl	%ecx, %ecx
	cmpl	$108, 4(%rax)
	sete	%cl
	je	.LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_12 Depth=4
	movq	%r14, %rax
	jmp	.LBB1_20
.LBB1_18:                               #   in Loop: Header=BB1_12 Depth=4
	addq	$8, %rax
	orl	%ecx, %r13d
	jmp	.LBB1_12
.LBB1_19:                               #   in Loop: Header=BB1_12 Depth=4
	addq	$8, %rax
.LBB1_20:                               #   in Loop: Header=BB1_12 Depth=4
	addl	$1, %ecx
	orl	%ecx, %r13d
	jmp	.LBB1_12
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$1, %r13d
	jmp	.LBB1_11
.LBB1_22:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$16, %r13d
	jmp	.LBB1_11
.LBB1_23:                               #   in Loop: Header=BB1_11 Depth=3
	orl	$2, %r13d
	jmp	.LBB1_11
.LBB1_24:                               # %.loopexit1
                                        #   in Loop: Header=BB1_3 Depth=2
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_263
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	%ebx, %eax
	jne	.LBB1_262
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=2
	addq	$1, -80(%rbp)           # 8-byte Folded Spill
	movl	(%r14), %ebx
	testl	%ebx, %ebx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_3
	jmp	.LBB1_261
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$16, %r13b
	jne	.LBB1_34
# %bb.29:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$8, %r13b
	jne	.LBB1_35
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=2
	testb	$4, %r13b
	jne	.LBB1_37
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %r13b
	jne	.LBB1_41
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_45
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_46
.LBB1_34:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_7
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
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
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_43
# %bb.38:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_44
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_40:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB1_7
.LBB1_41:                               #   in Loop: Header=BB1_3 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_3 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_48
.LBB1_43:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_44:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_7
.LBB1_45:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_46:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_7
.LBB1_47:                               #   in Loop: Header=BB1_3 Depth=2
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_48:                               #   in Loop: Header=BB1_3 Depth=2
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB1_7
.LBB1_49:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$512, %r13d             # imm = 0x200
	jmp	.LBB1_62
.LBB1_50:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r13d
.LBB1_51:                               # %.loopexit2
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$2, %r12b
	jmp	.LBB1_66
.LBB1_52:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	8(%rax), %rcx
	xorl	%edx, %edx
	cmpl	$94, 4(%rax)
	sete	%dl
	cmovneq	%r14, %rcx
	leaq	4(%rcx), %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	cmpl	$93, 4(%rax,%rdx,4)
	cmovneq	%rcx, %rsi
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB1_53:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %eax
	addq	$4, %rcx
	cmpl	$93, %eax
	je	.LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=2
	testl	%eax, %eax
	jne	.LBB1_53
.LBB1_55:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r13d
	leaq	-4(%rcx), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movb	$1, %r12b
	movq	%r14, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_67
.LBB1_56:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$1, %r13d
.LBB1_57:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$64, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB1_66
.LBB1_58:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstol_r, %eax
	jmp	.LBB1_64
.LBB1_59:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstol_r, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_65
.LBB1_60:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$8, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_65
.LBB1_61:                               #   in Loop: Header=BB1_2 Depth=1
	orl	$544, %r13d             # imm = 0x220
.LBB1_62:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$16, -60(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_65
.LBB1_63:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$_wcstoul_r, %eax
.LBB1_64:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$10, -60(%rbp)          # 4-byte Folded Spill
.LBB1_65:                               #   in Loop: Header=BB1_2 Depth=1
	movb	$3, %r12b
.LBB1_66:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rcx
.LBB1_67:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	testb	$64, %r13b
	jne	.LBB1_73
# %bb.68:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_263
# %bb.69:                               # %.preheader30
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
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	cmpl	$-1, %eax
	jne	.LBB1_70
	jmp	.LBB1_263
.LBB1_72:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_73:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzbl	%r12b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_74:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%r15, %r15
	movl	$1, %eax
	cmoveq	%rax, %r15
	testb	$1, %r13b
	movq	-72(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_113
# %bb.75:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	jne	.LBB1_151
# %bb.76:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_149
# %bb.77:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_150
.LBB1_78:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$1, %r15
	movl	$0, %eax
	sbbq	%rax, %rax
	orq	%r15, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	testb	$1, %r13b
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_116
# %bb.79:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %eax
	andl	$16, %eax
	je	.LBB1_116
# %bb.80:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_260
# %bb.81:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	movq	-168(%rbp), %r12        # 8-byte Reload
	subq	-160(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	xorl	%r14d, %r14d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB1_82:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB1_125
# %bb.83:                               #   in Loop: Header=BB1_82 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -176(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_125
# %bb.84:                               #   in Loop: Header=BB1_82 Depth=2
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %ebx
	addq	$1, %r14
	cmpl	$-1, %eax
	jne	.LBB1_82
	jmp	.LBB1_216
.LBB1_85:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$1, %r15
	movl	$0, %r14d
	sbbq	%r14, %r14
	orq	%r15, %r14
	testb	$1, %r13b
	movq	-72(%rbp), %r12         # 8-byte Reload
	je	.LBB1_120
# %bb.86:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r13d, %eax
	andl	$16, %eax
	je	.LBB1_120
# %bb.87:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_147
# %bb.88:                               # %.preheader22
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r15d
	negq	%r14
	xorl	%ebx, %ebx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	.p2align	4, 0x90
.LBB1_89:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %r14
	je	.LBB1_146
# %bb.90:                               #   in Loop: Header=BB1_89 Depth=2
	movl	%r15d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_146
# %bb.91:                               #   in Loop: Header=BB1_89 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_fgetwc_r
	movl	%eax, %r15d
	addq	$-1, %rbx
	cmpl	$-1, %eax
	jne	.LBB1_89
# %bb.92:                               # %.loopexit23
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	subl	%ebx, %r14d
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	jmp	.LBB1_148
.LBB1_93:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	-1(%r15), %rax
	orl	$1408, %r13d            # imm = 0x580
	cmpq	$38, %rax
	movl	$39, %eax
	cmovaq	%rax, %r15
	testq	%r15, %r15
	movq	-72(%rbp), %r12         # 8-byte Reload
	je	.LBB1_124
# %bb.94:                               # %.preheader24
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-352(%rbp), %r14
	xorl	%ebx, %ebx
	jmp	.LBB1_98
	.p2align	4, 0x90
.LBB1_95:                               #   in Loop: Header=BB1_98 Depth=2
	movslq	-60(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfiwscanf_r.basefix(%rcx,%rcx), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB1_96:                               #   in Loop: Header=BB1_98 Depth=2
	andl	$-897, %r13d            # imm = 0xFC7F
.LBB1_97:                               #   in Loop: Header=BB1_98 Depth=2
	addq	$1, %rbx
	movl	%eax, (%r14)
	addq	$4, %r14
	cmpq	%rbx, %r15
	je	.LBB1_131
.LBB1_98:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_fgetwc_r
	movl	%eax, %ecx
	addl	$1, %ecx
	cmpl	$121, %ecx
	ja	.LBB1_126
# %bb.99:                               #   in Loop: Header=BB1_98 Depth=2
	jmpq	*.LJTI1_2(,%rcx,8)
.LBB1_100:                              #   in Loop: Header=BB1_98 Depth=2
	cmpl	$11, -60(%rbp)          # 4-byte Folded Reload
	jge	.LBB1_96
	jmp	.LBB1_126
.LBB1_102:                              #   in Loop: Header=BB1_98 Depth=2
	testb	%r13b, %r13b
	jns	.LBB1_126
# %bb.103:                              #   in Loop: Header=BB1_98 Depth=2
	andl	$-65665, %r13d          # imm = 0xFFFEFF7F
	orl	$65536, %r13d           # imm = 0x10000
	jmp	.LBB1_97
.LBB1_104:                              #   in Loop: Header=BB1_98 Depth=2
	movslq	-60(%rbp), %rcx         # 4-byte Folded Reload
	movswl	__svfiwscanf_r.basefix(%rcx,%rcx), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	addq	$-1, %rcx
	cmpq	$8, %rcx
	jae	.LBB1_96
	jmp	.LBB1_126
.LBB1_106:                              #   in Loop: Header=BB1_98 Depth=2
	testl	$512, %r13d             # imm = 0x200
	je	.LBB1_126
# %bb.107:                              #   in Loop: Header=BB1_98 Depth=2
	movl	%r13d, %ecx
	shrl	$16, %ecx
	andl	$1, %ecx
	leaq	-348(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	cmpq	%rcx, %r14
	jne	.LBB1_126
# %bb.108:                              #   in Loop: Header=BB1_98 Depth=2
	andl	$-513, %r13d            # imm = 0xFDFF
	movl	$16, -60(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_97
.LBB1_109:                              #   in Loop: Header=BB1_98 Depth=2
	movl	%r13d, %ecx
	orl	$512, %ecx              # imm = 0x200
	movl	-60(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	cmovnel	%r13d, %ecx
	movl	$8, %edx
	cmovel	%edx, %esi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_111
# %bb.110:                              #   in Loop: Header=BB1_98 Depth=2
	andl	$-897, %ecx             # imm = 0xFC7F
	jmp	.LBB1_112
.LBB1_111:                              #   in Loop: Header=BB1_98 Depth=2
	andl	$-1409, %ecx            # imm = 0xFA7F
.LBB1_112:                              #   in Loop: Header=BB1_98 Depth=2
	movl	%ecx, %r13d
	jmp	.LBB1_97
.LBB1_113:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	jne	.LBB1_163
# %bb.114:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_161
# %bb.115:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_162
.LBB1_116:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r13b
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_127
# %bb.117:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	jne	.LBB1_200
# %bb.118:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_198
# %bb.119:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_199
.LBB1_120:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$1, %r13b
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_129
# %bb.121:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	jne	.LBB1_220
# %bb.122:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_218
# %bb.123:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_219
.LBB1_124:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%ebx, %ebx
	leaq	-352(%rbp), %r14
	jmp	.LBB1_132
.LBB1_125:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	_ungetwc_r
	testl	%r14d, %r14d
	jne	.LBB1_217
	jmp	.LBB1_261
.LBB1_126:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%eax, %esi
	movq	%r12, %rdx
	callq	_ungetwc_r
	jmp	.LBB1_133
.LBB1_127:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_171
# %bb.128:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_172
.LBB1_129:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_177
# %bb.130:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_178
.LBB1_131:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$1, %ebx
.LBB1_132:                              # %..loopexit26_crit_edge
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_133:                              #   in Loop: Header=BB1_2 Depth=1
	testl	$256, %r13d             # imm = 0x100
	jne	.LBB1_258
# %bb.134:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-4(%r14), %esi
	movl	%esi, %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_2 Depth=1
	addq	$-4, %r14
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_ungetwc_r
.LBB1_136:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	testb	$16, %r13b
	jne	.LBB1_143
# %bb.137:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$0, (%r14)
	movq	%r15, %rdi
	leaq	-352(%rbp), %rsi
	xorl	%edx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	*-144(%rbp)             # 8-byte Folded Reload
	testb	$32, %r13b
	jne	.LBB1_144
# %bb.138:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$8, %r13b
	jne	.LBB1_184
# %bb.139:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$4, %r13b
	jne	.LBB1_232
# %bb.140:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r13b
	jne	.LBB1_237
# %bb.141:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB1_247
# %bb.142:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_248
.LBB1_143:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB1_253
.LBB1_144:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_186
# %bb.145:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_187
.LBB1_146:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movq	%rdi, %r15
	movq	%r12, %rdx
	callq	_ungetwc_r
	movq	-80(%rbp), %r14         # 8-byte Reload
	subl	%ebx, %r14d
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_255
.LBB1_147:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB1_148:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_255
.LBB1_149:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_150:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_151:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r14d, %r14d
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB1_154
	.p2align	4, 0x90
.LBB1_152:                              #   in Loop: Header=BB1_154 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-136(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB1_263
.LBB1_153:                              #   in Loop: Header=BB1_154 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	addl	$1, %r14d
	subq	%rbx, %r15
	je	.LBB1_196
.LBB1_154:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_195
# %bb.155:                              #   in Loop: Header=BB1_154 Depth=2
	movl	%eax, %r12d
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB1_157
# %bb.156:                              #   in Loop: Header=BB1_154 Depth=2
	cltq
	cmpq	%rax, %r15
	jae	.LBB1_152
.LBB1_157:                              #   in Loop: Header=BB1_154 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movl	%r12d, %edx
	leaq	-136(%rbp), %rcx
	callq	_wcrtomb_r
	cmpq	$-1, %rax
	je	.LBB1_263
# %bb.158:                              #   in Loop: Header=BB1_154 Depth=2
	movq	%rax, %rbx
	cmpq	%r15, %rax
	ja	.LBB1_194
# %bb.159:                              #   in Loop: Header=BB1_154 Depth=2
	testb	$16, %r13b
	jne	.LBB1_153
# %bb.160:                              #   in Loop: Header=BB1_154 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_153
.LBB1_161:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_162:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rcx
.LBB1_163:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB1_165
	.p2align	4, 0x90
.LBB1_164:                              #   in Loop: Header=BB1_165 Depth=2
	addq	$1, %r14
	cmpq	%r14, %r15
	je	.LBB1_170
.LBB1_165:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_168
# %bb.166:                              #   in Loop: Header=BB1_165 Depth=2
	testb	$16, %r13b
	jne	.LBB1_164
# %bb.167:                              #   in Loop: Header=BB1_165 Depth=2
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	addq	$4, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_164
.LBB1_168:                              #   in Loop: Header=BB1_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB1_263
# %bb.169:                              # %._crit_edge52
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB1_170:                              # %.loopexit11
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	andl	$16, %r13d
	cmpl	$1, %r13d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
	jmp	.LBB1_254
.LBB1_171:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_172:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %r15
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	_fgetwc_r
	movq	%r15, %rbx
	cmpl	$-1, %eax
	je	.LBB1_189
# %bb.173:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r14d
	movq	-168(%rbp), %r12        # 8-byte Reload
	subq	-160(%rbp), %r12        # 8-byte Folded Reload
	sarq	$2, %r12
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB1_174:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, -152(%rbp)          # 8-byte Folded Spill
	jb	.LBB1_188
# %bb.175:                              #   in Loop: Header=BB1_174 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -176(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_188
# %bb.176:                              #   in Loop: Header=BB1_174 Depth=2
	movl	%r14d, (%rbx)
	addq	$4, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r14d
	cmpl	$-1, %eax
	jne	.LBB1_174
	jmp	.LBB1_189
.LBB1_177:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_178:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_192
# %bb.179:                              # %.preheader20
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ebx
	negq	%r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_180:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, %r14
	je	.LBB1_191
# %bb.181:                              #   in Loop: Header=BB1_180 Depth=2
	movl	%ebx, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_191
# %bb.182:                              #   in Loop: Header=BB1_180 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%ebx, (%rax)
	addq	$4, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	_fgetwc_r
	movl	%eax, %ebx
	addq	$-1, %r15
	cmpl	$-1, %eax
	jne	.LBB1_180
# %bb.183:                              # %.loopexit21
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	subl	%r15d, %r14d
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_193
.LBB1_184:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_234
# %bb.185:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_235
.LBB1_186:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_187:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
.LBB1_251:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_252
.LBB1_188:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_189:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %r14
	subq	%r15, %r14
	shrq	$2, %r14
	testl	%r14d, %r14d
	je	.LBB1_261
# %bb.190:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rbx, %rax
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	movl	$0, (%rbx)
	addl	$1, %r13d
	jmp	.LBB1_197
.LBB1_191:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	_ungetwc_r
	movq	-80(%rbp), %rax         # 8-byte Reload
	subl	%r15d, %eax
	movq	%r14, %r15
	movq	%rax, %r14
	jmp	.LBB1_193
.LBB1_192:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
.LBB1_193:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, %r13d
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	jmp	.LBB1_255
.LBB1_194:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r12d, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_195:                              #   in Loop: Header=BB1_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB1_263
.LBB1_196:                              #   in Loop: Header=BB1_2 Depth=1
	andl	$16, %r13d
	cmpl	$1, %r13d
	movl	-44(%rbp), %r13d        # 4-byte Reload
	adcl	$0, %r13d
.LBB1_197:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_217
.LBB1_198:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_199:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_200:                              #   in Loop: Header=BB1_2 Depth=1
	xorl	%r14d, %r14d
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_fgetwc_r
	cmpl	$-1, %eax
	je	.LBB1_213
# %bb.201:                              #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %r12d
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	-160(%rbp), %rax        # 8-byte Folded Reload
	sarq	$2, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movq	-152(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB1_204
.LBB1_202:                              #   in Loop: Header=BB1_204 Depth=2
	movq	%r15, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	%r12d, %edx
	leaq	-136(%rbp), %rcx
	callq	_wcrtomb_r
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB1_263
.LBB1_203:                              #   in Loop: Header=BB1_204 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	subq	%rbx, %rax
	movq	%rax, %rbx
	addl	$1, %r14d
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r12d
	cmpl	$-1, %eax
	je	.LBB1_213
.LBB1_204:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	$1, %rbx
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	jb	.LBB1_212
# %bb.205:                              #   in Loop: Header=BB1_204 Depth=2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	wmemchr
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	testq	%rax, %rax
	sete	%cl
	setne	%dl
	cmpl	$0, -176(%rbp)          # 4-byte Folded Reload
	cmovel	%edx, %ecx
	cmpb	$1, %cl
	jne	.LBB1_212
# %bb.206:                              #   in Loop: Header=BB1_204 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB1_208
# %bb.207:                              #   in Loop: Header=BB1_204 Depth=2
	cltq
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	jae	.LBB1_202
.LBB1_208:                              #   in Loop: Header=BB1_204 Depth=2
	leaq	-45(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-136(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB1_263
# %bb.209:                              #   in Loop: Header=BB1_204 Depth=2
	movq	%rax, %rbx
	cmpq	-152(%rbp), %rax        # 8-byte Folded Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_212
# %bb.210:                              #   in Loop: Header=BB1_204 Depth=2
	testb	$16, %r13b
	jne	.LBB1_203
# %bb.211:                              #   in Loop: Header=BB1_204 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_203
.LBB1_212:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_213:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	je	.LBB1_215
# %bb.214:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB1_216
.LBB1_215:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
.LBB1_216:                              # %.loopexit15
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB1_217:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_254
.LBB1_218:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_219:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_220:                              #   in Loop: Header=BB1_2 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_fgetwc_r
	movl	%eax, %r12d
	cmpl	$-1, %eax
	setne	%al
	testq	%r14, %r14
	jne	.LBB1_224
.LBB1_221:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %r14d
	testb	%al, %al
	jne	.LBB1_243
	jmp	.LBB1_244
.LBB1_222:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%r12d, %esi
	leaq	-136(%rbp), %rdx
	callq	wcrtomb
	movq	%rax, %rbx
	cmpq	$-1, %rax
	je	.LBB1_263
.LBB1_223:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rbx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	_fgetwc_r
	movl	%eax, %r12d
	cmpl	$-1, %eax
	setne	%al
	subq	%rbx, %r14
	je	.LBB1_221
.LBB1_224:                              #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-1, %r12d
	je	.LBB1_221
# %bb.225:                              #   in Loop: Header=BB1_224 Depth=2
	movl	%r12d, %edi
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_242
# %bb.226:                              #   in Loop: Header=BB1_224 Depth=2
	callq	__locale_mb_cur_max
	testb	$16, %r13b
	jne	.LBB1_228
# %bb.227:                              #   in Loop: Header=BB1_224 Depth=2
	cltq
	cmpq	%rax, %r14
	jae	.LBB1_222
.LBB1_228:                              #   in Loop: Header=BB1_224 Depth=2
	leaq	-45(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-136(%rbp), %rdx
	callq	wcrtomb
	cmpq	$-1, %rax
	je	.LBB1_263
# %bb.229:                              #   in Loop: Header=BB1_224 Depth=2
	movq	%rax, %rbx
	cmpq	%r14, %rax
	ja	.LBB1_241
# %bb.230:                              #   in Loop: Header=BB1_224 Depth=2
	testb	$16, %r13b
	jne	.LBB1_223
# %bb.231:                              #   in Loop: Header=BB1_224 Depth=2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leaq	-45(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB1_223
.LBB1_232:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_239
# %bb.233:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_240
.LBB1_234:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_235:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_252
.LBB1_237:                              #   in Loop: Header=BB1_2 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	ja	.LBB1_249
# %bb.238:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_250
.LBB1_239:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_240:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_252
.LBB1_241:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB1_242:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB1_243:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
	movl	%ebx, %r14d
.LBB1_244:                              #   in Loop: Header=BB1_2 Depth=1
	testb	$16, %r13b
	movq	-88(%rbp), %rcx         # 8-byte Reload
	je	.LBB1_246
# %bb.245:                              #   in Loop: Header=BB1_2 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_255
.LBB1_246:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	$0, (%rax)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	addl	$1, %r13d
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_255
.LBB1_247:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_248:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_252:                              #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %r13d
	movq	-88(%rbp), %rcx         # 8-byte Reload
.LBB1_253:                              #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rax
	movq	%r14, -128(%rbp)        # 8-byte Spill
	leaq	-352(%rbp), %rax
	subq	%rax, %r14
	shrq	$2, %r14
.LBB1_254:                              #   in Loop: Header=BB1_2 Depth=1
	addl	-80(%rbp), %r14d        # 4-byte Folded Reload
.LBB1_255:                              #   in Loop: Header=BB1_2 Depth=1
	movl	(%rcx), %ebx
	testl	%ebx, %ebx
	jne	.LBB1_2
	jmp	.LBB1_261
.LBB1_249:                              #   in Loop: Header=BB1_2 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_250:                              #   in Loop: Header=BB1_2 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB1_251
.LBB1_256:
	xorl	%r13d, %r13d
	jmp	.LBB1_261
.LBB1_257:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_265
.LBB1_258:
	testq	%rbx, %rbx
	je	.LBB1_260
# %bb.259:
	movl	-4(%r14), %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	_ungetwc_r
.LBB1_260:                              # %.loopexit
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB1_261:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_266
.LBB1_262:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_ungetwc_r
.LBB1_263:
	movl	-116(%rbp), %edi
	leaq	-116(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	-44(%rbp), %r13d        # 4-byte Reload
	testl	%r13d, %r13d
	je	.LBB1_265
# %bb.264:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movb	16(%rax), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r13d
	jmp	.LBB1_266
.LBB1_265:
	movl	$-1, %r13d
.LBB1_266:
	movl	%r13d, %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__svfiwscanf_r, .Lfunc_end1-__svfiwscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_257
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_24
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_22
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
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
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_56
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_23
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_50
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_49
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_52
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_57
	.quad	.LBB1_58
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_14
	.quad	.LBB1_59
	.quad	.LBB1_21
	.quad	.LBB1_260
	.quad	.LBB1_16
	.quad	.LBB1_260
	.quad	.LBB1_28
	.quad	.LBB1_60
	.quad	.LBB1_61
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_51
	.quad	.LBB1_21
	.quad	.LBB1_63
	.quad	.LBB1_260
	.quad	.LBB1_260
	.quad	.LBB1_49
	.quad	.LBB1_260
	.quad	.LBB1_21
.LJTI1_1:
	.quad	.LBB1_74
	.quad	.LBB1_78
	.quad	.LBB1_85
	.quad	.LBB1_93
.LJTI1_2:
	.quad	.LBB1_132
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_102
	.quad	.LBB1_126
	.quad	.LBB1_102
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_109
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_95
	.quad	.LBB1_104
	.quad	.LBB1_104
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_106
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_100
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_106
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__svfiwscanf_r          # TAILCALL
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
	jmp	__svfiwscanf_r          # TAILCALL
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
