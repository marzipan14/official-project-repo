	.text
	.file	"vfprintf.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _svfprintf_r
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4593671619917905920     # double 0.125
.LCPI0_2:
	.quad	4625196817309499392     # double 16
.LCPI0_3:
	.quad	4602678819172646912     # double 0.5
.LCPI0_4:
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
	subq	$376, %rsp              # imm = 0x178
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	_localeconv_r
	movq	(%rax), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -208(%rbp)        # 8-byte Spill
	cmpb	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_4
# %bb.1:
	cmpq	$0, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.2:
	movl	$64, %edi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rax, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_474
# %bb.3:
	movl	$64, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r12), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	pxor	%xmm0, %xmm0
	movl	$0, -148(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, -80(%rbp)         # 8-byte Spill
	movq	%r12, -304(%rbp)        # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
                                        #             Child Loop BB0_23 Depth 6
                                        #           Child Loop BB0_29 Depth 5
                                        #     Child Loop BB0_308 Depth 2
                                        #     Child Loop BB0_320 Depth 2
                                        #     Child Loop BB0_310 Depth 2
                                        #     Child Loop BB0_220 Depth 2
                                        #     Child Loop BB0_157 Depth 2
                                        #     Child Loop BB0_164 Depth 2
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_264 Depth 2
                                        #     Child Loop BB0_231 Depth 2
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_340 Depth 2
                                        #     Child Loop BB0_353 Depth 2
                                        #     Child Loop BB0_360 Depth 2
                                        #     Child Loop BB0_412 Depth 2
                                        #     Child Loop BB0_407 Depth 2
                                        #     Child Loop BB0_435 Depth 2
                                        #       Child Loop BB0_442 Depth 3
                                        #     Child Loop BB0_461 Depth 2
                                        #     Child Loop BB0_423 Depth 2
                                        #     Child Loop BB0_376 Depth 2
                                        #     Child Loop BB0_393 Depth 2
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	je	.LBB0_9
# %bb.6:                                # %.preheader9
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rbx
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %r14
	subq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	movdqa	%xmm0, -176(%rbp)       # 16-byte Spill
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rdx, %r13
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_479
# %bb.12:                               #   in Loop: Header=BB0_5 Depth=1
	addl	%r14d, -148(%rbp)       # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	movq	%r13, %rdx
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_479
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=1
	addq	$1, %rbx
	movb	$0, -41(%rbp)
	movl	$-1, %r14d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
.LBB0_15:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
                                        #             Child Loop BB0_23 Depth 6
                                        #           Child Loop BB0_29 Depth 5
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_17 Depth 4
                                        #           Child Loop BB0_19 Depth 5
                                        #             Child Loop BB0_23 Depth 6
                                        #           Child Loop BB0_29 Depth 5
	movb	(%rbx), %al
	addq	$1, %rbx
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_19 Depth 5
                                        #             Child Loop BB0_23 Depth 6
                                        #           Child Loop BB0_29 Depth 5
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %r13d
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=5
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_17 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_23 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %r13d
	jne	.LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=5
	movsbl	(%rbx), %r13d
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %r13d
	je	.LBB0_36
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %eax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	ja	.LBB0_18
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB0_19 Depth=5
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_23:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_17 Depth=4
                                        #           Parent Loop BB0_19 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r14,%r14,4), %ecx
	leal	(%rax,%rcx,2), %r14d
	movsbl	(%rbx), %r13d
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jb	.LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_19 Depth=5
	testl	%r14d, %r14d
	jns	.LBB0_18
# %bb.25:                               #   in Loop: Header=BB0_19 Depth=5
	movl	$-1, %r14d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=4
	leal	-32(%r13), %eax
	cmpl	$90, %eax
	ja	.LBB0_123
# %bb.27:                               #   in Loop: Header=BB0_17 Depth=4
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_28:                               #   in Loop: Header=BB0_17 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_29:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        #       Parent Loop BB0_16 Depth=3
                                        #         Parent Loop BB0_17 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%r13,%rax,2), %esi
	movzbl	(%rbx), %eax
	addq	$1, %rbx
	movsbl	%al, %r13d
	leal	-48(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB0_29
	jmp	.LBB0_17
.LBB0_30:                               #   in Loop: Header=BB0_16 Depth=3
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_16 Depth=3
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_16 Depth=3
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB0_33:                               #   in Loop: Header=BB0_16 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB0_16
# %bb.34:                               #   in Loop: Header=BB0_15 Depth=2
	negl	%esi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_35:                               # %.loopexit1
                                        #   in Loop: Header=BB0_15 Depth=2
	orl	$4, %r9d
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_15 Depth=2
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_15 Depth=2
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_39
	.p2align	4, 0x90
.LBB0_38:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB0_39:                               #   in Loop: Header=BB0_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r14d
	cmpl	$-2, %r14d
	movl	$-1, %eax
	cmovlel	%eax, %r14d
	jmp	.LBB0_15
.LBB0_40:                               #   in Loop: Header=BB0_15 Depth=2
	cmpb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_15
# %bb.41:                               #   in Loop: Header=BB0_15 Depth=2
	movb	$32, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_42:                               #   in Loop: Header=BB0_15 Depth=2
	orl	$1, %r9d
	jmp	.LBB0_15
.LBB0_43:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movdqa	%xmm0, -176(%rbp)       # 16-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	movq	%r13, -232(%rbp)        # 8-byte Spill
	testq	%r13, %r13
	je	.LBB0_15
# %bb.44:                               #   in Loop: Header=BB0_15 Depth=2
	cmpq	$0, -128(%rbp)          # 8-byte Folded Reload
	je	.LBB0_15
# %bb.45:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_15
# %bb.46:                               #   in Loop: Header=BB0_15 Depth=2
	orl	$1024, %r9d             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_47:                               #   in Loop: Header=BB0_15 Depth=2
	movb	$43, -41(%rbp)
	jmp	.LBB0_15
.LBB0_48:                               #   in Loop: Header=BB0_15 Depth=2
	orl	$128, %r9d
	jmp	.LBB0_15
.LBB0_49:                               #   in Loop: Header=BB0_15 Depth=2
	orl	$8, %r9d
	jmp	.LBB0_15
.LBB0_50:                               #   in Loop: Header=BB0_15 Depth=2
	leaq	1(%rbx), %rax
	cmpb	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edi
	cmovel	%ecx, %edi
	cmoveq	%rax, %rbx
	orl	%edi, %r9d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_51:                               #   in Loop: Header=BB0_15 Depth=2
	leaq	1(%rbx), %rax
	cmpb	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_52:                               #   in Loop: Header=BB0_15 Depth=2
	orl	$16, %r9d
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r9b
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_56
# %bb.54:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	4(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %r15d
	cmpq	$160, %rcx
	ja	.LBB0_61
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r12)
	jmp	.LBB0_62
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %r15d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-312(%rbp)
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_63
.LBB0_57:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_111
# %bb.58:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_112
.LBB0_59:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_113
# %bb.60:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_114
.LBB0_61:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB0_63:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm0, -176(%rbp)       # 16-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_5 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	-176(%rbp), %xmm1       # 16-byte Reload
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	jbe	.LBB0_66
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_66:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	movl	$.L.str.1, %edi
	cmovlq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r9d
	andl	$-129, %r9d
	movl	$3, %edx
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rsi        # 8-byte Reload
	jmp	.LBB0_332
.LBB0_67:                               #   in Loop: Header=BB0_5 Depth=1
	movaps	-176(%rbp), %xmm0       # 16-byte Reload
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_71
# %bb.68:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %r12d
	orl	$32, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r12d
	movl	%r15d, %ecx
	jne	.LBB0_74
# %bb.69:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$97, %r13d
	sete	%al
	movb	$48, -114(%rbp)
	shlb	$5, %al
	orb	$88, %al
	movb	%al, -113(%rbp)
	orl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %r14d
	jl	.LBB0_131
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	leal	1(%r14), %eax
	movslq	%eax, %rdi
	movl	%ecx, %r15d
	callq	malloc
	movl	%r15d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edx
	movq	%rax, %rsi
	testq	%rax, %rax
	movdqa	-176(%rbp), %xmm1       # 16-byte Reload
	jne	.LBB0_149
	jmp	.LBB0_483
.LBB0_71:                               #   in Loop: Header=BB0_5 Depth=1
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	movq	%xmm0, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	%r15d, %r9d
	jns	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %edi
	cmovlq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	andl	$-129, %r9d
	movl	$3, %edx
	xorl	%r10d, %r10d
	jmp	.LBB0_130
.LBB0_74:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	movdqa	-176(%rbp), %xmm1       # 16-byte Reload
	je	.LBB0_148
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-104(%rbp), %rax        # 8-byte Reload
	jne	.LBB0_150
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %edx
	cmpl	$103, %r12d
	je	.LBB0_149
	jmp	.LBB0_150
.LBB0_77:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_78:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_83
# %bb.79:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB0_125
# %bb.80:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_184
# %bb.81:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_207
# %bb.82:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_208
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_127
# %bb.84:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_128
.LBB0_85:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$79, %r13d
.LBB0_86:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_117
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB0_132
# %bb.88:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_191
# %bb.89:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_274
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_275
.LBB0_91:                               #   in Loop: Header=BB0_5 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$85, %r13d
.LBB0_92:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_119
# %bb.93:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB0_134
# %bb.94:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_193
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_276
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_277
.LBB0_97:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.6, %edi
	jmp	.LBB0_106
.LBB0_98:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_136
# %bb.99:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB0_195
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	movq	-128(%rbp), %rsi        # 8-byte Reload
	jne	.LBB0_278
# %bb.101:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_469
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_470
.LBB0_103:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_138
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_139
.LBB0_105:                              # %.loopexit5
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.4, %edi
.LBB0_106:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_121
# %bb.107:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB0_140
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB0_197
# %bb.109:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_280
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_281
.LBB0_111:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_112:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %al
	movb	%al, -416(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %edx
	xorl	%r10d, %r10d
	leaq	-416(%rbp), %rdi
	jmp	.LBB0_130
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_114:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_129
# %bb.115:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movdqa	%xmm0, -176(%rbp)       # 16-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_177
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rdx
	xorl	%esi, %esi
	movq	%r12, %r15
	movq	%rdi, %r12
	callq	memchr
	xorl	%r10d, %r10d
	movq	%r12, %rdi
	movq	%r15, %r12
	movl	%eax, %edx
	subl	%edi, %edx
	testq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%r14d, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_178
.LBB0_117:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_142
# %bb.118:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_143
.LBB0_119:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_144
# %bb.120:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_145
.LBB0_121:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_146
# %bb.122:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_147
.LBB0_123:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB0_479
# %bb.124:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%r13b, -416(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %edx
	xorl	%r10d, %r10d
	leaq	-416(%rbp), %rdi
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_332
.LBB0_125:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_186
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_187
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_128:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB0_211
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r14d
	movl	$6, %edx
	cmovbl	%r14d, %edx
	xorl	%r10d, %r10d
	movl	$.L.str.5, %edi
.LBB0_130:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_331
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-416(%rbp), %rax
	xorl	%esi, %esi
	movl	%r14d, %edx
	movdqa	-176(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB0_149
.LBB0_132:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_199
# %bb.133:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_200
.LBB0_134:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_201
# %bb.135:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_202
.LBB0_136:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-148(%rbp), %rax        # 4-byte Folded Reload
	movslq	(%r12), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_203
# %bb.137:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r12), %rcx
	addl	$8, %edx
	movl	%edx, (%r12)
	jmp	.LBB0_204
.LBB0_138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	orl	$2, %r9d
	movw	$30768, -114(%rbp)      # imm = 0x7830
	movl	$.L.str.4, %r12d
	movl	$2, %eax
	movl	$120, %r13d
	jmp	.LBB0_296
.LBB0_140:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_205
# %bb.141:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_206
.LBB0_142:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_143:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB0_284
.LBB0_144:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB0_287
.LBB0_146:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB0_292
.LBB0_148:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	-104(%rbp), %rax        # 8-byte Reload
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r14d
.LBB0_150:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%xmm1, %rdx
	testq	%rdx, %rdx
	js	.LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_5 Depth=1
	movdqa	%xmm1, %xmm0
	jmp	.LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_5 Depth=1
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
.LBB0_153:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r12d
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_165
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, -112(%rbp)       # 4-byte Spill
	movq	%rax, %r12
	movl	%ecx, %r15d
	leaq	-84(%rbp), %rdi
	callq	frexp
	mulsd	.LCPI0_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_156
	jp	.LBB0_156
# %bb.155:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_156:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$97, %r13d
	movl	$.L.str.4, %ecx
	movl	$.L.str.6, %r8d
	cmoveq	%rcx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r10d
	xorl	%esi, %esi
	movl	%r15d, %r11d
	movq	%r12, %rdi
	.p2align	4, 0x90
.LBB0_157:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	.LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	movq	%rsi, %rdx
	subsd	%xmm1, %xmm0
	movslq	%ecx, %rsi
	movzbl	(%r8,%rsi), %eax
	movb	%al, (%rdi,%rdx)
	leaq	1(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r10d
	je	.LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_157 Depth=2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_157
	jp	.LBB0_157
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rdi,%rsi), %r9
	ucomisd	.LCPI0_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	-112(%rbp), %r12d       # 4-byte Reload
	ja	.LBB0_169
# %bb.160:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI0_3(%rip), %xmm0
	jne	.LBB0_162
	jp	.LBB0_162
# %bb.161:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB0_169
.LBB0_162:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%rsi, %r10
	addq	$1, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jle	.LBB0_213
# %bb.163:                              # %.preheader56
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	subl	%edx, %eax
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	movq	%r9, %rsi
	.p2align	4, 0x90
.LBB0_164:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%rsi)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	testl	%eax, %eax
	jg	.LBB0_164
	jmp	.LBB0_222
.LBB0_165:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r12d
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movdqa	%xmm0, -256(%rbp)       # 16-byte Spill
	jne	.LBB0_172
# %bb.166:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-84(%rbp), %rcx
	leaq	-292(%rbp), %r8
	leaq	-192(%rbp), %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$3, %esi
	movl	%r14d, %edx
	callq	_dtoa_r
	movapd	-256(%rbp), %xmm1       # 16-byte Reload
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rax
	addq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_167
	jnp	.LBB0_188
.LBB0_167:                              #   in Loop: Header=BB0_5 Depth=1
	cmpb	$48, %cl
	jne	.LBB0_188
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %r15d
	subl	%r14d, %r15d
	movl	%r15d, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_189
.LBB0_169:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rdi,%rsi), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -192(%rbp)
	movb	(%rcx), %sil
	movl	$42, __A_VARIABLE(%rip)
	cmpb	15(%r8), %sil
	jne	.LBB0_179
# %bb.170:                              # %.preheader54
                                        #   in Loop: Header=BB0_5 Depth=1
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	.p2align	4, 0x90
.LBB0_171:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -192(%rbp)
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%sil, %dl
	je	.LBB0_171
	jmp	.LBB0_180
.LBB0_172:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
	cmpl	$101, %r12d
	jne	.LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_5 Depth=1
	leal	1(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_174:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-84(%rbp), %rcx
	leaq	-292(%rbp), %r8
	leaq	-192(%rbp), %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$2, %esi
	movl	%r15d, %edx
	callq	_dtoa_r
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %r12d
	jne	.LBB0_190
# %bb.175:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %r11d        # 4-byte Reload
	testb	$1, %r11b
	jne	.LBB0_214
# %bb.176:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-192(%rbp), %rsi
	jmp	.LBB0_221
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%r10d, %r10d
.LBB0_178:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB0_332
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%esi, %edx
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
.LBB0_180:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %dl
	jne	.LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_5 Depth=1
	movb	10(%r8), %dl
	jmp	.LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$1, %dl
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_222
.LBB0_184:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_209
# %bb.185:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_210
.LBB0_186:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %r15
	jmp	.LBB0_211
.LBB0_188:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %r15d
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-60(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB0_216
.LBB0_190:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %rax
	movl	-60(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB0_215
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_282
# %bb.192:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_283
.LBB0_193:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_285
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_286
.LBB0_195:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	ja	.LBB0_288
# %bb.196:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_289
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_290
# %bb.198:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB0_291
.LBB0_199:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_200:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB0_284
.LBB0_201:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_202:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB0_287
.LBB0_203:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_204:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_473
.LBB0_205:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_206:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB0_292
.LBB0_207:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %r15
	jmp	.LBB0_211
.LBB0_209:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_210:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %r15
.LBB0_211:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r15, %r15
	jns	.LBB0_297
# %bb.212:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%r15
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_297
.LBB0_213:                              #   in Loop: Header=BB0_5 Depth=1
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	movq	%r9, %rsi
	jmp	.LBB0_222
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %rax
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	movapd	-256(%rbp), %xmm1       # 16-byte Reload
.LBB0_216:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_218
	jp	.LBB0_218
# %bb.217:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	jmp	.LBB0_221
.LBB0_218:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-192(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jae	.LBB0_221
# %bb.219:                              # %.preheader58
                                        #   in Loop: Header=BB0_5 Depth=1
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	.p2align	4, 0x90
.LBB0_220:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rsi), %rax
	movq	%rax, -192(%rbp)
	movb	$48, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jb	.LBB0_220
	jmp	.LBB0_222
.LBB0_221:                              #   in Loop: Header=BB0_5 Depth=1
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
.LBB0_222:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %r9d
	orl	$256, %r9d              # imm = 0x100
	subl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %r12d
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	jne	.LBB0_226
# %bb.223:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-3, %ecx
	movq	-72(%rbp), %r12         # 8-byte Reload
	jl	.LBB0_225
# %bb.224:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$103, %eax
	cmpl	%r14d, %ecx
	jle	.LBB0_227
.LBB0_225:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_228
.LBB0_226:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$102, %eax
	cmpl	$70, %r13d
	movq	-72(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	jmp	.LBB0_237
.LBB0_228:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %r13d
	jg	.LBB0_237
# %bb.229:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %eax
	leal	-1(%rax), %esi
	movl	%esi, -84(%rbp)
	movl	%r13d, %edx
	orl	$32, %edx
	leal	15(%r13), %ecx
	cmpl	$97, %edx
	movzbl	%cl, %ecx
	cmovnel	%r13d, %ecx
	movb	%cl, -183(%rbp)
	movl	$1, %ecx
	subl	%eax, %ecx
	testl	%eax, %eax
	setle	%al
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%esi, %ecx
	addb	%al, %al
	addb	$43, %al
	movb	%al, -182(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jl	.LBB0_252
# %bb.230:                              # %.preheader48
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	movq	$-1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_231:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r10
	movslq	%ecx, %rdx
	imulq	$1717986919, %rdx, %rcx # imm = 0x66666667
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$34, %rcx
	addl	%eax, %ecx
	leal	(%rcx,%rcx), %eax
	leal	(%rax,%rax,4), %eax
	movl	%edx, %edi
	subl	%eax, %edi
	addb	$48, %dil
	movb	%dil, -186(%rbp,%rsi)
	addq	$-1, %rsi
	leaq	-1(%r10), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %edx
	jg	.LBB0_231
# %bb.232:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$48, %cl
	movb	%cl, -186(%rbp,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	leaq	-181(%rbp), %rax
	cmpq	$1, %r8
	jg	.LBB0_255
# %bb.233:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%cl, -181(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-180(%rbp), %rax
	testq	%rsi, %rsi
	je	.LBB0_255
# %bb.234:                              #   in Loop: Header=BB0_5 Depth=1
	movb	%dil, -180(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-179(%rbp), %rax
	testq	%r8, %r8
	jns	.LBB0_255
# %bb.235:                              # %.preheader46
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-179(%rbp), %rax
.LBB0_236:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movzbl	-184(%rbp,%r10), %eax
	movb	%al, (%rcx)
	movq	%rcx, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r10
	cmpq	$-1, %r10
	jl	.LBB0_236
	jmp	.LBB0_255
.LBB0_237:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %r10d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-216(%rbp), %rax        # 8-byte Reload
	jne	.LBB0_242
# %bb.238:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jle	.LBB0_259
# %bb.239:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r14d, %r14d
	jne	.LBB0_241
# %bb.240:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %edx
	testb	$1, %r11b
	je	.LBB0_247
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	addl	-208(%rbp), %r14d       # 4-byte Folded Reload
	addl	%r10d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edx
	jmp	.LBB0_247
.LBB0_242:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r10d
	jge	.LBB0_245
# %bb.243:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	leal	(%rsi,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jle	.LBB0_267
# %bb.244:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_247
.LBB0_245:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %edx
	testb	$1, %r11b
	je	.LBB0_247
# %bb.246:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	leal	(%r10,%rax), %edx
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_247:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r11d            # imm = 0x400
	je	.LBB0_251
# %bb.248:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r10d, %r10d
	jle	.LBB0_251
# %bb.249:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-128(%rbp), %r8         # 8-byte Reload
	movb	(%r8), %cl
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %cl
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	jne	.LBB0_262
# %bb.250:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %edx
	xorl	%r14d, %r14d
	jmp	.LBB0_270
.LBB0_251:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	jmp	.LBB0_272
.LBB0_252:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-181(%rbp), %rax
	cmpl	$97, %edx
	je	.LBB0_254
# %bb.253:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -181(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-180(%rbp), %rax
.LBB0_254:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	addb	$48, %cl
	movb	%cl, (%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	leaq	-183(%rbp), %rax
	subl	%eax, %ecx
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jg	.LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB0_258
.LBB0_257:                              #   in Loop: Header=BB0_5 Depth=1
	addl	-208(%rbp), %ecx        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB0_258:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, %rdi
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r11        # 8-byte Reload
	jmp	.LBB0_271
.LBB0_259:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r14d, %r14d
	jne	.LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testb	$1, %r11b
	je	.LBB0_268
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_268
.LBB0_262:                              # %.preheader49
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	movl	%r10d, %edx
	jmp	.LBB0_264
	.p2align	4, 0x90
.LBB0_263:                              #   in Loop: Header=BB0_264 Depth=2
	movb	%al, %sil
	addl	%esi, %r15d
	movb	%r10b, %cl
	addl	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r10d
	cmpb	$127, %cl
	je	.LBB0_270
.LBB0_264:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %edx
	jle	.LBB0_269
# %bb.265:                              #   in Loop: Header=BB0_264 Depth=2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r8)
	sete	%r10b
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_263
# %bb.266:                              #   in Loop: Header=BB0_264 Depth=2
	addq	$1, %r8
	jmp	.LBB0_263
.LBB0_267:                              #   in Loop: Header=BB0_5 Depth=1
	subl	%r10d, %edx
	addl	$1, %edx
	movl	%edx, %ecx
	movq	-216(%rbp), %rax        # 8-byte Reload
.LBB0_268:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %r11        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_271
.LBB0_269:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r10d, %edx
.LBB0_270:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r14, -136(%rbp)        # 8-byte Spill
	leal	(%r14,%r15), %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	%eax, %ecx
	addl	-224(%rbp), %ecx        # 4-byte Folded Reload
	movl	%edx, %r10d
	movq	-216(%rbp), %rax        # 8-byte Reload
.LBB0_271:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	movq	-144(%rbp), %rsi        # 8-byte Reload
.LBB0_272:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%r11, %r11
	jns	.LBB0_333
# %bb.273:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$45, -41(%rbp)
	xorl	%r14d, %r14d
	jmp	.LBB0_332
.LBB0_274:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_275:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB0_284
.LBB0_276:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_277:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB0_287
.LBB0_278:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_471
# %bb.279:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB0_472
.LBB0_280:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_281:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB0_292
.LBB0_282:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_283:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB0_284:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB0_296
.LBB0_285:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_286:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB0_287:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB0_296
.LBB0_288:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_289:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_473
.LBB0_290:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_291:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB0_292:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB0_295
# %bb.293:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%r15, %r15
	je	.LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -114(%rbp)
	movb	%r13b, -113(%rbp)
	orl	$2, %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_295:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
	movl	$2, %eax
.LBB0_296:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -41(%rbp)
.LBB0_297:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_303
# %bb.298:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB0_304
# %bb.299:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%r15, %r15
	jne	.LBB0_304
# %bb.300:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_302
# %bb.301:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	jne	.LBB0_327
.LBB0_302:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r9d
	leaq	-316(%rbp), %rdi
	jmp	.LBB0_329
.LBB0_303:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_305
.LBB0_304:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r9d
.LBB0_305:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_309
# %bb.306:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_314
# %bb.307:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-316(%rbp), %rdi
	cmpl	$2, %eax
	jne	.LBB0_316
	.p2align	4, 0x90
.LBB0_308:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %eax
	andl	$15, %eax
	movzbl	(%r12,%rax), %eax
	movb	%al, -1(%rdi)
	addq	$-1, %rdi
	shrq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_308
	jmp	.LBB0_329
.LBB0_309:                              # %.preheader42
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-317(%rbp), %rax
	.p2align	4, 0x90
.LBB0_310:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r15
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB0_310
# %bb.311:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	1(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB0_329
# %bb.312:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	je	.LBB0_329
# %bb.313:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB0_329
.LBB0_314:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r15
	ja	.LBB0_317
# %bb.315:                              #   in Loop: Header=BB0_5 Depth=1
	addb	$48, %r15b
	movb	%r15b, -317(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_328
.LBB0_316:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.7, %edi
	movdqa	%xmm0, -176(%rbp)       # 16-byte Spill
	movq	%rsi, %r15
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %r12d
	callq	strlen
	movl	$.L.str.7, %edi
	movl	%r12d, %r9d
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r15, %rsi
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	movq	%rax, %rdx
	jmp	.LBB0_330
.LBB0_317:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-232(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	-316(%rbp), %rdi
	movdqa	%xmm0, -176(%rbp)       # 16-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	jmp	.LBB0_320
.LBB0_318:                              #   in Loop: Header=BB0_320 Depth=2
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_319:                              #   in Loop: Header=BB0_320 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r12
	jbe	.LBB0_326
.LBB0_320:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %r12
	movabsq	$-3689348814741910323, %rcx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r15, %rax
	mulq	%rcx
	movq	%rdx, %r15
	shrq	$3, %r15
	leal	(%r15,%r15), %eax
	leal	(%rax,%rax,4), %eax
	movl	%r12d, %ecx
	subl	%eax, %ecx
	orb	$48, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addl	$1, %edx
	movb	%cl, -1(%rdi)
	addq	$-1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r9d             # imm = 0x400
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	je	.LBB0_319
# %bb.321:                              #   in Loop: Header=BB0_320 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jne	.LBB0_319
# %bb.322:                              #   in Loop: Header=BB0_320 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %r12
	jb	.LBB0_319
# %bb.323:                              #   in Loop: Header=BB0_320 Depth=2
	cmpb	$127, %al
	je	.LBB0_319
# %bb.324:                              #   in Loop: Header=BB0_320 Depth=2
	addq	-256(%rbp), %rdi        # 8-byte Folded Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_318
# %bb.325:                              #   in Loop: Header=BB0_320 Depth=2
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_318
.LBB0_326:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_329
.LBB0_327:                              #   in Loop: Header=BB0_5 Depth=1
	movb	$48, -317(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r9d
.LBB0_328:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-317(%rbp), %rdi
	.p2align	4, 0x90
.LBB0_329:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-316(%rbp), %rax
	movl	%eax, %edx
	subl	%edi, %edx
.LBB0_330:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r10d, %r10d
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB0_331:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB0_332:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_333:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%edx, %r14d
	movl	%edx, %ecx
	cmovgel	%r14d, %ecx
	movb	-41(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_335
# %bb.334:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_335:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r9b
	movq	%r12, -72(%rbp)         # 8-byte Spill
	je	.LBB0_337
# %bb.336:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_337:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r10, -288(%rbp)        # 8-byte Spill
	movq	%r15, -280(%rbp)        # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movapd	%xmm0, -176(%rbp)       # 16-byte Spill
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r12d
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	jne	.LBB0_345
# %bb.338:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r15d
	jle	.LBB0_345
# %bb.339:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB0_342
	.p2align	4, 0x90
.LBB0_340:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.341:                              #   in Loop: Header=BB0_340 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_340
	jmp	.LBB0_343
.LBB0_342:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_343:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.blanks, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.344:                              #   in Loop: Header=BB0_5 Depth=1
	movb	-41(%rbp), %al
	.p2align	4, 0x90
.LBB0_345:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	-41(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_347:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	-114(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_349:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r12d
	jne	.LBB0_357
# %bb.350:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	-256(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB0_357
# %bb.351:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB0_355
# %bb.352:                              # %.preheader36
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_353:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.354:                              #   in Loop: Header=BB0_353 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_353
	jmp	.LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_356:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_357:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	-224(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_364
# %bb.358:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_362
# %bb.359:                              # %.preheader33
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_360:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.361:                              #   in Loop: Header=BB0_360 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_360
	jmp	.LBB0_363
	.p2align	4, 0x90
.LBB0_362:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_363:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_364:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %eax         # 4-byte Reload
	testl	$256, %eax              # imm = 0x100
	jne	.LBB0_367
# %bb.365:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-224(%rbp), %rcx        # 4-byte Folded Reload
.LBB0_366:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_388
	.p2align	4, 0x90
.LBB0_367:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	jl	.LBB0_379
# %bb.368:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI0_4, %xmm0
	jne	.LBB0_400
	jp	.LBB0_400
# %bb.369:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.370:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_389
.LBB0_372:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.373:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB0_389
# %bb.374:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %eax
	jl	.LBB0_425
# %bb.375:                              # %.preheader15
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	15(%rax), %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_376:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.377:                              #   in Loop: Header=BB0_376 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_376
# %bb.378:                              # %.loopexit17
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
	jmp	.LBB0_426
.LBB0_379:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -112(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_382
# %bb.380:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	jmp	.LBB0_386
.LBB0_382:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.383:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.384:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	leal	-1(%rax), %r14d
	movapd	-176(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI0_4, %xmm0
	jne	.LBB0_385
	jnp	.LBB0_409
.LBB0_385:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_386:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_387:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-216(%rbp), %rcx        # 4-byte Folded Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	-183(%rbp), %rdx
.LBB0_388:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_389:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_397
# %bb.390:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-256(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_397
# %bb.391:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_395
# %bb.392:                              # %.preheader12
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_393:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.394:                              #   in Loop: Header=BB0_393 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_393
	jmp	.LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_396:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.blanks, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_397:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	-200(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_399:                              #   in Loop: Header=BB0_5 Depth=1
	addl	%ecx, -148(%rbp)        # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	-304(%rbp), %r12        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movdqa	-176(%rbp), %xmm0       # 16-byte Reload
	jmp	.LBB0_5
.LBB0_400:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_416
# %bb.401:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r15d
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r15d
.LBB0_403:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
.LBB0_405:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	movl	$0, %eax
	cmovsl	%eax, %r15d
	movq	-288(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %r14d
	jle	.LBB0_429
# %bb.406:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_427
	.p2align	4, 0x90
.LBB0_407:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
# %bb.408:                              #   in Loop: Header=BB0_407 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB0_407
	jmp	.LBB0_428
.LBB0_409:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jl	.LBB0_387
# %bb.410:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, -112(%rbp)         # 4-byte Folded Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jl	.LBB0_415
# %bb.411:                              # %.preheader30
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	leal	15(%rax), %r14d
	.p2align	4, 0x90
.LBB0_412:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.413:                              #   in Loop: Header=BB0_412 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_412
# %bb.414:                              # %.loopexit32
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
.LBB0_415:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_386
.LBB0_416:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.417:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %eax
	orl	-112(%rbp), %eax        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB0_389
.LBB0_419:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.420:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_468
# %bb.421:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-17, %eax
	jg	.LBB0_466
# %bb.422:                              # %.preheader18
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_423:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
# %bb.424:                              #   in Loop: Header=BB0_423 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_423
	jmp	.LBB0_467
.LBB0_425:                              #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%rax), %r14d
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_426:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_388
.LBB0_427:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_428:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
.LBB0_429:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-288(%rbp), %r15        # 4-byte Folded Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %edi         # 4-byte Reload
	testl	$1024, %edi             # imm = 0x400
	jne	.LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r15, %rdx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_450
.LBB0_431:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	testl	%eax, %eax
	setg	%r13b
	movslq	-112(%rbp), %rcx        # 4-byte Folded Reload
	addq	%rsi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -280(%rbp)          # 4-byte Folded Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	jg	.LBB0_435
# %bb.432:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%eax, %eax
	jg	.LBB0_435
.LBB0_433:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-224(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %r15
	jbe	.LBB0_448
# %bb.434:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_449
.LBB0_435:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_442 Depth 3
	movq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	testb	$1, %r13b
	cmovneq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_476
# %bb.436:                              #   in Loop: Header=BB0_435 Depth=2
	movq	%r14, %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movl	%ecx, %r14d
	subl	%r15d, %r14d
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jle	.LBB0_438
# %bb.437:                              #   in Loop: Header=BB0_435 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB0_438:                              #   in Loop: Header=BB0_435 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_435 Depth=2
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
.LBB0_440:                              #   in Loop: Header=BB0_435 Depth=2
	testl	%r14d, %r14d
	movq	-128(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %r12d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r12d
	jle	.LBB0_446
# %bb.441:                              #   in Loop: Header=BB0_435 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB0_444
	.p2align	4, 0x90
.LBB0_442:                              #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
# %bb.443:                              #   in Loop: Header=BB0_442 Depth=3
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_442
	jmp	.LBB0_445
.LBB0_444:                              #   in Loop: Header=BB0_435 Depth=2
	movl	%r12d, %eax
.LBB0_445:                              #   in Loop: Header=BB0_435 Depth=2
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
.LBB0_446:                              #   in Loop: Header=BB0_435 Depth=2
	movzbl	%r13b, %eax
	notb	%r13b
	movzbl	%r13b, %ecx
	andl	$1, %ecx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	subl	%ecx, %edx
	andl	$1, %eax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movsbq	(%r14), %rax
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	testl	%ecx, %ecx
	setg	%r13b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	testl	%edx, %edx
	movq	-80(%rbp), %r12         # 8-byte Reload
	jg	.LBB0_435
# %bb.447:                              #   in Loop: Header=BB0_435 Depth=2
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	jg	.LBB0_435
	jmp	.LBB0_433
.LBB0_448:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r15, %rdx
.LBB0_449:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	-60(%rbp), %edi         # 4-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
.LBB0_450:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jl	.LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB0_454
.LBB0_452:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %r15
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_476
# %bb.453:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %ecx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
.LBB0_454:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r14, -128(%rbp)        # 8-byte Spill
	addl	%eax, %esi
	subl	%edx, %esi
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jge	.LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB0_456:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB0_459
# %bb.457:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, %r14
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
# %bb.458:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	-84(%rbp), %eax
	movq	%r14, %rsi
.LBB0_459:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%esi, %r14d
	negl	%r14d
	testl	%esi, %esi
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_465
# %bb.460:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_463
	.p2align	4, 0x90
.LBB0_461:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
# %bb.462:                              #   in Loop: Header=BB0_461 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB0_461
	jmp	.LBB0_464
.LBB0_463:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_464:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
.LBB0_465:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_389
.LBB0_466:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
.LBB0_467:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	movl	$_svfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_477
.LBB0_468:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-112(%rbp), %rcx        # 4-byte Folded Reload
	jmp	.LBB0_366
.LBB0_469:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_470:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_473
.LBB0_471:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_472:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movb	%cl, (%rax)
.LBB0_473:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_474:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_482
.LBB0_475:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_476:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_477:
	movl	$42, __A_VARIABLE(%rip)
	movq	-200(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_480
# %bb.478:
	callq	free
	movq	-80(%rbp), %r15         # 8-byte Reload
.LBB0_479:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_481
.LBB0_480:
	movq	-80(%rbp), %r15         # 8-byte Reload
.LBB0_481:
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-148(%rbp), %eax        # 4-byte Folded Reload
.LBB0_482:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_483:
	movq	-80(%rbp), %r15         # 8-byte Reload
	orb	$64, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_479
.Lfunc_end0:
	.size	_svfprintf_r, .Lfunc_end0-_svfprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_40
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_42
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_43
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_30
	.quad	.LBB0_47
	.quad	.LBB0_123
	.quad	.LBB0_35
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_48
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_28
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_53
	.quad	.LBB0_123
	.quad	.LBB0_57
	.quad	.LBB0_77
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_49
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_85
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_59
	.quad	.LBB0_123
	.quad	.LBB0_91
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_97
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_53
	.quad	.LBB0_123
	.quad	.LBB0_57
	.quad	.LBB0_78
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_53
	.quad	.LBB0_50
	.quad	.LBB0_78
	.quad	.LBB0_52
	.quad	.LBB0_123
	.quad	.LBB0_51
	.quad	.LBB0_123
	.quad	.LBB0_98
	.quad	.LBB0_86
	.quad	.LBB0_103
	.quad	.LBB0_52
	.quad	.LBB0_123
	.quad	.LBB0_59
	.quad	.LBB0_52
	.quad	.LBB0_92
	.quad	.LBB0_123
	.quad	.LBB0_123
	.quad	.LBB0_105
	.quad	.LBB0_123
	.quad	.LBB0_52
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
