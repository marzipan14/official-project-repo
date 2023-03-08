	.text
	.file	"vfwprintf.c"
	.globl	_svfiwprintf_r          # -- Begin function _svfiwprintf_r
	.p2align	4, 0x90
	.type	_svfiwprintf_r,@function
_svfiwprintf_r:                         # @_svfiwprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	cmpb	$0, 16(%rsi)
	jns	.LBB0_4
# %bb.1:
	cmpq	$0, 24(%rsi)
	jne	.LBB0_4
# %bb.2:
	movl	$64, %edi
	movq	%rsi, %r15
	callq	malloc
	movq	%rax, (%r15)
	movq	%rax, 24(%r15)
	testq	%rax, %rax
	je	.LBB0_271
# %bb.3:
	movq	%r15, %rsi
	movl	$64, 32(%r15)
.LBB0_4:
	movq	%r14, -168(%rbp)        # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$0, -108(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_23 Depth 5
                                        #     Child Loop BB0_197 Depth 2
                                        #     Child Loop BB0_248 Depth 2
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_180 Depth 2
                                        #     Child Loop BB0_260 Depth 2
                                        #     Child Loop BB0_262 Depth 2
                                        #     Child Loop BB0_212 Depth 2
                                        #     Child Loop BB0_224 Depth 2
                                        #     Child Loop BB0_230 Depth 2
                                        #     Child Loop BB0_239 Depth 2
	movl	%r15d, %r13d
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #         Child Loop BB0_19 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_23 Depth 5
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	cmpl	$37, %eax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=3
	addq	$4, %r14
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %r15
	shrq	$2, %r15
	testl	%r15d, %r15d
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=2
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %r12
	movq	%rbx, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_272
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=2
	addl	%r15d, %r13d
	movl	(%r14), %eax
	movq	%r12, %rsi
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	testl	%eax, %eax
	je	.LBB0_269
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=2
	movl	%r13d, -52(%rbp)        # 4-byte Spill
	addq	$4, %r14
	movl	$0, -56(%rbp)
	movl	$-1, %r13d
	xorl	%r9d, %r9d
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	movq	-168(%rbp), %r14        # 8-byte Reload
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_17 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=3
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	movl	$-1, %eax
	cmovlel	%eax, %r13d
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_19 Depth 4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_23 Depth 5
	movl	(%rbx), %eax
	addq	$4, %rbx
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=4
	movl	%ecx, %r13d
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_28 Depth 5
                                        #           Child Loop BB0_23 Depth 5
	cmpl	$46, %eax
	jne	.LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=4
	movl	(%rbx), %eax
	addq	$4, %rbx
	cmpl	$42, %eax
	je	.LBB0_29
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=4
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$9, %edx
	ja	.LBB0_18
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=4
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_23:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=4
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB0_19
	jmp	.LBB0_18
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=4
	cmpl	$122, %eax
	ja	.LBB0_111
# %bb.26:                               #   in Loop: Header=BB0_19 Depth=4
	movl	%eax, %ecx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=4
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        #       Parent Loop BB0_17 Depth=3
                                        #         Parent Loop BB0_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r15,%r15,4), %ecx
	leal	(%rax,%rcx,2), %r15d
	addl	$-48, %r15d
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %ecx
	cmpl	$10, %ecx
	jb	.LBB0_28
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_17 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_15
# %bb.30:                               #   in Loop: Header=BB0_17 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_16
.LBB0_31:                               #   in Loop: Header=BB0_17 Depth=3
	cmpl	$0, -56(%rbp)
	jne	.LBB0_17
# %bb.32:                               #   in Loop: Header=BB0_17 Depth=3
	movl	$32, -56(%rbp)
	jmp	.LBB0_17
.LBB0_33:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$1, %r9d
	jmp	.LBB0_17
.LBB0_34:                               #   in Loop: Header=BB0_17 Depth=3
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %r12d
	movq	%r15, %rdi
	movq	-104(%rbp), %r15        # 8-byte Reload
	callq	_localeconv_r
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	testl	%r12d, %r12d
	je	.LBB0_17
# %bb.35:                               #   in Loop: Header=BB0_17 Depth=3
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB0_17
# %bb.36:                               #   in Loop: Header=BB0_17 Depth=3
	movl	%r9d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r9d
	jmp	.LBB0_17
.LBB0_37:                               #   in Loop: Header=BB0_17 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_44
# %bb.38:                               #   in Loop: Header=BB0_17 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_45
.LBB0_39:                               #   in Loop: Header=BB0_17 Depth=3
	movl	$43, -56(%rbp)
	jmp	.LBB0_17
.LBB0_40:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$128, %r9d
	jmp	.LBB0_17
.LBB0_41:                               #   in Loop: Header=BB0_17 Depth=3
	cmpl	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r9d
	jmp	.LBB0_17
.LBB0_42:                               #   in Loop: Header=BB0_17 Depth=3
	cmpl	$108, (%rbx)
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB0_43:                               #   in Loop: Header=BB0_17 Depth=3
	orl	$16, %r9d
	jmp	.LBB0_17
.LBB0_44:                               #   in Loop: Header=BB0_17 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_45:                               #   in Loop: Header=BB0_17 Depth=3
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB0_17
# %bb.46:                               #   in Loop: Header=BB0_17 Depth=3
	negl	%r15d
.LBB0_47:                               # %.loopexit1
                                        #   in Loop: Header=BB0_17 Depth=3
	orl	$4, %r9d
	jmp	.LBB0_17
.LBB0_48:                               #   in Loop: Header=BB0_6 Depth=2
	testb	$16, %r9b
	jne	.LBB0_53
# %bb.49:                               #   in Loop: Header=BB0_6 Depth=2
	testb	$64, %r9b
	jne	.LBB0_55
# %bb.50:                               #   in Loop: Header=BB0_6 Depth=2
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_59
# %bb.51:                               #   in Loop: Header=BB0_6 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movl	-52(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_63
# %bb.52:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_64
.LBB0_53:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movslq	%r13d, %rax
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_57
# %bb.54:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_58
.LBB0_55:                               #   in Loop: Header=BB0_6 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_61
# %bb.56:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_62
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB0_58:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_6
.LBB0_59:                               #   in Loop: Header=BB0_6 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movl	-52(%rbp), %r13d        # 4-byte Reload
	ja	.LBB0_65
# %bb.60:                               #   in Loop: Header=BB0_6 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_66
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=2
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_6
.LBB0_63:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_64:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rax), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_6
.LBB0_65:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_66:                               #   in Loop: Header=BB0_6 Depth=2
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB0_6
.LBB0_67:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	testb	$16, %r9b
	jne	.LBB0_97
# %bb.68:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$99, %eax
	jne	.LBB0_97
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %r12d
	cmpl	$40, %ecx
	ja	.LBB0_117
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_118
.LBB0_71:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_99
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_100
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r9b
	jne	.LBB0_107
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r9b
	jne	.LBB0_119
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_137
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_158
# %bb.77:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_159
.LBB0_78:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.2, %ecx
	jmp	.LBB0_92
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r9b
	jne	.LBB0_121
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r9b
	jne	.LBB0_139
# %bb.81:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_160
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_181
# %bb.83:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_182
.LBB0_84:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_123
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_124
.LBB0_86:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r9b
	jne	.LBB0_125
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r9b
	jne	.LBB0_141
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_162
# %bb.89:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_183
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_184
.LBB0_91:                               # %.loopexit2
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str, %ecx
.LBB0_92:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	testb	$16, %r9b
	jne	.LBB0_109
# %bb.93:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r9b
	jne	.LBB0_127
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_143
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_164
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_165
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_130
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_131
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB0_100:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rcx), %r14
	movl	$0, -56(%rbp)
	testq	%r14, %r14
	je	.LBB0_112
# %bb.101:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r9b
	jne	.LBB0_113
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$83, %eax
	je	.LBB0_113
# %bb.103:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r13d, %r13d
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	js	.LBB0_150
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r13d, %r13
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %r12
	subq	%r14, %r12
	testq	%rax, %rax
	cmoveq	%r13, %r12
	cmpq	$100, %r12
	jb	.LBB0_151
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	4(,%r12,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_274
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	-60(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_152
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_135
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB0_167
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_136
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	movq	(%rdx), %rdx
	testb	$1, %r9b
	jne	.LBB0_174
	jmp	.LBB0_176
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -576(%rbp)
	jmp	.LBB0_133
.LBB0_112:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r13d
	movl	$6, %eax
	cmovael	%eax, %r13d
	xorl	%r12d, %r12d
	movl	$.L.str.1, %r14d
	jmp	.LBB0_134
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r13d, %r13d
	js	.LBB0_157
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movslq	%r13d, %rdx
	xorl	%r12d, %r12d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	wmemchr
	testq	%rax, %rax
	je	.LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	cmpl	%eax, %r13d
	cmovlel	%r13d, %eax
	xorl	%r12d, %r12d
	movl	%eax, %r13d
.LBB0_116:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	-60(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_209
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_118:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %r13d        # 4-byte Reload
	movl	(%rax), %edi
	callq	btowc
	cmpl	$-1, %eax
	movl	%r12d, %r9d
	jne	.LBB0_132
	jmp	.LBB0_273
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_145
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movswq	(%rcx), %rdx
	jmp	.LBB0_167
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_146
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB0_187
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rdx
	orl	$2, %r9d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -156(%rbp)
	movl	$.L.str, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_177
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_147
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_148
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_149
# %bb.128:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_129
.LBB0_130:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rax), %eax
.LBB0_132:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -576(%rbp)
	movl	$0, -572(%rbp)
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -56(%rbp)
	movl	$1, %r13d
	xorl	%r12d, %r12d
	leaq	-576(%rbp), %r14
.LBB0_134:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_209
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB0_167
.LBB0_136:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	(%rcx), %rdx
	testb	$1, %r9b
	jne	.LBB0_174
	jmp	.LBB0_176
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_166
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movsbq	(%rcx), %rdx
	jmp	.LBB0_167
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_169
# %bb.140:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	movzwl	(%rax), %edx
	jmp	.LBB0_187
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_170
# %bb.142:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_171
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_172
# %bb.144:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_173
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rdx
	jmp	.LBB0_167
.LBB0_146:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB0_187
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_148:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rdx
	movl	$1, %eax
	jmp	.LBB0_188
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	movzwl	(%rcx), %edx
	testb	$1, %r9b
	jne	.LBB0_174
	jmp	.LBB0_176
.LBB0_150:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	cmpq	$100, %r12
	jae	.LBB0_105
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-576(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	$0, %r13d
	movl	$0, %ecx
	testq	%r12, %r12
	movl	-60(%rbp), %r9d         # 4-byte Reload
	je	.LBB0_264
.LBB0_152:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$8, %r12
	jb	.LBB0_153
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r14,%r12), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB0_178
# %bb.155:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rax,%r12,4), %rcx
	cmpq	%rcx, %r14
	jae	.LBB0_178
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%ecx, %ecx
.LBB0_259:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	notq	%rdx
	addq	%r12, %rdx
	movq	%r12, %rsi
	andq	$3, %rsi
	je	.LBB0_261
	.p2align	4, 0x90
.LBB0_260:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rcx), %edi
	movl	%edi, (%rax,%rcx,4)
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB0_260
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$3, %rdx
	jb	.LBB0_263
	.p2align	4, 0x90
.LBB0_262:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rcx), %edx
	movl	%edx, (%rax,%rcx,4)
	movsbl	1(%r14,%rcx), %edx
	movl	%edx, 4(%rax,%rcx,4)
	movsbl	2(%r14,%rcx), %edx
	movl	%edx, 8(%rax,%rcx,4)
	movsbl	3(%r14,%rcx), %edx
	movl	%edx, 12(%rax,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %r12
	jne	.LBB0_262
	jmp	.LBB0_263
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rdi
	movl	%r9d, %r12d
	callq	wcslen
	movl	%r12d, %r9d
	movq	%rax, %r13
	xorl	%r12d, %r12d
	jmp	.LBB0_134
.LBB0_158:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rcx), %rdx
	jmp	.LBB0_167
.LBB0_160:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_185
# %bb.161:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_186
.LBB0_162:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_253
# %bb.163:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_254
.LBB0_164:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rdx), %edx
	testb	$1, %r9b
	jne	.LBB0_174
	jmp	.LBB0_176
.LBB0_166:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rdx
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB0_189
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%rdx
	movl	$45, -56(%rbp)
	jmp	.LBB0_189
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %edx
	jmp	.LBB0_187
.LBB0_170:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	movzwl	(%rax), %edx
	movl	$1, %eax
	jmp	.LBB0_188
.LBB0_172:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rdx), %edx
	testb	$1, %r9b
	je	.LBB0_176
.LBB0_174:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	je	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -156(%rbp)
	movl	%eax, -152(%rbp)
	orl	$2, %r9d
.LBB0_176:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %eax
	jmp	.LBB0_188
.LBB0_178:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, %rcx
	andq	$-8, %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %esi
	andl	$1, %esi
	testq	%rdx, %rdx
	je	.LBB0_255
# %bb.179:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%rsi, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_180:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r14,%rdx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movd	4(%r14,%rdx), %xmm1     # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, (%rax,%rdx,4)
	movdqu	%xmm1, 16(%rax,%rdx,4)
	movd	8(%r14,%rdx), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movd	12(%r14,%rdx), %xmm1    # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, 32(%rax,%rdx,4)
	movdqu	%xmm1, 48(%rax,%rdx,4)
	addq	$16, %rdx
	addq	$-2, %rdi
	jne	.LBB0_180
	jmp	.LBB0_256
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_182:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %edx
	jmp	.LBB0_187
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_184:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %edx
	movl	$1, %eax
	jmp	.LBB0_188
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_186:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rcx), %edx
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_188:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -56(%rbp)
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %ecx
	andl	$-129, %r9d
	testl	%r13d, %r13d
	cmovsl	%ecx, %r9d
	jne	.LBB0_194
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_194
# %bb.191:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	jne	.LBB0_199
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %eax
	andl	$1, %eax
	je	.LBB0_199
# %bb.193:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -180(%rbp)
	jmp	.LBB0_207
	.p2align	4, 0x90
.LBB0_194:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_200
# %bb.195:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_205
# %bb.196:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-176(%rbp), %r14
	cmpl	$2, %eax
	jne	.LBB0_245
	.p2align	4, 0x90
.LBB0_197:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -4(%r14)
	addq	$-4, %r14
	shrq	$4, %rdx
	jne	.LBB0_197
	jmp	.LBB0_208
.LBB0_199:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-176(%rbp), %r14
	jmp	.LBB0_208
.LBB0_200:                              # %.preheader16
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-180(%rbp), %rax
	.p2align	4, 0x90
.LBB0_201:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	testq	%rdx, %rdx
	jne	.LBB0_201
# %bb.202:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	4(%rax), %r14
	testb	$1, %r9b
	je	.LBB0_208
# %bb.203:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$48, %ecx
	je	.LBB0_208
# %bb.204:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, (%rax)
	movq	%rax, %r14
	jmp	.LBB0_208
.LBB0_205:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$10, %rdx
	jae	.LBB0_246
# %bb.206:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %edx
	movl	%edx, -180(%rbp)
.LBB0_207:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-180(%rbp), %r14
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %r12d
	leaq	-176(%rbp), %r13
	subq	%r14, %r13
	shrq	$2, %r13
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB0_209:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%r13d, %r12d
	movl	%r13d, %ecx
	cmovgel	%r12d, %ecx
	movl	-56(%rbp), %eax
	cmpl	$1, %eax
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r9b
	cmovel	%ecx, %edx
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	andl	$132, %r9d
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	jne	.LBB0_217
# %bb.210:                              #   in Loop: Header=BB0_5 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	%edx, %r15d
	jle	.LBB0_217
# %bb.211:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r15d
	jl	.LBB0_214
	.p2align	4, 0x90
.LBB0_212:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.213:                              #   in Loop: Header=BB0_212 Depth=2
	leal	-16(%r15), %eax
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_212
	jmp	.LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.216:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-56(%rbp), %eax
	.p2align	4, 0x90
.LBB0_217:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-56(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
.LBB0_219:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$2, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_221
# %bb.220:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$8, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-156(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
.LBB0_221:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$128, -148(%rbp)        # 4-byte Folded Reload
	jne	.LBB0_228
# %bb.222:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	-144(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB0_228
# %bb.223:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r15d
	jl	.LBB0_226
	.p2align	4, 0x90
.LBB0_224:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.225:                              #   in Loop: Header=BB0_224 Depth=2
	leal	-16(%r15), %eax
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_224
	jmp	.LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_227:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
.LBB0_228:                              #   in Loop: Header=BB0_5 Depth=1
	subl	%r13d, %r12d
	jle	.LBB0_234
# %bb.229:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r12d
	jl	.LBB0_232
	.p2align	4, 0x90
.LBB0_230:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.231:                              #   in Loop: Header=BB0_230 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_230
	jmp	.LBB0_233
	.p2align	4, 0x90
.LBB0_232:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_233:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
.LBB0_234:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.235:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$4, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_243
# %bb.236:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	-144(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_243
# %bb.237:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_241
# %bb.238:                              # %.preheader4
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_239:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
# %bb.240:                              #   in Loop: Header=BB0_239 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_239
	jmp	.LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB0_242:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_265
.LBB0_243:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-144(%rbp), %r15        # 8-byte Reload
	cmpl	%r15d, %eax
	cmovgel	%eax, %r15d
	addl	-52(%rbp), %r15d        # 4-byte Folded Reload
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_5
# %bb.244:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, %r14
	callq	free
	movq	%r14, %rsi
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
.LBB0_245:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.3, %r14d
	movl	$.L.str.3, %edi
	movl	%r9d, %r12d
	callq	wcslen
	movl	%r12d, %r9d
	movl	%r13d, %r12d
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %r13d
	jmp	.LBB0_209
.LBB0_246:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r8d, %r8d
	leaq	-176(%rbp), %rdi
	jmp	.LBB0_248
	.p2align	4, 0x90
.LBB0_247:                              #   in Loop: Header=BB0_248 Depth=2
	movq	%r14, %rdi
	cmpq	$9, %rcx
	jbe	.LBB0_208
.LBB0_248:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	orl	$48, %esi
	leaq	-4(%rdi), %r14
	addl	$1, %r8d
	movl	%esi, -4(%rdi)
	testl	$1024, %r9d             # imm = 0x400
	je	.LBB0_247
# %bb.249:                              #   in Loop: Header=BB0_248 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %r8d
	jne	.LBB0_247
# %bb.250:                              #   in Loop: Header=BB0_248 Depth=2
	cmpq	$10, %rcx
	jb	.LBB0_247
# %bb.251:                              #   in Loop: Header=BB0_248 Depth=2
	cmpb	$127, %al
	je	.LBB0_247
# %bb.252:                              #   in Loop: Header=BB0_248 Depth=2
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -8(%rdi)
	addq	$-8, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpb	$0, 1(%rsi)
	leaq	1(%rsi), %rax
	cmovneq	%rax, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%rdi, %r14
	jmp	.LBB0_247
.LBB0_253:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_254:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rcx), %edx
	movl	$1, %eax
	jmp	.LBB0_188
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
.LBB0_256:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_5 Depth=1
	movd	(%r14,%rdx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movd	4(%r14,%rdx), %xmm1     # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, (%rax,%rdx,4)
	movdqu	%xmm1, 16(%rax,%rdx,4)
.LBB0_258:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	%rcx, %r12
	jne	.LBB0_259
.LBB0_263:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %ecx
	movl	%r12d, %r13d
.LBB0_264:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, (%rax,%rcx,4)
	xorl	%r12d, %r12d
	movq	%rax, %r14
	jmp	.LBB0_209
.LBB0_265:
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	je	.LBB0_267
# %bb.266:
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB0_267:
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB0_268:                              # %.loopexit3
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB0_269:
	movb	16(%rsi), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r13d, %eax
.LBB0_270:
	movl	$42, __A_VARIABLE(%rip)
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_271:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_270
.LBB0_272:
	movq	%r12, %rsi
	jmp	.LBB0_269
.LBB0_273:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	orb	$64, 16(%rsi)
	jmp	.LBB0_269
.LBB0_274:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	orb	$64, 16(%rsi)
	jmp	.LBB0_268
.Lfunc_end0:
	.size	_svfiwprintf_r, .Lfunc_end0-_svfiwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_268
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_31
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_33
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_34
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_37
	.quad	.LBB0_39
	.quad	.LBB0_111
	.quad	.LBB0_47
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_40
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_67
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_71
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_78
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_67
	.quad	.LBB0_73
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_41
	.quad	.LBB0_73
	.quad	.LBB0_43
	.quad	.LBB0_111
	.quad	.LBB0_42
	.quad	.LBB0_111
	.quad	.LBB0_48
	.quad	.LBB0_79
	.quad	.LBB0_84
	.quad	.LBB0_43
	.quad	.LBB0_111
	.quad	.LBB0_71
	.quad	.LBB0_43
	.quad	.LBB0_86
	.quad	.LBB0_111
	.quad	.LBB0_111
	.quad	.LBB0_91
	.quad	.LBB0_111
	.quad	.LBB0_43
                                        # -- End function
	.type	_svfiwprintf_r.blanks,@object # @_svfiwprintf_r.blanks
	.p2align	4
_svfiwprintf_r.blanks:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.size	_svfiwprintf_r.blanks, 64

	.type	_svfiwprintf_r.zeroes,@object # @_svfiwprintf_r.zeroes
	.p2align	4
_svfiwprintf_r.zeroes:
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.size	_svfiwprintf_r.zeroes, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str:
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	97                      # 0x61
	.long	98                      # 0x62
	.long	99                      # 0x63
	.long	100                     # 0x64
	.long	101                     # 0x65
	.long	102                     # 0x66
	.long	0                       # 0x0
	.size	.L.str, 68

	.type	.L.str.1,@object        # @.str.1
	.p2align	2
.L.str.1:
	.long	40                      # 0x28
	.long	110                     # 0x6e
	.long	117                     # 0x75
	.long	108                     # 0x6c
	.long	108                     # 0x6c
	.long	41                      # 0x29
	.long	0                       # 0x0
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
	.p2align	2
.L.str.2:
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	65                      # 0x41
	.long	66                      # 0x42
	.long	67                      # 0x43
	.long	68                      # 0x44
	.long	69                      # 0x45
	.long	70                      # 0x46
	.long	0                       # 0x0
	.size	.L.str.2, 68

	.type	.L.str.3,@object        # @.str.3
	.p2align	2
.L.str.3:
	.long	98                      # 0x62
	.long	117                     # 0x75
	.long	103                     # 0x67
	.long	32                      # 0x20
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	32                      # 0x20
	.long	118                     # 0x76
	.long	102                     # 0x66
	.long	112                     # 0x70
	.long	114                     # 0x72
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	116                     # 0x74
	.long	102                     # 0x66
	.long	58                      # 0x3a
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	97                      # 0x61
	.long	100                     # 0x64
	.long	32                      # 0x20
	.long	98                      # 0x62
	.long	97                      # 0x61
	.long	115                     # 0x73
	.long	101                     # 0x65
	.long	0                       # 0x0
	.size	.L.str.3, 104

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
