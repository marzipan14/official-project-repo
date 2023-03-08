	.text
	.file	"vfprintf.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _svfprintf_r
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI0_4:
	.zero	16,48
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4593671619917905920     # double 0.125
.LCPI0_2:
	.quad	4625196817309499392     # double 16
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
.LCPI0_5:
	.quad	0                       # double 0
	.text
	.globl	_svfprintf_r
	.p2align	4, 0x90
	.type	_svfprintf_r,@function
_svfprintf_r:                           # @_svfprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	_localeconv_r
	movq	(%rax), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -232(%rbp)        # 8-byte Spill
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
	je	.LBB0_458
# %bb.3:
	movl	$64, 32(%r12)
.LBB0_4:
	leaq	8(%rbx), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	pxor	%xmm2, %xmm2
	movl	$0, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, %r14d
	xorl	%eax, %eax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -288(%rbp)        # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_21 Depth 5
                                        #         Child Loop BB0_26 Depth 4
                                        #     Child Loop BB0_233 Depth 2
                                        #     Child Loop BB0_325 Depth 2
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_149 Depth 2
                                        #     Child Loop BB0_348 Depth 2
                                        #     Child Loop BB0_351 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_387 Depth 2
                                        #     Child Loop BB0_358 Depth 2
                                        #     Child Loop BB0_413 Depth 2
                                        #     Child Loop BB0_416 Depth 2
                                        #     Child Loop BB0_421 Depth 2
                                        #     Child Loop BB0_246 Depth 2
                                        #     Child Loop BB0_259 Depth 2
                                        #     Child Loop BB0_266 Depth 2
                                        #     Child Loop BB0_319 Depth 2
                                        #     Child Loop BB0_311 Depth 2
                                        #     Child Loop BB0_424 Depth 2
                                        #       Child Loop BB0_430 Depth 3
                                        #     Child Loop BB0_447 Depth 2
                                        #     Child Loop BB0_336 Depth 2
                                        #     Child Loop BB0_282 Depth 2
                                        #     Child Loop BB0_299 Depth 2
	movq	%r13, %rdx
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %eax
	testb	%al, %al
	je	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	cmpb	$37, %al
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	addq	$1, %r13
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%r13, %rbx
	subq	%rdx, %rbx
	testl	%ebx, %ebx
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movslq	%ebx, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rdx, %r15
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_455
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	addl	%ebx, %r14d
	movb	(%r13), %al
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	%r15, %rdx
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	testb	%al, %al
	movq	-288(%rbp), %rbx        # 8-byte Reload
	je	.LBB0_455
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, -148(%rbp)       # 4-byte Spill
	addq	$1, %r13
	movb	$0, -41(%rbp)
	movl	$-1, %r14d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
.LBB0_14:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_21 Depth 5
                                        #         Child Loop BB0_26 Depth 4
	movb	(%r13), %al
	addq	$1, %r13
.LBB0_15:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_21 Depth 5
                                        #         Child Loop BB0_26 Depth 4
	movsbl	%al, %r12d
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_17 Depth=4
	movl	%eax, %r14d
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_21 Depth 5
	cmpl	$46, %r12d
	jne	.LBB0_23
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=4
	movsbl	(%r13), %r12d
	addq	$1, %r13
	cmpl	$42, %r12d
	je	.LBB0_27
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=4
	leal	-48(%r12), %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	ja	.LBB0_16
# %bb.20:                               # %.preheader
                                        #   in Loop: Header=BB0_17 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        #         Parent Loop BB0_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movsbl	(%r13), %r12d
	addq	$1, %r13
	leal	-48(%r12), %ecx
	cmpl	$10, %ecx
	jb	.LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_17 Depth=4
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB0_17
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=3
	cmpl	$122, %r12d
	ja	.LBB0_118
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=3
	movl	%r12d, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=3
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_26:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        #       Parent Loop BB0_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r8,%r8,4), %eax
	leal	(%r12,%rax,2), %r8d
	addl	$-48, %r8d
	movzbl	(%r13), %eax
	addq	$1, %r13
	movsbl	%al, %r12d
	leal	-48(%r12), %ecx
	cmpl	$10, %ecx
	jb	.LBB0_26
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB0_30:                               #   in Loop: Header=BB0_14 Depth=2
	movl	(%rax), %r14d
	cmpl	$-2, %r14d
	movl	$-1, %eax
	cmovlel	%eax, %r14d
	jmp	.LBB0_14
.LBB0_31:                               #   in Loop: Header=BB0_14 Depth=2
	cmpb	$0, -41(%rbp)
	jne	.LBB0_14
# %bb.32:                               #   in Loop: Header=BB0_14 Depth=2
	movb	$32, -41(%rbp)
	jmp	.LBB0_14
.LBB0_33:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$1, %r11d
	jmp	.LBB0_14
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movq	%rdx, %r15
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %r12
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	%r15, %rdx
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r12, %rax
	movq	%r12, -256(%rbp)        # 8-byte Spill
	testq	%r12, %r12
	je	.LBB0_14
# %bb.35:                               #   in Loop: Header=BB0_14 Depth=2
	cmpq	$0, -160(%rbp)          # 8-byte Folded Reload
	je	.LBB0_14
# %bb.36:                               #   in Loop: Header=BB0_14 Depth=2
	movl	%r11d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r11d
	jmp	.LBB0_14
.LBB0_37:                               #   in Loop: Header=BB0_14 Depth=2
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_45
# %bb.38:                               #   in Loop: Header=BB0_14 Depth=2
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_46
.LBB0_39:                               #   in Loop: Header=BB0_14 Depth=2
	movb	$43, -41(%rbp)
	jmp	.LBB0_14
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$128, %r11d
	jmp	.LBB0_14
.LBB0_41:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$8, %r11d
	jmp	.LBB0_14
.LBB0_42:                               #   in Loop: Header=BB0_14 Depth=2
	cmpb	$104, (%r13)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	1(%r13), %rax
	cmoveq	%rax, %r13
	orl	%ecx, %r11d
	jmp	.LBB0_14
.LBB0_43:                               #   in Loop: Header=BB0_14 Depth=2
	cmpb	$108, (%r13)
	leaq	1(%r13), %rax
	cmoveq	%rax, %r13
.LBB0_44:                               #   in Loop: Header=BB0_14 Depth=2
	orl	$16, %r11d
	jmp	.LBB0_14
.LBB0_45:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB0_46:                               #   in Loop: Header=BB0_14 Depth=2
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jns	.LBB0_14
# %bb.47:                               #   in Loop: Header=BB0_14 Depth=2
	negl	%r8d
.LBB0_48:                               # %.loopexit1
                                        #   in Loop: Header=BB0_14 Depth=2
	orl	$4, %r11d
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$8, %r11b
	movq	%r8, -136(%rbp)         # 8-byte Spill
	jne	.LBB0_52
# %bb.50:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	4(%rbx), %rcx
	movl	%r11d, %r15d
	cmpq	$160, %rcx
	ja	.LBB0_57
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%rbx)
	jmp	.LBB0_58
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rbx
	movl	%r11d, %r15d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-296(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_59
.LBB0_53:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_108
# %bb.54:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_109
.LBB0_55:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_110
# %bb.56:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_111
.LBB0_57:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB0_58:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rbx
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB0_59:                               #   in Loop: Header=BB0_5 Depth=1
	movapd	%xmm0, -192(%rbp)       # 16-byte Spill
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB0_63
# %bb.60:                               #   in Loop: Header=BB0_5 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r12d
	movl	$.L.str, %eax
	movl	$.L.str.1, %r9d
	cmovlq	%rax, %r9
	movl	%r15d, %r11d
	andl	$-129, %r11d
	movl	$3, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB0_243
.LBB0_63:                               #   in Loop: Header=BB0_5 Depth=1
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_68
# %bb.64:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %edi
	orl	$32, %edi
	cmpl	$97, %edi
	movl	%r15d, %ecx
	jne	.LBB0_71
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$97, %r12d
	sete	%al
	movb	$48, -114(%rbp)
	shlb	$5, %al
	orb	$88, %al
	movb	%al, -113(%rbp)
	orl	$2, %ecx
	cmpl	$100, %r14d
	jl	.LBB0_125
# %bb.66:                               #   in Loop: Header=BB0_5 Depth=1
	leal	1(%r14), %eax
	movl	%edi, %r15d
	movslq	%eax, %rdi
	movl	%ecx, %ebx
	callq	malloc
	movl	%r15d, %edi
	movl	%ebx, %ecx
	movq	%rax, %rdx
	testq	%rax, %rax
	movdqa	-192(%rbp), %xmm1       # 16-byte Reload
	jne	.LBB0_142
	jmp	.LBB0_67
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	%xmm2, %rax
	testq	%rax, %rax
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	%r15d, %r11d
	jns	.LBB0_70
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
.LBB0_70:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r12d
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %r9d
	cmovlq	%rax, %r9
	andl	$-129, %r11d
	movl	$3, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_124
.LBB0_71:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-1, %r14d
	movdqa	-192(%rbp), %xmm1       # 16-byte Reload
	je	.LBB0_140
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, %eax
	xorl	$103, %eax
	orl	%r14d, %eax
	movl	$1, %eax
	cmovnel	%r14d, %eax
	xorl	%edx, %edx
	movl	%eax, %r14d
	jmp	.LBB0_141
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r11d
.LBB0_74:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r11b
	jne	.LBB0_79
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r11b
	movq	-248(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_120
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_170
# %bb.77:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_191
# %bb.78:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_192
.LBB0_79:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	cmpq	$40, %rax
	movq	-248(%rbp), %rsi        # 8-byte Reload
	ja	.LBB0_122
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	movq	(%rcx), %rbx
	jmp	.LBB0_194
.LBB0_81:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r11d
	movl	$79, %r12d
.LBB0_82:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r11b
	jne	.LBB0_114
# %bb.83:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r11b
	movq	-248(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_126
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_177
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_202
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_203
.LBB0_87:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r11d
	movl	$85, %r12d
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r11b
	movq	-248(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_116
# %bb.89:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r11b
	jne	.LBB0_128
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_179
# %bb.91:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_204
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_205
.LBB0_93:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.6, %esi
	testb	$16, %r11b
	je	.LBB0_104
.LBB0_94:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	cmpq	$40, %rax
	ja	.LBB0_130
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	movq	(%rcx), %rbx
	jmp	.LBB0_219
.LBB0_96:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$16, %r11b
	jne	.LBB0_131
# %bb.97:                               #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r11b
	movl	-148(%rbp), %r14d       # 4-byte Reload
	jne	.LBB0_181
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_206
# %bb.99:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_401
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_402
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_133
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_134
.LBB0_103:                              # %.loopexit5
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.4, %esi
	testb	$16, %r11b
	jne	.LBB0_94
.LBB0_104:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$64, %r11b
	jne	.LBB0_135
# %bb.105:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_183
# %bb.106:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_208
# %bb.107:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_209
.LBB0_108:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_109:                              #   in Loop: Header=BB0_5 Depth=1
	movb	(%rax), %al
	movb	%al, -400(%rbp)
	jmp	.LBB0_119
.LBB0_110:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rdi
	movb	$0, -41(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_123
# %bb.112:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	testl	%r14d, %r14d
	js	.LBB0_166
# %bb.113:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rdx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	%rdi, %r15
	callq	memchr
	movq	%r15, %r9
	movl	%eax, %ebx
	subl	%r9d, %ebx
	testq	%rax, %rax
	cmovel	%r14d, %ebx
	jmp	.LBB0_167
.LBB0_114:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	cmpq	$40, %rax
	movq	-248(%rbp), %rsi        # 8-byte Reload
	ja	.LBB0_137
# %bb.115:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	movq	(%rcx), %rbx
	jmp	.LBB0_212
.LBB0_116:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_138
# %bb.117:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_139
.LBB0_118:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%r12b, -400(%rbp)
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$0, -41(%rbp)
	movl	$1, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	-400(%rbp), %r9
	jmp	.LBB0_124
.LBB0_120:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rax
	cmpq	$40, %rax
	ja	.LBB0_172
# %bb.121:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	movswq	(%rcx), %rbx
	jmp	.LBB0_194
.LBB0_122:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	jmp	.LBB0_194
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r14d
	movl	$6, %ebx
	cmovbl	%r14d, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$.L.str.5, %r9d
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	jmp	.LBB0_242
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-400(%rbp), %rax
	xorl	%edx, %edx
	movdqa	-192(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB0_142
.LBB0_126:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_185
# %bb.127:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	movzwl	(%rax), %ebx
	jmp	.LBB0_212
.LBB0_128:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_186
# %bb.129:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_187
.LBB0_130:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	jmp	.LBB0_219
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movslq	%r14d, %rax
	movslq	(%rbx), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_188
# %bb.132:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %edx
	movl	%edx, (%rbx)
	jmp	.LBB0_189
.LBB0_133:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_134:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rbx
	orl	$2, %r11d
	movw	$30768, -114(%rbp)      # imm = 0x7830
	movl	$.L.str.4, %esi
	movl	$2, %eax
	movl	$120, %r12d
	jmp	.LBB0_223
.LBB0_135:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_190
# %bb.136:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	movzwl	(%rax), %ebx
	jmp	.LBB0_219
.LBB0_137:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	jmp	.LBB0_212
.LBB0_138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rbx
	movl	$1, %eax
	jmp	.LBB0_223
.LBB0_140:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$6, %r14d
	xorl	%edx, %edx
.LBB0_141:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %rax
.LBB0_142:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%xmm1, %rsi
	testq	%rsi, %rsi
	js	.LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_5 Depth=1
	movdqa	%xmm1, %xmm0
	jmp	.LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_5 Depth=1
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	cmpl	$97, %edi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	jne	.LBB0_159
# %bb.146:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, -168(%rbp)        # 4-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	leaq	-76(%rbp), %rdi
	callq	frexp
	mulsd	.LCPI0_1(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_148
	jp	.LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, -76(%rbp)
.LBB0_148:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$97, %r12d
	movl	$.L.str.4, %eax
	movl	$.L.str.6, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%r14d, %edi
	notl	%edi
	movl	%r14d, %ebx
	leal	1(%r14), %r11d
	leal	2(%r14), %ecx
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	17(%rax), %rdx
	movl	%r14d, %r8d
	negl	%r8d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_149:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	.LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %r15d
	movq	%rax, %rsi
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	movq	%rdx, %r9
	movl	%r8d, %r10d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	subsd	%xmm1, %xmm0
	movq	%rbx, %rax
	movslq	%r15d, %rbx
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movzbl	(%rdx,%rbx), %ebx
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movb	%bl, (%rdx,%rsi)
	movq	%rax, %rbx
	addl	$1, %edi
	leaq	1(%rsi), %rax
	movq	%r11, %rdx
	movq	%r11, -240(%rbp)        # 8-byte Spill
	addl	$-1, %r11d
	addb	$31, %cl
	cmpl	%esi, %ebx
	je	.LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_149 Depth=2
	leaq	1(%r9), %rdx
	leal	1(%r10), %r8d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_149
	jp	.LBB0_149
.LBB0_151:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	-224(%rbp), %r9         # 8-byte Reload
	leaq	(%r9,%rax), %r8
	ucomisd	.LCPI0_3(%rip), %xmm0
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	ja	.LBB0_154
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$1, %r15b
	je	.LBB0_173
# %bb.153:                              #   in Loop: Header=BB0_5 Depth=1
	ucomisd	.LCPI0_3(%rip), %xmm0
	jne	.LBB0_173
	jp	.LBB0_173
.LBB0_154:                              #   in Loop: Header=BB0_5 Depth=1
	addq	%r9, %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movb	(%rax), %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpb	15(%rdx), %cl
	jne	.LBB0_168
# %bb.155:                              # %.preheader50
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_156:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%rax)
	movq	-144(%rbp), %rdx
	leaq	-1(%rdx), %rax
	movq	%rax, -144(%rbp)
	movzbl	-1(%rdx), %edx
	cmpb	%cl, %dl
	je	.LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_5 Depth=1
	cmpb	$57, %dl
	jne	.LBB0_169
.LBB0_158:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movb	10(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB0_352
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
	cmpl	$102, %edi
	sete	%sil
	xorl	%ebx, %ebx
	cmpl	$101, %edi
	sete	%bl
	addl	%r14d, %ebx
	orl	$2, %esi
	leaq	-76(%rbp), %rcx
	leaq	-300(%rbp), %r8
	leaq	-144(%rbp), %r9
	movl	%edi, %r15d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movdqa	%xmm0, -224(%rbp)       # 16-byte Spill
	movl	%ebx, %edx
	callq	_dtoa_r
	movl	%r15d, %esi
	movq	%rax, %r9
	cmpl	$103, %r15d
	movl	-60(%rbp), %r10d        # 4-byte Reload
	jne	.LBB0_162
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %ecx
	andl	$1, %ecx
	jne	.LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %r8
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jmp	.LBB0_352
.LBB0_162:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%ebx, %rcx
	addq	%rcx, %rax
	cmpl	$102, %esi
	jne	.LBB0_176
# %bb.163:                              #   in Loop: Header=BB0_5 Depth=1
	pxor	%xmm0, %xmm0
	movapd	-224(%rbp), %xmm1       # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jne	.LBB0_164
	jnp	.LBB0_196
.LBB0_164:                              #   in Loop: Header=BB0_5 Depth=1
	cmpb	$48, (%r9)
	jne	.LBB0_196
# %bb.165:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB0_197
.LBB0_166:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %r9
	movq	%rax, %rbx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	-60(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB0_243
.LBB0_168:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %edx
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	cmpb	$57, %dl
	je	.LBB0_158
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$1, %dl
	movb	%dl, (%rax)
	jmp	.LBB0_352
.LBB0_170:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_193
# %bb.171:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	movsbq	(%rcx), %rbx
	jmp	.LBB0_194
.LBB0_172:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rbx
	jmp	.LBB0_194
.LBB0_173:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%rax, %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	addq	$1, %rbx
	testl	%ebx, %ebx
	jle	.LBB0_346
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-2, %edi
	movl	$-1, %ebx
	movl	$-1, %r9d
	cmovgl	%edi, %r9d
	addl	%r14d, %r9d
	subl	%eax, %r9d
	addl	$1, %r9d
	addq	$1, %r9
	cmpq	$31, %r9
	movq	-200(%rbp), %r15        # 8-byte Reload
	ja	.LBB0_347
# %bb.175:                              # %._crit_edge68
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_350
.LBB0_176:                              #   in Loop: Header=BB0_5 Depth=1
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movapd	-224(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB0_198
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_210
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_211
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_213
# %bb.180:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_214
.LBB0_181:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_215
# %bb.182:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_216
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_217
# %bb.184:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%rbx), %rcx
	addl	$8, %eax
	movl	%eax, (%rbx)
	jmp	.LBB0_218
.LBB0_185:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %ebx
	jmp	.LBB0_212
.LBB0_186:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	movzwl	(%rax), %ebx
	movl	$1, %eax
	jmp	.LBB0_223
.LBB0_188:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_5
.LBB0_190:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %ebx
	jmp	.LBB0_219
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_192:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rcx), %rbx
	jmp	.LBB0_194
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rbx
.LBB0_194:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %eax
	testq	%rbx, %rbx
	jns	.LBB0_224
# %bb.195:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%rbx
	movb	$45, -41(%rbp)
	jmp	.LBB0_224
.LBB0_196:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %ecx
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%ecx, %rcx
	addq	%rcx, %rax
.LBB0_198:                              #   in Loop: Header=BB0_5 Depth=1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_201
	jp	.LBB0_201
# %bb.199:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, -144(%rbp)
	movq	%rax, %r8
	jmp	.LBB0_352
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_201 Depth=2
	leaq	1(%r8), %rcx
	movq	%rcx, -144(%rbp)
	movb	$48, (%r8)
.LBB0_201:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %r8
	cmpq	%rax, %r8
	jb	.LBB0_200
	jmp	.LBB0_352
.LBB0_202:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_203:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %ebx
	jmp	.LBB0_212
.LBB0_204:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_205:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %ebx
	movl	$1, %eax
	jmp	.LBB0_223
.LBB0_206:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%rbx), %rcx
	cmpq	$40, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_403
# %bb.207:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%rbx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rbx)
	jmp	.LBB0_404
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_209:                              #   in Loop: Header=BB0_5 Depth=1
	movl	(%rcx), %ebx
	jmp	.LBB0_219
.LBB0_210:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_211:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rcx), %ebx
.LBB0_212:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB0_223
.LBB0_213:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rcx), %ebx
	movl	$1, %eax
	jmp	.LBB0_223
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_216:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	(%rax), %rax
	movw	%r14w, (%rax)
	jmp	.LBB0_5
.LBB0_217:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_218:                              #   in Loop: Header=BB0_5 Depth=1
	movzbl	(%rcx), %ebx
.LBB0_219:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$1, %r11b
	je	.LBB0_222
# %bb.220:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -114(%rbp)
	movb	%r12b, -113(%rbp)
	orl	$2, %r11d
.LBB0_222:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
	movl	$2, %eax
.LBB0_223:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$0, -41(%rbp)
.LBB0_224:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %ecx
	andl	$-129, %r11d
	testl	%r14d, %r14d
	cmovsl	%ecx, %r11d
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	jne	.LBB0_230
# %bb.225:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rbx, %rbx
	jne	.LBB0_230
# %bb.226:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	jne	.LBB0_234
# %bb.227:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %eax
	andl	$1, %eax
	je	.LBB0_234
# %bb.228:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -301(%rbp)
.LBB0_229:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-301(%rbp), %r9
	jmp	.LBB0_240
.LBB0_230:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_235
# %bb.231:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_313
# %bb.232:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-300(%rbp), %r9
	cmpl	$2, %eax
	jne	.LBB0_315
	.p2align	4, 0x90
.LBB0_233:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	andl	$15, %eax
	movzbl	(%rsi,%rax), %eax
	movb	%al, -1(%r9)
	addq	$-1, %r9
	shrq	$4, %rbx
	jne	.LBB0_233
	jmp	.LBB0_240
.LBB0_234:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-300(%rbp), %r9
.LBB0_240:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-300(%rbp), %rax
	movl	%eax, %ebx
	subl	%r9d, %ebx
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
.LBB0_242:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB0_243:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movapd	%xmm2, -192(%rbp)       # 16-byte Spill
	cmpl	%ebx, %r14d
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	cmovgel	%r14d, %ecx
	movb	-41(%rbp), %al
	cmpb	$1, %al
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r11b
	cmovel	%ecx, %edx
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, %r15d
	andl	$132, %r15d
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jne	.LBB0_251
# %bb.244:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r8d, %ebx
	subl	%edx, %ebx
	jle	.LBB0_251
# %bb.245:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %ebx
	jl	.LBB0_248
	.p2align	4, 0x90
.LBB0_246:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.247:                              #   in Loop: Header=BB0_246 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	jg	.LBB0_246
	jmp	.LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
.LBB0_249:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.250:                              #   in Loop: Header=BB0_5 Depth=1
	movb	-41(%rbp), %al
	.p2align	4, 0x90
.LBB0_251:                              #   in Loop: Header=BB0_5 Depth=1
	testb	%al, %al
	je	.LBB0_253
# %bb.252:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-41(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_253:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$2, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_255
# %bb.254:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-114(%rbp), %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$128, %r15d
	jne	.LBB0_263
# %bb.256:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	-240(%rbp), %ebx        # 4-byte Folded Reload
	jle	.LBB0_263
# %bb.257:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %ebx
	jl	.LBB0_261
# %bb.258:                              # %.preheader33
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_259:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.260:                              #   in Loop: Header=BB0_259 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_259
	jmp	.LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_262:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_263:                              #   in Loop: Header=BB0_5 Depth=1
	subl	-168(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_270
# %bb.264:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %r14d
	jl	.LBB0_268
# %bb.265:                              # %.preheader30
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_266:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.267:                              #   in Loop: Header=BB0_266 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_266
	jmp	.LBB0_269
	.p2align	4, 0x90
.LBB0_268:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_269:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_270:                              #   in Loop: Header=BB0_5 Depth=1
	testl	$256, -60(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB0_273
# %bb.271:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-168(%rbp), %rcx        # 4-byte Folded Reload
.LBB0_272:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_294
	.p2align	4, 0x90
.LBB0_273:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$102, %r12d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jl	.LBB0_285
# %bb.274:                              #   in Loop: Header=BB0_5 Depth=1
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI0_5, %xmm0
	jne	.LBB0_305
	jp	.LBB0_305
# %bb.275:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.276:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$1, -60(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_278
# %bb.277:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, -76(%rbp)
	jge	.LBB0_295
.LBB0_278:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.279:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB0_295
# %bb.280:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$18, %eax
	jl	.LBB0_338
# %bb.281:                              # %.preheader13
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	15(%rax), %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_282:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.283:                              #   in Loop: Header=BB0_282 Depth=2
	addl	$-16, %ebx
	cmpl	$32, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_282
# %bb.284:                              # %.loopexit15
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %ebx
	jmp	.LBB0_340
.LBB0_285:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$1, -112(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_287
# %bb.286:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %ecx         # 4-byte Reload
	andl	$1, %ecx
	je	.LBB0_292
.LBB0_287:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.288:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.289:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	leal	-1(%rax), %ebx
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI0_5, %xmm0
	jne	.LBB0_290
	jnp	.LBB0_316
.LBB0_290:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movslq	%ebx, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_291:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
.LBB0_292:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_293:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-280(%rbp), %rcx        # 4-byte Folded Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-83(%rbp), %rdx
.LBB0_294:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_295:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$4, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_303
# %bb.296:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	-240(%rbp), %ebx        # 4-byte Folded Reload
	jle	.LBB0_303
# %bb.297:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %ebx
	jl	.LBB0_301
# %bb.298:                              # %.preheader10
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_299:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.300:                              #   in Loop: Header=BB0_299 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_299
	jmp	.LBB0_302
.LBB0_301:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_302:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_303:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	-240(%rbp), %r14d       # 4-byte Reload
	cmpl	%r14d, %eax
	cmovgel	%eax, %r14d
	addl	-148(%rbp), %r14d       # 4-byte Folded Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	je	.LBB0_5
# %bb.304:                              #   in Loop: Header=BB0_5 Depth=1
	callq	free
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	jmp	.LBB0_5
.LBB0_305:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -76(%rbp)
	jle	.LBB0_330
# %bb.306:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, %r14d
	cmovgl	%ecx, %r14d
	testl	%r14d, %r14d
	jle	.LBB0_308
# %bb.307:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_308:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r14d, %r14d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movq	-104(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	%r14d, %ebx
	jle	.LBB0_344
# %bb.309:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %ebx
	jl	.LBB0_342
# %bb.310:                              # %.preheader24
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_311:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.312:                              #   in Loop: Header=BB0_311 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_311
	jmp	.LBB0_343
.LBB0_235:                              # %.preheader39
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-301(%rbp), %rax
	.p2align	4, 0x90
.LBB0_236:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %rbx
	addq	$-1, %rax
	testq	%rbx, %rbx
	jne	.LBB0_236
# %bb.237:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	1(%rax), %r9
	testb	$1, %r11b
	je	.LBB0_240
# %bb.238:                              #   in Loop: Header=BB0_5 Depth=1
	cmpb	$48, %cl
	je	.LBB0_240
# %bb.239:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, (%rax)
	movq	%rax, %r9
	jmp	.LBB0_240
.LBB0_313:                              #   in Loop: Header=BB0_5 Depth=1
	cmpq	$10, %rbx
	jae	.LBB0_323
# %bb.314:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$48, %bl
	movb	%bl, -301(%rbp)
	jmp	.LBB0_229
.LBB0_315:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.7, %edi
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movq	%r8, %rbx
	movl	%r11d, %r15d
	callq	strlen
	movl	$.L.str.7, %r9d
	movl	%r15d, %r11d
	movq	%rbx, %r8
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	%rax, %rbx
	jmp	.LBB0_241
.LBB0_316:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$2, %eax
	jl	.LBB0_293
# %bb.317:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$18, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jl	.LBB0_322
# %bb.318:                              # %.preheader27
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	15(%rax), %ebx
	.p2align	4, 0x90
.LBB0_319:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.320:                              #   in Loop: Header=BB0_319 Depth=2
	addl	$-16, %ebx
	cmpl	$32, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_319
# %bb.321:                              # %.loopexit29
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %ebx
.LBB0_322:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%ebx, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_291
.LBB0_323:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	-300(%rbp), %r9
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	jmp	.LBB0_325
	.p2align	4, 0x90
.LBB0_324:                              #   in Loop: Header=BB0_325 Depth=2
	cmpq	$9, %r15
	jbe	.LBB0_240
.LBB0_325:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r15
	movabsq	$-3689348814741910323, %rcx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %rbx
	shrq	$3, %rbx
	leal	(%rbx,%rbx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	orb	$48, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movb	%cl, -1(%r9)
	addq	$-1, %r9
	testl	$1024, %r11d            # imm = 0x400
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	je	.LBB0_324
# %bb.326:                              #   in Loop: Header=BB0_325 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.LBB0_324
# %bb.327:                              #   in Loop: Header=BB0_325 Depth=2
	cmpq	$10, %r15
	jb	.LBB0_324
# %bb.328:                              #   in Loop: Header=BB0_325 Depth=2
	cmpb	$127, %al
	je	.LBB0_324
# %bb.329:                              #   in Loop: Header=BB0_325 Depth=2
	addq	-240(%rbp), %r9         # 8-byte Folded Reload
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_324
.LBB0_330:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.331:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	-112(%rbp), %eax        # 4-byte Folded Reload
	orl	-76(%rbp), %eax
	je	.LBB0_295
# %bb.332:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.333:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB0_407
# %bb.334:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %ebx
	negl	%ebx
	cmpl	$-17, %eax
	jg	.LBB0_405
# %bb.335:                              # %.preheader16
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_336:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.337:                              #   in Loop: Header=BB0_336 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_336
	jmp	.LBB0_406
.LBB0_338:                              #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%rax), %ebx
	jmp	.LBB0_339
.LBB0_342:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_343:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_344:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-104(%rbp), %r15        # 4-byte Folded Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %r15
	movl	-60(%rbp), %eax         # 4-byte Reload
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB0_422
# %bb.345:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-160(%rbp), %rsi        # 8-byte Reload
	jmp	.LBB0_437
.LBB0_422:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-200(%rbp), %rbx        # 8-byte Reload
	testl	%ebx, %ebx
	setg	%cl
	movslq	-112(%rbp), %rax        # 4-byte Folded Reload
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rdi        # 8-byte Reload
	testl	%edi, %edi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	jle	.LBB0_423
	jmp	.LBB0_424
.LBB0_346:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	jmp	.LBB0_352
.LBB0_347:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$-2, %edi
	cmovlel	%ebx, %edi
	leal	(%r14,%rdi), %edx
	subl	%eax, %edx
	addl	$2, %edx
	andl	$31, %edx
	addl	%edi, %r11d
	addb	%dil, %cl
	movzbl	%cl, %ecx
	andl	$31, %ecx
	subq	%rcx, %r11
	addq	-224(%rbp), %r11        # 8-byte Folded Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%edx, %edi
	subl	%r9d, %edi
	addl	%ecx, %edi
	cmpl	$-2, %r10d
	cmovgl	%r10d, %ebx
	leaq	1(%rax,%r11), %r8
	movq	-240(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movzbl	%al, %ecx
	andl	$31, %ecx
	movl	%r14d, %eax
	subl	%esi, %eax
	addl	%ebx, %eax
	notq	%rax
	addq	%rcx, %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_348:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	.LCPI0_4(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	movupd	%xmm0, -16(%rcx)
	movupd	%xmm0, (%rcx)
	addq	$32, %rcx
	addq	$32, %rax
	jne	.LBB0_348
# %bb.349:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%edx, %edx
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	je	.LBB0_352
.LBB0_350:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$1, %edi
	.p2align	4, 0x90
.LBB0_351:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%r8)
	addq	$1, %r8
	addl	$-1, %edi
	testl	%edi, %edi
	jg	.LBB0_351
.LBB0_352:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %r11d
	orl	$256, %r11d             # imm = 0x100
	subl	%r9d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %esi
	jne	.LBB0_364
# %bb.353:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %edx
	addl	$-2, %r12d
	cmpl	$-3, %edx
	jl	.LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$103, %eax
	cmpl	%r14d, %edx
	jle	.LBB0_370
	jmp	.LBB0_355
.LBB0_364:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$70, %r12d
	jne	.LBB0_355
# %bb.365:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %edx
	jmp	.LBB0_367
.LBB0_355:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$101, %r12d
	jg	.LBB0_366
# %bb.356:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movl	-76(%rbp), %ecx
	leal	-1(%rcx), %edx
	movl	%r12d, %eax
	orl	$32, %eax
	leal	15(%r12), %esi
	cmpl	$97, %eax
	movzbl	%sil, %esi
	cmovnel	%r12d, %esi
	movl	%edx, -76(%rbp)
	movb	%sil, -83(%rbp)
	movl	$1, %ebx
	subl	%ecx, %ebx
	testl	%ecx, %ecx
	setle	%cl
	cmovgl	%edx, %ebx
	addb	%cl, %cl
	addb	$43, %cl
	movb	%cl, -82(%rbp)
	movq	%r8, %r9
	cmpl	$10, %ebx
	jl	.LBB0_376
# %bb.357:                              # %.preheader47
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$-1, %r15
	xorl	%r14d, %r14d
	leaq	-120(%rbp), %rdx
	.p2align	4, 0x90
.LBB0_358:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	movslq	%ebx, %rsi
	imulq	$1717986919, %rsi, %rbx # imm = 0x66666667
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$34, %rbx
	addl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	leal	(%rax,%rax,4), %ecx
	movl	%esi, %eax
	subl	%ecx, %eax
	addb	$48, %al
	addq	$-1, %r14
	movb	%al, -138(%rbp,%rdi)
	addq	$1, %r15
	addq	$-1, %rdx
	cmpl	$99, %esi
	jg	.LBB0_358
# %bb.359:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$48, %bl
	movb	%bl, -138(%rbp,%r14)
	leaq	1(%r14), %r8
	leaq	-81(%rbp), %rcx
	cmpq	$1, %r8
	jg	.LBB0_379
# %bb.360:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%bl, -81(%rbp)
	leaq	-80(%rbp), %rcx
	testq	%r14, %r14
	je	.LBB0_379
# %bb.361:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%al, -80(%rbp)
	leaq	-79(%rbp), %rcx
	testq	%r8, %r8
	jns	.LBB0_379
# %bb.362:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rbx
	notq	%rbx
	cmpq	$32, %rbx
	jae	.LBB0_408
# %bb.363:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-79(%rbp), %rsi
	jmp	.LBB0_420
.LBB0_366:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %edx
	movl	%r12d, %eax
	cmpl	$102, %r12d
	jne	.LBB0_370
.LBB0_367:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %eax
	andl	$1, %eax
	orl	%r14d, %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB0_374
# %bb.368:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$102, %r12d
	testl	%eax, %eax
	je	.LBB0_380
# %bb.369:                              #   in Loop: Header=BB0_5 Depth=1
	addl	-232(%rbp), %r14d       # 4-byte Folded Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addl	%edx, %r14d
	movl	%r14d, %ebx
	jmp	.LBB0_381
.LBB0_370:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%r8d, %edx
	jge	.LBB0_373
# %bb.371:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-232(%rbp), %rcx        # 8-byte Reload
	leal	(%r8,%rcx), %ebx
	testl	%edx, %edx
	movq	-160(%rbp), %r14        # 8-byte Reload
	jle	.LBB0_392
# %bb.372:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %r12d
	jmp	.LBB0_382
.LBB0_373:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %ebx
	andl	$1, %ebx
	negl	%ebx
	andl	-232(%rbp), %ebx        # 4-byte Folded Reload
	addl	%edx, %ebx
	movl	%eax, %r12d
	jmp	.LBB0_381
.LBB0_374:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	je	.LBB0_395
# %bb.375:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	addq	$1, %rbx
	jmp	.LBB0_396
.LBB0_376:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-81(%rbp), %rcx
	cmpl	$97, %eax
	je	.LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -81(%rbp)
	leaq	-80(%rbp), %rcx
.LBB0_378:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$48, %bl
	movb	%bl, (%rcx)
	addq	$1, %rcx
.LBB0_379:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-83(%rbp), %rax
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	%r9, %r8
	cmpl	$2, %r8d
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ebx
	movl	$0, %edx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cmovll	%esi, %ebx
	testb	$1, %r10b
	cmovnel	%eax, %ebx
	addl	%r8d, %ebx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	addl	%ecx, %ebx
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jmp	.LBB0_398
.LBB0_380:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %ebx
.LBB0_381:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-160(%rbp), %r14        # 8-byte Reload
.LBB0_382:                              #   in Loop: Header=BB0_5 Depth=1
	testl	$1024, %r10d            # imm = 0x400
	je	.LBB0_391
# %bb.383:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%edx, %edx
	jle	.LBB0_391
# %bb.384:                              #   in Loop: Header=BB0_5 Depth=1
	movsbl	(%r14), %eax
	xorl	%edi, %edi
	cmpl	$127, %eax
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movl	%r11d, -240(%rbp)       # 4-byte Spill
	je	.LBB0_393
# %bb.385:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
	cmpl	%eax, %edx
	jle	.LBB0_394
# %bb.386:                              # %.preheader48
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_387:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r11
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r14)
	sete	%r10b
	setne	%bl
	je	.LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_387 Depth=2
	addq	$1, %r14
.LBB0_389:                              #   in Loop: Header=BB0_387 Depth=2
	subl	%eax, %edx
	movb	%bl, %sil
	addl	%esi, %edi
	movb	%r10b, %cl
	movq	%r11, %rsi
	addl	%ecx, %esi
	movsbl	(%r14), %eax
	cmpl	$127, %eax
	je	.LBB0_394
# %bb.390:                              #   in Loop: Header=BB0_387 Depth=2
	cmpl	%eax, %edx
	jg	.LBB0_387
	jmp	.LBB0_394
.LBB0_391:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_397
.LBB0_392:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	subl	%edx, %ebx
	addl	$1, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %r12d
	jmp	.LBB0_397
.LBB0_393:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
.LBB0_394:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r14, -160(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	leal	(%rsi,%rdi), %eax
	movq	-256(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%eax, %ecx
	movq	-168(%rbp), %rbx        # 8-byte Reload
	addl	%ecx, %ebx
	movl	-240(%rbp), %r11d       # 4-byte Reload
	jmp	.LBB0_398
.LBB0_395:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ebx
.LBB0_396:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$102, %r12d
.LBB0_397:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
.LBB0_398:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, -112(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	testq	%r15, %r15
	js	.LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB0_243
.LBB0_400:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB0_243
.LBB0_401:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_402:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rax
	movl	%r14d, (%rax)
	jmp	.LBB0_5
.LBB0_403:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_404:                              #   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rax
	movb	%r14b, (%rax)
	jmp	.LBB0_5
.LBB0_405:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_406:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
.LBB0_407:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-112(%rbp), %rcx        # 4-byte Folded Reload
	jmp	.LBB0_272
.LBB0_408:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-79(%rbp), %rax
	leaq	-137(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_410
# %bb.409:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-80(%rbp), %rax
	subq	%r14, %rax
	leaq	(%r14,%rbp), %rcx
	addq	$-136, %rcx
	leaq	-79(%rbp), %rsi
	cmpq	%rax, %rcx
	jb	.LBB0_420
.LBB0_410:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rax
	movq	%rax, %r10
	shrq	$5, %r10
	addq	$1, %r10
	cmpq	$96, %rax
	jae	.LBB0_412
# %bb.411:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_414
.LBB0_412:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-24(%rbp), %rax
	addq	%r14, %rax
	negq	%rdi
	andq	$-32, %rdi
	addq	$-32, %rdi
	shrq	$5, %rdi
	leal	1(%rdi), %ecx
	movzbl	%cl, %ecx
	andl	$3, %ecx
	notq	%rdi
	addq	%rcx, %rdi
	xorl	%ebx, %ebx
.LBB0_413:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-112(%rax,%rbx), %xmm0
	movups	-96(%rax,%rbx), %xmm1
	movups	%xmm0, -79(%rbp,%rbx)
	movups	%xmm1, -63(%rbp,%rbx)
	movups	-80(%rax,%rbx), %xmm0
	movups	-64(%rax,%rbx), %xmm1
	movups	%xmm0, -47(%rbp,%rbx)
	movups	%xmm1, -31(%rbp,%rbx)
	movups	-48(%rax,%rbx), %xmm0
	movups	-32(%rax,%rbx), %xmm1
	movups	%xmm0, -15(%rbp,%rbx)
	movups	%xmm1, 1(%rbp,%rbx)
	movupd	-16(%rax,%rbx), %xmm0
	movupd	(%rax,%rbx), %xmm1
	movupd	%xmm0, 17(%rbp,%rbx)
	movupd	%xmm1, 33(%rbp,%rbx)
	subq	$-128, %rbx
	addq	$4, %rdi
	jne	.LBB0_413
.LBB0_414:                              #   in Loop: Header=BB0_5 Depth=1
	testb	$3, %r10b
	je	.LBB0_417
# %bb.415:                              # %.preheader44
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	%rbx, %rdx
	leaq	-63(%rbp), %rax
	addq	%rbx, %rax
	movl	%r15d, %ecx
	andb	$96, %cl
	addb	$-32, %cl
	shrb	$5, %cl
	addb	$1, %cl
	movzbl	%cl, %r10d
	andl	$3, %r10d
	shlq	$5, %r10
	xorl	%edi, %edi
.LBB0_416:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-16(%rdx,%rdi), %xmm0
	movupd	(%rdx,%rdi), %xmm1
	movupd	%xmm0, -16(%rax,%rdi)
	movupd	%xmm1, (%rax,%rdi)
	addq	$32, %rbx
	addq	$32, %rdi
	cmpq	%rdi, %r10
	jne	.LBB0_416
.LBB0_417:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-79(%rbp), %rax
	leaq	(%rax,%r8), %rsi
	cmpq	%r8, -168(%rbp)         # 8-byte Folded Reload
	jne	.LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, %rcx
	movl	-60(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB0_379
.LBB0_419:                              #   in Loop: Header=BB0_5 Depth=1
	andq	$-32, %r15
	leaq	(%r15,%r14), %r8
	addq	$1, %r8
	movl	-60(%rbp), %r10d        # 4-byte Reload
.LBB0_420:                              #   in Loop: Header=BB0_5 Depth=1
	addq	$-1, %r8
	movq	%rsi, %rcx
.LBB0_421:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-136(%rbp,%r8), %eax
	movb	%al, (%rcx)
	addq	$1, %rcx
	addq	$1, %r8
	cmpq	$-1, %r8
	jl	.LBB0_421
	jmp	.LBB0_379
.LBB0_339:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_340:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%ebx, %rcx
.LBB0_341:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_294
.LBB0_423:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%ebx, %ebx
	jle	.LBB0_436
.LBB0_424:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_430 Depth 3
	movq	%rbx, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	leaq	-1(%rsi), %r12
	movb	%cl, -168(%rbp)         # 1-byte Spill
	testb	$1, %cl
	cmovneq	%rsi, %r12
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.425:                              #   in Loop: Header=BB0_424 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r14d
	subl	%r15d, %r14d
	movb	(%r12), %al
	movsbl	%al, %ebx
	cmpl	%ebx, %r14d
	cmovgl	%ebx, %r14d
	testl	%r14d, %r14d
	jle	.LBB0_428
# %bb.426:                              #   in Loop: Header=BB0_424 Depth=2
	movslq	%r14d, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.427:                              #   in Loop: Header=BB0_424 Depth=2
	movb	(%r12), %al
	movsbl	%al, %ebx
.LBB0_428:                              #   in Loop: Header=BB0_424 Depth=2
	testl	%r14d, %r14d
	movl	$0, %ecx
	cmovsl	%ecx, %r14d
	subl	%r14d, %ebx
	movq	%r12, %rsi
	jle	.LBB0_435
# %bb.429:                              #   in Loop: Header=BB0_424 Depth=2
	cmpl	$17, %ebx
	jl	.LBB0_432
	.p2align	4, 0x90
.LBB0_430:                              #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_424 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.431:                              #   in Loop: Header=BB0_430 Depth=3
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	jg	.LBB0_430
	jmp	.LBB0_433
.LBB0_432:                              #   in Loop: Header=BB0_424 Depth=2
	movl	%ebx, %eax
.LBB0_433:                              #   in Loop: Header=BB0_424 Depth=2
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.434:                              #   in Loop: Header=BB0_424 Depth=2
	movq	%r12, %rsi
	movb	(%r12), %al
.LBB0_435:                              #   in Loop: Header=BB0_424 Depth=2
	movb	-168(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %ecx
	notb	%dl
	movzbl	%dl, %edx
	andl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	subl	%edx, %edi
	andl	$1, %ecx
	movq	-200(%rbp), %rbx        # 8-byte Reload
	subl	%ecx, %ebx
	movsbq	%al, %rax
	addq	%rax, %r15
	testl	%ebx, %ebx
	setg	%cl
	testl	%edi, %edi
	jle	.LBB0_423
	jmp	.LBB0_424
.LBB0_436:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, %r15
	cmovaq	%rax, %r15
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
.LBB0_437:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	testb	$1, %al
	jne	.LBB0_439
# %bb.438:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %ecx
	cmpl	-112(%rbp), %ecx        # 4-byte Folded Reload
	jge	.LBB0_441
.LBB0_439:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.440:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-76(%rbp), %ecx
	movq	-224(%rbp), %rdx        # 8-byte Reload
.LBB0_441:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	%eax, %edx
	subl	%r15d, %edx
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	testl	%edx, %edx
	jle	.LBB0_444
# %bb.442:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rbx
	movslq	%edx, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.443:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	-76(%rbp), %eax
	movq	%rbx, %rdx
.LBB0_444:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edx, %ebx
	negl	%ebx
	testl	%edx, %edx
	movl	$0, %ecx
	cmovlel	%ecx, %ebx
	addl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_295
# %bb.445:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$17, %ebx
	jl	.LBB0_450
# %bb.446:                              # %.preheader19
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_447:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB0_451
# %bb.448:                              #   in Loop: Header=BB0_447 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_447
# %bb.449:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	jmp	.LBB0_341
.LBB0_450:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %eax
	jmp	.LBB0_339
.LBB0_451:
	movq	-208(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_453
# %bb.452:
	callq	free
.LBB0_453:
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB0_454:
	movl	-148(%rbp), %r14d       # 4-byte Reload
.LBB0_455:
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r14d, %eax
.LBB0_456:
	movl	$42, __A_VARIABLE(%rip)
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_457:                              # %.loopexit6
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_455
.LBB0_458:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_456
.LBB0_67:
	movq	-56(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	jmp	.LBB0_454
.Lfunc_end0:
	.size	_svfprintf_r, .Lfunc_end0-_svfprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_457
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_31
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_33
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_34
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_37
	.quad	.LBB0_39
	.quad	.LBB0_118
	.quad	.LBB0_48
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_40
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_25
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_49
	.quad	.LBB0_118
	.quad	.LBB0_53
	.quad	.LBB0_73
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_41
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_81
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_55
	.quad	.LBB0_118
	.quad	.LBB0_87
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_93
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_49
	.quad	.LBB0_118
	.quad	.LBB0_53
	.quad	.LBB0_74
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_42
	.quad	.LBB0_74
	.quad	.LBB0_44
	.quad	.LBB0_118
	.quad	.LBB0_43
	.quad	.LBB0_118
	.quad	.LBB0_96
	.quad	.LBB0_82
	.quad	.LBB0_101
	.quad	.LBB0_44
	.quad	.LBB0_118
	.quad	.LBB0_55
	.quad	.LBB0_44
	.quad	.LBB0_88
	.quad	.LBB0_118
	.quad	.LBB0_118
	.quad	.LBB0_103
	.quad	.LBB0_118
	.quad	.LBB0_44
                                        # -- End function
	.type	_svfprintf_r.blanks,@object # @_svfprintf_r.blanks
	.p2align	4
_svfprintf_r.blanks:
	.zero	16,32
	.size	_svfprintf_r.blanks, 16

	.type	_svfprintf_r.zeroes,@object # @_svfprintf_r.zeroes
	.p2align	4
_svfprintf_r.zeroes:
	.zero	16,48
	.size	_svfprintf_r.zeroes, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INF"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"inf"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"NAN"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"nan"
	.size	.L.str.3, 4

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"0123456789abcdef"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(null)"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0"
	.size	.L.str.8, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
