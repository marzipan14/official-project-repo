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
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	cmpb	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_4
# %bb.1:
	cmpq	$0, 24(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.2:
	movl	$64, %edi
	movq	%rsi, %r15
	callq	malloc
	movq	%rax, (%r15)
	movq	%rax, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_293
# %bb.3:
	movq	%r15, %rsi
	movl	$64, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -168(%rbp)        # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$0, -116(%rbp)          # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
                                        #     Child Loop BB0_219 Depth 2
                                        #     Child Loop BB0_231 Depth 2
                                        #     Child Loop BB0_221 Depth 2
                                        #     Child Loop BB0_186 Depth 2
                                        #     Child Loop BB0_189 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #     Child Loop BB0_264 Depth 2
                                        #     Child Loop BB0_270 Depth 2
                                        #     Child Loop BB0_279 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testl	%eax, %eax
	je	.LBB0_9
# %bb.6:                                # %.preheader3
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %eax
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r14), %eax
	addq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$37, %eax
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %r15
	shrq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, -96(%rbp)         # 8-byte Spill
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, %r12
	movq	%rbx, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_294
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	addl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movq	%r12, %rsi
	movq	-96(%rbp), %r12         # 8-byte Reload
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_289
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%r13, -88(%rbp)         # 8-byte Spill
	addq	$4, %r14
	movl	$0, -56(%rbp)
	movl	$-1, %r13d
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	movq	-168(%rbp), %r14        # 8-byte Reload
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	movl	$-1, %eax
	cmovlel	%eax, %r13d
.LBB0_18:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_21 Depth 4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
	movl	(%rbx), %eax
	addq	$4, %rbx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=4
	movl	%ecx, %r13d
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=4
	movl	(%rbx), %eax
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %eax
	je	.LBB0_37
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %edx
	ja	.LBB0_20
# %bb.24:                               # %.preheader
                                        #   in Loop: Header=BB0_21 Depth=4
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movl	(%rbx), %eax
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jb	.LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB0_21
	jmp	.LBB0_20
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=4
	leal	-32(%rax), %ecx
	cmpl	$90, %ecx
	ja	.LBB0_98
# %bb.28:                               #   in Loop: Header=BB0_21 Depth=4
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_29:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_30:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r15,%r15,4), %ecx
	leal	(%rax,%rcx,2), %r15d
	addl	$-48, %r15d
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB0_30
	jmp	.LBB0_21
.LBB0_31:                               #   in Loop: Header=BB0_19 Depth=3
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_19 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_19 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_34:                               #   in Loop: Header=BB0_19 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB0_19
# %bb.35:                               #   in Loop: Header=BB0_18 Depth=2
	negl	%r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:                               # %.loopexit1
                                        #   in Loop: Header=BB0_18 Depth=2
	orl	$4, %r10d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_37:                               #   in Loop: Header=BB0_18 Depth=2
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_16
# %bb.38:                               #   in Loop: Header=BB0_18 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_17
.LBB0_39:                               #   in Loop: Header=BB0_18 Depth=2
	cmpl	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_18
# %bb.40:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$32, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_41:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$1, %r10d
	jmp	.LBB0_18
.LBB0_42:                               #   in Loop: Header=BB0_18 Depth=2
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %r12d
	movq	%r15, %rdi
	movq	-112(%rbp), %r15        # 8-byte Reload
	callq	_localeconv_r
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	testl	%r12d, %r12d
	movq	%rax, %r12
	je	.LBB0_18
# %bb.43:                               #   in Loop: Header=BB0_18 Depth=2
	testq	%r12, %r12
	je	.LBB0_18
# %bb.44:                               #   in Loop: Header=BB0_18 Depth=2
	cmpb	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_18
# %bb.45:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$1024, %r10d            # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_46:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$43, -56(%rbp)
	jmp	.LBB0_18
.LBB0_47:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$128, %r10d
	jmp	.LBB0_18
.LBB0_48:                               #   in Loop: Header=BB0_18 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$64, %ecx
	movl	$512, %edx              # imm = 0x200
	cmovel	%edx, %ecx
	cmoveq	%rax, %rbx
	orl	%ecx, %r10d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_49:                               #   in Loop: Header=BB0_18 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_50:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$16, %r10d
	jmp	.LBB0_18
.LBB0_51:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %eax
	movq	%r12, -96(%rbp)         # 8-byte Spill
	jne	.LBB0_62
# %bb.52:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_62
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	ja	.LBB0_124
# %bb.54:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_125
.LBB0_55:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_88
# %bb.56:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_89
.LBB0_57:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_94
# %bb.58:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB0_107
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_129
# %bb.60:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_151
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_152
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_104
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_105
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.2, %ecx
	jmp	.LBB0_83
.LBB0_65:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_109
# %bb.66:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	movq	-88(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_131
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_153
# %bb.68:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_192
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_193
.LBB0_70:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_111
# %bb.71:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB0_133
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_155
# %bb.73:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_194
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_195
.LBB0_75:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_113
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_114
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_115
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB0_135
# %bb.79:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_157
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_196
# %bb.81:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_197
.LBB0_82:                               # %.loopexit2
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str, %ecx
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_96
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB0_117
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB0_137
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_159
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_160
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	movl	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%r12, -96(%rbp)         # 8-byte Spill
	je	.LBB0_106
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$83, %eax
	je	.LBB0_100
# %bb.91:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB0_100
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	js	.LBB0_178
# %bb.93:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	%r13d, %r13
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %r8
	subq	%r14, %r8
	testq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r13, %r8
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_179
.LBB0_94:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB0_119
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_120
.LBB0_96:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_121
# %bb.97:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_122
.LBB0_98:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_288
# %bb.99:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, -96(%rbp)         # 8-byte Spill
	movl	%eax, -576(%rbp)
	jmp	.LBB0_128
.LBB0_100:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB0_123
# %bb.101:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	movslq	%r13d, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	wmemchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r13d
	jge	.LBB0_149
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_150
.LBB0_104:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	%eax, -576(%rbp)
	jmp	.LBB0_127
.LBB0_106:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r13d
	movl	$6, %eax
	cmovael	%eax, %r13d
	xorl	%r12d, %r12d
	movl	$.L.str.1, %r14d
	jmp	.LBB0_244
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_139
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_140
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movslq	%r13d, %r8
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_141
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_142
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_143
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_144
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_114:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	orl	$2, %r10d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -156(%rbp)
	movl	$.L.str, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_177
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_145
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_146
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB0_147
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_148
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_120:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_163
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_122:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rdx
	jmp	.LBB0_173
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rdi
	movl	%r10d, %r12d
	callq	wcslen
	movl	%r12d, %r10d
	movq	%rax, %r13
	xorl	%r12d, %r12d
	jmp	.LBB0_244
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edi
	callq	btowc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_295
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -576(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %r10d        # 4-byte Reload
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -572(%rbp)
.LBB0_128:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -56(%rbp)
	movl	$1, %r13d
	xorl	%r12d, %r12d
	leaq	-576(%rbp), %r14
	jmp	.LBB0_244
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_161
# %bb.130:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_162
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_165
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_166
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_167
# %bb.134:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_168
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_169
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_170
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_171
# %bb.138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_172
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_140:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %rdx
	jmp	.LBB0_163
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rax)
.LBB0_142:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%r8, (%rcx)
	jmp	.LBB0_200
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_144:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_203
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_146:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_206
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_148:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rcx), %edx
	jmp	.LBB0_173
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r12d, %r12d
	movl	%eax, %r13d
.LBB0_150:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	-52(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB0_245
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_152:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %rdx
	jmp	.LBB0_163
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_198
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_199
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_201
# %bb.156:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_202
.LBB0_157:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_204
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_205
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_160:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %edx
	jmp	.LBB0_173
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_162:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %rdx
.LBB0_163:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB0_208
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%rdx
	movl	$45, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_208
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_166:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_200
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_168:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB0_203
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_170:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB0_206
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_172:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %edx
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	je	.LBB0_176
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	je	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -156(%rbp)
	movl	%eax, -152(%rbp)
	orl	$2, %r10d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_176:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %eax
	jmp	.LBB0_207
.LBB0_178:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r8
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$100, %r8
	jb	.LBB0_182
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, %r13
	leaq	4(,%r8,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_296
# %bb.181:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	%r13, %r8
	jmp	.LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	-576(%rbp), %rax
	movl	$0, %r13d
	movl	$0, %ecx
	testq	%r8, %r8
	movl	-52(%rbp), %r10d        # 4-byte Reload
	je	.LBB0_191
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-1(%r8), %rdx
	movl	%r8d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
	jmp	.LBB0_187
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, %rsi
	andq	$-4, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_186:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rdx), %edi
	movl	%edi, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	1(%r14,%rdx), %edi
	movl	%edi, 4(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	2(%r14,%rdx), %edi
	movl	%edi, 8(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	3(%r14,%rdx), %edi
	movl	%edi, 12(%rax,%rdx,4)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB0_186
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_190
# %bb.188:                              # %.preheader22
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rax,%rdx,4), %rsi
	addq	%rdx, %r14
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_189:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rdx), %edi
	movl	%edi, (%rsi,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_189
.LBB0_190:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r8d, %ecx
	movl	%r8d, %r13d
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, (%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	%rax, %r14
	jmp	.LBB0_245
.LBB0_192:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_200
.LBB0_194:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_195:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB0_203
.LBB0_196:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB0_206
.LBB0_198:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_199:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r13b, (%rax)
.LBB0_200:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_201:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_202:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB0_203:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r10d           # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB0_207
.LBB0_204:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_205:                              #   in Loop: Header=BB0_5 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB0_206:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_207:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -56(%rbp)
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	%r12, -96(%rbp)         # 8-byte Spill
	js	.LBB0_214
# %bb.209:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB0_215
# %bb.210:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_215
# %bb.211:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_213
# %bb.212:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	jne	.LBB0_241
.LBB0_213:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r10d
	leaq	-176(%rbp), %r14
	jmp	.LBB0_243
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r10d
.LBB0_216:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_220
# %bb.217:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_225
# %bb.218:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-176(%rbp), %r14
	cmpl	$2, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	jne	.LBB0_227
	.p2align	4, 0x90
.LBB0_219:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -4(%r14)
	addq	$-4, %r14
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_219
	jmp	.LBB0_243
.LBB0_220:                              # %.preheader18
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-180(%rbp), %rax
	.p2align	4, 0x90
.LBB0_221:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB0_221
# %bb.222:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	4(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	je	.LBB0_243
# %bb.223:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	je	.LBB0_243
# %bb.224:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	jmp	.LBB0_243
.LBB0_225:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdx
	ja	.LBB0_228
# %bb.226:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %edx
	movl	%edx, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_242
.LBB0_227:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.3, %r14d
	movl	$.L.str.3, %edi
	movl	%r10d, %r12d
	callq	wcslen
	movl	%r12d, %r10d
	movl	%r13d, %r12d
	movl	%eax, %r13d
	jmp	.LBB0_244
.LBB0_228:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	leaq	-176(%rbp), %r14
	movl	-116(%rbp), %r9d        # 4-byte Reload
	jmp	.LBB0_231
	.p2align	4, 0x90
.LBB0_229:                              #   in Loop: Header=BB0_231 Depth=2
	movq	%rax, %r14
.LBB0_230:                              #   in Loop: Header=BB0_231 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	jbe	.LBB0_240
.LBB0_231:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	%r8
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	orl	$48, %edi
	leaq	-4(%r14), %rax
	addl	$1, %esi
	movl	%edi, -4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r10d            # imm = 0x400
	je	.LBB0_229
# %bb.232:                              #   in Loop: Header=BB0_231 Depth=2
	movsbl	(%r12), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %esi
	jne	.LBB0_229
# %bb.233:                              #   in Loop: Header=BB0_231 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rcx
	jb	.LBB0_229
# %bb.234:                              #   in Loop: Header=BB0_231 Depth=2
	cmpb	$127, %dil
	je	.LBB0_229
# %bb.235:                              #   in Loop: Header=BB0_231 Depth=2
	movl	%r9d, -8(%r14)
	addq	$-8, %r14
	xorl	%esi, %esi
	cmpb	$0, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_230
# %bb.236:                              #   in Loop: Header=BB0_231 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_230
.LBB0_240:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_243
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r10d
.LBB0_242:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-180(%rbp), %r14
	.p2align	4, 0x90
.LBB0_243:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %r12d
	leaq	-176(%rbp), %r13
	subq	%r14, %r13
	shrq	$2, %r13
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB0_244:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB0_245:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%r13d, %r12d
	movl	%r13d, %ecx
	cmovgel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_247:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r10b
	je	.LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_249:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r10d
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jne	.LBB0_257
# %bb.250:                              #   in Loop: Header=BB0_5 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r15d
	jle	.LBB0_257
# %bb.251:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB0_254
	.p2align	4, 0x90
.LBB0_252:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.253:                              #   in Loop: Header=BB0_252 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_252
	jmp	.LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.256:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-56(%rbp), %eax
	.p2align	4, 0x90
.LBB0_257:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-56(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
.LBB0_259:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$8, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-156(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -148(%rbp)        # 4-byte Folded Reload
	jne	.LBB0_268
# %bb.262:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	-100(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB0_268
# %bb.263:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB0_266
	.p2align	4, 0x90
.LBB0_264:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.265:                              #   in Loop: Header=BB0_264 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_264
	jmp	.LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_267:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
.LBB0_268:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %r12d
	jle	.LBB0_274
# %bb.269:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB0_272
	.p2align	4, 0x90
.LBB0_270:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.271:                              #   in Loop: Header=BB0_270 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_270
	jmp	.LBB0_273
	.p2align	4, 0x90
.LBB0_272:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_273:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
.LBB0_274:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.275:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB0_283
# %bb.276:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-100(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_283
# %bb.277:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_281
# %bb.278:                              # %.preheader6
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_279:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
# %bb.280:                              #   in Loop: Header=BB0_279 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_279
	jmp	.LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_282:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfiwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_286
.LBB0_283:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB0_285
# %bb.284:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_285:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	addl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_286:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB0_290
# %bb.287:
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	free
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_288:
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB0_289:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_291
.LBB0_290:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB0_291:
	movb	16(%rsi), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r13d, %eax
.LBB0_292:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_293:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_292
.LBB0_294:
	movq	%r12, %rsi
	jmp	.LBB0_289
.LBB0_295:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	orb	$64, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_289
.LBB0_296:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	orb	$64, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_288
.Lfunc_end0:
	.size	_svfiwprintf_r, .Lfunc_end0-_svfiwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_39
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_41
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_42
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_31
	.quad	.LBB0_46
	.quad	.LBB0_98
	.quad	.LBB0_36
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_47
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_29
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_51
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_55
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_64
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_51
	.quad	.LBB0_57
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_48
	.quad	.LBB0_57
	.quad	.LBB0_50
	.quad	.LBB0_98
	.quad	.LBB0_49
	.quad	.LBB0_98
	.quad	.LBB0_65
	.quad	.LBB0_70
	.quad	.LBB0_75
	.quad	.LBB0_50
	.quad	.LBB0_98
	.quad	.LBB0_55
	.quad	.LBB0_50
	.quad	.LBB0_77
	.quad	.LBB0_98
	.quad	.LBB0_98
	.quad	.LBB0_82
	.quad	.LBB0_98
	.quad	.LBB0_50
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
