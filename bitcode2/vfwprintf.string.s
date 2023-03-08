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
	movl	$0, -44(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -164(%rbp)
	cmpb	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_4
# %bb.1:
	cmpq	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.2:
	movl	$64, %edi
	callq	malloc
	movq	%rax, (%r12)
	movq	%rax, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_468
# %bb.3:
	movl	$64, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r14), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	pxor	%xmm0, %xmm0
	movl	$0, %r13d
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r14, -248(%rbp)        # 8-byte Spill
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_18 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #         Child Loop BB0_21 Depth 4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
                                        #     Child Loop BB0_307 Depth 2
                                        #     Child Loop BB0_319 Depth 2
                                        #     Child Loop BB0_309 Depth 2
                                        #     Child Loop BB0_274 Depth 2
                                        #     Child Loop BB0_277 Depth 2
                                        #     Child Loop BB0_224 Depth 2
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_341 Depth 2
                                        #     Child Loop BB0_353 Depth 2
                                        #     Child Loop BB0_359 Depth 2
                                        #     Child Loop BB0_397 Depth 2
                                        #     Child Loop BB0_392 Depth 2
                                        #     Child Loop BB0_437 Depth 2
                                        #       Child Loop BB0_444 Depth 3
                                        #     Child Loop BB0_463 Depth 2
                                        #     Child Loop BB0_407 Depth 2
                                        #     Child Loop BB0_375 Depth 2
                                        #     Child Loop BB0_426 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testl	%eax, %eax
	je	.LBB0_9
# %bb.6:                                # %.preheader6
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
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_475
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	addl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_475
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, -120(%rbp)       # 4-byte Spill
	addq	$4, %r14
	movl	$0, -88(%rbp)
	movl	$-1, %r15d
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	movq	%r14, %rbx
	movq	-248(%rbp), %r14        # 8-byte Reload
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r15d
	cmpl	$-2, %r15d
	movl	$-1, %eax
	cmovlel	%eax, %r15d
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
	movl	(%rbx), %r13d
	addq	$4, %rbx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=4
	movl	%eax, %r15d
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_30 Depth 5
                                        #           Child Loop BB0_25 Depth 5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %r13d
	jne	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=4
	movl	(%rbx), %r13d
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %r13d
	je	.LBB0_37
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB0_20
# %bb.24:                               # %.preheader
                                        #   in Loop: Header=BB0_21 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_25:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movl	(%rbx), %r13d
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB0_25
# %bb.26:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$-1, %r15d
	testl	%eax, %eax
	js	.LBB0_21
	jmp	.LBB0_20
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=4
	leal	-32(%r13), %eax
	cmpl	$90, %eax
	ja	.LBB0_122
# %bb.28:                               #   in Loop: Header=BB0_21 Depth=4
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_29:                               #   in Loop: Header=BB0_21 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_30:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_18 Depth=2
                                        #       Parent Loop BB0_19 Depth=3
                                        #         Parent Loop BB0_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r12,%r12,4), %eax
	leal	-48(%r13,%rax,2), %r12d
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
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
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_34:                               #   in Loop: Header=BB0_19 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB0_19
# %bb.35:                               #   in Loop: Header=BB0_18 Depth=2
	negl	%r12d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:                               # %.loopexit1
                                        #   in Loop: Header=BB0_18 Depth=2
	orl	$4, %r11d
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
	cmpl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_18
# %bb.40:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$32, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_41:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$1, %r11d
	jmp	.LBB0_18
.LBB0_42:                               #   in Loop: Header=BB0_18 Depth=2
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, %r13d
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movq	%r12, %rdi
	movq	-184(%rbp), %r12        # 8-byte Reload
	callq	_localeconv_r
	movl	%r13d, %r11d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	16(%rax), %rdx
	movl	-168(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB0_18
# %bb.43:                               #   in Loop: Header=BB0_18 Depth=2
	testl	%eax, %eax
	je	.LBB0_18
# %bb.44:                               #   in Loop: Header=BB0_18 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_18
# %bb.45:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$1024, %r11d            # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_46:                               #   in Loop: Header=BB0_18 Depth=2
	movl	$43, -88(%rbp)
	jmp	.LBB0_18
.LBB0_47:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$128, %r11d
	jmp	.LBB0_18
.LBB0_48:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$8, %r11d
	jmp	.LBB0_18
.LBB0_49:                               #   in Loop: Header=BB0_18 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edx
	cmovel	%ecx, %edx
	cmoveq	%rax, %rbx
	orl	%edx, %r11d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_50:                               #   in Loop: Header=BB0_18 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_51:                               #   in Loop: Header=BB0_18 Depth=2
	orl	$16, %r11d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r11b
	jne	.LBB0_55
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	4(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$160, %rcx
	ja	.LBB0_67
# %bb.54:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r14)
	jmp	.LBB0_68
.LBB0_55:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %r14d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_69
.LBB0_56:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %r13d
	jne	.LBB0_78
# %bb.57:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_78
# %bb.58:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, %r15d
	ja	.LBB0_197
# %bb.59:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_198
.LBB0_60:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_112
# %bb.61:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_113
.LBB0_62:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_118
# %bb.63:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB0_132
# %bb.64:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_202
# %bb.65:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_239
# %bb.66:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_240
.LBB0_67:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_68:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB0_69:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_73
# %bb.70:                               #   in Loop: Header=BB0_5 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	jbe	.LBB0_72
# %bb.71:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_72:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	movl	$.L.str.1, %edi
	cmovbq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r11d
	jmp	.LBB0_83
.LBB0_73:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_80
# %bb.74:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, %edx
	orl	$32, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %edx
	movl	%r14d, %ecx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jne	.LBB0_84
# %bb.75:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	cmpl	$97, %r13d
	sete	%al
	movl	$48, -192(%rbp)
	shll	$5, %eax
	orl	$88, %eax
	movl	%eax, -188(%rbp)
	orl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %r15d
	jl	.LBB0_131
# %bb.76:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r14d
	movslq	%r15d, %rax
	leaq	4(,%rax,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_479
# %bb.77:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rax, %r10
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r14d, %ecx
	movq	%rax, %r14
	jmp	.LBB0_150
.LBB0_78:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_128
# %bb.79:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_129
.LBB0_80:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	%r14d, %r11d
	jns	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_82:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %edi
	cmovbq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_83:                               #   in Loop: Header=BB0_5 Depth=1
	andl	$-129, %r11d
	movl	$3, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB0_332
.LBB0_84:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	leaq	-688(%rbp), %r10
	je	.LBB0_148
# %bb.85:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB0_150
# %bb.86:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$103, %edx
	jne	.LBB0_150
# %bb.87:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB0_149
.LBB0_88:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.6, %esi
	jmp	.LBB0_107
.LBB0_89:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_134
# %bb.90:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	-120(%rbp), %r13d       # 4-byte Reload
	jne	.LBB0_204
# %bb.91:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_241
# %bb.92:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_280
# %bb.93:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_281
.LBB0_94:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_136
# %bb.95:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB0_206
# %bb.96:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_243
# %bb.97:                               #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_282
# %bb.98:                               #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_283
.LBB0_99:                               #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_138
# %bb.100:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_139
.LBB0_101:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_140
# %bb.102:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB0_208
# %bb.103:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_245
# %bb.104:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_284
# %bb.105:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_285
.LBB0_106:                              # %.loopexit2
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.4, %esi
.LBB0_107:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_120
# %bb.108:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB0_142
# %bb.109:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB0_210
# %bb.110:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_247
# %bb.111:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_248
.LBB0_112:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_113:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_130
# %bb.114:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$83, %r13d
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	je	.LBB0_124
# %bb.115:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB0_124
# %bb.116:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_266
# %bb.117:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%rdi, %r15
	callq	memchr
	movq	%r15, %rcx
	movq	%rax, %rsi
	subq	%r15, %rsi
	testq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r14, %rsi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_267
.LBB0_118:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_144
# %bb.119:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_145
.LBB0_120:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_146
# %bb.121:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_147
.LBB0_122:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB0_473
# %bb.123:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, -688(%rbp)
	jmp	.LBB0_201
.LBB0_124:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB0_186
# %bb.125:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rdx
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	%rdi, %r14
	callq	wmemchr
	movq	%r14, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_5 Depth=1
	subq	%rdi, %rax
	shrq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	jge	.LBB0_231
.LBB0_127:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_187
.LBB0_128:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_129:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	%eax, -688(%rbp)
	jmp	.LBB0_200
.LBB0_130:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$6, %r15d
	movl	$6, %eax
	cmovbl	%r15d, %eax
	movl	$.L.str.5, %edi
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB0_332
.LBB0_131:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %r10
	xorl	%r14d, %r14d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_150
.LBB0_132:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_212
# %bb.133:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_213
.LBB0_134:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-120(%rbp), %r13d       # 4-byte Reload
	movslq	%r13d, %rax
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	movq	-64(%rbp), %r12         # 8-byte Reload
	ja	.LBB0_214
# %bb.135:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB0_215
.LBB0_136:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_216
# %bb.137:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_217
.LBB0_138:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_139:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	orl	$2, %r11d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -192(%rbp)
	movl	$120, %r13d
	movl	$.L.str.4, %esi
	jmp	.LBB0_265
.LBB0_140:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_218
# %bb.141:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_219
.LBB0_142:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_220
# %bb.143:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_221
.LBB0_144:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_145:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_251
.LBB0_146:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_147:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_261
.LBB0_148:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %r15d
.LBB0_149:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
.LBB0_150:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	orl	$256, %edx              # imm = 0x100
	subq	$8, %rsp
	leaq	-44(%rbp), %rax
	leaq	-196(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	%r13d, %r9d
	pushq	$100
	pushq	%r10
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r8
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_155
# %bb.151:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %rcx
	cmpq	%rcx, %r8
	movl	-124(%rbp), %edi        # 4-byte Reload
	jne	.LBB0_156
# %bb.152:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$101, %eax
	jl	.LBB0_156
# %bb.153:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, %r14
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_479
# %bb.154:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %r12
	movl	-44(%rbp), %eax
	subq	$8, %rsp
	leaq	-196(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %esi
	movl	-160(%rbp), %edx        # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%rax
	pushq	%r12
	leaq	-44(%rbp), %rax
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	movq	%r12, -176(%rbp)        # 8-byte Spill
	movq	%r14, %r12
	movq	%rax, %r14
.LBB0_155:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-124(%rbp), %edi        # 4-byte Reload
.LBB0_156:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %edi
	movq	%r14, -144(%rbp)        # 8-byte Spill
	movq	%r8, -152(%rbp)         # 8-byte Spill
	jne	.LBB0_160
# %bb.157:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-3, %ecx
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jl	.LBB0_159
# %bb.158:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$103, %eax
	cmpl	%r15d, %ecx
	jle	.LBB0_161
.LBB0_159:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edi
	orl	$32, %edi
	jmp	.LBB0_164
.LBB0_160:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$102, %eax
	cmpl	$70, %r13d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jne	.LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	jmp	.LBB0_172
.LBB0_162:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %r13d
	ja	.LBB0_172
# %bb.163:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %ecx
.LBB0_164:                              #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%rcx), %edx
	movl	%edx, -116(%rbp)
	leal	15(%r13), %eax
	cmpl	$97, %edi
	cmovnel	%r13d, %eax
	movl	%eax, -240(%rbp)
	movl	$1, %eax
	subl	%ecx, %eax
	xorl	%esi, %esi
	testl	%ecx, %ecx
	setle	%sil
	movl	$42, __A_VARIABLE(%rip)
	leal	43(%rsi,%rsi), %ecx
	cmovgl	%edx, %eax
	movl	%ecx, -236(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jl	.LBB0_177
# %bb.165:                              # %.preheader46
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$-1, %rcx
	xorl	%esi, %esi
	movq	-56(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_166:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	movq	%rcx, %r8
	movl	%eax, %ecx
	movslq	%eax, %r9
	imulq	$1717986919, %r9, %rax  # imm = 0x66666667
	movq	%rax, %rsi
	shrq	$63, %rsi
	sarq	$34, %rax
	addl	%esi, %eax
	leal	(%rax,%rax), %esi
	leal	(%rsi,%rsi,4), %esi
	negl	%esi
	leal	(%rcx,%rsi), %edi
	addl	$48, %edi
	leaq	-1(%rdx), %rsi
	movl	%edi, -264(%rbp,%rdx,4)
	leaq	-1(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %r9d
	jg	.LBB0_166
# %bb.167:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %eax
	movl	%eax, -268(%rbp,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-232(%rbp), %r9
	cmpq	$1, %rdx
	jg	.LBB0_180
# %bb.168:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -232(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-228(%rbp), %r9
	testq	%rsi, %rsi
	je	.LBB0_180
# %bb.169:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, -228(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-224(%rbp), %r9
	testq	%rdx, %rdx
	jns	.LBB0_180
# %bb.170:                              # %.preheader44
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-224(%rbp), %r9
	.p2align	4, 0x90
.LBB0_171:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-256(%rbp,%r8,4), %eax
	movl	%eax, (%r9)
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r8
	cmpq	$-1, %r8
	jl	.LBB0_171
	jmp	.LBB0_180
.LBB0_172:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-208(%rbp), %r9         # 8-byte Reload
	jne	.LBB0_184
# %bb.173:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB0_227
# %bb.174:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	jne	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r14d
	testb	$1, %r11b
	je	.LBB0_192
.LBB0_176:                              #   in Loop: Header=BB0_5 Depth=1
	leal	(%rdi,%r15), %r14d
	addl	$1, %r14d
	jmp	.LBB0_191
.LBB0_177:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-232(%rbp), %r9
	cmpl	$97, %edi
	je	.LBB0_179
# %bb.178:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -232(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-228(%rbp), %r9
.LBB0_179:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %eax
	movl	%eax, (%r9)
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r10         # 8-byte Reload
.LBB0_180:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-240(%rbp), %rax
	subq	%rax, %r9
	shrq	$2, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	leal	(%rax,%r9), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_183:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-160(%rbp), %r11d       # 4-byte Reload
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%edi, %edi
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_235
.LBB0_184:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %edi
	jge	.LBB0_189
# %bb.185:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %eax
	subl	%edi, %eax
	testl	%edi, %edi
	movl	$1, %ecx
	cmovlel	%eax, %ecx
	addl	%ecx, %r14d
	jmp	.LBB0_191
.LBB0_186:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	callq	wcslen
	movq	%r14, %rdi
	movq	%rax, %r15
.LBB0_187:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
.LBB0_188:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB0_333
.LBB0_189:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r14d
	testb	$1, %r11b
	je	.LBB0_192
# %bb.190:                              #   in Loop: Header=BB0_5 Depth=1
	leal	1(%rdi), %r14d
.LBB0_191:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_192:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r11d            # imm = 0x400
	je	.LBB0_196
# %bb.193:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%edi, %edi
	jle	.LBB0_196
# %bb.194:                              #   in Loop: Header=BB0_5 Depth=1
	movb	(%r10), %dl
	xorl	%r11d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %dl
	jne	.LBB0_222
# %bb.195:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, %ecx
	xorl	%esi, %esi
	jmp	.LBB0_233
.LBB0_196:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	-160(%rbp), %r11d       # 4-byte Reload
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_236
.LBB0_197:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_198:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edi
	callq	btowc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_480
# %bb.199:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, -688(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %r11d
.LBB0_200:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -684(%rbp)
.LBB0_201:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -88(%rbp)
	movl	$1, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	leaq	-688(%rbp), %rdi
	jmp	.LBB0_333
.LBB0_202:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_249
# %bb.203:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_250
.LBB0_204:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_253
# %bb.205:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_254
.LBB0_206:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_255
# %bb.207:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_256
.LBB0_208:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_257
# %bb.209:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_258
.LBB0_210:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_259
# %bb.211:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_260
.LBB0_212:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_213:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %rdx
	jmp	.LBB0_251
.LBB0_214:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_215:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB0_288
.LBB0_216:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_217:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_291
.LBB0_218:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_219:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB0_294
.LBB0_220:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_221:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB0_261
.LBB0_222:                              # %.preheader47
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	movl	%edi, %ecx
	jmp	.LBB0_224
	.p2align	4, 0x90
.LBB0_223:                              #   in Loop: Header=BB0_224 Depth=2
	movb	%al, %dil
	addl	%edi, %r11d
	movb	%r8b, %dl
	addl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r10), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edi
	cmpb	$127, %dl
	je	.LBB0_233
.LBB0_224:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%dl, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %ecx
	jle	.LBB0_232
# %bb.225:                              #   in Loop: Header=BB0_224 Depth=2
	xorl	%edx, %edx
	xorl	%edi, %edi
	cmpb	$0, 1(%r10)
	sete	%r8b
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_223
# %bb.226:                              #   in Loop: Header=BB0_224 Depth=2
	addq	$1, %r10
	jmp	.LBB0_223
.LBB0_227:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r15d, %r15d
	jne	.LBB0_229
# %bb.228:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testb	$1, %r11b
	je	.LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$2, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r14d
.LBB0_230:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$102, %r13d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_234
.LBB0_231:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB0_188
.LBB0_232:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%edi, %ecx
.LBB0_233:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	addl	%r11d, %r14d
	movl	%esi, -84(%rbp)         # 4-byte Spill
	addl	%esi, %r14d
	movl	%ecx, %edi
.LBB0_234:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-160(%rbp), %r11d       # 4-byte Reload
.LBB0_235:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_236:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %r15d
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, -56(%rbp)         # 8-byte Spill
	cmpl	$0, -196(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_238
# %bb.237:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$45, -88(%rbp)
	xorl	%r14d, %r14d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_333
.LBB0_238:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%r14d, %r14d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB0_334
.LBB0_239:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_240:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %rdx
	jmp	.LBB0_251
.LBB0_241:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_286
# %bb.242:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB0_287
.LBB0_243:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_289
# %bb.244:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_290
.LBB0_245:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_292
# %bb.246:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_293
.LBB0_247:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_248:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB0_261
.LBB0_249:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_250:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %rdx
.LBB0_251:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB0_296
# %bb.252:                              #   in Loop: Header=BB0_5 Depth=1
	negq	%rdx
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_296
.LBB0_253:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_254:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB0_288
.LBB0_255:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_256:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB0_291
.LBB0_257:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_258:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB0_294
.LBB0_259:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_260:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB0_261:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	je	.LBB0_264
# %bb.263:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -192(%rbp)
	movl	%r13d, -188(%rbp)
	orl	$2, %r11d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_264:                              #   in Loop: Header=BB0_5 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
.LBB0_265:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %eax
	jmp	.LBB0_295
.LBB0_266:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %rcx
	movq	%rax, %rsi
.LBB0_267:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-176(%rbp), %r8         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$100, %rsi
	jb	.LBB0_270
# %bb.268:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, %r14
	movq	%rsi, %r15
	leaq	4(,%rsi,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_480
# %bb.269:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r9
	movq	%rax, %r8
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	movq	%r14, %rcx
	movq	%r15, %rsi
	jmp	.LBB0_271
.LBB0_270:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-688(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r15d
	movl	$0, %edx
	testq	%rsi, %rsi
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	je	.LBB0_279
.LBB0_271:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-1(%rsi), %rdx
	movl	%esi, %r10d
	andl	$3, %r10d
	cmpq	$3, %rdx
	jae	.LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, %r15
	xorl	%edx, %edx
	jmp	.LBB0_275
.LBB0_273:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rsi, %r15
	andq	$-4, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_274:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rcx,%rdx), %edi
	movl	%edi, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	1(%rcx,%rdx), %edi
	movl	%edi, 4(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	2(%rcx,%rdx), %edi
	movl	%edi, 8(%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	3(%rcx,%rdx), %edi
	movl	%edi, 12(%rax,%rdx,4)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB0_274
.LBB0_275:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%r10, %r10
	je	.LBB0_278
# %bb.276:                              # %.preheader52
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rax,%rdx,4), %rsi
	addq	%rdx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_277:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rcx,%rdx), %edi
	movl	%edi, (%rsi,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB0_277
.LBB0_278:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %edx
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB0_279:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movl	$0, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movq	%rax, %rdi
	jmp	.LBB0_333
.LBB0_280:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_281:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	%r13d, (%rax)
	jmp	.LBB0_288
.LBB0_282:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_283:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB0_291
.LBB0_284:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_285:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB0_294
.LBB0_286:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_287:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r13b, (%rax)
.LBB0_288:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_289:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_290:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB0_291:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r11d           # imm = 0xFBFF
	movl	$111, %r13d
	xorl	%eax, %eax
	jmp	.LBB0_295
.LBB0_292:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_293:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB0_294:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$117, %r13d
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_295:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -88(%rbp)
.LBB0_296:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	js	.LBB0_302
# %bb.297:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r11d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB0_303
# %bb.298:                              #   in Loop: Header=BB0_5 Depth=1
	testq	%rdx, %rdx
	jne	.LBB0_303
# %bb.299:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_301
# %bb.300:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	jne	.LBB0_329
.LBB0_301:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r11d
	leaq	-288(%rbp), %rdi
	jmp	.LBB0_331
.LBB0_302:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_304
.LBB0_303:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %r11d
.LBB0_304:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_308
# %bb.305:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, %eax
	je	.LBB0_313
# %bb.306:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-288(%rbp), %rdi
	cmpl	$2, %eax
	jne	.LBB0_315
	.p2align	4, 0x90
.LBB0_307:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%rsi,%rax,4), %eax
	movl	%eax, -4(%rdi)
	addq	$-4, %rdi
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_307
	jmp	.LBB0_331
.LBB0_308:                              # %.preheader40
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	-292(%rbp), %rax
	.p2align	4, 0x90
.LBB0_309:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB0_309
# %bb.310:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	4(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB0_331
# %bb.311:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	je	.LBB0_331
# %bb.312:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB0_331
.LBB0_313:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdx
	ja	.LBB0_316
# %bb.314:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$48, %edx
	movl	%edx, -292(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_330
.LBB0_315:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.7, %edi
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, %r14d
	callq	wcslen
	movl	$.L.str.7, %edi
	movl	%r14d, %r11d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %r14d
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
	jmp	.LBB0_332
.LBB0_316:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-288(%rbp), %rdi
	jmp	.LBB0_319
	.p2align	4, 0x90
.LBB0_317:                              #   in Loop: Header=BB0_319 Depth=2
	movq	%rax, %rdi
.LBB0_318:                              #   in Loop: Header=BB0_319 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	jbe	.LBB0_328
.LBB0_319:                              #   Parent Loop BB0_5 Depth=1
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
	leaq	-4(%rdi), %rax
	movl	%esi, -4(%rdi)
	movl	-44(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r11d            # imm = 0x400
	je	.LBB0_317
# %bb.320:                              #   in Loop: Header=BB0_319 Depth=2
	movsbl	(%r8), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %esi
	jne	.LBB0_317
# %bb.321:                              #   in Loop: Header=BB0_319 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rcx
	jb	.LBB0_317
# %bb.322:                              #   in Loop: Header=BB0_319 Depth=2
	cmpb	$127, %r9b
	je	.LBB0_317
# %bb.323:                              #   in Loop: Header=BB0_319 Depth=2
	movl	-168(%rbp), %eax
	movl	%eax, -8(%rdi)
	addq	$-8, %rdi
	movl	$0, -44(%rbp)
	cmpb	$0, 1(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_318
# %bb.324:                              #   in Loop: Header=BB0_319 Depth=2
	addq	$1, %r8
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_318
.LBB0_328:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%r8, -56(%rbp)          # 8-byte Spill
	jmp	.LBB0_331
.LBB0_329:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$48, -292(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r11d
.LBB0_330:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	-292(%rbp), %rdi
	.p2align	4, 0x90
.LBB0_331:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %r14d
	leaq	-288(%rbp), %r15
	subq	%rdi, %r15
	shrq	$2, %r15
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB0_332:                              #   in Loop: Header=BB0_5 Depth=1
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB0_333:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_334:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	%r15d, %r14d
	movl	%r15d, %ecx
	cmovgel	%r14d, %ecx
	movl	-88(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_336:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r11b
	je	.LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_338:                              #   in Loop: Header=BB0_5 Depth=1
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r11d
	movl	%r11d, -160(%rbp)       # 4-byte Spill
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jne	.LBB0_346
# %bb.339:                              #   in Loop: Header=BB0_5 Depth=1
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r12d
	jle	.LBB0_346
# %bb.340:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB0_343
	.p2align	4, 0x90
.LBB0_341:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.342:                              #   in Loop: Header=BB0_341 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_341
	jmp	.LBB0_344
.LBB0_343:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_344:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.345:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-88(%rbp), %eax
	.p2align	4, 0x90
.LBB0_346:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_348:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$8, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-192(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_350:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -160(%rbp)        # 4-byte Folded Reload
	jne	.LBB0_357
# %bb.351:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-184(%rbp), %r12        # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movl	$42, __A_VARIABLE(%rip)
	subl	-124(%rbp), %r12d       # 4-byte Folded Reload
	jle	.LBB0_357
# %bb.352:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB0_355
	.p2align	4, 0x90
.LBB0_353:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.354:                              #   in Loop: Header=BB0_353 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB0_353
	jmp	.LBB0_356
.LBB0_355:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r12d, %eax
.LBB0_356:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_357:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %r14d
	jle	.LBB0_363
# %bb.358:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_361
	.p2align	4, 0x90
.LBB0_359:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.360:                              #   in Loop: Header=BB0_359 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB0_359
	jmp	.LBB0_362
	.p2align	4, 0x90
.LBB0_361:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_362:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_363:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %eax         # 4-byte Reload
	testl	$256, %eax              # imm = 0x100
	jne	.LBB0_366
# %bb.364:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
.LBB0_365:                              #   in Loop: Header=BB0_5 Depth=1
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_421
	.p2align	4, 0x90
.LBB0_366:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-152(%rbp), %rdx        # 8-byte Reload
	jb	.LBB0_378
# %bb.367:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0, %xmm0
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_385
	jp	.LBB0_385
# %bb.368:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.369:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB0_422
.LBB0_371:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.372:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB0_422
# %bb.373:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %r14d
	jl	.LBB0_409
# %bb.374:                              # %.preheader12
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$15, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_375:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.376:                              #   in Loop: Header=BB0_375 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_375
# %bb.377:                              # %.loopexit14
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
	jmp	.LBB0_410
.LBB0_378:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$1, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_381
# %bb.379:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	jmp	.LBB0_418
.LBB0_381:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.382:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.383:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI0_0, %xmm0
	jne	.LBB0_384
	jnp	.LBB0_394
.LBB0_384:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$4, %rdx
	movslq	-44(%rbp), %rax
	leaq	-4(,%rax,4), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB0_419
.LBB0_385:                              #   in Loop: Header=BB0_5 Depth=1
	cmpl	$0, -116(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_400
# %bb.386:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r14d
	jle	.LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB0_388:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
.LBB0_390:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r14d, %r14d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movq	-136(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r15d
	jle	.LBB0_413
# %bb.391:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB0_411
	.p2align	4, 0x90
.LBB0_392:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
# %bb.393:                              #   in Loop: Header=BB0_392 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB0_392
	jmp	.LBB0_412
.LBB0_394:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB0_420
# %bb.395:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %r14d
	jl	.LBB0_416
# %bb.396:                              # %.preheader28
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$15, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_397:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.398:                              #   in Loop: Header=BB0_397 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_397
# %bb.399:                              # %.loopexit30
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$-16, %r14d
	jmp	.LBB0_417
.LBB0_400:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.401:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	orl	-116(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB0_422
.LBB0_403:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.404:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_435
# %bb.405:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-17, %eax
	jg	.LBB0_433
# %bb.406:                              # %.preheader15
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_407:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.408:                              #   in Loop: Header=BB0_407 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_407
	jmp	.LBB0_434
.LBB0_409:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-1, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_410:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_421
.LBB0_411:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %eax
.LBB0_412:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
.LBB0_413:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-136(%rbp), %rax        # 4-byte Folded Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	leaq	(%rsi,%rax,4), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %edx         # 4-byte Reload
	testl	$1024, %edx             # imm = 0x400
	jne	.LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	jmp	.LBB0_452
.LBB0_415:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-84(%rbp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	setg	%r15b
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	jle	.LBB0_436
	jmp	.LBB0_437
.LBB0_416:                              #   in Loop: Header=BB0_5 Depth=1
	addl	$-1, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_417:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
.LBB0_418:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB0_419:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_420:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-208(%rbp), %rcx        # 4-byte Folded Reload
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-240(%rbp), %rdx
.LBB0_421:                              #   in Loop: Header=BB0_5 Depth=1
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_422:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB0_430
# %bb.423:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-184(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-124(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB0_430
# %bb.424:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_428
# %bb.425:                              # %.preheader9
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_426:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
# %bb.427:                              #   in Loop: Header=BB0_426 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jg	.LBB0_426
	jmp	.LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_429:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_430:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	je	.LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB0_432:                              #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	-120(%rbp), %r13d       # 4-byte Reload
	addl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_5
.LBB0_433:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_434:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_471
.LBB0_435:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-44(%rbp), %rcx
	jmp	.LBB0_365
.LBB0_436:                              #   in Loop: Header=BB0_5 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_449
.LBB0_437:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_444 Depth 3
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rax), %rcx
	testb	$1, %r15b
	cmovneq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	-168(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_470
# %bb.438:                              #   in Loop: Header=BB0_437 Depth=2
	movl	-44(%rbp), %eax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax,4), %r12
	movq	%r13, -160(%rbp)        # 8-byte Spill
	subq	%r13, %r12
	shrq	$2, %r12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r12d
	jle	.LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_437 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
.LBB0_440:                              #   in Loop: Header=BB0_437 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_437 Depth=2
	movslq	%r12d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
.LBB0_442:                              #   in Loop: Header=BB0_437 Depth=2
	testl	%r12d, %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %r13d
	movl	$0, %eax
	cmovsl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r12d, %r13d
	jle	.LBB0_448
# %bb.443:                              #   in Loop: Header=BB0_437 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r13d
	jl	.LBB0_446
	.p2align	4, 0x90
.LBB0_444:                              #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_437 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
# %bb.445:                              #   in Loop: Header=BB0_444 Depth=3
	leal	-16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r13d
	movl	%eax, %r13d
	jg	.LBB0_444
	jmp	.LBB0_447
.LBB0_446:                              #   in Loop: Header=BB0_437 Depth=2
	movl	%r13d, %eax
.LBB0_447:                              #   in Loop: Header=BB0_437 Depth=2
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
.LBB0_448:                              #   in Loop: Header=BB0_437 Depth=2
	movzbl	%r15b, %eax
	notb	%r15b
	movzbl	%r15b, %ecx
	andl	$1, %ecx
	movl	-76(%rbp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	andl	$1, %eax
	subl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbq	(%rax), %rax
	movq	-160(%rbp), %r13        # 8-byte Reload
	leaq	(%r13,%rax,4), %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	setg	%r15b
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -76(%rbp)         # 4-byte Spill
	testl	%edx, %edx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jle	.LBB0_436
	jmp	.LBB0_437
.LBB0_449:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	-44(%rbp), %rax
	movq	-152(%rbp), %rsi        # 8-byte Reload
	leaq	(%rsi,%rax,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r13
	jbe	.LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r13
.LBB0_451:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB0_452:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-116(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jl	.LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB0_456
.LBB0_454:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	-164(%rbp), %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_470
# %bb.455:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	movl	-116(%rbp), %ecx
	movq	-152(%rbp), %rsi        # 8-byte Reload
.LBB0_456:                              #   in Loop: Header=BB0_5 Depth=1
	leaq	(%rsi,%rax,4), %r15
	subq	%r13, %r15
	shrq	$2, %r15
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jge	.LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
.LBB0_458:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_461
# %bb.459:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
# %bb.460:                              #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	subl	-116(%rbp), %eax
.LBB0_461:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r15d, %r14d
	negl	%r14d
	testl	%r15d, %r15d
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_467
# %bb.462:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB0_465
	.p2align	4, 0x90
.LBB0_463:                              #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
# %bb.464:                              #   in Loop: Header=BB0_463 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB0_463
	jmp	.LBB0_466
.LBB0_465:                              #   in Loop: Header=BB0_5 Depth=1
	movl	%r14d, %eax
.LBB0_466:                              #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_svfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_469
.LBB0_467:                              #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_422
.LBB0_468:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_478
.LBB0_469:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_470:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_471:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -144(%rbp)          # 8-byte Folded Reload
	je	.LBB0_476
# %bb.472:
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB0_473:
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB0_474:
	movl	-120(%rbp), %r13d       # 4-byte Reload
.LBB0_475:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_477
.LBB0_476:
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	-120(%rbp), %r13d       # 4-byte Reload
.LBB0_477:
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r13d, %eax
.LBB0_478:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_479:
	movq	-64(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_474
.LBB0_480:
	movq	-64(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_474
.Lfunc_end0:
	.size	_svfwprintf_r, .Lfunc_end0-_svfwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_39
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_41
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_42
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_31
	.quad	.LBB0_46
	.quad	.LBB0_122
	.quad	.LBB0_36
	.quad	.LBB0_122
	.quad	.LBB0_122
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
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_52
	.quad	.LBB0_122
	.quad	.LBB0_56
	.quad	.LBB0_122
	.quad	.LBB0_52
	.quad	.LBB0_52
	.quad	.LBB0_52
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_48
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_60
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_88
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_52
	.quad	.LBB0_122
	.quad	.LBB0_56
	.quad	.LBB0_62
	.quad	.LBB0_52
	.quad	.LBB0_52
	.quad	.LBB0_52
	.quad	.LBB0_49
	.quad	.LBB0_62
	.quad	.LBB0_51
	.quad	.LBB0_122
	.quad	.LBB0_50
	.quad	.LBB0_122
	.quad	.LBB0_89
	.quad	.LBB0_94
	.quad	.LBB0_99
	.quad	.LBB0_51
	.quad	.LBB0_122
	.quad	.LBB0_60
	.quad	.LBB0_51
	.quad	.LBB0_101
	.quad	.LBB0_122
	.quad	.LBB0_122
	.quad	.LBB0_106
	.quad	.LBB0_122
	.quad	.LBB0_51
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function wcvt
.LCPI1_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
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
	movl	%r9d, %r12d
	movq	%r8, %r10
	movl	%esi, %r15d
	movq	%xmm0, %rsi
	movq	%rsi, %rax
	sarq	$63, %rax
	andl	$45, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB1_2
# %bb.1:
	pxor	.LCPI1_0(%rip), %xmm0
.LBB1_2:
	movq	24(%rbp), %r14
	movq	16(%rbp), %rsi
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r13d
	orl	$32, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r13d
	jne	.LBB1_22
# %bb.3:
	movq	%rsi, %r13
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	frexp
	mulsd	.LCPI1_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_5
	jp	.LBB1_5
# %bb.4:
	movl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	cmpl	$97, %r12d
	movl	$.L.str.4, %eax
	movl	$.L.str.6, %r8d
	cmoveq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	xorl	%edi, %edi
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %esi
	xorps	%xmm3, %xmm3
	cvtsi2sd	%esi, %xmm3
	subsd	%xmm3, %xmm0
	movslq	%esi, %rdx
	movl	(%r8,%rdx,4), %edx
	movl	%edx, (%r14,%rbx,4)
	movl	%ebx, %ecx
	addq	$1, %rbx
	addq	$-4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_6
	jp	.LBB1_6
.LBB1_8:
	addl	$1, %r15d
	subq	%rbx, %r15
	movq	%r14, %rax
	subq	%rdi, %rax
	ucomisd	.LCPI1_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB1_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_18
	jp	.LBB1_18
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB1_11
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB1_21
	.p2align	4, 0x90
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	testl	%r15d, %r15d
	jg	.LBB1_19
	jmp	.LBB1_21
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %esi
	cmpl	$102, %r13d
	jne	.LBB1_24
# %bb.23:
	movl	%edx, %r12d
	jmp	.LBB1_26
.LBB1_11:
	leaq	-4(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	60(%r8), %edx
	jne	.LBB1_12
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	-4(%rsi), %edi
	addq	$-4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %edi
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %esi
	movl	%edx, %r12d
	cmpl	$101, %r13d
	jne	.LBB1_26
# %bb.25:
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-52(%rbp), %r8
	leaq	-48(%rbp), %r9
	movdqa	%xmm0, -80(%rbp)        # 16-byte Spill
	movl	%r15d, %edx
	movq	%r10, %rbx
	movq	%r10, %rcx
	callq	_dtoa_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %r13d
	jne	.LBB1_29
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB1_29
# %bb.28:
	movq	-48(%rbp), %rdx
	movq	16(%rbp), %rdi
	jmp	.LBB1_41
.LBB1_29:
	movslq	%r15d, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	jne	.LBB1_30
# %bb.31:
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_32
	jnp	.LBB1_33
.LBB1_32:
	cmpb	$48, %dl
	jne	.LBB1_33
# %bb.34:
	movl	$1, %edx
	subl	%r15d, %edx
	movl	%edx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_35
.LBB1_30:
	movq	16(%rbp), %rdi
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB1_36
.LBB1_12:
	movl	%edx, %edi
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %edi
	jne	.LBB1_16
# %bb.15:
	movl	40(%r8), %edi
	jmp	.LBB1_17
.LBB1_16:
	addl	$1, %edi
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_21:
	subq	%r14, %rax
	shrq	$2, %rax
	movl	%eax, (%r13)
	jmp	.LBB1_45
.LBB1_33:
	movl	(%rbx), %edx
.LBB1_35:
	movq	16(%rbp), %rdi
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_36:
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_38
	jp	.LBB1_38
# %bb.37:
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
.LBB1_41:
	subl	%eax, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB1_45
# %bb.42:
	movslq	32(%rbp), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_43:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jge	.LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_43 Depth=1
	movsbl	(%rax,%rdx), %esi
	movl	%esi, (%r14,%rdx,4)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jl	.LBB1_43
.LBB1_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_38:
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_40:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB1_41
# %bb.39:                               #   in Loop: Header=BB1_40 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movb	$48, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	jmp	.LBB1_40
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
