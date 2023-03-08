	.text
	.file	"vfwprintf.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _svfwprintf_r
.LCPI0_0:
	.quad	0                       # double 0
	.text
	.globl	_svfwprintf_r
	.p2align	4, 0x90
	.type	_svfwprintf_r,@function
_svfwprintf_r:                          # @_svfwprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movl	$0, -168(%rbp)
	movl	$0, -68(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -164(%rbp)
	cmpb	$0, 16(%r12)
	jns	.LBB0_4
# %bb.1:
	cmpq	$0, 24(%r12)
	jne	.LBB0_4
# %bb.2:
	movl	$64, %edi
	callq	malloc
	movq	%rax, (%r12)
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.LBB0_451
# %bb.3:
	movl	$64, 32(%r12)
.LBB0_4:
	movq	%r14, -248(%rbp)        # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	pxor	%xmm2, %xmm2
	movl	$0, %r13d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_20 Depth 4
                                        #     Child Loop BB0_279 Depth 2
                                        #     Child Loop BB0_376 Depth 2
                                        #     Child Loop BB0_283 Depth 2
                                        #     Child Loop BB0_254 Depth 2
                                        #     Child Loop BB0_427 Depth 2
                                        #     Child Loop BB0_429 Depth 2
                                        #     Child Loop BB0_183 Depth 2
                                        #     Child Loop BB0_160 Depth 2
                                        #     Child Loop BB0_437 Depth 2
                                        #     Child Loop BB0_440 Depth 2
                                        #     Child Loop BB0_444 Depth 2
                                        #     Child Loop BB0_292 Depth 2
                                        #     Child Loop BB0_304 Depth 2
                                        #     Child Loop BB0_310 Depth 2
                                        #     Child Loop BB0_363 Depth 2
                                        #     Child Loop BB0_355 Depth 2
                                        #     Child Loop BB0_401 Depth 2
                                        #       Child Loop BB0_407 Depth 3
                                        #     Child Loop BB0_398 Depth 2
                                        #     Child Loop BB0_372 Depth 2
                                        #     Child Loop BB0_326 Depth 2
                                        #     Child Loop BB0_343 Depth 2
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	cmpl	$37, %eax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	addq	$4, %r14
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rcx
	subq	%rbx, %rcx
	movq	%rcx, %r15
	shrq	$2, %r15
	testl	%r15d, %r15d
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_449
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	addl	%r15d, %r13d
	movl	(%r14), %eax
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_449
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, -132(%rbp)       # 4-byte Spill
	addq	$4, %r14
	movl	$0, -92(%rbp)
	movl	$-1, %r15d
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	movq	%r14, %rbx
	movq	-248(%rbp), %r14        # 8-byte Reload
.LBB0_14:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_20 Depth 4
	movl	(%rbx), %r13d
	addq	$4, %rbx
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_16 Depth=3
	movl	%eax, %r15d
.LBB0_16:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_25 Depth 4
                                        #         Child Loop BB0_20 Depth 4
	cmpl	$46, %r13d
	jne	.LBB0_22
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=3
	movl	(%rbx), %r13d
	addq	$4, %rbx
	cmpl	$42, %r13d
	je	.LBB0_26
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=3
	leal	-48(%r13), %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	ja	.LBB0_15
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB0_16 Depth=3
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_20:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %ecx
	cmpl	$10, %ecx
	jb	.LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=3
	movl	$-1, %r15d
	testl	%eax, %eax
	js	.LBB0_16
	jmp	.LBB0_15
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=3
	cmpl	$122, %r13d
	ja	.LBB0_117
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=3
	movl	%r13d, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_24:                               #   in Loop: Header=BB0_16 Depth=3
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r12,%r12,4), %eax
	leal	-48(%r13,%rax,2), %r12d
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %eax
	cmpl	$10, %eax
	jb	.LBB0_25
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_14 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=2
	movl	(%rax), %r15d
	cmpl	$-2, %r15d
	movl	$-1, %eax
	cmovlel	%eax, %r15d
	jmp	.LBB0_14
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=2
	cmpl	$0, -92(%rbp)
	jne	.LBB0_14
# %bb.31:                               #   in Loop: Header=BB0_14 Depth=2
	movl	$32, -92(%rbp)
	jmp	.LBB0_14
.LBB0_32:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$1, %r10d
	jmp	.LBB0_14
.LBB0_33:                               #   in Loop: Header=BB0_14 Depth=2
	movq	%r12, -176(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r13d
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	%r12, %rdi
	movq	-176(%rbp), %r12        # 8-byte Reload
	callq	_localeconv_r
	movl	%r13d, %r10d
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movq	16(%rax), %rcx
	movq	%rcx, %rax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_14
# %bb.34:                               #   in Loop: Header=BB0_14 Depth=2
	cmpl	$0, -168(%rbp)
	je	.LBB0_14
# %bb.35:                               #   in Loop: Header=BB0_14 Depth=2
	movl	%r10d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r10d
	jmp	.LBB0_14
.LBB0_36:                               #   in Loop: Header=BB0_14 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_44
# %bb.37:                               #   in Loop: Header=BB0_14 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_45
.LBB0_38:                               #   in Loop: Header=BB0_14 Depth=2
	movl	$43, -92(%rbp)
	jmp	.LBB0_14
.LBB0_39:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$128, %r10d
	jmp	.LBB0_14
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$8, %r10d
	jmp	.LBB0_14
.LBB0_41:                               #   in Loop: Header=BB0_14 Depth=2
	cmpl	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r10d
	jmp	.LBB0_14
.LBB0_42:                               #   in Loop: Header=BB0_14 Depth=2
	cmpl	$108, (%rbx)
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB0_43:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$16, %r10d
	jmp	.LBB0_14
.LBB0_44:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_45:                               #   in Loop: Header=BB0_14 Depth=2
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB0_14
# %bb.46:                               #   in Loop: Header=BB0_14 Depth=2
	negl	%r12d
.LBB0_47:                               # %.loopexit1
                                        #   in Loop: Header=BB0_14 Depth=2
	orl	$4, %r10d
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_48:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$8, %r10b
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	jne	.LBB0_51
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	4(%r14), %rcx
	cmpq	$160, %rcx
	ja	.LBB0_63
# %bb.50:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r14)
	jmp	.LBB0_64
.LBB0_51:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_65
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testb	$16, %r10b
	jne	.LBB0_105
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$99, %r13d
	jne	.LBB0_105
# %bb.54:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r15d
	ja	.LBB0_123
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_124
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_107
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_108
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r10b
	jne	.LBB0_115
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r10b
	jne	.LBB0_125
# %bb.60:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_194
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_225
# %bb.62:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_226
.LBB0_63:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_64:                               #   in Loop: Header=BB0_5 Depth=1
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB0_65:                               #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB0_69
# %bb.66:                               #   in Loop: Header=BB0_5 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -92(%rbp)
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$.L.str, %eax
	movl	$.L.str.1, %r11d
	cmovbq	%rax, %r11
	movl	-52(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB0_77
.LBB0_69:                               #   in Loop: Header=BB0_5 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_74
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %ecx
	orl	$32, %ecx
	cmpl	$97, %ecx
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jne	.LBB0_78
# %bb.71:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	cmpl	$97, %r13d
	sete	%al
	movl	$48, -224(%rbp)
	shll	$5, %eax
	orl	$88, %eax
	movl	%eax, -220(%rbp)
	orl	$2, %edx
	cmpl	$100, %r15d
	jl	.LBB0_119
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movslq	%r15d, %rax
	leaq	4(,%rax,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_452
# %bb.73:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %r14
	movq	%rax, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rax, %r10
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-52(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_145
.LBB0_74:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movq	%xmm2, %rax
	testq	%rax, %rax
	movl	-52(%rbp), %r10d        # 4-byte Reload
	jns	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -92(%rbp)
.LBB0_76:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %r11d
	cmovbq	%rax, %r11
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	andl	$-129, %r10d
	movl	$3, %r15d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_288
.LBB0_78:                               #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %r10
	cmpl	$-1, %r15d
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_143
# %bb.79:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	$103, %ecx
	orl	%r15d, %ecx
	movl	$1, %ecx
	cmovel	%ecx, %r15d
	jmp	.LBB0_144
.LBB0_80:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.6, %r9d
	testb	$16, %r10b
	je	.LBB0_101
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_127
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_247
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r10b
	jne	.LBB0_128
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r10b
	movl	-132(%rbp), %r13d       # 4-byte Reload
	jne	.LBB0_196
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_227
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_255
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_256
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r10b
	jne	.LBB0_130
# %bb.89:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r10b
	jne	.LBB0_198
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_229
# %bb.91:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_257
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_258
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_132
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_133
.LBB0_95:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r10b
	jne	.LBB0_134
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r10b
	jne	.LBB0_200
# %bb.97:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_231
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_259
# %bb.99:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_260
.LBB0_100:                              # %.loopexit2
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.4, %r9d
	testb	$16, %r10b
	jne	.LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r10b
	jne	.LBB0_136
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB0_202
# %bb.103:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_233
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_234
.LBB0_105:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_138
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_139
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_108:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rdi
	movl	$0, -92(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_118
# %bb.109:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r10b
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	jne	.LBB0_120
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$83, %r13d
	je	.LBB0_120
# %bb.111:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	js	.LBB0_213
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rdi, %r15
	callq	memchr
	movq	%r15, %r8
	movq	%rax, %r9
	subq	%r15, %r9
	testq	%rax, %rax
	cmoveq	%r14, %r9
	cmpq	$100, %r9
	jb	.LBB0_214
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, %r14
	movq	%r9, %r15
	leaq	4(,%r9,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_452
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %r11
	movq	%rax, %rcx
	movq	%r11, -152(%rbp)        # 8-byte Spill
	movq	%r11, -216(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	%r14, %r8
	movq	%r15, %r9
	jmp	.LBB0_215
.LBB0_115:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_142
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB0_236
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, -688(%rbp)
	jmp	.LBB0_141
.LBB0_118:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r15d
	movl	$6, %eax
	cmovbl	%r15d, %eax
	movl	$.L.str.5, %r11d
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB0_288
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %r10
	xorl	%r14d, %r14d
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_145
.LBB0_120:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	js	.LBB0_220
# %bb.121:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rdx
	xorl	%esi, %esi
	movq	%rdi, %r14
	callq	wmemchr
	testq	%rax, %rax
	je	.LBB0_222
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r14, %r11
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB0_224
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %edi
	callq	btowc
	cmpl	$-1, %eax
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	%r15d, %r10d
	jne	.LBB0_140
	jmp	.LBB0_452
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_204
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movswq	(%rcx), %rdx
	jmp	.LBB0_236
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_247
.LBB0_128:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-132(%rbp), %r13d       # 4-byte Reload
	movslq	%r13d, %rax
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_205
# %bb.129:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_206
.LBB0_130:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB0_207
# %bb.131:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB0_208
.LBB0_132:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%rax), %rdx
	orl	$2, %r10d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -224(%rbp)
	movl	$120, %r13d
	movl	$.L.str.4, %r9d
	jmp	.LBB0_251
.LBB0_134:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_209
# %bb.135:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_210
.LBB0_136:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_211
# %bb.137:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_212
.LBB0_138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %eax
.LBB0_140:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -688(%rbp)
	movl	$0, -684(%rbp)
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -92(%rbp)
	movl	$1, %r15d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	-688(%rbp), %r11
	jmp	.LBB0_289
.LBB0_142:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB0_236
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$6, %r15d
.LBB0_144:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edx, -52(%rbp)         # 4-byte Spill
	orl	$256, %edx              # imm = 0x100
	subq	$8, %rsp
	leaq	-68(%rbp), %rax
	leaq	-228(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%r13d, %r9d
	pushq	$100
	pushq	%r10
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r11
	testq	%r14, %r14
	jne	.LBB0_150
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %rax
	cmpq	%rax, %r11
	jne	.LBB0_150
# %bb.147:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	cmpl	$101, %eax
	jl	.LBB0_150
# %bb.148:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_452
# %bb.149:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, -176(%rbp)        # 8-byte Spill
	movq	%rax, %r14
	movl	-68(%rbp), %eax
	subq	$8, %rsp
	leaq	-228(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %esi
	movl	-136(%rbp), %edx        # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%rax
	pushq	%r14
	leaq	-68(%rbp), %rax
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r11
	movq	%r14, %rax
	movq	%r14, -216(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %r12        # 8-byte Reload
.LBB0_150:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-180(%rbp), %esi        # 4-byte Reload
	cmpl	$103, %esi
	movq	%r14, -152(%rbp)        # 8-byte Spill
	jne	.LBB0_154
# %bb.151:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %r9d
	cmpl	$-3, %r9d
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-52(%rbp), %edx         # 4-byte Reload
	jl	.LBB0_153
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%r15d, %r9d
	jle	.LBB0_174
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-2, %r13d
	movl	%r13d, %esi
	orl	$32, %esi
	jmp	.LBB0_158
.LBB0_154:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$70, %r13d
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-52(%rbp), %edx         # 4-byte Reload
	jne	.LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %r9d
	jmp	.LBB0_171
.LBB0_156:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$101, %r13d
	ja	.LBB0_170
# %bb.157:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %r9d
.LBB0_158:                              #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%r9), %eax
	leal	15(%r13), %ecx
	cmpl	$97, %esi
	cmovnel	%r13d, %ecx
	movl	%eax, -116(%rbp)
	movl	%ecx, -208(%rbp)
	movl	$1, %ecx
	subl	%r9d, %ecx
	xorl	%edx, %edx
	testl	%r9d, %r9d
	setle	%dl
	leal	43(%rdx,%rdx), %edx
	cmovgl	%eax, %ecx
	movl	%edx, -204(%rbp)
	cmpl	$10, %ecx
	movq	%r11, -160(%rbp)        # 8-byte Spill
	movq	%r12, %r8
	jl	.LBB0_166
# %bb.159:                              # %.preheader45
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$-1, %r11
	xorl	%r10d, %r10d
	leaq	-240(%rbp), %r15
	leaq	-196(%rbp), %rax
	leaq	-144(%rbp), %r12
	.p2align	4, 0x90
.LBB0_160:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r10, %r14
	movl	%ecx, %edi
	movslq	%ecx, %rdx
	imulq	$1717986919, %rdx, %rcx # imm = 0x66666667
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$34, %rcx
	addl	%esi, %ecx
	leal	(%rcx,%rcx), %esi
	leal	(%rsi,%rsi,4), %esi
	negl	%esi
	addl	%esi, %edi
	addl	$48, %edi
	addq	$-1, %r10
	movl	%edi, -264(%rbp,%r14,4)
	addq	$-4, %r12
	addq	$1, %r11
	addq	$4, %rax
	addq	$-4, %r15
	cmpl	$99, %edx
	jg	.LBB0_160
# %bb.161:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %ecx
	movl	%ecx, -268(%rbp,%r14,4)
	leaq	1(%r10), %r9
	leaq	-200(%rbp), %rdx
	cmpq	$1, %r9
	jg	.LBB0_169
# %bb.162:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, -200(%rbp)
	leaq	-196(%rbp), %rdx
	testq	%r10, %r10
	je	.LBB0_169
# %bb.163:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, -196(%rbp)
	leaq	-192(%rbp), %rdx
	testq	%r9, %r9
	jns	.LBB0_169
# %bb.164:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r10, %rdi
	notq	%rdi
	cmpq	$8, %rdi
	jae	.LBB0_432
# %bb.165:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-192(%rbp), %rdx
	jmp	.LBB0_443
.LBB0_166:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-200(%rbp), %rax
	cmpl	$97, %esi
	je	.LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -200(%rbp)
	leaq	-196(%rbp), %rax
.LBB0_168:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, %rdx
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-208(%rbp), %rax
	subq	%rax, %rdx
	shrq	$2, %rdx
	movl	-68(%rbp), %eax
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	leal	(%rax,%rdx), %ecx
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	setg	%r15b
	movl	-52(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	%eax, %r15d
	addl	%ecx, %r15d
	movl	-136(%rbp), %ecx        # 4-byte Reload
	andl	$-1025, %ecx            # imm = 0xFBFF
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%r10d, %r10d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r8, %r12
	movq	-160(%rbp), %r11        # 8-byte Reload
	jmp	.LBB0_191
.LBB0_170:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %r9d
	cmpl	$102, %r13d
	jne	.LBB0_174
.LBB0_171:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edx, %eax
	andl	$1, %eax
	orl	%r15d, %eax
	testl	%r9d, %r9d
	jle	.LBB0_189
# %bb.172:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$102, %r13d
	testl	%eax, %eax
	je	.LBB0_221
# %bb.173:                              #   in Loop: Header=BB0_5 Depth=1
	addl	%r9d, %r15d
	addl	$1, %r15d
	jmp	.LBB0_178
.LBB0_174:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	cmpl	%eax, %r9d
	jge	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %ecx
	subl	%r9d, %ecx
	testl	%r9d, %r9d
	movl	$1, %r15d
	cmovlel	%ecx, %r15d
	addl	%eax, %r15d
	jmp	.LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edx, %r15d
	andl	$1, %r15d
	addl	%r9d, %r15d
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$103, %r13d
.LBB0_178:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	xorl	%r10d, %r10d
	testl	$1024, %edx             # imm = 0x400
	je	.LBB0_188
# %bb.179:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r9d, %r9d
	jle	.LBB0_188
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	movsbl	(%r8), %eax
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	cmpl	$127, %eax
	je	.LBB0_187
# %bb.181:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%eax, %r9d
	jle	.LBB0_187
# %bb.182:                              # %.preheader46
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_183:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r8)
	sete	%r14b
	setne	%dl
	je	.LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_183 Depth=2
	addq	$1, %r8
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=2
	subl	%eax, %r9d
	movb	%dl, %sil
	addl	%esi, %r10d
	movb	%r14b, %cl
	addl	%ecx, %edi
	movsbl	(%r8), %eax
	cmpl	$127, %eax
	je	.LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_183 Depth=2
	cmpl	%eax, %r9d
	jg	.LBB0_183
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	addl	%r10d, %r15d
	movl	%edi, -84(%rbp)         # 4-byte Spill
	addl	%edi, %r15d
	jmp	.LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -144(%rbp)         # 8-byte Spill
	addl	$2, %r15d
	testl	%eax, %eax
	movl	$1, %eax
	cmovnel	%r15d, %eax
	xorl	%r10d, %r10d
	movl	$102, %r13d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
.LBB0_190:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-136(%rbp), %ecx        # 4-byte Reload
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, -88(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	cmpl	$0, -228(%rbp)
	je	.LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -92(%rbp)
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r10d
	jmp	.LBB0_289
.LBB0_194:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_235
# %bb.195:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movsbq	(%rcx), %rdx
	jmp	.LBB0_236
.LBB0_196:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_239
# %bb.197:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_240
.LBB0_198:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_241
# %bb.199:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_242
.LBB0_200:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_243
# %bb.201:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_244
.LBB0_202:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_245
# %bb.203:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_246
.LBB0_204:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rdx
	jmp	.LBB0_236
.LBB0_205:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_206:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_207:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	jmp	.LBB0_265
.LBB0_209:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_210:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	(%rax), %rdx
	jmp	.LBB0_268
.LBB0_211:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_212:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB0_247
.LBB0_213:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %r8
	movq	%rax, %r9
	cmpq	$100, %r9
	jae	.LBB0_113
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %r11
	xorl	%ecx, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	$0, %r15d
	movl	$0, %ecx
	testq	%r9, %r9
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-52(%rbp), %r10d        # 4-byte Reload
	je	.LBB0_431
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$8, %r9
	jb	.LBB0_216
# %bb.217:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r8,%r9), %rcx
	cmpq	%r11, %rcx
	jbe	.LBB0_252
# %bb.218:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r11,%r9,4), %rcx
	cmpq	%rcx, %r8
	jae	.LBB0_252
.LBB0_216:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%ecx, %ecx
.LBB0_426:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rdx
	notq	%rdx
	addq	%r9, %rdx
	movq	%r9, %rsi
	andq	$3, %rsi
	je	.LBB0_428
	.p2align	4, 0x90
.LBB0_427:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r8,%rcx), %edi
	movl	%edi, (%r11,%rcx,4)
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB0_427
.LBB0_428:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$3, %rdx
	jb	.LBB0_430
	.p2align	4, 0x90
.LBB0_429:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r8,%rcx), %edx
	movl	%edx, (%r11,%rcx,4)
	movsbl	1(%r8,%rcx), %edx
	movl	%edx, 4(%r11,%rcx,4)
	movsbl	2(%r8,%rcx), %edx
	movl	%edx, 8(%r11,%rcx,4)
	movsbl	3(%r8,%rcx), %edx
	movl	%edx, 12(%r11,%rcx,4)
	addq	$4, %rcx
	cmpq	%rcx, %r9
	jne	.LBB0_429
	jmp	.LBB0_430
.LBB0_220:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	callq	wcslen
	movq	%r14, %r11
	movq	%rax, %r15
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_223
.LBB0_221:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %r15d
	jmp	.LBB0_178
.LBB0_222:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r14, %r11
.LBB0_223:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
.LBB0_224:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-52(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB0_289
.LBB0_225:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_226:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movslq	(%rcx), %rdx
	jmp	.LBB0_237
.LBB0_227:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_261
# %bb.228:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_262
.LBB0_229:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_263
# %bb.230:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_264
.LBB0_231:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_266
# %bb.232:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_267
.LBB0_233:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_234:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB0_247
.LBB0_235:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rdx
.LBB0_236:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
.LBB0_237:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB0_270
# %bb.238:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%rdx
	movl	$45, -92(%rbp)
	jmp	.LBB0_270
.LBB0_239:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_240:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_5
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_242:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB0_265
.LBB0_243:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_244:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB0_268
.LBB0_245:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_246:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB0_247:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$1, %r10b
	je	.LBB0_250
# %bb.248:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	je	.LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -224(%rbp)
	movl	%r13d, -220(%rbp)
	orl	$2, %r10d
.LBB0_250:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
.LBB0_251:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %eax
	jmp	.LBB0_269
.LBB0_252:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, %rcx
	andq	$-8, %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %esi
	andl	$1, %esi
	testq	%rdx, %rdx
	je	.LBB0_422
# %bb.253:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%rsi, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_254:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r8,%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movd	4(%r8,%rdx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, (%r11,%rdx,4)
	movdqu	%xmm1, 16(%r11,%rdx,4)
	movd	8(%r8,%rdx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movd	12(%r8,%rdx), %xmm1     # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, 32(%r11,%rdx,4)
	movdqu	%xmm1, 48(%r11,%rdx,4)
	addq	$16, %rdx
	addq	$-2, %rdi
	jne	.LBB0_254
	jmp	.LBB0_423
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_256:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_5
.LBB0_257:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_258:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB0_265
.LBB0_259:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_260:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB0_268
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_262:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB0_5
.LBB0_263:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_264:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB0_265:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
	movl	$111, %r13d
	xorl	%eax, %eax
	jmp	.LBB0_269
.LBB0_266:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_267:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-128(%rbp), %r9         # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB0_268:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$117, %r13d
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_269:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -92(%rbp)
.LBB0_270:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %ecx
	andl	$-129, %r10d
	testl	%r15d, %r15d
	cmovsl	%ecx, %r10d
	movq	%r9, -128(%rbp)         # 8-byte Spill
	jne	.LBB0_276
# %bb.271:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_276
# %bb.272:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	jne	.LBB0_281
# %bb.273:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %eax
	andl	$1, %eax
	je	.LBB0_281
# %bb.274:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -292(%rbp)
.LBB0_275:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-292(%rbp), %r11
	jmp	.LBB0_287
.LBB0_276:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_282
# %bb.277:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_357
# %bb.278:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-288(%rbp), %r11
	cmpl	$2, %eax
	jne	.LBB0_359
	.p2align	4, 0x90
.LBB0_279:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, -4(%r11)
	addq	$-4, %r11
	shrq	$4, %rdx
	jne	.LBB0_279
	jmp	.LBB0_287
.LBB0_281:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-288(%rbp), %r11
.LBB0_287:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movl	%r15d, %r14d
	leaq	-288(%rbp), %r15
	subq	%r11, %r15
	shrq	$2, %r15
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB0_288:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB0_289:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r11, -160(%rbp)        # 8-byte Spill
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	cmpl	%r15d, %r14d
	movl	%r15d, %ecx
	cmovgel	%r14d, %ecx
	movl	-92(%rbp), %eax
	cmpl	$1, %eax
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r10b
	cmovel	%ecx, %edx
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	andl	$132, %r10d
	movl	%r10d, -180(%rbp)       # 4-byte Spill
	movq	%r12, -176(%rbp)        # 8-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jne	.LBB0_297
# %bb.290:                              #   in Loop: Header=BB0_5 Depth=1
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	subl	%edx, %r12d
	jle	.LBB0_297
# %bb.291:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r12d
	jl	.LBB0_294
	.p2align	4, 0x90
.LBB0_292:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.293:                              #   in Loop: Header=BB0_292 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_292
	jmp	.LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_295:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.296:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-92(%rbp), %eax
	.p2align	4, 0x90
.LBB0_297:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-92(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_299:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$2, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$8, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-224(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_301:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$128, -180(%rbp)        # 4-byte Folded Reload
	jne	.LBB0_308
# %bb.302:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-176(%rbp), %r12        # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	subl	-136(%rbp), %r12d       # 4-byte Folded Reload
	jle	.LBB0_308
# %bb.303:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r12d
	jl	.LBB0_306
	.p2align	4, 0x90
.LBB0_304:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.305:                              #   in Loop: Header=BB0_304 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_304
	jmp	.LBB0_307
.LBB0_306:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_307:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_308:                              #   in Loop: Header=BB0_5 Depth=1
	subl	%r15d, %r14d
	jle	.LBB0_314
# %bb.309:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_312
	.p2align	4, 0x90
.LBB0_310:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.311:                              #   in Loop: Header=BB0_310 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB0_310
	jmp	.LBB0_313
	.p2align	4, 0x90
.LBB0_312:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_313:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_314:                              #   in Loop: Header=BB0_5 Depth=1
	testl	$256, -52(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB0_317
# %bb.315:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
.LBB0_316:                              #   in Loop: Header=BB0_5 Depth=1
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_338
	.p2align	4, 0x90
.LBB0_317:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$102, %r13d
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jb	.LBB0_329
# %bb.318:                              #   in Loop: Header=BB0_5 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0, %xmm0
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB0_349
	jp	.LBB0_349
# %bb.319:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.320:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_322
# %bb.321:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	cmpl	%eax, -116(%rbp)
	jge	.LBB0_339
.LBB0_322:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.323:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %r14d
	cmpl	$2, %r14d
	jl	.LBB0_339
# %bb.324:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$18, %r14d
	jl	.LBB0_381
# %bb.325:                              # %.preheader10
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$15, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_326:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.327:                              #   in Loop: Header=BB0_326 Depth=2
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_326
# %bb.328:                              # %.loopexit12
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
	jmp	.LBB0_415
.LBB0_329:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %r14d
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$2, %r14d
	jl	.LBB0_336
.LBB0_331:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.332:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.333:                              #   in Loop: Header=BB0_5 Depth=1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0, %xmm0
	jne	.LBB0_334
	jnp	.LBB0_360
.LBB0_334:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	$4, %rdx
	movslq	-68(%rbp), %rax
	leaq	-4(,%rax,4), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_335:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
.LBB0_336:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_337:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-240(%rbp), %rcx        # 4-byte Folded Reload
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-208(%rbp), %rdx
.LBB0_338:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_339:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$4, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB0_347
# %bb.340:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-176(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	-136(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_347
# %bb.341:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_345
# %bb.342:                              # %.preheader7
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_343:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.344:                              #   in Loop: Header=BB0_343 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_343
	jmp	.LBB0_346
.LBB0_345:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_346:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_347:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	-136(%rbp), %r13d       # 4-byte Reload
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	addl	-132(%rbp), %r13d       # 4-byte Folded Reload
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	je	.LBB0_5
# %bb.348:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	free
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
.LBB0_349:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -116(%rbp)
	jle	.LBB0_366
# %bb.350:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %r15d
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_352:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	movl	$0, %eax
	cmovsl	%eax, %r15d
	movq	-144(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	%r15d, %r14d
	jle	.LBB0_385
# %bb.353:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_383
# %bb.354:                              # %.preheader22
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_355:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.356:                              #   in Loop: Header=BB0_355 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_355
	jmp	.LBB0_384
.LBB0_282:                              # %.preheader37
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-292(%rbp), %rax
	.p2align	4, 0x90
.LBB0_283:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	testq	%rdx, %rdx
	jne	.LBB0_283
# %bb.284:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	4(%rax), %r11
	testb	$1, %r10b
	je	.LBB0_287
# %bb.285:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$48, %ecx
	je	.LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, (%rax)
	movq	%rax, %r11
	jmp	.LBB0_287
.LBB0_357:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$9, %rdx
	ja	.LBB0_374
# %bb.358:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %edx
	movl	%edx, -292(%rbp)
	jmp	.LBB0_275
.LBB0_359:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.7, %edi
	movq	%xmm2, -112(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r14d
	callq	wcslen
	movl	$.L.str.7, %r11d
	movl	%r14d, %r10d
	movq	-112(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	%r15d, %r14d
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
	jmp	.LBB0_288
.LBB0_360:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %r14d
	cmpl	$2, %r14d
	jl	.LBB0_337
# %bb.361:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$18, %r14d
	jl	.LBB0_417
# %bb.362:                              # %.preheader25
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$15, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_363:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.364:                              #   in Loop: Header=BB0_363 Depth=2
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_363
# %bb.365:                              # %.loopexit27
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
	jmp	.LBB0_418
.LBB0_366:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.367:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	-116(%rbp), %eax
	orl	-68(%rbp), %eax
	je	.LBB0_339
# %bb.368:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.369:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB0_421
# %bb.370:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	cmpl	$-17, %eax
	jg	.LBB0_419
# %bb.371:                              # %.preheader13
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_372:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.373:                              #   in Loop: Header=BB0_372 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_372
	jmp	.LBB0_420
.LBB0_374:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -68(%rbp)
	leaq	-288(%rbp), %rsi
	jmp	.LBB0_376
	.p2align	4, 0x90
.LBB0_375:                              #   in Loop: Header=BB0_376 Depth=2
	movq	%r11, %rsi
	cmpq	$9, %rcx
	jbe	.LBB0_287
.LBB0_376:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	leal	(%rdx,%rdx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	orl	$48, %edi
	leaq	-4(%rsi), %r11
	movl	%edi, -4(%rsi)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	testl	$1024, %r10d            # imm = 0x400
	je	.LBB0_375
# %bb.377:                              #   in Loop: Header=BB0_376 Depth=2
	movsbl	(%r8), %edi
	cmpl	%edi, %eax
	jne	.LBB0_375
# %bb.378:                              #   in Loop: Header=BB0_376 Depth=2
	cmpq	$10, %rcx
	jb	.LBB0_375
# %bb.379:                              #   in Loop: Header=BB0_376 Depth=2
	cmpb	$127, %dil
	je	.LBB0_375
# %bb.380:                              #   in Loop: Header=BB0_376 Depth=2
	movl	-168(%rbp), %eax
	movl	%eax, -8(%rsi)
	addq	$-8, %rsi
	movl	$0, -68(%rbp)
	leaq	1(%r8), %rax
	cmpb	$0, 1(%r8)
	cmovneq	%rax, %r8
	movq	%rsi, %r11
	jmp	.LBB0_375
.LBB0_381:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-1, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_415
.LBB0_383:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_384:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_385:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-144(%rbp), %rax        # 4-byte Folded Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	leaq	(%r8,%rax,4), %rdx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testb	$1, %cl
	je	.LBB0_390
	jmp	.LBB0_391
.LBB0_387:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setg	%r9b
	movl	-88(%rbp), %edi         # 4-byte Reload
	testl	%edi, %edi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_401
# %bb.388:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	jg	.LBB0_401
.LBB0_389:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-68(%rbp), %rax
	leaq	(%r8,%rax,4), %rcx
	cmpq	%rcx, %rdx
	cmovaq	%rcx, %rdx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	testb	$1, %cl
	jne	.LBB0_391
.LBB0_390:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB0_393
.LBB0_391:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %r14
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.392:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	movl	-116(%rbp), %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r14, %rdx
.LBB0_393:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r8,%rax,4), %r15
	subq	%rdx, %r15
	shrq	$2, %r15
	subl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB0_396
# %bb.394:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.395:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-68(%rbp), %eax
	subl	-116(%rbp), %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_396:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %r14d
	negl	%r14d
	testl	%r15d, %r15d
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB0_339
# %bb.397:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_414
	.p2align	4, 0x90
.LBB0_398:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.399:                              #   in Loop: Header=BB0_398 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_398
# %bb.400:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	jmp	.LBB0_416
.LBB0_401:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_407 Depth 3
	movl	%edi, -88(%rbp)         # 4-byte Spill
	movq	%rdx, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	-1(%rax), %rcx
	movl	%r9d, %r14d
	testb	$1, %r9b
	cmovneq	%rax, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	$4, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.402:                              #   in Loop: Header=BB0_401 Depth=2
	movl	-68(%rbp), %eax
	movq	-160(%rbp), %r8         # 8-byte Reload
	leaq	(%r8,%rax,4), %r13
	movq	%r15, %rdx
	subq	%r15, %r13
	shrq	$2, %r13
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movsbl	%al, %r12d
	cmpl	%r12d, %r13d
	cmovgl	%r12d, %r13d
	testl	%r13d, %r13d
	jle	.LBB0_405
# %bb.403:                              #   in Loop: Header=BB0_401 Depth=2
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.404:                              #   in Loop: Header=BB0_401 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movsbl	%al, %r12d
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r15, %rdx
.LBB0_405:                              #   in Loop: Header=BB0_401 Depth=2
	testl	%r13d, %r13d
	movl	$0, %ecx
	cmovsl	%ecx, %r13d
	subl	%r13d, %r12d
	jle	.LBB0_412
# %bb.406:                              #   in Loop: Header=BB0_401 Depth=2
	cmpl	$17, %r12d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jl	.LBB0_409
	.p2align	4, 0x90
.LBB0_407:                              #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_401 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.408:                              #   in Loop: Header=BB0_407 Depth=3
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_407
	jmp	.LBB0_410
.LBB0_409:                              #   in Loop: Header=BB0_401 Depth=2
	movl	%r12d, %eax
.LBB0_410:                              #   in Loop: Header=BB0_401 Depth=2
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
# %bb.411:                              #   in Loop: Header=BB0_401 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r15, %rdx
.LBB0_412:                              #   in Loop: Header=BB0_401 Depth=2
	movzbl	%r14b, %ecx
	notb	%r14b
	movzbl	%r14b, %esi
	andl	$1, %esi
	movl	-88(%rbp), %edi         # 4-byte Reload
	subl	%esi, %edi
	andl	$1, %ecx
	movl	-84(%rbp), %esi         # 4-byte Reload
	subl	%ecx, %esi
	movsbq	%al, %rax
	leaq	(%rdx,%rax,4), %rdx
	movl	%esi, -84(%rbp)         # 4-byte Spill
	testl	%esi, %esi
	setg	%r9b
	testl	%edi, %edi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_401
# %bb.413:                              #   in Loop: Header=BB0_401 Depth=2
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	jg	.LBB0_401
	jmp	.LBB0_389
.LBB0_414:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_415:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
.LBB0_416:                              #   in Loop: Header=BB0_5 Depth=1
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_338
.LBB0_417:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-1, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_418:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_335
.LBB0_419:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_420:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_445
.LBB0_421:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-68(%rbp), %rcx
	jmp	.LBB0_316
.LBB0_422:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
.LBB0_423:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_5 Depth=1
	movd	(%r8,%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movd	4(%r8,%rdx), %xmm1      # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm0
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movdqu	%xmm0, (%r11,%rdx,4)
	movdqu	%xmm1, 16(%r11,%rdx,4)
.LBB0_425:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	%rcx, %r9
	jne	.LBB0_426
.LBB0_430:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %ecx
	movl	%r9d, %r15d
.LBB0_431:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, (%r11,%rcx,4)
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_289
.LBB0_432:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-192(%rbp), %rcx
	leaq	-260(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-112(%r12), %rcx
	leaq	-192(%rbp), %rdx
	cmpq	%rax, %rcx
	jb	.LBB0_443
.LBB0_434:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r9
	andq	$-8, %r9
	leaq	-8(%r9), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$1, %rax
	cmpq	$24, %rcx
	jae	.LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_438
.LBB0_436:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%r14
	andq	$-8, %r14
	addq	$-8, %r14
	shrq	$3, %r14
	leal	1(%r14), %ecx
	movzbl	%cl, %ecx
	andl	$3, %ecx
	notq	%r14
	addq	%rcx, %r14
	xorl	%ecx, %ecx
.LBB0_437:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-112(%r12,%rcx,4), %xmm0
	movups	-96(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -192(%rbp,%rcx,4)
	movaps	%xmm1, -176(%rbp,%rcx,4)
	movups	-80(%r12,%rcx,4), %xmm0
	movups	-64(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -160(%rbp,%rcx,4)
	movaps	%xmm1, -144(%rbp,%rcx,4)
	movups	-48(%r12,%rcx,4), %xmm0
	movups	-32(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -128(%rbp,%rcx,4)
	movaps	%xmm1, -112(%rbp,%rcx,4)
	movupd	-16(%r12,%rcx,4), %xmm0
	movdqu	(%r12,%rcx,4), %xmm1
	movapd	%xmm0, -96(%rbp,%rcx,4)
	movdqa	%xmm1, -80(%rbp,%rcx,4)
	addq	$32, %rcx
	addq	$4, %r14
	jne	.LBB0_437
.LBB0_438:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$3, %al
	je	.LBB0_441
# %bb.439:                              # %.preheader42
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r15,%rcx,4), %rax
	leaq	-200(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	addq	$24, %rcx
	movl	%r11d, %edx
	andb	$24, %dl
	addb	$-8, %dl
	shrb	$3, %dl
	addb	$1, %dl
	movzbl	%dl, %edx
	andl	$3, %edx
	shlq	$5, %rdx
	xorl	%esi, %esi
.LBB0_440:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-16(%rax,%rsi), %xmm0
	movdqu	(%rax,%rsi), %xmm1
	movapd	%xmm0, -16(%rcx,%rsi)
	movdqa	%xmm1, (%rcx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_440
.LBB0_441:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-192(%rbp), %rax
	leaq	(%rax,%r9,4), %rdx
	cmpq	%r9, %rdi
	je	.LBB0_169
# %bb.442:                              #   in Loop: Header=BB0_5 Depth=1
	andq	$-8, %r11
	leaq	(%r11,%r10), %r9
	addq	$1, %r9
.LBB0_443:                              #   in Loop: Header=BB0_5 Depth=1
	addq	$-1, %r9
.LBB0_444:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-256(%rbp,%r9,4), %eax
	movl	%eax, (%rdx)
	addq	$4, %rdx
	addq	$1, %r9
	cmpq	$-1, %r9
	jl	.LBB0_444
	jmp	.LBB0_169
.LBB0_445:
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB0_447
# %bb.446:
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB0_447:                              # %.loopexit3
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB0_448:
	movl	-132(%rbp), %r13d       # 4-byte Reload
.LBB0_449:
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r13d, %eax
.LBB0_450:
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_451:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_450
.LBB0_452:
	movq	-48(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	jmp	.LBB0_448
.Lfunc_end0:
	.size	_svfwprintf_r, .Lfunc_end0-_svfwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_447
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_30
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_32
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_33
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_36
	.quad	.LBB0_38
	.quad	.LBB0_117
	.quad	.LBB0_47
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_39
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_24
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_48
	.quad	.LBB0_117
	.quad	.LBB0_52
	.quad	.LBB0_117
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_40
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_56
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_80
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_48
	.quad	.LBB0_117
	.quad	.LBB0_52
	.quad	.LBB0_58
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_41
	.quad	.LBB0_58
	.quad	.LBB0_43
	.quad	.LBB0_117
	.quad	.LBB0_42
	.quad	.LBB0_117
	.quad	.LBB0_83
	.quad	.LBB0_88
	.quad	.LBB0_93
	.quad	.LBB0_43
	.quad	.LBB0_117
	.quad	.LBB0_56
	.quad	.LBB0_43
	.quad	.LBB0_95
	.quad	.LBB0_117
	.quad	.LBB0_117
	.quad	.LBB0_100
	.quad	.LBB0_117
	.quad	.LBB0_43
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function wcvt
.LCPI1_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI1_4:
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4593671619917905920     # double 0.125
.LCPI1_2:
	.quad	4625196817309499392     # double 16
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.p2align	4, 0x90
	.type	wcvt,@function
wcvt:                                   # @wcvt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r9d, %r14d
	movq	%r8, %r15
	movl	%edx, %r12d
	movl	%esi, %ebx
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	andl	$45, %eax
	testq	%rdx, %rdx
	jns	.LBB1_2
# %bb.1:
	pxor	.LCPI1_0(%rip), %xmm0
.LBB1_2:
	movl	%eax, (%rcx)
	movl	%r14d, %r13d
	orl	$32, %r13d
	cmpl	$97, %r13d
	jne	.LBB1_27
# %bb.3:
	movq	%r15, %rdi
	callq	frexp
	mulsd	.LCPI1_1(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_5
	jp	.LBB1_5
# %bb.4:
	movl	$1, (%r15)
.LBB1_5:
	cmpl	$97, %r14d
	movl	$.L.str.4, %eax
	movl	$.L.str.6, %r8d
	cmoveq	%rax, %r8
	movl	%ebx, %esi
	negl	%esi
	leal	1(%rbx), %edx
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	24(%rbp), %r15
	movq	%r15, %r9
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r9, %rdi
	movl	%ebx, %r10d
	movl	%esi, %r14d
	movl	%edx, %r11d
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	subsd	%xmm3, %xmm0
	movslq	%ecx, %rax
	movl	(%r8,%rax,4), %eax
	addq	$4, %r9
	movl	%eax, (%rdi)
	addl	$-1, %ebx
	jae	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	leal	1(%r14), %esi
	leal	7(%r11), %edx
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_6
	jp	.LBB1_6
.LBB1_8:
	ucomisd	.LCPI1_3(%rip), %xmm0
	ja	.LBB1_21
# %bb.9:
	testb	$1, %cl
	je	.LBB1_11
# %bb.10:
	ucomisd	.LCPI1_3(%rip), %xmm0
	jne	.LBB1_11
	jp	.LBB1_11
.LBB1_21:
	cmpl	60(%r8), %eax
	jne	.LBB1_22
	.p2align	4, 0x90
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rdi)
	movl	-4(%rdi), %ecx
	addq	$-4, %rdi
	cmpl	%eax, %ecx
	je	.LBB1_23
# %bb.24:
	cmpl	$57, %ecx
	jne	.LBB1_26
.LBB1_25:
	movl	40(%r8), %eax
	movl	%eax, (%rdi)
	jmp	.LBB1_12
.LBB1_27:
	xorl	%esi, %esi
	cmpl	$102, %r13d
	sete	%sil
	xorl	%r14d, %r14d
	cmpl	$101, %r13d
	sete	%r14b
	orl	$2, %esi
	addl	%ebx, %r14d
	leaq	-52(%rbp), %r8
	leaq	-48(%rbp), %r9
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	_dtoa_r
	movq	%rax, %rcx
	testb	$1, %r12b
	jne	.LBB1_30
# %bb.28:
	cmpl	$103, %r13d
	jne	.LBB1_30
# %bb.29:
	movq	-48(%rbp), %rdx
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	jmp	.LBB1_41
.LBB1_30:
	movslq	%r14d, %rdx
	addq	%rdx, %rax
	cmpl	$102, %r13d
	jne	.LBB1_31
# %bb.32:
	pxor	%xmm0, %xmm0
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_33
	jnp	.LBB1_34
.LBB1_33:
	cmpb	$48, (%rcx)
	jne	.LBB1_34
# %bb.35:
	movl	$1, %edx
	subl	%r14d, %edx
	movl	%edx, (%r15)
	jmp	.LBB1_36
.LBB1_22:
	movl	%eax, %ecx
	cmpl	$57, %ecx
	je	.LBB1_25
.LBB1_26:
	addl	$1, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB1_12
.LBB1_11:
	testl	%r10d, %r10d
	jle	.LBB1_12
# %bb.13:
	movl	%r10d, %r8d
	negl	%r8d
	cmpl	$-2, %r8d
	movl	$-1, %eax
	cmovlel	%eax, %r8d
	addl	%r10d, %r8d
	leaq	1(%r8), %rcx
	cmpq	$7, %rcx
	ja	.LBB1_17
# %bb.14:
	movq	%r9, %rdi
	movq	16(%rbp), %rax
	jmp	.LBB1_15
.LBB1_12:
	movq	%r9, %rdi
	movq	16(%rbp), %rax
.LBB1_20:
	subq	%r15, %rdi
	shrq	$2, %rdi
	movl	%edi, (%rax)
.LBB1_46:
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_31:
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB1_37
.LBB1_34:
	movl	(%r15), %edx
.LBB1_36:
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	movslq	%edx, %rdx
	addq	%rdx, %rax
.LBB1_37:
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_40
	jp	.LBB1_40
# %bb.38:
	movq	%rax, -48(%rbp)
	movq	%rax, %rdx
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_39:                               #   in Loop: Header=BB1_40 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movb	$48, (%rdx)
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdx
	cmpq	%rax, %rdx
	jb	.LBB1_39
.LBB1_41:
	movl	32(%rbp), %eax
	subl	%ecx, %edx
	movl	%edx, (%rdi)
	testl	%eax, %eax
	jle	.LBB1_46
# %bb.42:
	testl	%edx, %edx
	jle	.LBB1_46
# %bb.43:
	cltq
	movl	$1, %edx
	.p2align	4, 0x90
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	movsbl	-1(%rcx,%rdx), %esi
	movl	%esi, -4(%r15,%rdx,4)
	cmpq	%rax, %rdx
	jge	.LBB1_46
# %bb.45:                               #   in Loop: Header=BB1_44 Depth=1
	movslq	(%rdi), %rsi
	cmpq	%rsi, %rdx
	leaq	1(%rdx), %rdx
	jl	.LBB1_44
	jmp	.LBB1_46
.LBB1_17:
	addl	$1, %r8d
	andl	$7, %r8d
	subq	%r8, %rcx
	leaq	(%r9,%rcx,4), %rdi
	subl	%ecx, %ebx
	cmpl	$-2, %r14d
	cmovgl	%r14d, %eax
	addl	%eax, %r10d
	addb	%al, %r11b
	movzbl	%r11b, %eax
	andl	$7, %eax
	subq	%rax, %r10
	addq	$1, %r10
	xorl	%eax, %eax
	movapd	.LCPI1_4(%rip), %xmm0   # xmm0 = [48,48,48,48]
	.p2align	4, 0x90
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, (%r9,%rax,4)
	movupd	%xmm0, 16(%r9,%rax,4)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.LBB1_18
# %bb.19:
	testl	%r8d, %r8d
	movq	16(%rbp), %rax
	je	.LBB1_20
.LBB1_15:
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rdi)
	addq	$4, %rdi
	addl	$-1, %ebx
	testl	%ebx, %ebx
	jg	.LBB1_16
	jmp	.LBB1_20
.Lfunc_end1:
	.size	wcvt, .Lfunc_end1-wcvt
                                        # -- End function
	.type	_svfwprintf_r.blanks,@object # @_svfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	4
_svfwprintf_r.blanks:
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
	.size	_svfwprintf_r.blanks, 64

	.type	_svfwprintf_r.zeroes,@object # @_svfwprintf_r.zeroes
	.p2align	4
_svfwprintf_r.zeroes:
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
	.size	_svfwprintf_r.zeroes, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str:
	.long	73                      # 0x49
	.long	78                      # 0x4e
	.long	70                      # 0x46
	.long	0                       # 0x0
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
	.p2align	2
.L.str.1:
	.long	105                     # 0x69
	.long	110                     # 0x6e
	.long	102                     # 0x66
	.long	0                       # 0x0
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
	.p2align	2
.L.str.2:
	.long	78                      # 0x4e
	.long	65                      # 0x41
	.long	78                      # 0x4e
	.long	0                       # 0x0
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
	.p2align	2
.L.str.3:
	.long	110                     # 0x6e
	.long	97                      # 0x61
	.long	110                     # 0x6e
	.long	0                       # 0x0
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
	.p2align	2
.L.str.4:
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
	.size	.L.str.4, 68

	.type	.L.str.5,@object        # @.str.5
	.p2align	2
.L.str.5:
	.long	40                      # 0x28
	.long	110                     # 0x6e
	.long	117                     # 0x75
	.long	108                     # 0x6c
	.long	108                     # 0x6c
	.long	41                      # 0x29
	.long	0                       # 0x0
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
	.p2align	2
.L.str.6:
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
	.size	.L.str.6, 68

	.type	.L.str.7,@object        # @.str.7
	.p2align	2
.L.str.7:
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
	.size	.L.str.7, 104

	.type	.L.str.8,@object        # @.str.8
	.p2align	2
.L.str.8:
	.long	48                      # 0x30
	.long	0                       # 0x0
	.size	.L.str.8, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
