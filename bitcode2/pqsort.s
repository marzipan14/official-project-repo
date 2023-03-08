	.text
	.file	"pqsort.c"
	.globl	pqsort                  # -- Begin function pqsort
	.p2align	4, 0x90
	.type	pqsort,@function
pqsort:                                 # @pqsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	imulq	%rdx, %r8
	addq	%rdi, %r8
	addq	$1, %r9
	imulq	%rdx, %r9
	addq	%rdi, %r9
	addq	$-1, %r9
	callq	_pqsort
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pqsort, .Lfunc_end0-pqsort
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _pqsort
	.type	_pqsort,@function
_pqsort:                                # @_pqsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r10
	movq	%rdx, %r8
	negq	%r8
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	$8, %rdx
	setne	%al
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	shrq	$3, %rax
	leaq	-1(%rdx), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	-1(%rax), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r15, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_199:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_73 Depth 2
                                        #     Child Loop BB1_77 Depth 2
                                        #     Child Loop BB1_65 Depth 2
                                        #     Child Loop BB1_69 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #       Child Loop BB1_102 Depth 3
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_99 Depth 3
                                        #       Child Loop BB1_83 Depth 3
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_116 Depth 4
                                        #         Child Loop BB1_120 Depth 4
                                        #       Child Loop BB1_148 Depth 3
                                        #       Child Loop BB1_152 Depth 3
                                        #       Child Loop BB1_141 Depth 3
                                        #       Child Loop BB1_145 Depth 3
                                        #     Child Loop BB1_164 Depth 2
                                        #     Child Loop BB1_168 Depth 2
                                        #     Child Loop BB1_156 Depth 2
                                        #     Child Loop BB1_160 Depth 2
                                        #     Child Loop BB1_181 Depth 2
                                        #     Child Loop BB1_185 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_178 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	testb	$7, %r10b
	jne	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %r12b
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-172(%rbp), %eax        # 4-byte Reload
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$6, %r14
	movq	%r10, -48(%rbp)         # 8-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jbe	.LBB1_5
# %bb.32:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %r13
	shrq	%r13
	imulq	%r12, %r13
	addq	%r10, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %r14
	movq	%r14, -160(%rbp)        # 8-byte Spill
	je	.LBB1_59
# %bb.33:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r14), %r15
	imulq	%r12, %r15
	addq	%r10, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %r14
	jb	.LBB1_34
# %bb.35:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, -152(%rbp)        # 8-byte Spill
	movq	%r12, %rax
	movq	%r14, %r12
	shrq	$3, %r12
	imulq	%rax, %r12
	leaq	(%r10,%r12), %r15
	leaq	(%r10,%r12,2), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%r15, %rsi
	callq	*%rbx
	movq	%rbx, %rcx
	movl	%eax, %ebx
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB1_36
# %bb.38:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_41
# %bb.39:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
	jmp	.LBB1_40
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rdi
	jmp	.LBB1_52
.LBB1_36:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_41
# %bb.37:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r15
.LBB1_40:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, -120(%rbp)        # 8-byte Spill
.LBB1_41:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	negq	%rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r13, %r14
	subq	%r12, %r14
	leaq	(%r12,%r13), %r15
	leaq	(%r12,%r12), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%r15, %r12
	movq	%r15, %rsi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -176(%rbp)          # 4-byte Folded Reload
	movq	-152(%rbp), %r15        # 8-byte Reload
	js	.LBB1_42
# %bb.44:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_46
# %bb.45:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
	movq	%r12, %r13
	jmp	.LBB1_46
.LBB1_42:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_46
# %bb.43:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	movq	%r14, %r13
.LBB1_46:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
	subq	-168(%rbp), %r14        # 8-byte Folded Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	addq	%r15, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %r12         # 8-byte Reload
	callq	*%r12
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -168(%rbp)          # 4-byte Folded Reload
	js	.LBB1_47
# %bb.49:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	jg	.LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r15
	movq	%r15, -96(%rbp)         # 8-byte Spill
	jmp	.LBB1_51
.LBB1_47:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	js	.LBB1_51
# %bb.48:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r15, %r14
	movq	%r14, -96(%rbp)         # 8-byte Spill
.LBB1_51:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
.LBB1_52:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	callq	*%rbx
	movq	%rbx, %rcx
	movl	%eax, %ebx
	movq	%r13, %rdi
	movq	%r15, -152(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB1_53
# %bb.55:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jg	.LBB1_58
# %bb.56:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	movq	-152(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rsi
	jmp	.LBB1_57
.LBB1_53:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	js	.LBB1_58
# %bb.54:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
.LBB1_57:                               #   in Loop: Header=BB1_1 Depth=1
	callq	*%rbx
	testl	%eax, %eax
	cmovsq	%r15, %r13
.LBB1_58:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	-68(%rbp), %eax         # 4-byte Reload
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_60
# %bb.61:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB1_70
# %bb.62:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB1_63
# %bb.64:                               # %.preheader58
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_65:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rdx,8), %rax
	movq	(%r13,%rdx,8), %rsi
	movq	%rsi, (%r10,%rdx,8)
	movq	%rax, (%r13,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	addq	$-8, %rcx
	cmpq	%rdx, %rbx
	jne	.LBB1_65
# %bb.66:                               # %.loopexit59
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rcx, %r13
	movq	%r10, %rax
	subq	%rcx, %rax
	movq	%rdi, %rcx
	subq	%rdx, %rcx
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jae	.LBB1_68
	jmp	.LBB1_78
	.p2align	4, 0x90
.LBB1_60:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%r10), %rax
	movq	(%r13), %rcx
	movq	%rcx, (%r10)
	movq	%rax, (%r13)
	jmp	.LBB1_79
	.p2align	4, 0x90
.LBB1_70:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_71
# %bb.72:                               # %.preheader62
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_73:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rdx), %eax
	movzbl	(%r13,%rdx), %ecx
	movb	%cl, (%r10,%rdx)
	movb	%al, (%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB1_73
# %bb.74:                               # %.loopexit63
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rsi
	subq	%rdx, %rsi
	leaq	(%r10,%rdx), %rcx
	addq	%rdx, %r13
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jae	.LBB1_76
	jmp	.LBB1_78
.LBB1_63:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_78
.LBB1_68:                               # %.preheader56
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_69:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx,8), %rsi
	movq	(%r13,%rdx,8), %rdi
	movq	%rdi, (%rax,%rdx,8)
	movq	%rsi, (%r13,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax,%rdx,8), %rsi
	movq	8(%r13,%rdx,8), %rdi
	movq	%rdi, 8(%rax,%rdx,8)
	movq	%rsi, 8(%r13,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax,%rdx,8), %rsi
	movq	16(%r13,%rdx,8), %rdi
	movq	%rdi, 16(%rax,%rdx,8)
	movq	%rsi, 16(%r13,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rax,%rdx,8), %rsi
	movq	24(%r13,%rdx,8), %rdi
	movq	%rdi, 24(%rax,%rdx,8)
	movq	%rsi, 24(%r13,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_69
	jmp	.LBB1_78
.LBB1_71:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rsi
	movq	%r10, %rcx
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_78
.LBB1_76:                               # %.preheader60
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_77:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx,%rdx), %eax
	movzbl	(%r13,%rdx), %ebx
	movb	%bl, (%rcx,%rdx)
	movb	%al, (%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rcx,%rdx), %eax
	movzbl	1(%r13,%rdx), %ebx
	movb	%bl, 1(%rcx,%rdx)
	movb	%al, 1(%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rcx,%rdx), %eax
	movzbl	2(%r13,%rdx), %ebx
	movb	%bl, 2(%rcx,%rdx)
	movb	%al, 2(%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rcx,%rdx), %eax
	movzbl	3(%r13,%rdx), %ebx
	movb	%bl, 3(%rcx,%rdx)
	movb	%al, 3(%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB1_77
.LBB1_78:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_79:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%r12), %r13
	addq	$-1, %r14
	imulq	%r12, %r14
	addq	%r10, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r15
	movq	%r13, %r12
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_88:                               #   in Loop: Header=BB1_80 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	addq	%rax, %r13
.LBB1_80:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_102 Depth 3
                                        #       Child Loop BB1_106 Depth 3
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_99 Depth 3
                                        #       Child Loop BB1_83 Depth 3
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_116 Depth 4
                                        #         Child Loop BB1_120 Depth 4
                                        #       Child Loop BB1_148 Depth 3
                                        #       Child Loop BB1_152 Depth 3
                                        #       Child Loop BB1_141 Depth 3
                                        #       Child Loop BB1_145 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	ja	.LBB1_83
# %bb.81:                               #   in Loop: Header=BB1_80 Depth=2
	movq	%r13, %rdi
	movq	%r10, %rsi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_82
# %bb.87:                               #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_88
# %bb.89:                               #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_90
# %bb.91:                               #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB1_100
# %bb.92:                               #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	testb	$3, %dil
	je	.LBB1_93
# %bb.94:                               # %.preheader20
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	-104(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_95:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12,%rsi,8), %rax
	movq	(%r13,%rsi,8), %rcx
	movq	%rcx, (%r12,%rsi,8)
	movq	%rax, (%r13,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jne	.LBB1_95
# %bb.96:                               # %.loopexit21
                                        #   in Loop: Header=BB1_80 Depth=2
	movq	%r13, %rax
	subq	%rdx, %rax
	movq	%r12, %rcx
	subq	%rdx, %rcx
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jae	.LBB1_98
	jmp	.LBB1_107
.LBB1_90:                               #   in Loop: Header=BB1_80 Depth=2
	movq	(%r12), %rax
	movq	(%r13), %rcx
	movq	%rcx, (%r12)
	movq	%rax, (%r13)
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_108
.LBB1_100:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rax
	testb	$3, %cl
	movq	-48(%rbp), %r10         # 8-byte Reload
	je	.LBB1_104
# %bb.101:                              # %.preheader24
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%eax, %eax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_102:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r12,%rax), %ecx
	movzbl	(%r13,%rax), %edx
	movb	%dl, (%r12,%rax)
	movb	%cl, (%r13,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB1_102
# %bb.103:                              # %.loopexit25
                                        #   in Loop: Header=BB1_80 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	leaq	(%r12,%rax), %rdx
	addq	%r13, %rax
.LBB1_104:                              #   in Loop: Header=BB1_80 Depth=2
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_107
# %bb.105:                              # %.preheader22
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_106:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%rax,%rsi), %ecx
	movb	%cl, (%rdx,%rsi)
	movb	%bl, (%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdx,%rsi), %ecx
	movzbl	1(%rax,%rsi), %ebx
	movb	%bl, 1(%rdx,%rsi)
	movb	%cl, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rdx,%rsi), %ecx
	movzbl	2(%rax,%rsi), %ebx
	movb	%bl, 2(%rdx,%rsi)
	movb	%cl, 2(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rdx,%rsi), %ecx
	movzbl	3(%rax,%rsi), %ebx
	movb	%bl, 3(%rdx,%rsi)
	movb	%cl, 3(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB1_106
	jmp	.LBB1_107
.LBB1_93:                               #   in Loop: Header=BB1_80 Depth=2
	movq	%r13, %rax
	movq	%r12, %rcx
	movq	%rdi, %rdx
	movq	-48(%rbp), %r10         # 8-byte Reload
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_107
.LBB1_98:                               # %.preheader18
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_99:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %rbx
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rdi, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rsi,8), %rdi
	movq	8(%rax,%rsi,8), %rbx
	movq	%rbx, 8(%rcx,%rsi,8)
	movq	%rdi, 8(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx,%rsi,8), %rdi
	movq	16(%rax,%rsi,8), %rbx
	movq	%rbx, 16(%rcx,%rsi,8)
	movq	%rdi, 16(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi,8), %rdi
	movq	24(%rax,%rsi,8), %rbx
	movq	%rbx, 24(%rcx,%rsi,8)
	movq	%rdi, 24(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_99
.LBB1_107:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_108:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r13
	jmp	.LBB1_80
.LBB1_82:                               #   in Loop: Header=BB1_80 Depth=2
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_83
	.p2align	4, 0x90
.LBB1_86:                               #   in Loop: Header=BB1_83 Depth=3
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	addq	%r8, %r15
.LBB1_83:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_123 Depth 4
                                        #         Child Loop BB1_127 Depth 4
                                        #         Child Loop BB1_116 Depth 4
                                        #         Child Loop BB1_120 Depth 4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	ja	.LBB1_131
# %bb.84:                               #   in Loop: Header=BB1_83 Depth=3
	movq	%r15, %rdi
	movq	%r10, %rsi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_135
# %bb.85:                               #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_86
# %bb.110:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_111
# %bb.112:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	movq	-88(%rbp), %r8          # 8-byte Reload
	jne	.LBB1_121
# %bb.113:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	testb	$3, %dil
	je	.LBB1_114
# %bb.115:                              # %.preheader12
                                        #   in Loop: Header=BB1_83 Depth=3
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_116:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%r15,%rsi,8), %rax
	movq	(%r14,%rsi,8), %rcx
	movq	%rcx, (%r15,%rsi,8)
	movq	%rax, (%r14,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jne	.LBB1_116
# %bb.117:                              # %.loopexit13
                                        #   in Loop: Header=BB1_83 Depth=3
	movq	%r14, %rax
	subq	%rdx, %rax
	movq	%r15, %rcx
	subq	%rdx, %rcx
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	jmp	.LBB1_118
.LBB1_111:                              #   in Loop: Header=BB1_83 Depth=3
	movq	(%r15), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r15)
	movq	%rax, (%r14)
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_129
.LBB1_121:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdi
	movq	%r15, %rdx
	movq	%r14, %rax
	testb	$3, %cl
	movq	-48(%rbp), %r10         # 8-byte Reload
	je	.LBB1_125
# %bb.122:                              # %.preheader16
                                        #   in Loop: Header=BB1_83 Depth=3
	xorl	%eax, %eax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_123:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r15,%rax), %ecx
	movzbl	(%r14,%rax), %edx
	movb	%dl, (%r15,%rax)
	movb	%cl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB1_123
# %bb.124:                              # %.loopexit17
                                        #   in Loop: Header=BB1_83 Depth=3
	movq	-64(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	leaq	(%r15,%rax), %rdx
	addq	%r14, %rax
.LBB1_125:                              #   in Loop: Header=BB1_83 Depth=3
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_128
# %bb.126:                              # %.preheader14
                                        #   in Loop: Header=BB1_83 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_127:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%rax,%rsi), %ecx
	movb	%cl, (%rdx,%rsi)
	movb	%bl, (%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdx,%rsi), %ecx
	movzbl	1(%rax,%rsi), %ebx
	movb	%bl, 1(%rdx,%rsi)
	movb	%cl, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rdx,%rsi), %ecx
	movzbl	2(%rax,%rsi), %ebx
	movb	%bl, 2(%rdx,%rsi)
	movb	%cl, 2(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rdx,%rsi), %ecx
	movzbl	3(%rax,%rsi), %ebx
	movb	%bl, 3(%rdx,%rsi)
	movb	%cl, 3(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB1_127
	jmp	.LBB1_128
.LBB1_114:                              #   in Loop: Header=BB1_83 Depth=3
	movq	%r14, %rax
	movq	%r15, %rcx
	movq	%rdi, %rdx
.LBB1_118:                              #   in Loop: Header=BB1_83 Depth=3
	movq	-48(%rbp), %r10         # 8-byte Reload
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_128
# %bb.119:                              # %.preheader10
                                        #   in Loop: Header=BB1_83 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_120:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        #       Parent Loop BB1_83 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %rbx
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rdi, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rsi,8), %rdi
	movq	8(%rax,%rsi,8), %rbx
	movq	%rbx, 8(%rcx,%rsi,8)
	movq	%rdi, 8(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx,%rsi,8), %rdi
	movq	16(%rax,%rsi,8), %rbx
	movq	%rbx, 16(%rcx,%rsi,8)
	movq	%rdi, 16(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi,8), %rdi
	movq	24(%rax,%rsi,8), %rbx
	movq	%rbx, 24(%rcx,%rsi,8)
	movq	%rdi, 24(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_120
.LBB1_128:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_129:                              #   in Loop: Header=BB1_83 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	addq	%r8, %r14
	movl	$42, __A_VARIABLE(%rip)
	addq	%r8, %r15
	jmp	.LBB1_83
.LBB1_135:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_136
# %bb.137:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	jne	.LBB1_146
# %bb.138:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	testb	$3, %dil
	je	.LBB1_139
# %bb.140:                              # %.preheader28
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_141:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rsi,8), %rax
	movq	(%r15,%rsi,8), %rcx
	movq	%rcx, (%r13,%rsi,8)
	movq	%rax, (%r15,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %rbx
	jne	.LBB1_141
# %bb.142:                              # %.loopexit29
                                        #   in Loop: Header=BB1_80 Depth=2
	movq	%r15, %rax
	subq	%rdx, %rax
	movq	%r13, %rcx
	subq	%rdx, %rcx
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jae	.LBB1_144
	jmp	.LBB1_153
.LBB1_136:                              #   in Loop: Header=BB1_80 Depth=2
	movq	(%r13), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%r15)
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_154
.LBB1_146:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rdi
	movq	%r13, %rdx
	movq	%r15, %rax
	testb	$3, %cl
	movq	-112(%rbp), %rsi        # 8-byte Reload
	je	.LBB1_150
# %bb.147:                              # %.preheader32
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_148:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rax), %ecx
	movzbl	(%r15,%rax), %edx
	movb	%dl, (%r13,%rax)
	movb	%cl, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB1_148
# %bb.149:                              # %.loopexit33
                                        #   in Loop: Header=BB1_80 Depth=2
	movq	-64(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	leaq	(%rax,%r13), %rdx
	addq	%r15, %rax
.LBB1_150:                              #   in Loop: Header=BB1_80 Depth=2
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_153
# %bb.151:                              # %.preheader30
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_152:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdx,%rsi), %ebx
	movzbl	(%rax,%rsi), %ecx
	movb	%cl, (%rdx,%rsi)
	movb	%bl, (%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdx,%rsi), %ecx
	movzbl	1(%rax,%rsi), %ebx
	movb	%bl, 1(%rdx,%rsi)
	movb	%cl, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rdx,%rsi), %ecx
	movzbl	2(%rax,%rsi), %ebx
	movb	%bl, 2(%rdx,%rsi)
	movb	%cl, 2(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rdx,%rsi), %ecx
	movzbl	3(%rax,%rsi), %ebx
	movb	%bl, 3(%rdx,%rsi)
	movb	%cl, 3(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB1_152
	jmp	.LBB1_153
.LBB1_139:                              #   in Loop: Header=BB1_80 Depth=2
	movq	%r15, %rax
	movq	%r13, %rcx
	movq	%rdi, %rdx
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_153
.LBB1_144:                              # %.preheader26
                                        #   in Loop: Header=BB1_80 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_145:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %rbx
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rdi, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rsi,8), %rdi
	movq	8(%rax,%rsi,8), %rbx
	movq	%rbx, 8(%rcx,%rsi,8)
	movq	%rdi, 8(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx,%rsi,8), %rdi
	movq	16(%rax,%rsi,8), %rbx
	movq	%rbx, 16(%rcx,%rsi,8)
	movq	%rdi, 16(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rsi,8), %rdi
	movq	24(%rax,%rsi,8), %rbx
	movq	%rbx, 24(%rcx,%rsi,8)
	movq	%rdi, 24(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_145
.LBB1_153:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_154:                              #   in Loop: Header=BB1_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	-64(%rbp), %r13         # 8-byte Folded Reload
	addq	%r8, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_80
	.p2align	4, 0x90
.LBB1_131:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-160(%rbp), %r11        # 8-byte Reload
	imulq	-64(%rbp), %r11         # 8-byte Folded Reload
	addq	%r10, %r11
	movq	%r12, %r9
	subq	%r10, %r9
	movq	%r13, %rax
	subq	%r12, %rax
	cmpq	%rax, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgq	%rax, %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB1_170
# %bb.132:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdx
	subq	%r9, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -68(%rbp)           # 4-byte Folded Reload
	ja	.LBB1_161
# %bb.133:                              #   in Loop: Header=BB1_1 Depth=1
	shrq	$3, %r9
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_134
# %bb.155:                              # %.preheader49
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movq	-48(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_156:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12,%rdi,8), %rbx
	movq	(%rdx,%rdi,8), %rsi
	movq	%rsi, (%r12,%rdi,8)
	movq	%rbx, (%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	addq	$-8, %rcx
	cmpq	%rdi, %r10
	jne	.LBB1_156
# %bb.157:                              # %.loopexit50
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rcx, %rdx
	movq	%r12, %rsi
	subq	%rcx, %rsi
	subq	%rdi, %r9
	movq	%r12, %r10
	cmpq	$3, %r8
	jae	.LBB1_159
	jmp	.LBB1_169
	.p2align	4, 0x90
.LBB1_161:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rcx
	notq	%rcx
	addq	%r10, %rcx
	movq	%r13, %rsi
	notq	%rsi
	addq	%r12, %rsi
	cmpq	%rsi, %rcx
	cmovgeq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	$-2, %rdi
	subq	%rsi, %rdi
	movq	%r9, %rsi
	andq	$3, %rsi
	je	.LBB1_162
# %bb.163:                              # %.preheader53
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_164:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rcx), %r8d
	movzbl	(%rdx,%rcx), %ebx
	movb	%bl, (%r10,%rcx)
	movb	%r8b, (%rdx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB1_164
# %bb.165:                              # %.loopexit54
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rcx, %r9
	leaq	(%r10,%rcx), %rsi
	addq	%rcx, %rdx
	cmpq	$3, %rdi
	jae	.LBB1_167
	jmp	.LBB1_169
.LBB1_134:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, %rsi
	cmpq	$3, %r8
	jb	.LBB1_169
.LBB1_159:                              # %.preheader47
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_160:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi,8), %rcx
	movq	(%rdx,%rdi,8), %rbx
	movq	%rbx, (%rsi,%rdi,8)
	movq	%rcx, (%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rsi,%rdi,8), %rcx
	movq	8(%rdx,%rdi,8), %rbx
	movq	%rbx, 8(%rsi,%rdi,8)
	movq	%rcx, 8(%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rsi,%rdi,8), %rcx
	movq	16(%rdx,%rdi,8), %rbx
	movq	%rbx, 16(%rsi,%rdi,8)
	movq	%rcx, 16(%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rsi,%rdi,8), %rcx
	movq	24(%rdx,%rdi,8), %rbx
	movq	%rbx, 24(%rsi,%rdi,8)
	movq	%rcx, 24(%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdi
	cmpq	%rdi, %r9
	jne	.LBB1_160
	jmp	.LBB1_169
.LBB1_162:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rsi
	cmpq	$3, %rdi
	jb	.LBB1_169
.LBB1_167:                              # %.preheader51
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_168:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movzbl	(%rdx,%rdi), %ebx
	movb	%bl, (%rsi,%rdi)
	movb	%cl, (%rdx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rsi,%rdi), %ecx
	movzbl	1(%rdx,%rdi), %ebx
	movb	%bl, 1(%rsi,%rdi)
	movb	%cl, 1(%rdx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rsi,%rdi), %ecx
	movzbl	2(%rdx,%rdi), %ebx
	movb	%bl, 2(%rsi,%rdi)
	movb	%cl, 2(%rdx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rsi,%rdi), %ecx
	movzbl	3(%rdx,%rdi), %ebx
	movb	%bl, 3(%rsi,%rdi)
	movb	%cl, 3(%rdx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdi
	cmpq	%rdi, %r9
	jne	.LBB1_168
.LBB1_169:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_170:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %r9
	subq	%r15, %r9
	movq	%r11, %r8
	subq	%r14, %r8
	movq	-64(%rbp), %r12         # 8-byte Reload
	subq	%r12, %r8
	cmpq	%r8, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%r9, %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB1_187
# %bb.171:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rdx
	subq	%r8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -68(%rbp)           # 4-byte Folded Reload
	ja	.LBB1_179
# %bb.172:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r14
	shrq	$3, %r8
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r8), %r9
	movq	%r8, %r10
	andq	$3, %r10
	je	.LBB1_176
# %bb.173:                              # %.preheader41
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_174:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rdi,8), %rsi
	movq	(%rdx,%rdi,8), %rcx
	movq	%rcx, (%r13,%rdi,8)
	movq	%rsi, (%rdx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	addq	$-8, %rbx
	cmpq	%rdi, %r10
	jne	.LBB1_174
# %bb.175:                              # %.loopexit42
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rbx, %rdx
	subq	%rbx, %r13
	subq	%rdi, %r8
.LBB1_176:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r9
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r14, %r9
	jb	.LBB1_186
# %bb.177:                              # %.preheader39
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_178:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%rsi,8), %rcx
	movq	(%rdx,%rsi,8), %rdi
	movq	%rdi, (%r13,%rsi,8)
	movq	%rcx, (%rdx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13,%rsi,8), %rcx
	movq	8(%rdx,%rsi,8), %rdi
	movq	%rdi, 8(%r13,%rsi,8)
	movq	%rcx, 8(%rdx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13,%rsi,8), %rcx
	movq	16(%rdx,%rsi,8), %rdi
	movq	%rdi, 16(%r13,%rsi,8)
	movq	%rcx, 16(%rdx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13,%rsi,8), %rcx
	movq	24(%rdx,%rsi,8), %rdi
	movq	%rdi, 24(%r13,%rsi,8)
	movq	%rcx, 24(%rdx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_178
	jmp	.LBB1_186
	.p2align	4, 0x90
.LBB1_179:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rsi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%r14, %rcx
	subq	%r11, %rcx
	notq	%r14
	addq	%r15, %r14
	cmpq	%r14, %rcx
	cmovaq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	$-2, %rsi
	subq	%r14, %rsi
	movq	%r8, %rdi
	andq	$3, %rdi
	je	.LBB1_183
# %bb.180:                              # %.preheader45
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r14
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_181:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%rcx), %r9d
	movzbl	(%rdx,%rcx), %ebx
	movb	%bl, (%r13,%rcx)
	movb	%r9b, (%rdx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB1_181
# %bb.182:                              # %.loopexit46
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rcx, %r8
	addq	%rcx, %r13
	addq	%rcx, %rdx
	movq	%r14, %r9
.LBB1_183:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %rsi
	jb	.LBB1_186
# %bb.184:                              # %.preheader43
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_185:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%rsi), %ecx
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%r13,%rsi)
	movb	%cl, (%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r13,%rsi), %ecx
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%r13,%rsi)
	movb	%cl, 1(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%r13,%rsi), %ecx
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%r13,%rsi)
	movb	%cl, 2(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%r13,%rsi), %ecx
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%r13,%rsi)
	movb	%cl, 3(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_185
.LBB1_186:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_187:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%r11, %r14
	movq	-184(%rbp), %r15        # 8-byte Reload
	jbe	.LBB1_194
# %bb.188:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r10
	jbe	.LBB1_190
# %bb.189:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-136(%rbp), %r10        # 8-byte Folded Reload
	ja	.LBB1_193
.LBB1_190:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r10,%rax), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	jae	.LBB1_192
# %bb.191:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-136(%rbp), %rcx        # 8-byte Folded Reload
	jb	.LBB1_193
.LBB1_192:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	divq	%r12
	movq	%r10, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%r9, %r13
	movq	-136(%rbp), %r9         # 8-byte Reload
	callq	_pqsort
	movq	%r13, %r9
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB1_193:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_194:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r9
	jbe	.LBB1_201
# %bb.195:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %r10
	subq	%r9, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r10
	jbe	.LBB1_197
# %bb.196:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-136(%rbp), %r10        # 8-byte Folded Reload
	ja	.LBB1_200
.LBB1_197:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB1_199
# %bb.198:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-136(%rbp), %r14        # 8-byte Folded Reload
	jae	.LBB1_199
.LBB1_200:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_201:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_202:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r12, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jle	.LBB1_202
# %bb.6:
	addq	%r10, %r14
	movq	-64(%rbp), %r13         # 8-byte Reload
	leaq	(%r10,%r13), %rcx
	movq	-80(%rbp), %r12         # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	andl	$3, %r12d
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	andl	$3, %r13d
	movq	%r10, -104(%rbp)        # 8-byte Spill
	movq	%r14, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, -104(%rbp)        # 8-byte Folded Spill
	movq	-160(%rbp), %r14        # 8-byte Reload
	cmpq	%r14, %rcx
	jae	.LBB1_202
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_28 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_20 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	cmpq	%r10, %rcx
	jbe	.LBB1_31
# %bb.8:                                # %.preheader7
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_30:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r8, %r14
	movq	%r15, %rbx
	cmpq	%r10, %r15
	jbe	.LBB1_31
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_24 Depth 3
                                        #       Child Loop BB1_28 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_20 Depth 3
	leaq	(%rbx,%r8), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_31
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB1_21
# %bb.13:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB1_14
# %bb.15:                               # %.preheader1
                                        #   in Loop: Header=BB1_9 Depth=2
	xorl	%edx, %edx
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB1_16:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx), %rcx
	movq	(%rax), %rsi
	movq	%rsi, (%rbx)
	addq	$8, %rbx
	movq	%rcx, (%rax)
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	.LBB1_16
# %bb.17:                               # %.loopexit2
                                        #   in Loop: Header=BB1_9 Depth=2
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rdx, %rcx
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_29
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rbx), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%rbx)
	movq	%rax, (%r15)
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_22
# %bb.23:                               # %.preheader5
                                        #   in Loop: Header=BB1_9 Depth=2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx,%rax), %ecx
	movzbl	(%r14,%rax), %edx
	movb	%dl, (%rbx,%rax)
	movb	%cl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	%rax, %r13
	jne	.LBB1_24
# %bb.25:                               # %.loopexit6
                                        #   in Loop: Header=BB1_9 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	addq	%rax, %rbx
	addq	%r14, %rax
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_29
	jmp	.LBB1_27
.LBB1_14:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%r15, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	$3, -144(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_29
.LBB1_19:                               # %.preheader
                                        #   in Loop: Header=BB1_9 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx,%rdx,8), %rsi
	movq	(%rax,%rdx,8), %rdi
	movq	%rdi, (%rbx,%rdx,8)
	movq	%rsi, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx,%rdx,8), %rsi
	movq	8(%rax,%rdx,8), %rdi
	movq	%rdi, 8(%rbx,%rdx,8)
	movq	%rsi, 8(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx,%rdx,8), %rsi
	movq	16(%rax,%rdx,8), %rdi
	movq	%rdi, 16(%rbx,%rdx,8)
	movq	%rsi, 16(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx,%rdx,8), %rsi
	movq	24(%rax,%rdx,8), %rdi
	movq	%rdi, 24(%rbx,%rdx,8)
	movq	%rsi, 24(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_20
	jmp	.LBB1_29
.LBB1_22:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rax
	cmpq	$3, -128(%rbp)          # 8-byte Folded Reload
	jb	.LBB1_29
.LBB1_27:                               # %.preheader3
                                        #   in Loop: Header=BB1_9 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_28:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx,%rdx), %edi
	movzbl	(%rax,%rdx), %ecx
	movb	%cl, (%rbx,%rdx)
	movb	%dil, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rdx), %edi
	movzbl	1(%rax,%rdx), %ecx
	movb	%cl, 1(%rbx,%rdx)
	movb	%dil, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rbx,%rdx), %edi
	movzbl	2(%rax,%rdx), %ecx
	movb	%cl, 2(%rbx,%rdx)
	movb	%dil, 2(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rbx,%rdx), %edi
	movzbl	3(%rax,%rdx), %ecx
	movb	%cl, 3(%rbx,%rdx)
	movb	%dil, 3(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB1_28
	jmp	.LBB1_29
.Lfunc_end1:
	.size	_pqsort, .Lfunc_end1-_pqsort
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
