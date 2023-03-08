	.text
	.file	"pqsort.c"
	.globl	pqsort                  # -- Begin function pqsort
	.p2align	4, 0x90
	.type	pqsort,@function
pqsort:                                 # @pqsort
# %bb.0:
	imulq	%rdx, %r8
	addq	%rdi, %r8
	addq	$1, %r9
	imulq	%rdx, %r9
	addq	%rdi, %r9
	addq	$-1, %r9
	jmp	_pqsort                 # TAILCALL
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
	subq	$232, %rsp
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r8, -248(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %r11
	movq	%rdi, %r15
	movq	%rdx, %rdi
	negq	%rdi
	xorl	%eax, %eax
	cmpq	$8, %rdx
	setne	%al
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rdx, %r13
	andq	$-8, %r13
	movq	%rax, %rdx
	andq	$-4, %rdx
	movq	%r11, %rcx
	andq	$-32, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	leaq	-32(%r11), %rcx
	shrq	$5, %rcx
	leaq	-4(%rdx), %rbx
	movq	%rbx, -200(%rbp)        # 8-byte Spill
	shrq	$2, %rbx
	addq	$1, %rbx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	subq	%rdx, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ebx, %eax
	andl	$1, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%r11d, %eax
	andl	$31, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	leaq	1(%rcx), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	andq	$-2, %rbx
	movq	%rbx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%r11, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r13, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_54 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_66 Depth 2
                                        #       Child Loop BB1_71 Depth 3
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_87 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_111 Depth 4
                                        #       Child Loop BB1_120 Depth 3
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_136 Depth 4
                                        #         Child Loop BB1_140 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_148 Depth 4
                                        #         Child Loop BB1_152 Depth 4
                                        #       Child Loop BB1_170 Depth 3
                                        #       Child Loop BB1_177 Depth 3
                                        #       Child Loop BB1_181 Depth 3
                                        #       Child Loop BB1_196 Depth 3
                                        #       Child Loop BB1_189 Depth 3
                                        #       Child Loop BB1_193 Depth 3
                                        #     Child Loop BB1_225 Depth 2
                                        #     Child Loop BB1_213 Depth 2
                                        #     Child Loop BB1_217 Depth 2
                                        #     Child Loop BB1_232 Depth 2
                                        #     Child Loop BB1_239 Depth 2
                                        #     Child Loop BB1_243 Depth 2
                                        #     Child Loop BB1_269 Depth 2
                                        #     Child Loop BB1_276 Depth 2
                                        #     Child Loop BB1_280 Depth 2
                                        #     Child Loop BB1_253 Depth 2
                                        #     Child Loop BB1_260 Depth 2
                                        #     Child Loop BB1_264 Depth 2
	movq	%r15, %rax
	orq	%r11, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	testb	$7, %al
	movl	$2, %eax
	cmovel	-256(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	cmpq	$6, %rsi
	movq	%r15, -136(%rbp)        # 8-byte Spill
	jbe	.LBB1_299
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %r12
	shrq	%r12
	imulq	%r11, %r12
	addq	%r15, %r12
	cmpq	$7, %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	je	.LBB1_27
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%rsi), %r14
	imulq	%r11, %r14
	addq	%r15, %r14
	cmpq	$41, %rsi
	jb	.LBB1_22
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rdi
	movq	%rsi, %r15
	shrq	$3, %r15
	imulq	%r11, %r15
	leaq	(%rdi,%r15), %r13
	leaq	(%rdi,%r15,2), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	callq	*%rbx
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	js	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	jg	.LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r13
	jmp	.LBB1_9
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	js	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r13
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, -56(%rbp)         # 8-byte Spill
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rax
	negq	%rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	subq	%r15, %rbx
	leaq	(%r12,%r15), %r13
	leaq	(%r15,%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	-88(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%r12, %rdi
	movq	%r13, -264(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	callq	*%r15
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	js	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	jg	.LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r12
	jmp	.LBB1_15
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	js	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r15, %rbx
	movq	%rbx, %r12
.LBB1_15:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %r13
	subq	-48(%rbp), %r13         # 8-byte Folded Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	addq	%r14, %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	-88(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	js	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jg	.LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r13, %r14
	jmp	.LBB1_21
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	js	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%r13, %r14
	jmp	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %r14
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-104(%rbp), %r13        # 8-byte Reload
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, %r15d
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*%rbx
	testl	%r15d, %r15d
	js	.LBB1_25
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-136(%rbp), %r15        # 8-byte Reload
	jg	.LBB1_27
# %bb.24:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r14
	movq	%r14, %r12
	jmp	.LBB1_27
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-136(%rbp), %r15        # 8-byte Reload
	js	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB1_40
# %bb.28:                               #   in Loop: Header=BB1_1 Depth=1
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_41
# %bb.29:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$31, %r11
	jbe	.LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r12,%r11), %rax
	cmpq	%rax, %r15
	jae	.LBB1_52
# %bb.31:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r11), %rax
	cmpq	%rax, %r12
	jae	.LBB1_52
.LBB1_32:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %r9
	movq	%r15, %rax
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r9), %r8
	movq	%r9, %rdi
	andq	$3, %rdi
	je	.LBB1_37
# %bb.34:                               # %.preheader81
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_35:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rsi), %edx
	movzbl	(%r12,%rsi), %ecx
	movb	%cl, (%rax,%rsi)
	movb	%dl, (%r12,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB1_35
# %bb.36:                               # %.loopexit82
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rsi, %r9
	addq	%rsi, %rax
	addq	%rsi, %r12
.LBB1_37:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_65
# %bb.38:                               # %.preheader79
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_39:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r12,%rdx), %ebx
	movb	%bl, (%rax,%rdx)
	movb	%cl, (%r12,%rdx)
	movzbl	1(%rax,%rdx), %ecx
	movzbl	1(%r12,%rdx), %ebx
	movb	%bl, 1(%rax,%rdx)
	movb	%cl, 1(%r12,%rdx)
	movzbl	2(%rax,%rdx), %ecx
	movzbl	2(%r12,%rdx), %ebx
	movb	%bl, 2(%rax,%rdx)
	movb	%cl, 2(%r12,%rdx)
	movzbl	3(%rax,%rdx), %ecx
	movzbl	3(%r12,%rdx), %ebx
	movb	%bl, 3(%rax,%rdx)
	movb	%cl, 3(%r12,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_39
	jmp	.LBB1_65
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r15)
	movq	%rax, (%r12)
	jmp	.LBB1_65
	.p2align	4, 0x90
.LBB1_41:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$32, %r11
	jb	.LBB1_44
# %bb.42:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r12,%r13), %rax
	cmpq	%rax, %r15
	jae	.LBB1_59
# %bb.43:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r13), %rax
	cmpq	%rax, %r12
	jae	.LBB1_59
.LBB1_44:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rax
	movq	-80(%rbp), %r9          # 8-byte Reload
.LBB1_45:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_49
# %bb.46:                               # %.preheader75
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_47:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rsi,8), %rcx
	movq	(%r12,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	movq	%rcx, (%r12,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %r10
	jne	.LBB1_47
# %bb.48:                               # %.loopexit76
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdx, %r12
	subq	%rdx, %rax
	subq	%rsi, %r9
.LBB1_49:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_65
# %bb.50:                               # %.preheader73
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_51:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx,8), %rcx
	movq	(%r12,%rdx,8), %rsi
	movq	%rsi, (%rax,%rdx,8)
	movq	%rcx, (%r12,%rdx,8)
	movq	8(%rax,%rdx,8), %rcx
	movq	8(%r12,%rdx,8), %rsi
	movq	%rsi, 8(%rax,%rdx,8)
	movq	%rcx, 8(%r12,%rdx,8)
	movq	16(%rax,%rdx,8), %rcx
	movq	16(%r12,%rdx,8), %rsi
	movq	%rsi, 16(%rax,%rdx,8)
	movq	%rcx, 16(%r12,%rdx,8)
	movq	24(%rax,%rdx,8), %rcx
	movq	24(%r12,%rdx,8), %rsi
	movq	%rsi, 24(%rax,%rdx,8)
	movq	%rcx, 24(%r12,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_51
	jmp	.LBB1_65
.LBB1_52:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_292
# %bb.53:                               # %.preheader83
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_54:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rax), %xmm0
	movups	16(%r15,%rax), %xmm1
	movups	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movups	%xmm2, (%r15,%rax)
	movups	%xmm3, 16(%r15,%rax)
	movups	%xmm0, (%r12,%rax)
	movups	%xmm1, 16(%r12,%rax)
	movups	32(%r15,%rax), %xmm0
	movups	48(%r15,%rax), %xmm1
	movups	32(%r12,%rax), %xmm2
	movups	48(%r12,%rax), %xmm3
	movups	%xmm2, 32(%r15,%rax)
	movups	%xmm3, 48(%r15,%rax)
	movups	%xmm0, 32(%r12,%rax)
	movups	%xmm1, 48(%r12,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_54
# %bb.55:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rax), %xmm0
	movups	16(%r15,%rax), %xmm1
	movups	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movups	%xmm2, (%r15,%rax)
	movups	%xmm3, 16(%r15,%rax)
	movups	%xmm0, (%r12,%rax)
	movups	%xmm1, 16(%r12,%rax)
.LBB1_57:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r11, -128(%rbp)        # 8-byte Folded Reload
	je	.LBB1_65
# %bb.58:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx), %rax
	addq	%rcx, %r12
	movq	-192(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_33
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_296
# %bb.60:                               # %.preheader77
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_61:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rax,8), %xmm0
	movups	16(%r15,%rax,8), %xmm1
	movups	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r15,%rax,8)
	movups	%xmm3, 16(%r15,%rax,8)
	movups	%xmm0, (%r12,%rax,8)
	movups	%xmm1, 16(%r12,%rax,8)
	movups	32(%r15,%rax,8), %xmm0
	movups	48(%r15,%rax,8), %xmm1
	movups	32(%r12,%rax,8), %xmm2
	movups	48(%r12,%rax,8), %xmm3
	movups	%xmm2, 32(%r15,%rax,8)
	movups	%xmm3, 48(%r15,%rax,8)
	movups	%xmm0, 32(%r12,%rax,8)
	movups	%xmm1, 48(%r12,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_61
# %bb.62:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_64
.LBB1_63:                               #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rax,8), %xmm0
	movups	16(%r15,%rax,8), %xmm1
	movups	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r15,%rax,8)
	movups	%xmm3, 16(%r15,%rax,8)
	movups	%xmm0, (%r12,%rax,8)
	movups	%xmm1, 16(%r12,%rax,8)
.LBB1_64:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_295
	.p2align	4, 0x90
.LBB1_65:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r11), %rdx
	movq	-232(%rbp), %rax        # 8-byte Reload
	leaq	-1(%rax), %r10
	imulq	%r11, %r10
	addq	%r15, %r10
	movq	%r10, %rcx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
.LBB1_66:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_71 Depth 3
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_87 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_111 Depth 4
                                        #       Child Loop BB1_120 Depth 3
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_136 Depth 4
                                        #         Child Loop BB1_140 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_148 Depth 4
                                        #         Child Loop BB1_152 Depth 4
                                        #       Child Loop BB1_170 Depth 3
                                        #       Child Loop BB1_177 Depth 3
                                        #       Child Loop BB1_181 Depth 3
                                        #       Child Loop BB1_196 Depth 3
                                        #       Child Loop BB1_189 Depth 3
                                        #       Child Loop BB1_193 Depth 3
	movq	%r10, -64(%rbp)         # 8-byte Spill
	cmpq	%rcx, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jbe	.LBB1_68
# %bb.67:                               #   in Loop: Header=BB1_66 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB1_116
	.p2align	4, 0x90
.LBB1_68:                               # %.preheader49
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%r15d, %r15d
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_71
	.p2align	4, 0x90
.LBB1_69:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r13, %rdi
.LBB1_70:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%r11, %rdi
	addq	$1, %r15
	cmpq	%rcx, %rdi
	ja	.LBB1_116
.LBB1_71:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_80 Depth 4
                                        #         Child Loop BB1_87 Depth 4
                                        #         Child Loop BB1_91 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_111 Depth 4
	movq	%r15, %rbx
	imulq	%r11, %rbx
	leaq	(%rdx,%rbx), %r14
	leaq	(%rbx,%r11), %r12
	addq	%rdx, %r12
	addq	%r13, %rbx
	addq	%rdx, %rbx
	movq	%rdi, %r13
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB1_115
# %bb.72:                               #   in Loop: Header=BB1_71 Depth=3
	jne	.LBB1_69
# %bb.73:                               #   in Loop: Header=BB1_71 Depth=3
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB1_92
# %bb.74:                               #   in Loop: Header=BB1_71 Depth=3
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r13, %rdi
	je	.LBB1_93
# %bb.75:                               #   in Loop: Header=BB1_71 Depth=3
	movq	%r11, %r8
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	cmpq	$31, %r11
	jbe	.LBB1_85
# %bb.76:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	%r12, %rsi
	jae	.LBB1_78
# %bb.77:                               #   in Loop: Header=BB1_71 Depth=3
	leaq	(%rsi,%r11), %rax
	movq	%r11, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	cmpq	%rax, %r14
	jb	.LBB1_85
.LBB1_78:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_113
# %bb.79:                               # %.preheader33
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_80:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rsi,%rax), %xmm0
	movups	16(%rsi,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%rsi,%rax)
	movups	%xmm3, 16(%rsi,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
	movups	32(%rsi,%rax), %xmm0
	movups	48(%rsi,%rax), %xmm1
	movups	32(%rdi,%rax), %xmm2
	movups	48(%rdi,%rax), %xmm3
	movups	%xmm2, 32(%rsi,%rax)
	movups	%xmm3, 48(%rsi,%rax)
	movups	%xmm0, 32(%rdi,%rax)
	movups	%xmm1, 48(%rdi,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_80
# %bb.81:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_83
.LBB1_82:                               #   in Loop: Header=BB1_71 Depth=3
	movups	(%rsi,%rax), %xmm0
	movups	16(%rsi,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%rsi,%rax)
	movups	%xmm3, 16(%rsi,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
.LBB1_83:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	%r11, -128(%rbp)        # 8-byte Folded Reload
	je	.LBB1_112
# %bb.84:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%rdi,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
.LBB1_85:                               #   in Loop: Header=BB1_71 Depth=3
	leaq	-1(%r8), %r9
	movq	%r8, %r10
	andq	$3, %r10
	je	.LBB1_89
# %bb.86:                               # %.preheader31
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_87:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %ebx
	movzbl	(%rdx,%rsi), %eax
	movb	%al, (%rcx,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r10
	jne	.LBB1_87
# %bb.88:                               # %.loopexit32
                                        #   in Loop: Header=BB1_71 Depth=3
	subq	%rsi, %r8
	addq	%rsi, %rcx
	addq	%rsi, %rdx
.LBB1_89:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	$3, %r9
	jb	.LBB1_112
# %bb.90:                               # %.preheader29
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_91:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_91
	jmp	.LBB1_112
.LBB1_92:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	%r13, %rdi
	movq	(%r13), %rcx
	movq	%rcx, (%rdx)
	movq	%rax, (%r13)
	movq	-72(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_112
.LBB1_93:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	$32, %r11
	jae	.LBB1_95
# %bb.94:                               #   in Loop: Header=BB1_71 Depth=3
	movq	%rdi, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	jmp	.LBB1_105
.LBB1_95:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rbx, %rcx
	jae	.LBB1_98
# %bb.96:                               #   in Loop: Header=BB1_71 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	cmpq	%rax, %r14
	jae	.LBB1_98
# %bb.97:                               #   in Loop: Header=BB1_71 Depth=3
	movq	%rdi, %rax
	movq	-80(%rbp), %r9          # 8-byte Reload
	jmp	.LBB1_105
.LBB1_98:                               #   in Loop: Header=BB1_71 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_114
# %bb.99:                               # %.preheader27
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_100:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rdx,%rax,8), %xmm0
	movups	16(%rdx,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%rdx,%rax,8)
	movups	%xmm3, 16(%rdx,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
	movups	32(%rdx,%rax,8), %xmm0
	movups	48(%rdx,%rax,8), %xmm1
	movups	32(%rdi,%rax,8), %xmm2
	movups	48(%rdi,%rax,8), %xmm3
	movups	%xmm2, 32(%rdx,%rax,8)
	movups	%xmm3, 48(%rdx,%rax,8)
	movups	%xmm0, 32(%rdi,%rax,8)
	movups	%xmm1, 48(%rdi,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_100
# %bb.101:                              #   in Loop: Header=BB1_71 Depth=3
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_103
.LBB1_102:                              #   in Loop: Header=BB1_71 Depth=3
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movups	(%rcx,%rax,8), %xmm0
	movups	16(%rcx,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%rcx,%rax,8)
	movups	%xmm3, 16(%rcx,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
.LBB1_103:                              #   in Loop: Header=BB1_71 Depth=3
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	je	.LBB1_112
# %bb.104:                              #   in Loop: Header=BB1_71 Depth=3
	movq	-120(%rbp), %rcx        # 8-byte Reload
	leaq	(%rdi,%rcx,8), %rax
	movq	-96(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
.LBB1_105:                              #   in Loop: Header=BB1_71 Depth=3
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_109
# %bb.106:                              # %.preheader25
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_107:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_107
# %bb.108:                              # %.loopexit26
                                        #   in Loop: Header=BB1_71 Depth=3
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_109:                              #   in Loop: Header=BB1_71 Depth=3
	movq	%r13, %rdi
	cmpq	$3, %r8
	jb	.LBB1_112
# %bb.110:                              # %.preheader23
                                        #   in Loop: Header=BB1_71 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_111:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_71 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rbx
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rbx
	movq	%rbx, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rbx
	movq	%rbx, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rbx
	movq	%rbx, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_111
	.p2align	4, 0x90
.LBB1_112:                              #   in Loop: Header=BB1_71 Depth=3
	addq	%r11, -96(%rbp)         # 8-byte Folded Spill
	jmp	.LBB1_70
.LBB1_113:                              #   in Loop: Header=BB1_71 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_82
	jmp	.LBB1_83
.LBB1_114:                              #   in Loop: Header=BB1_71 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_102
	jmp	.LBB1_103
	.p2align	4, 0x90
.LBB1_115:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r13, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB1_116:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	%rcx, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	ja	.LBB1_204
# %bb.117:                              # %.preheader47
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%r12d, %r12d
	movq	%rcx, %r14
	movq	-144(%rbp), %rax        # 8-byte Reload
	jmp	.LBB1_120
	.p2align	4, 0x90
.LBB1_118:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-144(%rbp), %rax        # 8-byte Reload
.LBB1_119:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %r14
	addq	$1, %r12
	cmpq	%r14, %rdi
	ja	.LBB1_205
.LBB1_120:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_129 Depth 4
                                        #         Child Loop BB1_136 Depth 4
                                        #         Child Loop BB1_140 Depth 4
                                        #         Child Loop BB1_155 Depth 4
                                        #         Child Loop BB1_148 Depth 4
                                        #         Child Loop BB1_152 Depth 4
	movq	%r12, %rbx
	imulq	%rax, %rbx
	leaq	(%rcx,%rbx), %r13
	leaq	(%rbx,%r11), %r15
	addq	%rcx, %r15
	addq	-104(%rbp), %rbx        # 8-byte Folded Reload
	addq	%rcx, %rbx
	movq	%r14, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	callq	*-88(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB1_163
# %bb.121:                              #   in Loop: Header=BB1_120 Depth=3
	jne	.LBB1_118
# %bb.122:                              #   in Loop: Header=BB1_120 Depth=3
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB1_141
# %bb.123:                              #   in Loop: Header=BB1_120 Depth=3
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	je	.LBB1_142
# %bb.124:                              #   in Loop: Header=BB1_120 Depth=3
	movq	%r11, %r8
	movq	%r14, %rcx
	movq	%r10, %rdx
	cmpq	$31, %r11
	jbe	.LBB1_134
# %bb.125:                              #   in Loop: Header=BB1_120 Depth=3
	leaq	(%r10,%r11), %rax
	cmpq	%rax, %r13
	jae	.LBB1_127
# %bb.126:                              #   in Loop: Header=BB1_120 Depth=3
	movq	%r11, %r8
	movq	%r14, %rcx
	movq	%r10, %rdx
	cmpq	%r15, %r10
	jb	.LBB1_134
.LBB1_127:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_160
# %bb.128:                              # %.preheader21
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_129:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r10,%rax), %xmm2
	movups	16(%r10,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r10,%rax)
	movups	%xmm1, 16(%r10,%rax)
	movups	32(%r14,%rax), %xmm0
	movups	48(%r14,%rax), %xmm1
	movups	32(%r10,%rax), %xmm2
	movups	48(%r10,%rax), %xmm3
	movups	%xmm2, 32(%r14,%rax)
	movups	%xmm3, 48(%r14,%rax)
	movups	%xmm0, 32(%r10,%rax)
	movups	%xmm1, 48(%r10,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_129
# %bb.130:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_132
.LBB1_131:                              #   in Loop: Header=BB1_120 Depth=3
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r10,%rax), %xmm2
	movups	16(%r10,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r10,%rax)
	movups	%xmm1, 16(%r10,%rax)
.LBB1_132:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	%r11, -128(%rbp)        # 8-byte Folded Reload
	je	.LBB1_159
# %bb.133:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %rcx
	leaq	(%r10,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
.LBB1_134:                              #   in Loop: Header=BB1_120 Depth=3
	leaq	-1(%r8), %r9
	movq	%r8, %rsi
	andq	$3, %rsi
	je	.LBB1_138
# %bb.135:                              # %.preheader19
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_136:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%rdx,%rdi), %eax
	movb	%al, (%rcx,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_136
# %bb.137:                              # %.loopexit20
                                        #   in Loop: Header=BB1_120 Depth=3
	subq	%rdi, %r8
	addq	%rdi, %rcx
	addq	%rdi, %rdx
.LBB1_138:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$3, %r9
	jb	.LBB1_159
# %bb.139:                              # %.preheader17
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_140:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_140
	jmp	.LBB1_159
.LBB1_141:                              #   in Loop: Header=BB1_120 Depth=3
	movq	(%r14), %rax
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r10)
	movq	-72(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_159
.LBB1_142:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$32, %r11
	jb	.LBB1_145
# %bb.143:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	%r10, %rax
	cmpq	%rax, %r13
	jae	.LBB1_153
# %bb.144:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	%rbx, %r10
	jae	.LBB1_153
.LBB1_145:                              #   in Loop: Header=BB1_120 Depth=3
	movq	%r10, %rax
	movq	%r14, %rcx
	movq	-80(%rbp), %r9          # 8-byte Reload
.LBB1_146:                              #   in Loop: Header=BB1_120 Depth=3
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_150
# %bb.147:                              # %.preheader13
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_148:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_148
# %bb.149:                              # %.loopexit14
                                        #   in Loop: Header=BB1_120 Depth=3
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_150:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-64(%rbp), %r10         # 8-byte Reload
	cmpq	$3, %r8
	jb	.LBB1_159
# %bb.151:                              # %.preheader11
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_152:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rdi
	movq	%rdi, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rdi
	movq	%rdi, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rdi
	movq	%rdi, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_152
	jmp	.LBB1_159
.LBB1_153:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_162
# %bb.154:                              # %.preheader15
                                        #   in Loop: Header=BB1_120 Depth=3
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_155:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        #       Parent Loop BB1_120 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r10,%rax,8), %xmm2
	movups	16(%r10,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r10,%rax,8)
	movups	%xmm1, 16(%r10,%rax,8)
	movups	32(%r14,%rax,8), %xmm0
	movups	48(%r14,%rax,8), %xmm1
	movups	32(%r10,%rax,8), %xmm2
	movups	48(%r10,%rax,8), %xmm3
	movups	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movups	%xmm0, 32(%r10,%rax,8)
	movups	%xmm1, 48(%r10,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_155
# %bb.156:                              #   in Loop: Header=BB1_120 Depth=3
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_158
.LBB1_157:                              #   in Loop: Header=BB1_120 Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r10,%rax,8), %xmm2
	movups	16(%r10,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r10,%rax,8)
	movups	%xmm1, 16(%r10,%rax,8)
.LBB1_158:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_161
	.p2align	4, 0x90
.LBB1_159:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r10
	movq	%r10, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_119
.LBB1_160:                              #   in Loop: Header=BB1_120 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_131
	jmp	.LBB1_132
.LBB1_161:                              #   in Loop: Header=BB1_120 Depth=3
	movq	-120(%rbp), %rcx        # 8-byte Reload
	leaq	(%r10,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_146
.LBB1_162:                              #   in Loop: Header=BB1_120 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_157
	jmp	.LBB1_158
	.p2align	4, 0x90
.LBB1_163:                              #   in Loop: Header=BB1_66 Depth=2
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB1_182
# %bb.164:                              #   in Loop: Header=BB1_66 Depth=2
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	je	.LBB1_183
# %bb.165:                              #   in Loop: Header=BB1_66 Depth=2
	movq	%r11, %r8
	movq	%rsi, %rcx
	movq	%r14, %rdx
	cmpq	$31, %r11
	movq	-64(%rbp), %r10         # 8-byte Reload
	jbe	.LBB1_175
# %bb.166:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	(%r14,%r11), %rax
	cmpq	%rax, %rsi
	jae	.LBB1_168
# %bb.167:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	(%rsi,%r11), %rax
	movq	%r11, %r8
	movq	%rsi, %rcx
	movq	%r14, %rdx
	cmpq	%rax, %r14
	jb	.LBB1_175
.LBB1_168:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_201
# %bb.169:                              # %.preheader45
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_170:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rdx,%rax), %xmm0
	movups	16(%rdx,%rax), %xmm1
	movups	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movups	%xmm2, (%rdx,%rax)
	movups	%xmm3, 16(%rdx,%rax)
	movups	%xmm0, (%r14,%rax)
	movups	%xmm1, 16(%r14,%rax)
	movups	32(%rdx,%rax), %xmm0
	movups	48(%rdx,%rax), %xmm1
	movups	32(%r14,%rax), %xmm2
	movups	48(%r14,%rax), %xmm3
	movups	%xmm2, 32(%rdx,%rax)
	movups	%xmm3, 48(%rdx,%rax)
	movups	%xmm0, 32(%r14,%rax)
	movups	%xmm1, 48(%r14,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_170
# %bb.171:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_173
.LBB1_172:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movups	(%rcx,%rax), %xmm0
	movups	16(%rcx,%rax), %xmm1
	movups	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movups	%xmm2, (%rcx,%rax)
	movups	%xmm3, 16(%rcx,%rax)
	movups	%xmm0, (%r14,%rax)
	movups	%xmm1, 16(%r14,%rax)
.LBB1_173:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	%r11, -128(%rbp)        # 8-byte Folded Reload
	je	.LBB1_200
# %bb.174:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%r14,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
.LBB1_175:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	-1(%r8), %r9
	movq	%r8, %rsi
	andq	$3, %rsi
	je	.LBB1_179
# %bb.176:                              # %.preheader43
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_177:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%rdx,%rdi), %eax
	movb	%al, (%rcx,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_177
# %bb.178:                              # %.loopexit44
                                        #   in Loop: Header=BB1_66 Depth=2
	subq	%rdi, %r8
	addq	%rdi, %rcx
	addq	%rdi, %rdx
.LBB1_179:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$3, %r9
	jb	.LBB1_200
# %bb.180:                              # %.preheader41
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_181:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_181
	jmp	.LBB1_200
.LBB1_182:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%rdx)
	movq	%rax, (%r14)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_200
.LBB1_183:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$32, %r11
	jb	.LBB1_186
# %bb.184:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	(%r14,%r13), %rax
	cmpq	%rax, %rsi
	jae	.LBB1_194
# %bb.185:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	(%rsi,%r13), %rax
	cmpq	%rax, %r14
	jae	.LBB1_194
.LBB1_186:                              #   in Loop: Header=BB1_66 Depth=2
	movq	%r14, %rax
	movq	%rsi, %rcx
	movq	-80(%rbp), %r9          # 8-byte Reload
.LBB1_187:                              #   in Loop: Header=BB1_66 Depth=2
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_191
# %bb.188:                              # %.preheader37
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_189:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_189
# %bb.190:                              # %.loopexit38
                                        #   in Loop: Header=BB1_66 Depth=2
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_191:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-64(%rbp), %r10         # 8-byte Reload
	cmpq	$3, %r8
	jb	.LBB1_200
# %bb.192:                              # %.preheader35
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_193:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rdi
	movq	%rdi, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rdi
	movq	%rdi, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rdi
	movq	%rdi, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_193
	jmp	.LBB1_200
.LBB1_194:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_203
# %bb.195:                              # %.preheader39
                                        #   in Loop: Header=BB1_66 Depth=2
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_196:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rsi,%rax,8), %xmm0
	movups	16(%rsi,%rax,8), %xmm1
	movups	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movups	%xmm2, (%rsi,%rax,8)
	movups	%xmm3, 16(%rsi,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	movups	%xmm1, 16(%r14,%rax,8)
	movups	32(%rsi,%rax,8), %xmm0
	movups	48(%rsi,%rax,8), %xmm1
	movups	32(%r14,%rax,8), %xmm2
	movups	48(%r14,%rax,8), %xmm3
	movups	%xmm2, 32(%rsi,%rax,8)
	movups	%xmm3, 48(%rsi,%rax,8)
	movups	%xmm0, 32(%r14,%rax,8)
	movups	%xmm1, 48(%r14,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_196
# %bb.197:                              #   in Loop: Header=BB1_66 Depth=2
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_199
.LBB1_198:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movups	(%rcx,%rax,8), %xmm0
	movups	16(%rcx,%rax,8), %xmm1
	movups	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movups	%xmm2, (%rcx,%rax,8)
	movups	%xmm3, 16(%rcx,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	movups	%xmm1, 16(%r14,%rax,8)
.LBB1_199:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_202
	.p2align	4, 0x90
.LBB1_200:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r11, %rax
	addq	-144(%rbp), %r14        # 8-byte Folded Reload
	movq	%r14, %rcx
	movq	%rax, %rdx
	jmp	.LBB1_66
.LBB1_201:                              #   in Loop: Header=BB1_66 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_172
	jmp	.LBB1_173
.LBB1_202:                              #   in Loop: Header=BB1_66 Depth=2
	movq	-120(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx,8), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_187
.LBB1_203:                              #   in Loop: Header=BB1_66 Depth=2
	xorl	%eax, %eax
	movq	-64(%rbp), %r10         # 8-byte Reload
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_198
	jmp	.LBB1_199
.LBB1_204:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rcx, %r14
	.p2align	4, 0x90
.LBB1_205:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-232(%rbp), %r12        # 8-byte Reload
	imulq	%r11, %r12
	movq	-136(%rbp), %r15        # 8-byte Reload
	leaq	(%r15,%r12), %r8
	movq	%rdi, %rax
	movq	-96(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %rax
	subq	%r15, %rdi
	cmpq	%rax, %rdi
	cmovgq	%rax, %rdi
	testq	%rdi, %rdi
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	je	.LBB1_244
# %bb.206:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, %r8
	negq	%r8
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %r11
	subq	%rdi, %r11
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_218
# %bb.207:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, %r9
	cmpq	$31, %rdi
	jbe	.LBB1_210
# %bb.208:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rsi, %r15
	jae	.LBB1_223
# %bb.209:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r9), %rcx
	cmpq	%rcx, %r11
	jae	.LBB1_223
.LBB1_210:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rdx
.LBB1_211:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %rsi
	leaq	-1(%r9), %r8
	andq	$3, %rsi
	je	.LBB1_215
# %bb.212:                              # %.preheader69
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_213:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rdi), %ebx
	movzbl	(%r11,%rdi), %ecx
	movb	%cl, (%rdx,%rdi)
	movb	%bl, (%r11,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_213
# %bb.214:                              # %.loopexit70
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdi, %r9
	addq	%rdi, %rdx
	addq	%rdi, %r11
.LBB1_215:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	movq	-56(%rbp), %r8          # 8-byte Reload
	jb	.LBB1_244
# %bb.216:                              # %.preheader67
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_217:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rsi), %ecx
	movzbl	(%r11,%rsi), %ebx
	movb	%bl, (%rdx,%rsi)
	movb	%cl, (%r11,%rsi)
	movzbl	1(%rdx,%rsi), %ecx
	movzbl	1(%r11,%rsi), %ebx
	movb	%bl, 1(%rdx,%rsi)
	movb	%cl, 1(%r11,%rsi)
	movzbl	2(%rdx,%rsi), %ecx
	movzbl	2(%r11,%rsi), %ebx
	movb	%bl, 2(%rdx,%rsi)
	movb	%cl, 2(%r11,%rsi)
	movzbl	3(%rdx,%rsi), %ecx
	movzbl	3(%r11,%rsi), %ebx
	movb	%bl, 3(%rdx,%rsi)
	movb	%cl, 3(%r11,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_217
	jmp	.LBB1_244
	.p2align	4, 0x90
.LBB1_218:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, %r10
	shrq	$3, %r10
	cmpq	$32, %rdi
	jb	.LBB1_219
# %bb.220:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, %rdx
	andq	$-8, %rdx
	notq	%rdi
	addq	%rdx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rdi, %rcx
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jae	.LBB1_230
# %bb.221:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%r15, %rdx
	cmpq	%rdx, %r11
	jae	.LBB1_230
.LBB1_219:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rsi
.LBB1_237:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r10), %r8
	movq	%r10, %r9
	andq	$3, %r9
	je	.LBB1_241
# %bb.238:                              # %.preheader64
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_239:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rbx,8), %rcx
	movq	(%r11,%rbx,8), %rdx
	movq	%rdx, (%rsi,%rbx,8)
	movq	%rcx, (%r11,%rbx,8)
	addq	$1, %rbx
	addq	$-8, %rdi
	cmpq	%rbx, %r9
	jne	.LBB1_239
# %bb.240:                              # %.loopexit65
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdi, %r11
	subq	%rdi, %rsi
	subq	%rbx, %r10
.LBB1_241:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	movq	-56(%rbp), %r8          # 8-byte Reload
	jb	.LBB1_244
# %bb.242:                              # %.preheader62
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_243:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi,8), %rcx
	movq	(%r11,%rdi,8), %rdx
	movq	%rdx, (%rsi,%rdi,8)
	movq	%rcx, (%r11,%rdi,8)
	movq	8(%rsi,%rdi,8), %rcx
	movq	8(%r11,%rdi,8), %rdx
	movq	%rdx, 8(%rsi,%rdi,8)
	movq	%rcx, 8(%r11,%rdi,8)
	movq	16(%rsi,%rdi,8), %rcx
	movq	16(%r11,%rdi,8), %rdx
	movq	%rdx, 16(%rsi,%rdi,8)
	movq	%rcx, 16(%r11,%rdi,8)
	movq	24(%rsi,%rdi,8), %rcx
	movq	24(%r11,%rdi,8), %rdx
	movq	%rdx, 24(%rsi,%rdi,8)
	movq	%rcx, 24(%r11,%rdi,8)
	addq	$4, %rdi
	cmpq	%rdi, %r10
	jne	.LBB1_243
	jmp	.LBB1_244
.LBB1_223:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r10
	andq	$-32, %r10
	leaq	-32(%r10), %rcx
	movq	%rcx, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %ebx
	andl	$1, %ebx
	testq	%rcx, %rcx
	je	.LBB1_293
# %bb.224:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%rbx, %rdx
	addq	%r8, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	movq	-56(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_225:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	-48(%rsi,%rdi), %xmm2
	movups	-32(%rsi,%rdi), %xmm3
	movups	%xmm2, (%r15,%rdi)
	movups	%xmm3, 16(%r15,%rdi)
	movups	%xmm0, -48(%rsi,%rdi)
	movups	%xmm1, -32(%rsi,%rdi)
	movups	32(%r15,%rdi), %xmm0
	movups	48(%r15,%rdi), %xmm1
	movups	-16(%rsi,%rdi), %xmm2
	movups	(%rsi,%rdi), %xmm3
	movups	%xmm2, 32(%r15,%rdi)
	movups	%xmm3, 48(%r15,%rdi)
	movups	%xmm0, -16(%rsi,%rdi)
	movups	%xmm1, (%rsi,%rdi)
	addq	$64, %rdi
	addq	$-2, %rdx
	jne	.LBB1_225
# %bb.226:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_228
.LBB1_227:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	(%r11,%rdi), %xmm2
	movups	16(%r11,%rdi), %xmm3
	movups	%xmm2, (%r15,%rdi)
	movups	%xmm3, 16(%r15,%rdi)
	movups	%xmm0, (%r11,%rdi)
	movups	%xmm1, 16(%r11,%rdi)
.LBB1_228:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r10, %r9
	je	.LBB1_244
# %bb.229:                              #   in Loop: Header=BB1_1 Depth=1
	andl	$31, %r9d
	leaq	(%r15,%r10), %rdx
	addq	%r10, %r11
	jmp	.LBB1_211
.LBB1_230:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r9
	movabsq	$2305843009213693948, %rcx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rcx, %r9
	leaq	-4(%r9), %rcx
	movq	%rcx, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	movl	%esi, %edx
	andl	$1, %edx
	testq	%rcx, %rcx
	je	.LBB1_297
# %bb.231:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%rdx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r8), %rbx
	addq	$48, %rbx
	xorl	%edi, %edi
	movq	-56(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_232:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rdi,8), %xmm0
	movups	16(%r15,%rdi,8), %xmm1
	movups	-48(%rbx,%rdi,8), %xmm2
	movups	-32(%rbx,%rdi,8), %xmm3
	movups	%xmm2, (%r15,%rdi,8)
	movups	%xmm3, 16(%r15,%rdi,8)
	movups	%xmm0, -48(%rbx,%rdi,8)
	movups	%xmm1, -32(%rbx,%rdi,8)
	movups	32(%r15,%rdi,8), %xmm0
	movups	48(%r15,%rdi,8), %xmm1
	movups	-16(%rbx,%rdi,8), %xmm2
	movups	(%rbx,%rdi,8), %xmm3
	movups	%xmm2, 32(%r15,%rdi,8)
	movups	%xmm3, 48(%r15,%rdi,8)
	movups	%xmm0, -16(%rbx,%rdi,8)
	movups	%xmm1, (%rbx,%rdi,8)
	addq	$8, %rdi
	addq	$-2, %rsi
	jne	.LBB1_232
# %bb.233:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_235
.LBB1_234:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rdi,8), %xmm0
	movups	16(%r15,%rdi,8), %xmm1
	movups	(%r11,%rdi,8), %xmm2
	movups	16(%r11,%rdi,8), %xmm3
	movups	%xmm2, (%r15,%rdi,8)
	movups	%xmm3, 16(%r15,%rdi,8)
	movups	%xmm0, (%r11,%rdi,8)
	movups	%xmm1, 16(%r11,%rdi,8)
.LBB1_235:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r9, %r10
	jne	.LBB1_236
	.p2align	4, 0x90
.LBB1_244:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, %r11
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rcx, %r11
	subq	%r14, %rcx
	subq	-72(%rbp), %r11         # 8-byte Folded Reload
	cmpq	%r11, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	cmovbq	%rcx, %r11
	testq	%r11, %r11
	movq	-248(%rbp), %r14        # 8-byte Reload
	je	.LBB1_281
# %bb.245:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, %rcx
	subq	%r11, %rcx
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_248
# %bb.246:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$31, %r11
	ja	.LBB1_265
# %bb.247:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_274
	.p2align	4, 0x90
.LBB1_248:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %r10
	shrq	$3, %r10
	cmpq	$32, %r11
	jb	.LBB1_258
# %bb.249:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rdx
	andq	$-8, %rdx
	movq	%r11, %rsi
	notq	%rsi
	addq	%rdx, %rsi
	addq	%r12, %rsi
	addq	%r15, %rsi
	addq	$1, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rsi, %rdi
	jae	.LBB1_251
# %bb.250:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%rdi, %rdx
	cmpq	%rdx, %rcx
	jb	.LBB1_258
.LBB1_251:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r9
	movabsq	$2305843009213693948, %rdx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rdx, %r9
	leaq	-4(%r9), %rdx
	movq	%rdx, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r8d
	andl	$1, %r8d
	testq	%rdx, %rdx
	je	.LBB1_298
# %bb.252:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r8, %rbx
	subq	%r11, %r12
	leaq	(%r15,%r12), %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_253:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rsi,%rdx,8), %xmm0
	movups	16(%rsi,%rdx,8), %xmm1
	movups	-48(%rdi,%rdx,8), %xmm2
	movups	-32(%rdi,%rdx,8), %xmm3
	movups	%xmm2, (%rsi,%rdx,8)
	movups	%xmm3, 16(%rsi,%rdx,8)
	movups	%xmm0, -48(%rdi,%rdx,8)
	movups	%xmm1, -32(%rdi,%rdx,8)
	movups	32(%rsi,%rdx,8), %xmm0
	movups	48(%rsi,%rdx,8), %xmm1
	movups	-16(%rdi,%rdx,8), %xmm2
	movups	(%rdi,%rdx,8), %xmm3
	movups	%xmm2, 32(%rsi,%rdx,8)
	movups	%xmm3, 48(%rsi,%rdx,8)
	movups	%xmm0, -16(%rdi,%rdx,8)
	movups	%xmm1, (%rdi,%rdx,8)
	addq	$8, %rdx
	addq	$-2, %rbx
	jne	.LBB1_253
# %bb.254:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r8, %r8
	je	.LBB1_256
.LBB1_255:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movups	(%rsi,%rdx,8), %xmm0
	movups	16(%rsi,%rdx,8), %xmm1
	movups	(%rcx,%rdx,8), %xmm2
	movups	16(%rcx,%rdx,8), %xmm3
	movups	%xmm2, (%rsi,%rdx,8)
	movups	%xmm3, 16(%rsi,%rdx,8)
	movups	%xmm0, (%rcx,%rdx,8)
	movups	%xmm1, 16(%rcx,%rdx,8)
.LBB1_256:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r9, %r10
	movq	-48(%rbp), %rdx         # 8-byte Reload
	je	.LBB1_281
# %bb.257:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%r9,8), %rcx
	leaq	(%rdx,%r9,8), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r9, %r10
.LBB1_258:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r10), %r8
	movq	%r10, %r9
	andq	$3, %r9
	je	.LBB1_262
# %bb.259:                              # %.preheader54
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	-48(%rbp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_260:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r11,%rdi,8), %rdx
	movq	(%rcx,%rdi,8), %rsi
	movq	%rsi, (%r11,%rdi,8)
	movq	%rdx, (%rcx,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rbx
	cmpq	%rdi, %r9
	jne	.LBB1_260
# %bb.261:                              # %.loopexit55
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rbx, %rcx
	subq	%rbx, %r11
	movq	%r11, -48(%rbp)         # 8-byte Spill
	subq	%rdi, %r10
.LBB1_262:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB1_281
# %bb.263:                              # %.preheader52
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_264:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rdx,8), %rsi
	movq	(%rcx,%rdx,8), %rdi
	movq	%rdi, (%rbx,%rdx,8)
	movq	%rsi, (%rcx,%rdx,8)
	movq	8(%rbx,%rdx,8), %rsi
	movq	8(%rcx,%rdx,8), %rdi
	movq	%rdi, 8(%rbx,%rdx,8)
	movq	%rsi, 8(%rcx,%rdx,8)
	movq	16(%rbx,%rdx,8), %rsi
	movq	16(%rcx,%rdx,8), %rdi
	movq	%rdi, 16(%rbx,%rdx,8)
	movq	%rsi, 16(%rcx,%rdx,8)
	movq	24(%rbx,%rdx,8), %rsi
	movq	24(%rcx,%rdx,8), %rdi
	movq	%rdi, 24(%rbx,%rdx,8)
	movq	%rsi, 24(%rcx,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r10
	jne	.LBB1_264
	jmp	.LBB1_281
.LBB1_265:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %r10         # 8-byte Reload
	cmpq	%rdx, %r10
	jae	.LBB1_267
# %bb.266:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r10,%r11), %rdx
	cmpq	%rdx, %rcx
	jb	.LBB1_274
.LBB1_267:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rdx
	movq	%rdx, %rdi
	shrq	$5, %rdi
	addq	$1, %rdi
	movl	%edi, %r9d
	andl	$1, %r9d
	testq	%rdx, %rdx
	je	.LBB1_294
# %bb.268:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r9, %rdi
	subq	%r11, %r12
	leaq	(%r15,%r12), %rbx
	addq	$48, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_269:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r10,%rsi), %xmm0
	movups	16(%r10,%rsi), %xmm1
	movups	-48(%rbx,%rsi), %xmm2
	movups	-32(%rbx,%rsi), %xmm3
	movups	%xmm2, (%r10,%rsi)
	movups	%xmm3, 16(%r10,%rsi)
	movups	%xmm0, -48(%rbx,%rsi)
	movups	%xmm1, -32(%rbx,%rsi)
	movups	32(%r10,%rsi), %xmm0
	movups	48(%r10,%rsi), %xmm1
	movups	-16(%rbx,%rsi), %xmm2
	movups	(%rbx,%rsi), %xmm3
	movups	%xmm2, 32(%r10,%rsi)
	movups	%xmm3, 48(%r10,%rsi)
	movups	%xmm0, -16(%rbx,%rsi)
	movups	%xmm1, (%rbx,%rsi)
	addq	$64, %rsi
	addq	$-2, %rdi
	jne	.LBB1_269
# %bb.270:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r9, %r9
	je	.LBB1_272
.LBB1_271:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%r10,%rsi), %xmm0
	movups	16(%r10,%rsi), %xmm1
	movups	(%rcx,%rsi), %xmm2
	movups	16(%rcx,%rsi), %xmm3
	movups	%xmm2, (%r10,%rsi)
	movups	%xmm3, 16(%r10,%rsi)
	movups	%xmm0, (%rcx,%rsi)
	movups	%xmm1, 16(%rcx,%rsi)
.LBB1_272:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %r11
	je	.LBB1_281
# %bb.273:                              #   in Loop: Header=BB1_1 Depth=1
	andl	$31, %r11d
	addq	%r8, %r10
	addq	%r8, %rcx
	.p2align	4, 0x90
.LBB1_274:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r11), %r8
	movq	%r11, %rsi
	andq	$3, %rsi
	je	.LBB1_278
# %bb.275:                              # %.preheader59
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_276:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rdi), %ebx
	movzbl	(%rcx,%rdi), %edx
	movb	%dl, (%r10,%rdi)
	movb	%bl, (%rcx,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_276
# %bb.277:                              # %.loopexit60
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdi, %r11
	addq	%rdi, %r10
	addq	%rdi, %rcx
.LBB1_278:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_281
# %bb.279:                              # %.preheader57
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_280:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %edx
	movzbl	(%rcx,%rsi), %ebx
	movb	%bl, (%rdi,%rsi)
	movb	%dl, (%rcx,%rsi)
	movzbl	1(%rdi,%rsi), %edx
	movzbl	1(%rcx,%rsi), %ebx
	movb	%bl, 1(%rdi,%rsi)
	movb	%dl, 1(%rcx,%rsi)
	movzbl	2(%rdi,%rsi), %edx
	movzbl	2(%rcx,%rsi), %ebx
	movb	%bl, 2(%rdi,%rsi)
	movb	%dl, 2(%rcx,%rsi)
	movzbl	3(%rdi,%rsi), %edx
	movzbl	3(%rcx,%rsi), %ebx
	movb	%bl, 3(%rdi,%rsi)
	movb	%dl, 3(%rcx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r11
	jne	.LBB1_280
	.p2align	4, 0x90
.LBB1_281:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %r11         # 8-byte Reload
	cmpq	%r11, %rax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	jbe	.LBB1_287
# %bb.282:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r14, %r15
	jbe	.LBB1_284
# %bb.283:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %r15        # 8-byte Folded Reload
	ja	.LBB1_287
.LBB1_284:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%rax), %rcx
	addq	$-1, %rcx
	cmpq	%r14, %rcx
	jae	.LBB1_286
# %bb.285:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %rcx        # 8-byte Folded Reload
	jb	.LBB1_287
.LBB1_286:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	divq	%r11
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r11, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	movq	-160(%rbp), %r9         # 8-byte Reload
	callq	_pqsort
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_287:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	%r11, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jbe	.LBB1_340
# %bb.288:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rcx, %r15
	subq	%rax, %r15
	cmpq	%r14, %r15
	jbe	.LBB1_290
# %bb.289:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %r15        # 8-byte Folded Reload
	ja	.LBB1_340
.LBB1_290:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$-1, %rcx
	xorl	%edx, %edx
	divq	%r11
	movq	%rax, %rsi
	cmpq	%r14, %rcx
	jae	.LBB1_1
# %bb.291:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %rcx        # 8-byte Folded Reload
	jae	.LBB1_1
	jmp	.LBB1_340
.LBB1_292:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_56
	jmp	.LBB1_57
.LBB1_293:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %r8          # 8-byte Reload
	testq	%rbx, %rbx
	jne	.LBB1_227
	jmp	.LBB1_228
.LBB1_294:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	testq	%r9, %r9
	jne	.LBB1_271
	jmp	.LBB1_272
.LBB1_295:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	leaq	(%r12,%rax,8), %r12
	leaq	(%r15,%rax,8), %rax
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_45
.LBB1_236:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%r9,8), %r11
	leaq	(%r15,%r9,8), %rsi
	subq	%r9, %r10
	jmp	.LBB1_237
.LBB1_296:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_63
	jmp	.LBB1_64
.LBB1_297:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %r8          # 8-byte Reload
	testq	%rdx, %rdx
	jne	.LBB1_234
	jmp	.LBB1_235
.LBB1_298:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	testq	%r8, %r8
	jne	.LBB1_255
	jmp	.LBB1_256
.LBB1_299:
	imulq	%r11, %rsi
	cmpq	%r11, %rsi
	jle	.LBB1_340
# %bb.300:
	addq	%r15, %rsi
	leaq	(%r15,%r11), %rbx
	leaq	(%r11,%r13), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %r8          # 8-byte Reload
	movabsq	$2305843009213693948, %r9 # imm = 0x1FFFFFFFFFFFFFFC
	andq	%r8, %r9
	movq	%r11, %rax
	shrq	$5, %rax
	leaq	-4(,%rax,4), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	shrq	$2, %rax
	addq	$1, %rax
	movl	%r11d, %ecx
	andl	$31, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %edx
	andl	$1, %edx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r9, -152(%rbp)         # 8-byte Spill
	subq	%r9, %r8
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	andl	$1, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	andq	$-2, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	leaq	48(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_302
	.p2align	4, 0x90
.LBB1_301:                              #   in Loop: Header=BB1_302 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	%r11, %rbx
	addq	$1, -96(%rbp)           # 8-byte Folded Spill
	addq	%r11, -64(%rbp)         # 8-byte Folded Spill
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rsi, %rbx
	movq	-136(%rbp), %r15        # 8-byte Reload
	jae	.LBB1_340
.LBB1_302:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_306 Depth 2
                                        #       Child Loop BB1_324 Depth 3
                                        #       Child Loop BB1_330 Depth 3
                                        #       Child Loop BB1_334 Depth 3
                                        #       Child Loop BB1_317 Depth 3
                                        #       Child Loop BB1_321 Depth 3
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	cmpq	%r15, %rbx
	jbe	.LBB1_301
# %bb.303:                              # %.preheader8
                                        #   in Loop: Header=BB1_302 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	imulq	%r11, %rcx
	leaq	(%rcx,%r11), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %r12         # 8-byte Reload
	xorl	%r13d, %r13d
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_306
	.p2align	4, 0x90
.LBB1_304:                              #   in Loop: Header=BB1_306 Depth=2
	movq	(%r14), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r15)
.LBB1_305:                              #   in Loop: Header=BB1_306 Depth=2
	addq	$1, %r13
	addq	%rdi, %r12
	cmpq	-136(%rbp), %r15        # 8-byte Folded Reload
	jbe	.LBB1_301
.LBB1_306:                              #   Parent Loop BB1_302 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_324 Depth 3
                                        #       Child Loop BB1_330 Depth 3
                                        #       Child Loop BB1_334 Depth 3
                                        #       Child Loop BB1_317 Depth 3
                                        #       Child Loop BB1_321 Depth 3
	movq	%r15, %r14
	addq	%rdi, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*-88(%rbp)              # 8-byte Folded Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_301
# %bb.307:                              #   in Loop: Header=BB1_306 Depth=2
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB1_304
# %bb.308:                              #   in Loop: Header=BB1_306 Depth=2
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_311
# %bb.309:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$31, %r11
	ja	.LBB1_322
# %bb.310:                              #   in Loop: Header=BB1_306 Depth=2
	movq	%r11, %rsi
	movq	%r15, %rcx
	jmp	.LBB1_329
	.p2align	4, 0x90
.LBB1_311:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$32, %r11
	jb	.LBB1_314
# %bb.312:                              #   in Loop: Header=BB1_306 Depth=2
	movq	%r13, %rax
	imulq	%rdi, %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_332
# %bb.313:                              #   in Loop: Header=BB1_306 Depth=2
	movq	-208(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	%rsi, %rcx
	addq	-160(%rbp), %rax        # 8-byte Folded Reload
	addq	%rsi, %rax
	cmpq	%rcx, %rax
	jae	.LBB1_332
.LBB1_314:                              #   in Loop: Header=BB1_306 Depth=2
	movq	%r15, %rax
	movq	-80(%rbp), %r9          # 8-byte Reload
.LBB1_315:                              #   in Loop: Header=BB1_306 Depth=2
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_319
# %bb.316:                              # %.preheader1
                                        #   in Loop: Header=BB1_306 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_317:                              #   Parent Loop BB1_302 Depth=1
                                        #     Parent Loop BB1_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rsi,8), %rcx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%r14,%rsi,8)
	movq	%rcx, (%rax,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %r10
	jne	.LBB1_317
# %bb.318:                              # %.loopexit2
                                        #   in Loop: Header=BB1_306 Depth=2
	subq	%rdx, %rax
	subq	%rdx, %r14
	subq	%rsi, %r9
	movq	-144(%rbp), %rdi        # 8-byte Reload
.LBB1_319:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$3, %r8
	jb	.LBB1_305
# %bb.320:                              # %.preheader
                                        #   in Loop: Header=BB1_306 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_321:                              #   Parent Loop BB1_302 Depth=1
                                        #     Parent Loop BB1_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx,8), %rcx
	movq	(%rax,%rdx,8), %rsi
	movq	%rsi, (%r14,%rdx,8)
	movq	%rcx, (%rax,%rdx,8)
	movq	8(%r14,%rdx,8), %rcx
	movq	8(%rax,%rdx,8), %rsi
	movq	%rsi, 8(%r14,%rdx,8)
	movq	%rcx, 8(%rax,%rdx,8)
	movq	16(%r14,%rdx,8), %rcx
	movq	16(%rax,%rdx,8), %rsi
	movq	%rsi, 16(%r14,%rdx,8)
	movq	%rcx, 16(%rax,%rdx,8)
	movq	24(%r14,%rdx,8), %rcx
	movq	24(%rax,%rdx,8), %rsi
	movq	%rsi, 24(%r14,%rdx,8)
	movq	%rcx, 24(%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_321
	jmp	.LBB1_305
.LBB1_322:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_331
# %bb.323:                              # %.preheader6
                                        #   in Loop: Header=BB1_306 Depth=2
	leaq	(%r12,%r11), %rcx
	xorl	%eax, %eax
	movq	-240(%rbp), %rdx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_324:                              #   Parent Loop BB1_302 Depth=1
                                        #     Parent Loop BB1_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rcx,%rax), %xmm0
	movups	-32(%rcx,%rax), %xmm1
	movups	-48(%r12,%rax), %xmm2
	movups	-32(%r12,%rax), %xmm3
	movups	%xmm2, -48(%rcx,%rax)
	movups	%xmm3, -32(%rcx,%rax)
	movups	%xmm0, -48(%r12,%rax)
	movups	%xmm1, -32(%r12,%rax)
	movups	-16(%rcx,%rax), %xmm0
	movups	(%rcx,%rax), %xmm1
	movups	-16(%r12,%rax), %xmm2
	movups	(%r12,%rax), %xmm3
	movups	%xmm2, -16(%rcx,%rax)
	movups	%xmm3, (%rcx,%rax)
	movups	%xmm0, -16(%r12,%rax)
	movups	%xmm1, (%r12,%rax)
	addq	$64, %rax
	addq	$-2, %rdx
	jne	.LBB1_324
# %bb.325:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB1_327
.LBB1_326:                              #   in Loop: Header=BB1_306 Depth=2
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r15,%rax)
	movups	%xmm1, 16(%r15,%rax)
.LBB1_327:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	%r11, -128(%rbp)        # 8-byte Folded Reload
	je	.LBB1_305
# %bb.328:                              #   in Loop: Header=BB1_306 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r15,%rax), %rcx
	movq	-200(%rbp), %rsi        # 8-byte Reload
.LBB1_329:                              #   in Loop: Header=BB1_306 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_330:                              #   Parent Loop BB1_302 Depth=1
                                        #     Parent Loop BB1_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %eax
	movzbl	(%rcx,%rdx), %ebx
	movb	%bl, (%r14,%rdx)
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB1_330
	jmp	.LBB1_305
.LBB1_331:                              #   in Loop: Header=BB1_306 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB1_326
	jmp	.LBB1_327
.LBB1_332:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB1_339
# %bb.333:                              # %.preheader3
                                        #   in Loop: Header=BB1_306 Depth=2
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_334:                              #   Parent Loop BB1_302 Depth=1
                                        #     Parent Loop BB1_306 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	-48(%r12,%rax,8), %xmm2
	movups	-32(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, -48(%r12,%rax,8)
	movups	%xmm1, -32(%r12,%rax,8)
	movups	32(%r14,%rax,8), %xmm0
	movups	48(%r14,%rax,8), %xmm1
	movups	-16(%r12,%rax,8), %xmm2
	movups	(%r12,%rax,8), %xmm3
	movups	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movups	%xmm0, -16(%r12,%rax,8)
	movups	%xmm1, (%r12,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_334
# %bb.335:                              #   in Loop: Header=BB1_306 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB1_337
.LBB1_336:                              #   in Loop: Header=BB1_306 Depth=2
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r15,%rax,8)
	movups	%xmm1, 16(%r15,%rax,8)
.LBB1_337:                              #   in Loop: Header=BB1_306 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -80(%rbp)         # 8-byte Folded Reload
	je	.LBB1_305
# %bb.338:                              #   in Loop: Header=BB1_306 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_315
.LBB1_339:                              #   in Loop: Header=BB1_306 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_336
	jmp	.LBB1_337
.LBB1_340:
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_pqsort, .Lfunc_end1-_pqsort
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
