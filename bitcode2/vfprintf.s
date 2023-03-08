	.text
	.file	"vfprintf.c"
	.globl	vfprintf                # -- Begin function vfprintf
	.p2align	4, 0x90
	.type	vfprintf,@function
vfprintf:                               # @vfprintf
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
	callq	_vfprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vfprintf, .Lfunc_end0-vfprintf
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function _vfprintf_r
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
.LCPI1_4:
	.quad	0                       # double 0
	.text
	.globl	_vfprintf_r
	.p2align	4, 0x90
	.type	_vfprintf_r,@function
_vfprintf_r:                            # @_vfprintf_r
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
	movq	%rdi, %r14
	callq	_localeconv_r
	movq	(%rax), %r13
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-220(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movzwl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB1_5
# %bb.4:
	cmpq	$0, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_7
.LBB1_5:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__swsetup_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-220(%rbp), %edi
	leaq	-220(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB1_486
.LBB1_7:
	movq	%r13, -248(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r12), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$0, %ecx
	pxor	%xmm0, %xmm0
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r12, -296(%rbp)        # 8-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #             Child Loop BB1_23 Depth 6
                                        #               Child Loop BB1_27 Depth 7
                                        #             Child Loop BB1_33 Depth 6
                                        #     Child Loop BB1_318 Depth 2
                                        #     Child Loop BB1_330 Depth 2
                                        #     Child Loop BB1_320 Depth 2
                                        #     Child Loop BB1_233 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_181 Depth 2
                                        #     Child Loop BB1_188 Depth 2
                                        #     Child Loop BB1_279 Depth 2
                                        #     Child Loop BB1_244 Depth 2
                                        #     Child Loop BB1_249 Depth 2
                                        #     Child Loop BB1_350 Depth 2
                                        #     Child Loop BB1_363 Depth 2
                                        #     Child Loop BB1_370 Depth 2
                                        #     Child Loop BB1_422 Depth 2
                                        #     Child Loop BB1_417 Depth 2
                                        #     Child Loop BB1_443 Depth 2
                                        #       Child Loop BB1_451 Depth 3
                                        #     Child Loop BB1_471 Depth 2
                                        #     Child Loop BB1_433 Depth 2
                                        #     Child Loop BB1_386 Depth 2
                                        #     Child Loop BB1_403 Depth 2
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_11 Depth 3
                                        #       Child Loop BB1_19 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #             Child Loop BB1_23 Depth 6
                                        #               Child Loop BB1_27 Depth 7
                                        #             Child Loop BB1_33 Depth 6
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_13
# %bb.10:                               # %.preheader9
                                        #   in Loop: Header=BB1_9 Depth=2
	movq	%rdx, %rbx
	.p2align	4, 0x90
.LBB1_11:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB1_11
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rbx, %r14
	subq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_17
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=2
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rdx, %r13
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_483
# %bb.16:                               #   in Loop: Header=BB1_9 Depth=2
	addl	%r14d, -132(%rbp)       # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	%r13, %rdx
.LBB1_17:                               #   in Loop: Header=BB1_9 Depth=2
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_483
# %bb.18:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$1, %rbx
	movb	$0, -41(%rbp)
	movl	$-1, %r14d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	movq	-88(%rbp), %r11         # 8-byte Reload
.LBB1_19:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #             Child Loop BB1_23 Depth 6
                                        #               Child Loop BB1_27 Depth 7
                                        #             Child Loop BB1_33 Depth 6
	movl	$42, __A_VARIABLE(%rip)
.LBB1_20:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_21 Depth 5
                                        #             Child Loop BB1_23 Depth 6
                                        #               Child Loop BB1_27 Depth 7
                                        #             Child Loop BB1_33 Depth 6
	movb	(%rbx), %al
	addq	$1, %rbx
.LBB1_21:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_23 Depth 6
                                        #               Child Loop BB1_27 Depth 7
                                        #             Child Loop BB1_33 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%al, %r13d
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_23 Depth=6
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        #           Parent Loop BB1_21 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB1_27 Depth 7
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %r13d
	jne	.LBB1_30
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=6
	movsbl	(%rbx), %r13d
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %r13d
	je	.LBB1_40
# %bb.25:                               #   in Loop: Header=BB1_23 Depth=6
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %eax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %eax
	ja	.LBB1_22
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB1_23 Depth=6
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_27:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        #           Parent Loop BB1_21 Depth=5
                                        #             Parent Loop BB1_23 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	leal	(%r14,%r14,4), %ecx
	leal	(%rax,%rcx,2), %r14d
	movsbl	(%rbx), %r13d
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jb	.LBB1_27
# %bb.28:                               #   in Loop: Header=BB1_23 Depth=6
	testl	%r14d, %r14d
	jns	.LBB1_22
# %bb.29:                               #   in Loop: Header=BB1_23 Depth=6
	movl	$-1, %r14d
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=5
	leal	-32(%r13), %eax
	cmpl	$90, %eax
	ja	.LBB1_142
# %bb.31:                               #   in Loop: Header=BB1_21 Depth=5
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_32:                               #   in Loop: Header=BB1_21 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_33:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_19 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        #           Parent Loop BB1_21 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rsi,%rsi,4), %eax
	leal	-48(%r13,%rax,2), %esi
	movzbl	(%rbx), %eax
	addq	$1, %rbx
	movsbl	%al, %r13d
	leal	-48(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB1_33
	jmp	.LBB1_21
.LBB1_34:                               #   in Loop: Header=BB1_20 Depth=4
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_20 Depth=4
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_37
.LBB1_36:                               #   in Loop: Header=BB1_20 Depth=4
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB1_37:                               #   in Loop: Header=BB1_20 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB1_20
# %bb.38:                               #   in Loop: Header=BB1_19 Depth=3
	negl	%esi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:                               # %.loopexit1
                                        #   in Loop: Header=BB1_19 Depth=3
	orl	$4, %r9d
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_19 Depth=3
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_19 Depth=3
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_42:                               #   in Loop: Header=BB1_19 Depth=3
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB1_43:                               #   in Loop: Header=BB1_19 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r14d
	cmpl	$-2, %r14d
	movl	$-1, %eax
	cmovlel	%eax, %r14d
	jmp	.LBB1_19
.LBB1_44:                               #   in Loop: Header=BB1_19 Depth=3
	cmpb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_19
# %bb.45:                               #   in Loop: Header=BB1_19 Depth=3
	movb	$32, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_19
.LBB1_46:                               #   in Loop: Header=BB1_19 Depth=3
	orl	$1, %r9d
	jmp	.LBB1_19
.LBB1_47:                               #   in Loop: Header=BB1_19 Depth=3
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	movq	%r13, -256(%rbp)        # 8-byte Spill
	testq	%r13, %r13
	je	.LBB1_19
# %bb.48:                               #   in Loop: Header=BB1_19 Depth=3
	cmpq	$0, -176(%rbp)          # 8-byte Folded Reload
	je	.LBB1_19
# %bb.49:                               #   in Loop: Header=BB1_19 Depth=3
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_19
# %bb.50:                               #   in Loop: Header=BB1_19 Depth=3
	orl	$1024, %r9d             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_19
.LBB1_51:                               #   in Loop: Header=BB1_19 Depth=3
	movb	$43, -41(%rbp)
	jmp	.LBB1_19
.LBB1_52:                               #   in Loop: Header=BB1_19 Depth=3
	orl	$128, %r9d
	jmp	.LBB1_19
.LBB1_53:                               #   in Loop: Header=BB1_19 Depth=3
	orl	$8, %r9d
	jmp	.LBB1_19
.LBB1_54:                               #   in Loop: Header=BB1_19 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edi
	cmovel	%ecx, %edi
	cmoveq	%rax, %rbx
	orl	%edi, %r9d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_19
.LBB1_55:                               #   in Loop: Header=BB1_19 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_56:                               #   in Loop: Header=BB1_19 Depth=3
	orl	$16, %r9d
	jmp	.LBB1_19
.LBB1_57:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB1_62
# %bb.58:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB1_64
# %bb.59:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_68
# %bb.60:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_72
# %bb.61:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_73
.LBB1_62:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	-132(%rbp), %rax        # 4-byte Folded Reload
	movslq	(%r12), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_66
# %bb.63:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%r12), %rcx
	addl	$8, %edx
	movl	%edx, (%r12)
	jmp	.LBB1_67
.LBB1_64:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_70
# %bb.65:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_71
.LBB1_66:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_67:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_76
.LBB1_68:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_74
# %bb.69:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_75
.LBB1_70:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_71:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_76
.LBB1_72:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_73:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_76
.LBB1_74:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_75:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movb	%cl, (%rax)
.LBB1_76:                               #   in Loop: Header=BB1_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_77:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r9b
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	jne	.LBB1_80
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	4(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$160, %rcx
	ja	.LBB1_85
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r12)
	jmp	.LBB1_86
.LBB1_80:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %r15d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-304(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_87
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_130
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_131
.LBB1_83:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_132
# %bb.84:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_133
.LBB1_85:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB1_86:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	%r9d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB1_87:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm0, -160(%rbp)       # 16-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB1_91
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	-160(%rbp), %xmm1       # 16-byte Reload
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	jbe	.LBB1_90
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_90:                               #   in Loop: Header=BB1_8 Depth=1
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
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_342
.LBB1_91:                               #   in Loop: Header=BB1_8 Depth=1
	movaps	-160(%rbp), %xmm0       # 16-byte Reload
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_95
# %bb.92:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, %r12d
	orl	$32, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r12d
	movl	%r15d, %ecx
	jne	.LBB1_98
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$97, %r13d
	sete	%al
	movb	$48, -98(%rbp)
	shlb	$5, %al
	orb	$88, %al
	movb	%al, -97(%rbp)
	orl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %r14d
	jl	.LBB1_150
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	leal	1(%r14), %eax
	movslq	%eax, %rdi
	movl	%ecx, %r15d
	callq	malloc
	movl	%r15d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edx
	movq	%rax, %rsi
	testq	%rax, %rax
	movdqa	-160(%rbp), %xmm1       # 16-byte Reload
	jne	.LBB1_166
	jmp	.LBB1_487
.LBB1_95:                               #   in Loop: Header=BB1_8 Depth=1
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	%xmm0, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%r15d, %r9d
	jns	.LBB1_97
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %edi
	cmovlq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	andl	$-129, %r9d
	movl	$3, %edx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_342
.LBB1_98:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r14d
	movdqa	-160(%rbp), %xmm1       # 16-byte Reload
	je	.LBB1_165
# %bb.99:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-208(%rbp), %rax        # 8-byte Reload
	jne	.LBB1_167
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %edx
	cmpl	$103, %r12d
	je	.LBB1_166
	jmp	.LBB1_167
.LBB1_101:                              #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_102:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB1_107
# %bb.103:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB1_144
# %bb.104:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_201
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_220
# %bb.106:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_221
.LBB1_107:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_146
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_147
.LBB1_109:                              #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$79, %r13d
.LBB1_110:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB1_136
# %bb.111:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB1_151
# %bb.112:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_208
# %bb.113:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_287
# %bb.114:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_288
.LBB1_115:                              #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$85, %r13d
.LBB1_116:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB1_138
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB1_153
# %bb.118:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_210
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_289
# %bb.120:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_290
.LBB1_121:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.6, %edi
	jmp	.LBB1_125
.LBB1_122:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_155
# %bb.123:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_156
.LBB1_124:                              # %.loopexit5
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.4, %edi
.LBB1_125:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB1_140
# %bb.126:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r9b
	jne	.LBB1_157
# %bb.127:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r9d              # imm = 0x200
	jne	.LBB1_212
# %bb.128:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_291
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_292
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_131:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %al
	movb	%al, -416(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %edx
	xorl	%r10d, %r10d
	leaq	-416(%rbp), %rdi
	jmp	.LBB1_149
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_148
# %bb.134:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_194
# %bb.135:                              #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_195
.LBB1_136:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_159
# %bb.137:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_160
.LBB1_138:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_161
# %bb.139:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_162
.LBB1_140:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_163
# %bb.141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_164
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB1_483
# %bb.143:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%r13b, -416(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %edx
	xorl	%r10d, %r10d
	leaq	-416(%rbp), %rdi
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_342
.LBB1_144:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_203
# %bb.145:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_204
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB1_224
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r14d
	movl	$6, %edx
	cmovbl	%r14d, %edx
	xorl	%r10d, %r10d
	movl	$.L.str.5, %edi
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB1_341
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-416(%rbp), %rax
	xorl	%esi, %esi
	movl	%r14d, %edx
	movdqa	-160(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB1_166
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_214
# %bb.152:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_215
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_216
# %bb.154:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_217
.LBB1_155:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_156:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	orl	$2, %r9d
	movw	$30768, -98(%rbp)       # imm = 0x7830
	movl	$120, %r13d
	movl	$.L.str.4, %r12d
	jmp	.LBB1_305
.LBB1_157:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_218
# %bb.158:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB1_219
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_160:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB1_295
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_162:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB1_298
.LBB1_163:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	jmp	.LBB1_301
.LBB1_165:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
	movl	$6, %edx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB1_166:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r14d
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%xmm1, %rdx
	testq	%rdx, %rdx
	js	.LBB1_169
# %bb.168:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	%xmm1, %xmm0
	jmp	.LBB1_170
.LBB1_169:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r12d
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	jne	.LBB1_182
# %bb.171:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %r15
	leaq	-76(%rbp), %rdi
	callq	frexp
	mulsd	.LCPI1_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_173
	jp	.LBB1_173
# %bb.172:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_173:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$97, %r13d
	movl	$.L.str.4, %ecx
	movl	$.L.str.6, %r8d
	cmoveq	%rcx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r9d
	xorl	%esi, %esi
	movq	%r15, %rdi
	.p2align	4, 0x90
.LBB1_174:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	.LCPI1_2(%rip), %xmm0
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
	cmpl	%edx, %r9d
	je	.LBB1_176
# %bb.175:                              #   in Loop: Header=BB1_174 Depth=2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_174
	jp	.LBB1_174
.LBB1_176:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rdi,%rsi), %r11
	ucomisd	.LCPI1_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB1_186
# %bb.177:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	.LCPI1_3(%rip), %xmm0
	jne	.LBB1_179
	jp	.LBB1_179
# %bb.178:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB1_186
.LBB1_179:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%rsi, %r9
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jle	.LBB1_226
# %bb.180:                              # %.preheader56
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	subl	%edx, %eax
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movl	-48(%rbp), %esi         # 4-byte Reload
	.p2align	4, 0x90
.LBB1_181:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%r11)
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	testl	%eax, %eax
	jg	.LBB1_181
	jmp	.LBB1_235
.LBB1_182:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r12d
	movdqa	%xmm0, -208(%rbp)       # 16-byte Spill
	jne	.LBB1_189
# %bb.183:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-76(%rbp), %rcx
	leaq	-276(%rbp), %r8
	leaq	-184(%rbp), %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$3, %esi
	movl	%r14d, %edx
	callq	_dtoa_r
	movapd	-208(%rbp), %xmm1       # 16-byte Reload
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rax
	addq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_184
	jnp	.LBB1_205
.LBB1_184:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$48, %cl
	jne	.LBB1_205
# %bb.185:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %r15d
	subl	%r14d, %r15d
	movl	%r15d, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_206
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rdi,%rsi), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -184(%rbp)
	movb	(%rcx), %sil
	movl	$42, __A_VARIABLE(%rip)
	cmpb	15(%r8), %sil
	jne	.LBB1_196
# %bb.187:                              # %.preheader54
                                        #   in Loop: Header=BB1_8 Depth=1
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	.p2align	4, 0x90
.LBB1_188:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, -184(%rbp)
	movzbl	-1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%sil, %dl
	je	.LBB1_188
	jmp	.LBB1_197
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
	cmpl	$101, %r12d
	jne	.LBB1_191
# %bb.190:                              #   in Loop: Header=BB1_8 Depth=1
	leal	1(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-76(%rbp), %rcx
	leaq	-276(%rbp), %r8
	leaq	-184(%rbp), %r9
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$2, %esi
	movl	%r15d, %edx
	callq	_dtoa_r
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %r12d
	jne	.LBB1_207
# %bb.192:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %esi         # 4-byte Reload
	testb	$1, %sil
	jne	.LBB1_227
# %bb.193:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %r11
	jmp	.LBB1_234
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%r10d, %r10d
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movl	-48(%rbp), %r9d         # 4-byte Reload
	jmp	.LBB1_342
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%esi, %edx
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %dl
	jne	.LBB1_199
# %bb.198:                              #   in Loop: Header=BB1_8 Depth=1
	movb	10(%r8), %dl
	jmp	.LBB1_200
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$1, %dl
.LBB1_200:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_235
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_222
# %bb.202:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_223
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_204:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %r15
	jmp	.LBB1_224
.LBB1_205:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r15d
.LBB1_206:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %esi         # 4-byte Reload
	jmp	.LBB1_229
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %rax
	movl	-48(%rbp), %esi         # 4-byte Reload
	jmp	.LBB1_228
.LBB1_208:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_293
# %bb.209:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_294
.LBB1_210:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_296
# %bb.211:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_297
.LBB1_212:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_299
# %bb.213:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r12), %rcx
	addl	$8, %eax
	movl	%eax, (%r12)
	jmp	.LBB1_300
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_215:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB1_295
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB1_298
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r15d
	jmp	.LBB1_301
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %r15
	jmp	.LBB1_224
.LBB1_222:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_223:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %r15
.LBB1_224:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r15, %r15
	jns	.LBB1_307
# %bb.225:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%r15
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_307
.LBB1_226:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movl	-48(%rbp), %esi         # 4-byte Reload
	jmp	.LBB1_235
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %rax
.LBB1_228:                              #   in Loop: Header=BB1_8 Depth=1
	movapd	-208(%rbp), %xmm1       # 16-byte Reload
.LBB1_229:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_231
	jp	.LBB1_231
# %bb.230:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r11
	jmp	.LBB1_234
.LBB1_231:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r11
	jae	.LBB1_234
# %bb.232:                              # %.preheader58
                                        #   in Loop: Header=BB1_8 Depth=1
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	.p2align	4, 0x90
.LBB1_233:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%r11), %rax
	movq	%rax, -184(%rbp)
	movb	$48, (%r11)
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %r11
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r11
	jb	.LBB1_233
	jmp	.LBB1_235
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
.LBB1_235:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%esi, %r9d
	orl	$256, %r9d              # imm = 0x100
	subl	%edi, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %r12d
	jne	.LBB1_239
# %bb.236:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-3, %ecx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jl	.LBB1_238
# %bb.237:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$103, %eax
	cmpl	%r14d, %ecx
	jle	.LBB1_240
.LBB1_238:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_241
.LBB1_239:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$102, %eax
	cmpl	$70, %r13d
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_241
.LBB1_240:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	jmp	.LBB1_250
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %r13d
	jg	.LBB1_250
# %bb.242:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -76(%rbp)
	movl	%r13d, %esi
	orl	$32, %esi
	leal	15(%r13), %ecx
	cmpl	$97, %esi
	movzbl	%cl, %ecx
	cmovnel	%r13d, %ecx
	movb	%cl, -167(%rbp)
	movl	$1, %ecx
	subl	%eax, %ecx
	testl	%eax, %eax
	setle	%al
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%edx, %ecx
	addb	%al, %al
	addb	$43, %al
	movb	%al, -166(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jl	.LBB1_265
# %bb.243:                              # %.preheader48
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	movq	$-1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_244:                              #   Parent Loop BB1_8 Depth=1
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
	movb	%dil, -178(%rbp,%rsi)
	addq	$-1, %rsi
	leaq	-1(%r10), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %edx
	jg	.LBB1_244
# %bb.245:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$48, %cl
	movb	%cl, -178(%rbp,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	leaq	-165(%rbp), %rdx
	cmpq	$1, %r8
	jg	.LBB1_268
# %bb.246:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%cl, -165(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-164(%rbp), %rdx
	testq	%rsi, %rsi
	je	.LBB1_268
# %bb.247:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%dil, -164(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-163(%rbp), %rdx
	testq	%r8, %r8
	jns	.LBB1_268
# %bb.248:                              # %.preheader46
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-163(%rbp), %rdx
.LBB1_249:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-176(%rbp,%r10), %eax
	movb	%al, (%rdx)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r10
	cmpq	$-1, %r10
	jl	.LBB1_249
	jmp	.LBB1_268
.LBB1_250:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r10d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	jne	.LBB1_255
# %bb.251:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jle	.LBB1_272
# %bb.252:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r14d, %r14d
	jne	.LBB1_254
# %bb.253:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %edx
	testb	$1, %sil
	je	.LBB1_260
.LBB1_254:                              #   in Loop: Header=BB1_8 Depth=1
	addl	-216(%rbp), %r14d       # 4-byte Folded Reload
	addl	%r10d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edx
	jmp	.LBB1_260
.LBB1_255:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r11d, %r10d
	jge	.LBB1_258
# %bb.256:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	leal	(%r11,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	jg	.LBB1_260
# %bb.257:                              #   in Loop: Header=BB1_8 Depth=1
	subl	%r10d, %edx
	addl	$1, %edx
	movl	%edx, %ecx
	jmp	.LBB1_275
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %edx
	testb	$1, %sil
	je	.LBB1_260
# %bb.259:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	leal	(%r10,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_260:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %esi             # imm = 0x400
	je	.LBB1_264
# %bb.261:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r10d, %r10d
	jle	.LBB1_264
# %bb.262:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-176(%rbp), %r8         # 8-byte Reload
	movb	(%r8), %cl
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %cl
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	jne	.LBB1_277
# %bb.263:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %edx
	xorl	%r15d, %r15d
	jmp	.LBB1_283
.LBB1_264:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_285
.LBB1_265:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-165(%rbp), %rdx
	cmpl	$97, %esi
	je	.LBB1_267
# %bb.266:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -165(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-164(%rbp), %rdx
.LBB1_267:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	addb	$48, %cl
	movb	%cl, (%rdx)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_268:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-167(%rbp), %rax
	subl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rdx,%r11), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r11d
	jg	.LBB1_270
# %bb.269:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_271
.LBB1_270:                              #   in Loop: Header=BB1_8 Depth=1
	addl	-216(%rbp), %ecx        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB1_271:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%r10d, %r10d
	jmp	.LBB1_276
.LBB1_272:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r14d, %r14d
	jne	.LBB1_274
# %bb.273:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testb	$1, %sil
	je	.LBB1_275
.LBB1_274:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_275:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_276:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_284
.LBB1_277:                              # %.preheader49
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movl	%r10d, %edx
	jmp	.LBB1_279
	.p2align	4, 0x90
.LBB1_278:                              #   in Loop: Header=BB1_279 Depth=2
	movb	%al, %sil
	addl	%esi, %r14d
	movb	%r10b, %cl
	addl	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r10d
	cmpb	$127, %cl
	je	.LBB1_283
.LBB1_279:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %edx
	jle	.LBB1_282
# %bb.280:                              #   in Loop: Header=BB1_279 Depth=2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r8)
	sete	%r10b
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_278
# %bb.281:                              #   in Loop: Header=BB1_279 Depth=2
	addq	$1, %r8
	jmp	.LBB1_278
.LBB1_282:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %edx
.LBB1_283:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movq	%r15, -128(%rbp)        # 8-byte Spill
	leal	(%r15,%r14), %eax
	movq	-256(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	imull	%eax, %ecx
	addl	-232(%rbp), %ecx        # 4-byte Folded Reload
	movl	%edx, %r10d
.LBB1_284:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
.LBB1_285:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jns	.LBB1_343
# %bb.286:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
	xorl	%r14d, %r14d
	jmp	.LBB1_342
.LBB1_287:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_288:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB1_295
.LBB1_289:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_290:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB1_298
.LBB1_291:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_292:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	jmp	.LBB1_301
.LBB1_293:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_294:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB1_295:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r9d            # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB1_306
.LBB1_296:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_297:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB1_298:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB1_306
.LBB1_299:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_300:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r15d
.LBB1_301:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB1_304
# %bb.302:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%r15, %r15
	je	.LBB1_304
# %bb.303:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -98(%rbp)
	movb	%r13b, -97(%rbp)
	orl	$2, %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_304:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r9d            # imm = 0xFBFF
.LBB1_305:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
.LBB1_306:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -41(%rbp)
.LBB1_307:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_313
# %bb.308:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB1_314
# %bb.309:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%r15, %r15
	jne	.LBB1_314
# %bb.310:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_312
# %bb.311:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	jne	.LBB1_337
.LBB1_312:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r9d
	leaq	-316(%rbp), %rdi
	jmp	.LBB1_339
.LBB1_313:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_315
.LBB1_314:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r9d
.LBB1_315:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_319
# %bb.316:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_324
# %bb.317:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-316(%rbp), %rdi
	cmpl	$2, %eax
	jne	.LBB1_326
	.p2align	4, 0x90
.LBB1_318:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %eax
	andl	$15, %eax
	movzbl	(%r12,%rax), %eax
	movb	%al, -1(%rdi)
	addq	$-1, %rdi
	shrq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_318
	jmp	.LBB1_339
.LBB1_319:                              # %.preheader42
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-317(%rbp), %rax
	.p2align	4, 0x90
.LBB1_320:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r15
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB1_320
# %bb.321:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	1(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB1_339
# %bb.322:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	je	.LBB1_339
# %bb.323:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB1_339
.LBB1_324:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r15
	ja	.LBB1_327
# %bb.325:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$48, %r15b
	movb	%r15b, -317(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_338
.LBB1_326:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.7, %edi
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movq	%rsi, %r15
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%r9d, %r12d
	callq	strlen
	movl	$.L.str.7, %edi
	movl	%r12d, %r9d
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r15, %rsi
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	%rax, %rdx
	jmp	.LBB1_340
.LBB1_327:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-256(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%r11d, %r11d
	leaq	-316(%rbp), %rdi
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	jmp	.LBB1_330
.LBB1_328:                              #   in Loop: Header=BB1_330 Depth=2
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_329:                              #   in Loop: Header=BB1_330 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r12
	jbe	.LBB1_336
.LBB1_330:                              #   Parent Loop BB1_8 Depth=1
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
	addl	$1, %r11d
	movb	%cl, -1(%rdi)
	addq	$-1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r9d             # imm = 0x400
	je	.LBB1_329
# %bb.331:                              #   in Loop: Header=BB1_330 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r11d
	jne	.LBB1_329
# %bb.332:                              #   in Loop: Header=BB1_330 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %r12
	jb	.LBB1_329
# %bb.333:                              #   in Loop: Header=BB1_330 Depth=2
	cmpb	$127, %al
	je	.LBB1_329
# %bb.334:                              #   in Loop: Header=BB1_330 Depth=2
	addq	-88(%rbp), %rdi         # 8-byte Folded Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	xorl	%r11d, %r11d
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_328
# %bb.335:                              #   in Loop: Header=BB1_330 Depth=2
	addq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_328
.LBB1_336:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_339
.LBB1_337:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -317(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r9d
.LBB1_338:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-317(%rbp), %rdi
	.p2align	4, 0x90
.LBB1_339:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-316(%rbp), %rax
	movl	%eax, %edx
	subl	%edi, %edx
.LBB1_340:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB1_341:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB1_342:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_343:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%edx, %r14d
	movl	%edx, %ecx
	cmovgel	%r14d, %ecx
	movb	-41(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_345
# %bb.344:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_345:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r9b
	movq	%r12, -64(%rbp)         # 8-byte Spill
	je	.LBB1_347
# %bb.346:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_347:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r10, -272(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, -88(%rbp)         # 8-byte Spill
	movdqa	%xmm0, -160(%rbp)       # 16-byte Spill
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r12d
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	jne	.LBB1_355
# %bb.348:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r15d
	jle	.LBB1_355
# %bb.349:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB1_352
	.p2align	4, 0x90
.LBB1_350:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.351:                              #   in Loop: Header=BB1_350 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_350
	jmp	.LBB1_353
.LBB1_352:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_353:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.blanks, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.354:                              #   in Loop: Header=BB1_8 Depth=1
	movb	-41(%rbp), %al
	.p2align	4, 0x90
.LBB1_355:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_357
# %bb.356:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-41(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_357:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_359
# %bb.358:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-98(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_359:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r12d
	jne	.LBB1_367
# %bb.360:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	-236(%rbp), %r15d       # 4-byte Folded Reload
	jle	.LBB1_367
# %bb.361:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB1_365
# %bb.362:                              # %.preheader36
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_363:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.364:                              #   in Loop: Header=BB1_363 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_363
	jmp	.LBB1_366
.LBB1_365:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_366:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_367:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	-232(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_374
# %bb.368:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_372
# %bb.369:                              # %.preheader33
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_370:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.371:                              #   in Loop: Header=BB1_370 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_370
	jmp	.LBB1_373
	.p2align	4, 0x90
.LBB1_372:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_373:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_374:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax         # 4-byte Reload
	testl	$256, %eax              # imm = 0x100
	jne	.LBB1_377
# %bb.375:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-232(%rbp), %rcx        # 4-byte Folded Reload
.LBB1_376:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB1_398
	.p2align	4, 0x90
.LBB1_377:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	jl	.LBB1_389
# %bb.378:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movapd	-160(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI1_4, %xmm0
	jne	.LBB1_410
	jp	.LBB1_410
# %bb.379:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.380:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpl	%eax, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB1_382
# %bb.381:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_399
.LBB1_382:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.383:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB1_399
# %bb.384:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %eax
	jl	.LBB1_435
# %bb.385:                              # %.preheader15
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	15(%rax), %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_386:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.387:                              #   in Loop: Header=BB1_386 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_386
# %bb.388:                              # %.loopexit17
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
	jmp	.LBB1_436
.LBB1_389:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -88(%rbp)           # 4-byte Folded Reload
	jg	.LBB1_392
# %bb.390:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB1_392
# %bb.391:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	movq	%r12, %rsi
	jmp	.LBB1_396
.LBB1_392:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.393:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.394:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	leal	-1(%rax), %r14d
	movapd	-160(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI1_4, %xmm0
	jne	.LBB1_395
	jnp	.LBB1_419
.LBB1_395:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-208(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_396:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_397:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-288(%rbp), %rcx        # 4-byte Folded Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-167(%rbp), %rdx
.LBB1_398:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_399:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_407
# %bb.400:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-236(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_407
# %bb.401:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_405
# %bb.402:                              # %.preheader12
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_403:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.404:                              #   in Loop: Header=BB1_403 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_403
	jmp	.LBB1_406
.LBB1_405:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_406:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.blanks, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_407:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	-236(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_409
# %bb.408:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_409:                              #   in Loop: Header=BB1_8 Depth=1
	addl	%ecx, -132(%rbp)        # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-296(%rbp), %r12        # 8-byte Reload
	movdqa	-160(%rbp), %xmm0       # 16-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_8
.LBB1_410:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_426
# %bb.411:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r15d
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpl	%ecx, %eax
	jle	.LBB1_413
# %bb.412:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r15d
.LBB1_413:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	-248(%rbp), %r13        # 8-byte Reload
	jle	.LBB1_415
# %bb.414:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
.LBB1_415:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	movl	$0, %eax
	cmovsl	%eax, %r15d
	movq	-272(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %r14d
	jle	.LBB1_439
# %bb.416:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_437
	.p2align	4, 0x90
.LBB1_417:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
# %bb.418:                              #   in Loop: Header=BB1_417 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB1_417
	jmp	.LBB1_438
.LBB1_419:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jl	.LBB1_397
# %bb.420:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpl	$18, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jl	.LBB1_425
# %bb.421:                              # %.preheader30
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	15(%rax), %r14d
	.p2align	4, 0x90
.LBB1_422:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.423:                              #   in Loop: Header=BB1_422 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_422
# %bb.424:                              # %.loopexit32
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
.LBB1_425:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_396
.LBB1_426:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.427:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	orl	-88(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_429
# %bb.428:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_399
.LBB1_429:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.430:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_478
# %bb.431:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-17, %eax
	jg	.LBB1_476
# %bb.432:                              # %.preheader18
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_433:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.434:                              #   in Loop: Header=BB1_433 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_433
	jmp	.LBB1_477
.LBB1_435:                              #   in Loop: Header=BB1_8 Depth=1
	leal	-1(%rax), %r14d
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_436:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_398
.LBB1_437:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_438:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
.LBB1_439:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-272(%rbp), %r15        # 4-byte Folded Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %edi         # 4-byte Reload
	testl	$1024, %edi             # imm = 0x400
	jne	.LBB1_441
# %bb.440:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r15, %rdx
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	jmp	.LBB1_460
.LBB1_441:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	testl	%ecx, %ecx
	setg	%r13b
	movslq	-88(%rbp), %rax         # 4-byte Folded Reload
	addq	%rsi, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jg	.LBB1_443
.LBB1_442:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_456
.LBB1_443:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_451 Depth 3
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rax), %rcx
	testb	$1, %r13b
	cmovneq	%rax, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_480
# %bb.444:                              #   in Loop: Header=BB1_443 Depth=2
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r14d
	subl	%r15d, %r14d
	movq	-176(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jle	.LBB1_446
# %bb.445:                              #   in Loop: Header=BB1_443 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB1_446:                              #   in Loop: Header=BB1_443 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_448
# %bb.447:                              #   in Loop: Header=BB1_443 Depth=2
	movslq	%r14d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
.LBB1_448:                              #   in Loop: Header=BB1_443 Depth=2
	testl	%r14d, %r14d
	movq	-176(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %r12d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r12d
	jle	.LBB1_455
# %bb.449:                              #   in Loop: Header=BB1_443 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB1_453
# %bb.450:                              # %.preheader6
                                        #   in Loop: Header=BB1_443 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_451:                              #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_443 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
# %bb.452:                              #   in Loop: Header=BB1_451 Depth=3
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_451
	jmp	.LBB1_454
.LBB1_453:                              #   in Loop: Header=BB1_443 Depth=2
	movl	%r12d, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_454:                              #   in Loop: Header=BB1_443 Depth=2
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
.LBB1_455:                              #   in Loop: Header=BB1_443 Depth=2
	movzbl	%r13b, %eax
	notb	%r13b
	movzbl	%r13b, %ecx
	andl	$1, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	subl	%ecx, %edx
	andl	$1, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movsbq	(%rax), %rax
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	setg	%r13b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	testl	%edx, %edx
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r14         # 8-byte Reload
	jle	.LBB1_442
	jmp	.LBB1_443
.LBB1_456:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-232(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %r15
	jbe	.LBB1_458
# %bb.457:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_459
.LBB1_458:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r15, %rdx
.LBB1_459:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-248(%rbp), %r13        # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	-48(%rbp), %edi         # 4-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
.LBB1_460:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jl	.LBB1_462
# %bb.461:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB1_464
.LBB1_462:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %r15
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_480
# %bb.463:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
.LBB1_464:                              #   in Loop: Header=BB1_8 Depth=1
	addl	%eax, %esi
	subl	%edx, %esi
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jge	.LBB1_466
# %bb.465:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
.LBB1_466:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB1_469
# %bb.467:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %r15
	movslq	%esi, %rcx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
# %bb.468:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	-76(%rbp), %eax
	movq	%r15, %rsi
.LBB1_469:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%esi, %r14d
	negl	%r14d
	testl	%esi, %esi
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_475
# %bb.470:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_473
.LBB1_471:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
# %bb.472:                              #   in Loop: Header=BB1_471 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB1_471
	jmp	.LBB1_474
.LBB1_473:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_474:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_479
.LBB1_475:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_399
.LBB1_476:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_477:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
.LBB1_478:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-88(%rbp), %rcx         # 4-byte Folded Reload
	jmp	.LBB1_376
.LBB1_479:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_480:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_481:
	movl	$42, __A_VARIABLE(%rip)
	movq	-192(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_484
# %bb.482:
	callq	free
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB1_483:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_485
.LBB1_484:
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB1_485:
	movl	-220(%rbp), %edi
	leaq	-220(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-132(%rbp), %eax        # 4-byte Folded Reload
.LBB1_486:
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
.LBB1_487:
	movq	-72(%rbp), %r15         # 8-byte Reload
	orb	$64, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_483
.Lfunc_end1:
	.size	_vfprintf_r, .Lfunc_end1-_vfprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_44
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_46
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_47
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_34
	.quad	.LBB1_51
	.quad	.LBB1_142
	.quad	.LBB1_39
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_52
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_32
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_77
	.quad	.LBB1_142
	.quad	.LBB1_81
	.quad	.LBB1_101
	.quad	.LBB1_77
	.quad	.LBB1_77
	.quad	.LBB1_77
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_53
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_109
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_83
	.quad	.LBB1_142
	.quad	.LBB1_115
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_121
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_77
	.quad	.LBB1_142
	.quad	.LBB1_81
	.quad	.LBB1_102
	.quad	.LBB1_77
	.quad	.LBB1_77
	.quad	.LBB1_77
	.quad	.LBB1_54
	.quad	.LBB1_102
	.quad	.LBB1_56
	.quad	.LBB1_142
	.quad	.LBB1_55
	.quad	.LBB1_142
	.quad	.LBB1_57
	.quad	.LBB1_110
	.quad	.LBB1_122
	.quad	.LBB1_56
	.quad	.LBB1_142
	.quad	.LBB1_83
	.quad	.LBB1_56
	.quad	.LBB1_116
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_124
	.quad	.LBB1_142
	.quad	.LBB1_56
                                        # -- End function
	.type	_vfprintf_r.blanks,@object # @_vfprintf_r.blanks
	.p2align	4
_vfprintf_r.blanks:
	.zero	16,32
	.size	_vfprintf_r.blanks, 16

	.type	_vfprintf_r.zeroes,@object # @_vfprintf_r.zeroes
	.p2align	4
_vfprintf_r.zeroes:
	.zero	16,48
	.size	_vfprintf_r.zeroes, 16

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
