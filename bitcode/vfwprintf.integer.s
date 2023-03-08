	.text
	.file	"vfwprintf.c"
	.globl	vfiwprintf              # -- Begin function vfiwprintf
	.p2align	4, 0x90
	.type	vfiwprintf,@function
vfiwprintf:                             # @vfiwprintf
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
	callq	_vfiwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vfiwprintf, .Lfunc_end0-vfiwprintf
                                        # -- End function
	.globl	_vfiwprintf_r           # -- Begin function _vfiwprintf_r
	.p2align	4, 0x90
	.type	_vfiwprintf_r,@function
_vfiwprintf_r:                          # @_vfiwprintf_r
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
	movq	%rsi, %r15
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r13)
	jne	.LBB1_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
.LBB1_3:
	leaq	-92(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%r15)
	je	.LBB1_5
# %bb.4:
	cmpq	$0, 24(%r15)
	jne	.LBB1_7
.LBB1_5:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__swsetup_r
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB1_271
.LBB1_7:
	movq	%r14, -176(%rbp)        # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$0, -124(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_20 Depth 3
                                        #         Child Loop BB1_22 Depth 4
                                        #           Child Loop BB1_31 Depth 5
                                        #           Child Loop BB1_26 Depth 5
                                        #     Child Loop BB1_200 Depth 2
                                        #     Child Loop BB1_250 Depth 2
                                        #     Child Loop BB1_204 Depth 2
                                        #     Child Loop BB1_182 Depth 2
                                        #     Child Loop BB1_262 Depth 2
                                        #     Child Loop BB1_264 Depth 2
                                        #     Child Loop BB1_212 Depth 2
                                        #     Child Loop BB1_224 Depth 2
                                        #     Child Loop BB1_230 Depth 2
                                        #     Child Loop BB1_239 Depth 2
	movl	%r14d, %eax
	movl	%r14d, -76(%rbp)        # 4-byte Spill
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_20 Depth 3
                                        #         Child Loop BB1_22 Depth 4
                                        #           Child Loop BB1_31 Depth 5
                                        #           Child Loop BB1_26 Depth 5
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB1_10:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=3
	cmpl	$37, %eax
	je	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=3
	addq	$4, %r14
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %r15
	shrq	$2, %r15
	testl	%r15d, %r15d
	je	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=2
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	%r13, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_269
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=2
	addl	%r15d, -76(%rbp)        # 4-byte Folded Spill
	movl	(%r14), %eax
.LBB1_16:                               #   in Loop: Header=BB1_9 Depth=2
	testl	%eax, %eax
	je	.LBB1_269
# %bb.17:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$4, %r14
	movl	$0, -52(%rbp)
	movl	$-1, %r13d
	xorl	%r9d, %r9d
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	movq	-176(%rbp), %r14        # 8-byte Reload
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=3
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	movl	$-1, %eax
	cmovlel	%eax, %r13d
.LBB1_20:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_22 Depth 4
                                        #           Child Loop BB1_31 Depth 5
                                        #           Child Loop BB1_26 Depth 5
	movl	(%rbx), %eax
	addq	$4, %rbx
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_22 Depth=4
	movl	%ecx, %r13d
.LBB1_22:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_31 Depth 5
                                        #           Child Loop BB1_26 Depth 5
	cmpl	$46, %eax
	jne	.LBB1_28
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=4
	movl	(%rbx), %eax
	addq	$4, %rbx
	cmpl	$42, %eax
	je	.LBB1_32
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=4
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$9, %edx
	ja	.LBB1_21
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB1_22 Depth=4
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_26:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_20 Depth=3
                                        #         Parent Loop BB1_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB1_26
# %bb.27:                               #   in Loop: Header=BB1_22 Depth=4
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB1_22
	jmp	.LBB1_21
.LBB1_28:                               #   in Loop: Header=BB1_22 Depth=4
	cmpl	$122, %eax
	ja	.LBB1_113
# %bb.29:                               #   in Loop: Header=BB1_22 Depth=4
	movl	%eax, %ecx
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_30:                               #   in Loop: Header=BB1_22 Depth=4
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_31:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_20 Depth=3
                                        #         Parent Loop BB1_22 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r15,%r15,4), %ecx
	leal	(%rax,%rcx,2), %r15d
	addl	$-48, %r15d
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %ecx
	cmpl	$10, %ecx
	jb	.LBB1_31
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_20 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_18
# %bb.33:                               #   in Loop: Header=BB1_20 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_19
.LBB1_34:                               #   in Loop: Header=BB1_20 Depth=3
	cmpl	$0, -52(%rbp)
	jne	.LBB1_20
# %bb.35:                               #   in Loop: Header=BB1_20 Depth=3
	movl	$32, -52(%rbp)
	jmp	.LBB1_20
.LBB1_36:                               #   in Loop: Header=BB1_20 Depth=3
	orl	$1, %r9d
	jmp	.LBB1_20
.LBB1_37:                               #   in Loop: Header=BB1_20 Depth=3
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rax
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movsbl	(%rax), %r12d
	movq	%r15, %rdi
	movq	-120(%rbp), %r15        # 8-byte Reload
	callq	_localeconv_r
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	testl	%r12d, %r12d
	movq	-112(%rbp), %r12        # 8-byte Reload
	je	.LBB1_20
# %bb.38:                               #   in Loop: Header=BB1_20 Depth=3
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB1_20
# %bb.39:                               #   in Loop: Header=BB1_20 Depth=3
	movl	%r9d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r9d
	jmp	.LBB1_20
.LBB1_40:                               #   in Loop: Header=BB1_20 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_47
# %bb.41:                               #   in Loop: Header=BB1_20 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_48
.LBB1_42:                               #   in Loop: Header=BB1_20 Depth=3
	movl	$43, -52(%rbp)
	jmp	.LBB1_20
.LBB1_43:                               #   in Loop: Header=BB1_20 Depth=3
	orl	$128, %r9d
	jmp	.LBB1_20
.LBB1_44:                               #   in Loop: Header=BB1_20 Depth=3
	cmpl	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r9d
	jmp	.LBB1_20
.LBB1_45:                               #   in Loop: Header=BB1_20 Depth=3
	cmpl	$108, (%rbx)
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB1_46:                               #   in Loop: Header=BB1_20 Depth=3
	orl	$16, %r9d
	jmp	.LBB1_20
.LBB1_47:                               #   in Loop: Header=BB1_20 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_48:                               #   in Loop: Header=BB1_20 Depth=3
	movl	(%rax), %r15d
	testl	%r15d, %r15d
	jns	.LBB1_20
# %bb.49:                               #   in Loop: Header=BB1_20 Depth=3
	negl	%r15d
.LBB1_50:                               # %.loopexit1
                                        #   in Loop: Header=BB1_20 Depth=3
	orl	$4, %r9d
	jmp	.LBB1_20
.LBB1_51:                               #   in Loop: Header=BB1_9 Depth=2
	testb	$16, %r9b
	jne	.LBB1_56
# %bb.52:                               #   in Loop: Header=BB1_9 Depth=2
	testb	$64, %r9b
	jne	.LBB1_58
# %bb.53:                               #   in Loop: Header=BB1_9 Depth=2
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_62
# %bb.54:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-64(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_66
# %bb.55:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_67
.LBB1_56:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	-76(%rbp), %rax         # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_60
# %bb.57:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_61
.LBB1_58:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_64
# %bb.59:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_65
.LBB1_60:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_61:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_9
.LBB1_62:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-64(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_68
# %bb.63:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_69
.LBB1_64:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_65:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_9
.LBB1_66:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_67:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_9
.LBB1_68:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_69:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rax), %rax
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB1_9
.LBB1_70:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	testb	$16, %r9b
	jne	.LBB1_101
# %bb.71:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$99, %eax
	jne	.LBB1_101
# %bb.72:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %r13d
	cmpl	$40, %ecx
	ja	.LBB1_119
# %bb.73:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_120
.LBB1_74:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_103
# %bb.75:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_104
.LBB1_76:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r9b
	jne	.LBB1_111
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r9b
	jne	.LBB1_121
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_137
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_159
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_160
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.2, %r12d
	testb	$16, %r9b
	je	.LBB1_97
.LBB1_82:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_123
# %bb.83:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	movq	(%rdx), %rdx
	jmp	.LBB1_175
.LBB1_84:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r9b
	jne	.LBB1_124
# %bb.85:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r9b
	jne	.LBB1_139
# %bb.86:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_161
# %bb.87:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_183
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_184
.LBB1_89:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_126
# %bb.90:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_127
.LBB1_91:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r9b
	jne	.LBB1_128
# %bb.92:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r9b
	jne	.LBB1_141
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_163
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_185
# %bb.95:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_186
.LBB1_96:                               # %.loopexit2
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str, %r12d
	testb	$16, %r9b
	jne	.LBB1_82
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r9b
	jne	.LBB1_130
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_143
# %bb.99:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_165
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_166
.LBB1_101:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_132
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_133
.LBB1_103:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_104:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rcx), %r14
	movl	$0, -52(%rbp)
	testq	%r14, %r14
	movq	%r12, -112(%rbp)        # 8-byte Spill
	je	.LBB1_114
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r9b
	jne	.LBB1_115
# %bb.106:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$83, %eax
	je	.LBB1_115
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r13d, %r13d
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	js	.LBB1_150
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r13d, %r13
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memchr
	movq	%rax, %r8
	subq	%r14, %r8
	testq	%rax, %rax
	cmoveq	%r13, %r8
	cmpq	$100, %r8
	jb	.LBB1_151
.LBB1_109:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, %r13
	leaq	4(,%r8,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_272
# %bb.110:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movq	%r13, %r8
	jmp	.LBB1_152
.LBB1_111:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_136
# %bb.112:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB1_168
.LBB1_113:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movl	%eax, -576(%rbp)
	jmp	.LBB1_135
.LBB1_114:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r13d
	movl	$6, %eax
	cmovael	%eax, %r13d
	movl	$.L.str.1, %r14d
	jmp	.LBB1_158
.LBB1_115:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r13d, %r13d
	js	.LBB1_157
# %bb.116:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	movslq	%r13d, %rdx
	xorl	%r12d, %r12d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	wmemchr
	testq	%rax, %rax
	je	.LBB1_118
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	cmpl	%eax, %r13d
	cmovlel	%r13d, %eax
	xorl	%r12d, %r12d
	movl	%eax, %r13d
.LBB1_118:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	-56(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB1_209
.LBB1_119:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_120:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rax), %edi
	callq	btowc
	cmpl	$-1, %eax
	movl	%r13d, %r9d
	jne	.LBB1_134
	jmp	.LBB1_272
.LBB1_121:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_145
# %bb.122:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movswq	(%rcx), %rdx
	jmp	.LBB1_168
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	(%rcx), %rdx
	jmp	.LBB1_175
.LBB1_124:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_146
# %bb.125:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB1_189
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_127:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdx
	orl	$2, %r9d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -164(%rbp)
	movl	$.L.str, %r12d
	jmp	.LBB1_179
.LBB1_128:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_147
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_148
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_149
# %bb.131:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	movzwl	(%rcx), %edx
	jmp	.LBB1_175
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rax), %eax
.LBB1_134:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movl	%eax, -576(%rbp)
	movl	$0, -572(%rbp)
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -52(%rbp)
	movl	$1, %r13d
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	-576(%rbp), %r14
	jmp	.LBB1_209
.LBB1_136:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB1_168
.LBB1_137:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_167
# %bb.138:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movsbq	(%rcx), %rdx
	jmp	.LBB1_168
.LBB1_139:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_170
# %bb.140:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	movzwl	(%rax), %edx
	jmp	.LBB1_189
.LBB1_141:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_171
# %bb.142:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_172
.LBB1_143:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_173
# %bb.144:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_174
.LBB1_145:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rdx
	jmp	.LBB1_168
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB1_189
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdx
	movl	$1, %eax
	jmp	.LBB1_190
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
	movzwl	(%rcx), %edx
	jmp	.LBB1_175
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r8
	cmpq	$100, %r8
	jae	.LBB1_109
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-576(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	$0, %r13d
	movl	$0, %ecx
	testq	%r8, %r8
	movl	-56(%rbp), %r9d         # 4-byte Reload
	je	.LBB1_266
.LBB1_152:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$8, %r8
	jb	.LBB1_153
# %bb.154:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%r14,%r8), %rcx
	cmpq	%rax, %rcx
	jbe	.LBB1_180
# %bb.155:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rax,%r8,4), %rcx
	cmpq	%rcx, %r14
	jae	.LBB1_180
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%ecx, %ecx
.LBB1_261:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	notq	%rdx
	addq	%r8, %rdx
	movq	%r8, %rsi
	andq	$3, %rsi
	je	.LBB1_263
	.p2align	4, 0x90
.LBB1_262:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rcx), %edi
	movl	%edi, (%rax,%rcx,4)
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB1_262
.LBB1_263:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$3, %rdx
	jb	.LBB1_265
	.p2align	4, 0x90
.LBB1_264:                              #   Parent Loop BB1_8 Depth=1
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
	cmpq	%rcx, %r8
	jne	.LBB1_264
	jmp	.LBB1_265
.LBB1_157:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rdi
	movl	%r9d, %r12d
	callq	wcslen
	movl	%r12d, %r9d
	movq	%rax, %r13
.LBB1_158:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB1_209
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_160:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%rcx), %rdx
	jmp	.LBB1_168
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_187
# %bb.162:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_188
.LBB1_163:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_255
# %bb.164:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_256
.LBB1_165:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_166:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rdx), %edx
	jmp	.LBB1_175
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rdx
.LBB1_168:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB1_191
# %bb.169:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%rdx
	movl	$45, -52(%rbp)
	jmp	.LBB1_191
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %edx
	jmp	.LBB1_189
.LBB1_171:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=1
	movzwl	(%rax), %edx
	movl	$1, %eax
	jmp	.LBB1_190
.LBB1_173:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=1
	movzbl	(%rdx), %edx
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, %r9b
	je	.LBB1_178
# %bb.176:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_178
# %bb.177:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -164(%rbp)
	movl	%eax, -160(%rbp)
	orl	$2, %r9d
.LBB1_178:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
.LBB1_179:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
	jmp	.LBB1_190
.LBB1_180:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, %rcx
	andq	$-8, %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %esi
	andl	$1, %esi
	testq	%rdx, %rdx
	je	.LBB1_257
# %bb.181:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%rsi, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_182:                              #   Parent Loop BB1_8 Depth=1
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
	jne	.LBB1_182
	jmp	.LBB1_258
.LBB1_183:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_184:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rcx), %edx
	jmp	.LBB1_189
.LBB1_185:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rcx), %edx
	movl	$1, %eax
	jmp	.LBB1_190
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_188:                              #   in Loop: Header=BB1_8 Depth=1
	movzbl	(%rcx), %edx
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -52(%rbp)
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %ecx
	andl	$-129, %r9d
	testl	%r13d, %r13d
	cmovsl	%ecx, %r9d
	movq	%r12, -112(%rbp)        # 8-byte Spill
	jne	.LBB1_197
# %bb.192:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	jne	.LBB1_197
# %bb.193:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	jne	.LBB1_202
# %bb.194:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %eax
	andl	$1, %eax
	je	.LBB1_202
# %bb.195:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -180(%rbp)
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-180(%rbp), %r14
	jmp	.LBB1_208
	.p2align	4, 0x90
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_203
# %bb.198:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_245
# %bb.199:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-176(%rbp), %r14
	cmpl	$2, %eax
	jne	.LBB1_247
	.p2align	4, 0x90
.LBB1_200:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%r12,%rax,4), %eax
	movl	%eax, -4(%r14)
	addq	$-4, %r14
	shrq	$4, %rdx
	jne	.LBB1_200
	jmp	.LBB1_208
.LBB1_202:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-176(%rbp), %r14
.LBB1_208:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, %r12d
	leaq	-176(%rbp), %r13
	subq	%r14, %r13
	shrq	$2, %r13
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r13d, %r12d
	movl	%r13d, %ecx
	cmovgel	%r12d, %ecx
	movl	-52(%rbp), %eax
	cmpl	$1, %eax
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r9b
	cmovel	%ecx, %edx
	movl	%r9d, -56(%rbp)         # 4-byte Spill
	andl	$132, %r9d
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	jne	.LBB1_217
# %bb.210:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	%edx, %r15d
	jle	.LBB1_217
# %bb.211:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r15d
	jl	.LBB1_214
	.p2align	4, 0x90
.LBB1_212:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.213:                              #   in Loop: Header=BB1_212 Depth=2
	leal	-16(%r15), %eax
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_212
	jmp	.LBB1_215
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_215:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.blanks, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.216:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-52(%rbp), %eax
	.p2align	4, 0x90
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_219
# %bb.218:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-52(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$2, -56(%rbp)           # 1-byte Folded Reload
	je	.LBB1_221
# %bb.220:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$8, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$128, -156(%rbp)        # 4-byte Folded Reload
	jne	.LBB1_228
# %bb.222:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	-152(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB1_228
# %bb.223:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r15d
	jl	.LBB1_226
	.p2align	4, 0x90
.LBB1_224:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.225:                              #   in Loop: Header=BB1_224 Depth=2
	leal	-16(%r15), %eax
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_224
	jmp	.LBB1_227
.LBB1_226:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.zeroes, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
.LBB1_228:                              #   in Loop: Header=BB1_8 Depth=1
	subl	%r13d, %r12d
	jle	.LBB1_234
# %bb.229:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r12d
	jl	.LBB1_232
	.p2align	4, 0x90
.LBB1_230:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.231:                              #   in Loop: Header=BB1_230 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_230
	jmp	.LBB1_233
	.p2align	4, 0x90
.LBB1_232:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_233:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.zeroes, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.235:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$4, -56(%rbp)           # 1-byte Folded Reload
	je	.LBB1_243
# %bb.236:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	-152(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_243
# %bb.237:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_241
# %bb.238:                              # %.preheader4
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_239:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
# %bb.240:                              #   in Loop: Header=BB1_239 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_239
	jmp	.LBB1_242
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_242:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.blanks, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_267
.LBB1_243:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %r14        # 8-byte Reload
	cmpl	%r14d, %eax
	cmovgel	%eax, %r14d
	addl	-76(%rbp), %r14d        # 4-byte Folded Reload
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-112(%rbp), %r12        # 8-byte Reload
	je	.LBB1_8
# %bb.244:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	free
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_203:                              # %.preheader16
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-180(%rbp), %rax
	.p2align	4, 0x90
.LBB1_204:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	testq	%rdx, %rdx
	jne	.LBB1_204
# %bb.205:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	4(%rax), %r14
	testb	$1, %r9b
	je	.LBB1_208
# %bb.206:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$48, %ecx
	je	.LBB1_208
# %bb.207:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, (%rax)
	movq	%rax, %r14
	jmp	.LBB1_208
.LBB1_245:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$10, %rdx
	jae	.LBB1_248
# %bb.246:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %edx
	movl	%edx, -180(%rbp)
	jmp	.LBB1_196
.LBB1_247:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.3, %r14d
	movl	$.L.str.3, %edi
	movl	%r9d, %r12d
	callq	wcslen
	movl	%r12d, %r9d
	movl	%r13d, %r12d
	xorl	%ecx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %r13d
	jmp	.LBB1_209
.LBB1_248:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r8d, %r8d
	leaq	-176(%rbp), %rdi
	jmp	.LBB1_250
	.p2align	4, 0x90
.LBB1_249:                              #   in Loop: Header=BB1_250 Depth=2
	movq	%r14, %rdi
	cmpq	$9, %rcx
	jbe	.LBB1_208
.LBB1_250:                              #   Parent Loop BB1_8 Depth=1
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
	je	.LBB1_249
# %bb.251:                              #   in Loop: Header=BB1_250 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %r8d
	jne	.LBB1_249
# %bb.252:                              #   in Loop: Header=BB1_250 Depth=2
	cmpq	$10, %rcx
	jb	.LBB1_249
# %bb.253:                              #   in Loop: Header=BB1_250 Depth=2
	cmpb	$127, %al
	je	.LBB1_249
# %bb.254:                              #   in Loop: Header=BB1_250 Depth=2
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -8(%rdi)
	addq	$-8, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpb	$0, 1(%rsi)
	leaq	1(%rsi), %rax
	cmovneq	%rax, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%rdi, %r14
	jmp	.LBB1_249
.LBB1_255:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_256:                              #   in Loop: Header=BB1_8 Depth=1
	movzbl	(%rcx), %edx
	movl	$1, %eax
	jmp	.LBB1_190
.LBB1_257:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%edx, %edx
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rsi, %rsi
	je	.LBB1_260
# %bb.259:                              #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_260:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	%rcx, %r8
	jne	.LBB1_261
.LBB1_265:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r8d, %ecx
	movl	%r8d, %r13d
.LBB1_266:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, (%rax,%rcx,4)
	xorl	%r12d, %r12d
	movq	%rax, %r14
	jmp	.LBB1_209
.LBB1_267:
	cmpq	$0, -88(%rbp)           # 8-byte Folded Reload
	je	.LBB1_269
# %bb.268:
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB1_269:                              # %.loopexit3
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB1_270:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movb	16(%rbx), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-76(%rbp), %eax         # 4-byte Folded Reload
.LBB1_271:
	movl	$42, __A_VARIABLE(%rip)
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_272:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	orb	$64, 16(%rbx)
	jmp	.LBB1_270
.Lfunc_end1:
	.size	_vfiwprintf_r, .Lfunc_end1-_vfiwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_269
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_34
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_36
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_37
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_40
	.quad	.LBB1_42
	.quad	.LBB1_113
	.quad	.LBB1_50
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_43
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_30
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_70
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_74
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_81
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_70
	.quad	.LBB1_76
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_44
	.quad	.LBB1_76
	.quad	.LBB1_46
	.quad	.LBB1_113
	.quad	.LBB1_45
	.quad	.LBB1_113
	.quad	.LBB1_51
	.quad	.LBB1_84
	.quad	.LBB1_89
	.quad	.LBB1_46
	.quad	.LBB1_113
	.quad	.LBB1_74
	.quad	.LBB1_46
	.quad	.LBB1_91
	.quad	.LBB1_113
	.quad	.LBB1_113
	.quad	.LBB1_96
	.quad	.LBB1_113
	.quad	.LBB1_46
                                        # -- End function
	.type	_vfiwprintf_r.blanks,@object # @_vfiwprintf_r.blanks
	.p2align	4
_vfiwprintf_r.blanks:
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
	.size	_vfiwprintf_r.blanks, 64

	.type	_vfiwprintf_r.zeroes,@object # @_vfiwprintf_r.zeroes
	.p2align	4
_vfiwprintf_r.zeroes:
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
	.size	_vfiwprintf_r.zeroes, 64

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
