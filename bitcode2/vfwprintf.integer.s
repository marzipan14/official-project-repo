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
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-92(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movzwl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB1_5
# %bb.4:
	cmpq	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_7
.LBB1_5:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__swsetup_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB1_295
.LBB1_7:
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r14), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$0, -124(%rbp)          # 4-byte Folded Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%r14, -176(%rbp)        # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
                                        #     Child Loop BB1_223 Depth 2
                                        #     Child Loop BB1_235 Depth 2
                                        #     Child Loop BB1_225 Depth 2
                                        #     Child Loop BB1_190 Depth 2
                                        #     Child Loop BB1_193 Depth 2
                                        #     Child Loop BB1_256 Depth 2
                                        #     Child Loop BB1_268 Depth 2
                                        #     Child Loop BB1_274 Depth 2
                                        #     Child Loop BB1_283 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testl	%eax, %eax
	je	.LBB1_12
# %bb.9:                                # %.preheader3
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB1_10:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %eax
	je	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r14), %eax
	addq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_10
.LBB1_12:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$37, %eax
.LBB1_14:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %r15
	shrq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_17
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=1
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_297
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	addl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
.LBB1_17:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_297
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r13, -88(%rbp)         # 8-byte Spill
	addq	$4, %r14
	movl	$0, -56(%rbp)
	movl	$-1, %r13d
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	movq	-176(%rbp), %r14        # 8-byte Reload
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	movl	$-1, %eax
	cmovlel	%eax, %r13d
.LBB1_21:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
	movl	$42, __A_VARIABLE(%rip)
.LBB1_22:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_24 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
	movl	(%rbx), %eax
	addq	$4, %rbx
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=4
	movl	%ecx, %r13d
.LBB1_24:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB1_30
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=4
	movl	(%rbx), %eax
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %eax
	je	.LBB1_40
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %edx
	ja	.LBB1_23
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB1_24 Depth=4
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_28:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        #         Parent Loop BB1_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movl	(%rbx), %eax
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jb	.LBB1_28
# %bb.29:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB1_24
	jmp	.LBB1_23
.LBB1_30:                               #   in Loop: Header=BB1_24 Depth=4
	leal	-32(%rax), %ecx
	cmpl	$90, %ecx
	ja	.LBB1_101
# %bb.31:                               #   in Loop: Header=BB1_24 Depth=4
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_32:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_33:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        #         Parent Loop BB1_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r15,%r15,4), %ecx
	leal	(%rax,%rcx,2), %r15d
	addl	$-48, %r15d
	movl	(%rbx), %eax
	addq	$4, %rbx
	leal	-48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB1_33
	jmp	.LBB1_24
.LBB1_34:                               #   in Loop: Header=BB1_22 Depth=3
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_22 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_22 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_37:                               #   in Loop: Header=BB1_22 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB1_22
# %bb.38:                               #   in Loop: Header=BB1_21 Depth=2
	negl	%r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:                               # %.loopexit1
                                        #   in Loop: Header=BB1_21 Depth=2
	orl	$4, %r10d
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_21 Depth=2
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_19
# %bb.41:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_20
.LBB1_42:                               #   in Loop: Header=BB1_21 Depth=2
	cmpl	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_21
# %bb.43:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$32, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_44:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$1, %r10d
	jmp	.LBB1_21
.LBB1_45:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %r12d
	movq	%r15, %rdi
	movq	-120(%rbp), %r15        # 8-byte Reload
	callq	_localeconv_r
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	testl	%r12d, %r12d
	movq	%rax, %r12
	je	.LBB1_21
# %bb.46:                               #   in Loop: Header=BB1_21 Depth=2
	testq	%r12, %r12
	je	.LBB1_21
# %bb.47:                               #   in Loop: Header=BB1_21 Depth=2
	cmpb	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_21
# %bb.48:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$1024, %r10d            # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_49:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$43, -56(%rbp)
	jmp	.LBB1_21
.LBB1_50:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$128, %r10d
	jmp	.LBB1_21
.LBB1_51:                               #   in Loop: Header=BB1_21 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$64, %ecx
	movl	$512, %edx              # imm = 0x200
	cmovel	%edx, %ecx
	cmoveq	%rax, %rbx
	orl	%ecx, %r10d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_52:                               #   in Loop: Header=BB1_21 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_53:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$16, %r10d
	jmp	.LBB1_21
.LBB1_54:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %eax
	movq	%r12, -104(%rbp)        # 8-byte Spill
	jne	.LBB1_65
# %bb.55:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_65
# %bb.56:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	ja	.LBB1_129
# %bb.57:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_130
.LBB1_58:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_91
# %bb.59:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_92
.LBB1_60:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_97
# %bb.61:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB1_110
# %bb.62:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_134
# %bb.63:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_155
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_156
.LBB1_65:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_107
# %bb.66:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_108
.LBB1_67:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.2, %ecx
	jmp	.LBB1_86
.LBB1_68:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_112
# %bb.69:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	movq	-88(%rbp), %r13         # 8-byte Reload
	jne	.LBB1_136
# %bb.70:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_157
# %bb.71:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_196
# %bb.72:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_197
.LBB1_73:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_114
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB1_138
# %bb.75:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB1_159
# %bb.76:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_198
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_199
.LBB1_78:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_116
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_117
.LBB1_80:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_118
# %bb.81:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB1_140
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB1_161
# %bb.83:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_200
# %bb.84:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_201
.LBB1_85:                               # %.loopexit2
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str, %ecx
.LBB1_86:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_99
# %bb.87:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r10b
	jne	.LBB1_120
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r10d             # imm = 0x200
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	jne	.LBB1_142
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_163
# %bb.90:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_164
.LBB1_91:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_92:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	movl	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%r12, -104(%rbp)        # 8-byte Spill
	je	.LBB1_109
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$83, %eax
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	je	.LBB1_103
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r10b
	jne	.LBB1_103
# %bb.95:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB1_182
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_183
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB1_122
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_123
.LBB1_99:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_124
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_125
.LBB1_101:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_298
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -104(%rbp)        # 8-byte Spill
	movl	%eax, -576(%rbp)
	jmp	.LBB1_133
.LBB1_103:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB1_126
# %bb.104:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r13d, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	wmemchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_106
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r13d
	jge	.LBB1_154
.LBB1_106:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_127
.LBB1_107:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_108:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	%eax, -576(%rbp)
	jmp	.LBB1_132
.LBB1_109:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r13d
	movl	$6, %eax
	cmovael	%eax, %r13d
	movl	$.L.str.1, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB1_248
.LBB1_110:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_144
# %bb.111:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_145
.LBB1_112:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movslq	%r13d, %rax
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_146
# %bb.113:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_147
.LBB1_114:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_148
# %bb.115:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_149
.LBB1_116:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_117:                              #   in Loop: Header=BB1_8 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	orl	$2, %r10d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -164(%rbp)
	movl	$.L.str, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_181
.LBB1_118:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_150
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_151
.LBB1_120:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB1_152
# %bb.121:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_153
.LBB1_122:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_167
.LBB1_124:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_125:                              #   in Loop: Header=BB1_8 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rdx
	jmp	.LBB1_177
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rdi
	callq	wcslen
	movq	%rax, %r13
.LBB1_127:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r12d, %r12d
.LBB1_128:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	-52(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB1_249
.LBB1_129:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edi
	callq	btowc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
	je	.LBB1_299
# %bb.131:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, -576(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %r10d        # 4-byte Reload
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -572(%rbp)
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -56(%rbp)
	movl	$1, %r13d
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	-576(%rbp), %r14
	jmp	.LBB1_249
.LBB1_134:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_165
# %bb.135:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_166
.LBB1_136:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_169
# %bb.137:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_170
.LBB1_138:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB1_171
# %bb.139:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_172
.LBB1_140:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	ja	.LBB1_173
# %bb.141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_174
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_175
# %bb.143:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r14), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_176
.LBB1_144:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_145:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %rdx
	jmp	.LBB1_167
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_204
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_207
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=1
	movabsq	$-3689348814741910323, %r8 # imm = 0xCCCCCCCCCCCCCCCD
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_210
.LBB1_152:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rcx), %edx
	jmp	.LBB1_177
.LBB1_154:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r12d, %r12d
	movl	%eax, %r13d
	jmp	.LBB1_128
.LBB1_155:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_156:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %rdx
	jmp	.LBB1_167
.LBB1_157:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_202
# %bb.158:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_203
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_205
# %bb.160:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_206
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_208
# %bb.162:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_209
.LBB1_163:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %edx
	jmp	.LBB1_177
.LBB1_165:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_166:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %rdx
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB1_212
# %bb.168:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%rdx
	movl	$45, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_212
.LBB1_169:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB1_204
.LBB1_171:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB1_207
.LBB1_173:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB1_210
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_176:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %edx
.LBB1_177:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	je	.LBB1_180
# %bb.178:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_180
# %bb.179:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -164(%rbp)
	movl	%eax, -160(%rbp)
	orl	$2, %r10d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_180:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
.LBB1_181:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
	jmp	.LBB1_211
.LBB1_182:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r8
.LBB1_183:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$100, %r8
	jb	.LBB1_186
# %bb.184:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, -112(%rbp)         # 8-byte Spill
	leaq	4(,%r8,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_299
# %bb.185:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	jmp	.LBB1_187
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
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
	je	.LBB1_195
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-1(%r8), %rdx
	movl	%r8d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB1_189
# %bb.188:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%edx, %edx
	jmp	.LBB1_191
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, %rsi
	andq	$-4, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_190:                              #   Parent Loop BB1_8 Depth=1
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
	jne	.LBB1_190
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rcx, %rcx
	je	.LBB1_194
# %bb.192:                              # %.preheader22
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rax,%rdx,4), %rsi
	addq	%rdx, %r14
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_193:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r14,%rdx), %edi
	movl	%edi, (%rsi,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB1_193
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r8d, %ecx
	movl	%r8d, %r13d
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, (%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	%rax, %r14
	jmp	.LBB1_249
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	%r13d, (%rax)
	jmp	.LBB1_204
.LBB1_198:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB1_207
.LBB1_200:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB1_210
.LBB1_202:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r13b, (%rax)
.LBB1_204:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_205:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_206:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r10d           # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB1_211
.LBB1_208:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB1_210:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	.p2align	4, 0x90
.LBB1_211:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -56(%rbp)
.LBB1_212:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	movq	%r12, -104(%rbp)        # 8-byte Spill
	js	.LBB1_218
# %bb.213:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB1_219
# %bb.214:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	jne	.LBB1_219
# %bb.215:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_217
# %bb.216:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	jne	.LBB1_245
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r10d
	leaq	-176(%rbp), %r14
	jmp	.LBB1_247
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_220
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r10d
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_224
# %bb.221:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_229
# %bb.222:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-176(%rbp), %r14
	cmpl	$2, %eax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	jne	.LBB1_231
	.p2align	4, 0x90
.LBB1_223:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, -4(%r14)
	addq	$-4, %r14
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_223
	jmp	.LBB1_247
.LBB1_224:                              # %.preheader18
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-180(%rbp), %rax
	.p2align	4, 0x90
.LBB1_225:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB1_225
# %bb.226:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	4(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	je	.LBB1_247
# %bb.227:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	je	.LBB1_247
# %bb.228:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	jmp	.LBB1_247
.LBB1_229:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdx
	ja	.LBB1_232
# %bb.230:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %edx
	movl	%edx, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_246
.LBB1_231:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.3, %r14d
	movl	$.L.str.3, %edi
	movl	%r10d, %r12d
	callq	wcslen
	movl	%r12d, %r10d
	movl	%r13d, %r12d
	movl	%eax, %r13d
	jmp	.LBB1_248
.LBB1_232:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	leaq	-176(%rbp), %r14
	movl	-124(%rbp), %r9d        # 4-byte Reload
	jmp	.LBB1_235
	.p2align	4, 0x90
.LBB1_233:                              #   in Loop: Header=BB1_235 Depth=2
	movq	%rax, %r14
.LBB1_234:                              #   in Loop: Header=BB1_235 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	jbe	.LBB1_244
.LBB1_235:                              #   Parent Loop BB1_8 Depth=1
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
	je	.LBB1_233
# %bb.236:                              #   in Loop: Header=BB1_235 Depth=2
	movsbl	(%r12), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %esi
	jne	.LBB1_233
# %bb.237:                              #   in Loop: Header=BB1_235 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rcx
	jb	.LBB1_233
# %bb.238:                              #   in Loop: Header=BB1_235 Depth=2
	cmpb	$127, %dil
	je	.LBB1_233
# %bb.239:                              #   in Loop: Header=BB1_235 Depth=2
	movl	%r9d, -8(%r14)
	addq	$-8, %r14
	xorl	%esi, %esi
	cmpb	$0, 1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_234
# %bb.240:                              #   in Loop: Header=BB1_235 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_234
.LBB1_244:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_247
.LBB1_245:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r10d
.LBB1_246:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-180(%rbp), %r14
	.p2align	4, 0x90
.LBB1_247:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, %r12d
	leaq	-176(%rbp), %r13
	subq	%r14, %r13
	shrq	$2, %r13
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
.LBB1_248:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_249:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r13d, %r12d
	movl	%r13d, %ecx
	cmovgel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_251
# %bb.250:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_251:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r10b
	je	.LBB1_253
# %bb.252:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_253:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r10d
	movl	%r10d, -156(%rbp)       # 4-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jne	.LBB1_261
# %bb.254:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r15d
	jle	.LBB1_261
# %bb.255:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB1_258
	.p2align	4, 0x90
.LBB1_256:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.257:                              #   in Loop: Header=BB1_256 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_256
	jmp	.LBB1_259
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_259:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.260:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-56(%rbp), %eax
	.p2align	4, 0x90
.LBB1_261:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_263
# %bb.262:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-56(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
.LBB1_263:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB1_265
# %bb.264:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$8, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
.LBB1_265:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -156(%rbp)        # 4-byte Folded Reload
	jne	.LBB1_272
# %bb.266:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	-112(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB1_272
# %bb.267:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB1_270
	.p2align	4, 0x90
.LBB1_268:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.269:                              #   in Loop: Header=BB1_268 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_268
	jmp	.LBB1_271
.LBB1_270:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_271:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
.LBB1_272:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %r12d
	jle	.LBB1_278
# %bb.273:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB1_276
	.p2align	4, 0x90
.LBB1_274:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.275:                              #   in Loop: Header=BB1_274 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_274
	jmp	.LBB1_277
	.p2align	4, 0x90
.LBB1_276:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_277:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
.LBB1_278:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.279:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB1_287
# %bb.280:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-112(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_287
# %bb.281:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_285
# %bb.282:                              # %.preheader6
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_283:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfiwprintf_r.blanks, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
# %bb.284:                              #   in Loop: Header=BB1_283 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_283
	jmp	.LBB1_286
.LBB1_285:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_286:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfiwprintf_r.blanks, %edx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_290
.LBB1_287:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB1_289
# %bb.288:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_289:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-104(%rbp), %r12        # 8-byte Reload
	addl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_290:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB1_293
# %bb.291:
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	free
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB1_292:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_294
.LBB1_293:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB1_294:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%rbx), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r13d, %eax
.LBB1_295:
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
.LBB1_297:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_292
.LBB1_298:
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_292
.LBB1_299:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	orb	$64, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_292
.Lfunc_end1:
	.size	_vfiwprintf_r, .Lfunc_end1-_vfiwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_42
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_44
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_45
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_34
	.quad	.LBB1_49
	.quad	.LBB1_101
	.quad	.LBB1_39
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_50
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_54
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_58
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_67
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_54
	.quad	.LBB1_60
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_51
	.quad	.LBB1_60
	.quad	.LBB1_53
	.quad	.LBB1_101
	.quad	.LBB1_52
	.quad	.LBB1_101
	.quad	.LBB1_68
	.quad	.LBB1_73
	.quad	.LBB1_78
	.quad	.LBB1_53
	.quad	.LBB1_101
	.quad	.LBB1_58
	.quad	.LBB1_53
	.quad	.LBB1_80
	.quad	.LBB1_101
	.quad	.LBB1_101
	.quad	.LBB1_85
	.quad	.LBB1_101
	.quad	.LBB1_53
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
