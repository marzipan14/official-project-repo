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
.LCPI1_4:
	.zero	16,48
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4593671619917905920     # double 0.125
.LCPI1_2:
	.quad	4625196817309499392     # double 16
.LCPI1_3:
	.quad	4602678819172646912     # double 0.5
.LCPI1_5:
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
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %r14
	callq	_localeconv_r
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	testq	%r14, %r14
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB1_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB1_3:
	leaq	-252(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$8, 16(%rax)
	je	.LBB1_5
# %bb.4:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	$0, 24(%rax)
	jne	.LBB1_7
.LBB1_5:
	movq	%r14, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__swsetup_r
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-252(%rbp), %edi
	leaq	-252(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB1_460
.LBB1_7:
	movq	%r12, -240(%rbp)        # 8-byte Spill
	movq	%rbx, -272(%rbp)        # 8-byte Spill
	leaq	8(%r15), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	pxor	%xmm2, %xmm2
	movl	$0, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, %r12d
	xorl	%eax, %eax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r15, -296(%rbp)        # 8-byte Spill
	movq	%r14, -64(%rbp)         # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_24 Depth 5
                                        #         Child Loop BB1_29 Depth 4
                                        #     Child Loop BB1_239 Depth 2
                                        #     Child Loop BB1_332 Depth 2
                                        #     Child Loop BB1_243 Depth 2
                                        #     Child Loop BB1_206 Depth 2
                                        #     Child Loop BB1_151 Depth 2
                                        #     Child Loop BB1_354 Depth 2
                                        #     Child Loop BB1_357 Depth 2
                                        #     Child Loop BB1_158 Depth 2
                                        #     Child Loop BB1_393 Depth 2
                                        #     Child Loop BB1_366 Depth 2
                                        #     Child Loop BB1_419 Depth 2
                                        #     Child Loop BB1_422 Depth 2
                                        #     Child Loop BB1_427 Depth 2
                                        #     Child Loop BB1_253 Depth 2
                                        #     Child Loop BB1_266 Depth 2
                                        #     Child Loop BB1_273 Depth 2
                                        #     Child Loop BB1_326 Depth 2
                                        #     Child Loop BB1_318 Depth 2
                                        #     Child Loop BB1_429 Depth 2
                                        #       Child Loop BB1_435 Depth 3
                                        #     Child Loop BB1_452 Depth 2
                                        #     Child Loop BB1_343 Depth 2
                                        #     Child Loop BB1_289 Depth 2
                                        #     Child Loop BB1_306 Depth 2
	movq	%r13, %rdx
	.p2align	4, 0x90
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13), %eax
	testb	%al, %al
	je	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	cmpb	$37, %al
	je	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$1, %r13
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%r13, %rbx
	subq	%rdx, %rbx
	testl	%ebx, %ebx
	je	.LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_8 Depth=1
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movslq	%ebx, %rcx
	movq	%r14, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, %r15
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_459
# %bb.14:                               #   in Loop: Header=BB1_8 Depth=1
	addl	%ebx, %r12d
	movb	(%r13), %al
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	%r15, %rdx
.LBB1_15:                               #   in Loop: Header=BB1_8 Depth=1
	testb	%al, %al
	movq	-296(%rbp), %r15        # 8-byte Reload
	je	.LBB1_459
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, -148(%rbp)       # 4-byte Spill
	addq	$1, %r13
	movb	$0, -41(%rbp)
	movl	$-1, %r14d
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
.LBB1_17:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_24 Depth 5
                                        #         Child Loop BB1_29 Depth 4
	movb	(%r13), %al
	addq	$1, %r13
.LBB1_18:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_24 Depth 5
                                        #         Child Loop BB1_29 Depth 4
	movsbl	%al, %r12d
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=4
	movl	%eax, %r14d
.LBB1_20:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_17 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_24 Depth 5
	cmpl	$46, %r12d
	jne	.LBB1_26
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=4
	movsbl	(%r13), %r12d
	addq	$1, %r13
	cmpl	$42, %r12d
	je	.LBB1_30
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=4
	leal	-48(%r12), %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	ja	.LBB1_19
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB1_20 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_17 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movsbl	(%r13), %r12d
	addq	$1, %r13
	leal	-48(%r12), %ecx
	cmpl	$10, %ecx
	jb	.LBB1_24
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=4
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB1_20
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_18 Depth=3
	cmpl	$122, %r12d
	ja	.LBB1_120
# %bb.27:                               #   in Loop: Header=BB1_18 Depth=3
	movl	%r12d, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_28:                               #   in Loop: Header=BB1_18 Depth=3
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB1_29:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_17 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leal	(%r8,%r8,4), %eax
	leal	(%r12,%rax,2), %r8d
	addl	$-48, %r8d
	movzbl	(%r13), %eax
	addq	$1, %r13
	movsbl	%al, %r12d
	leal	-48(%r12), %ecx
	cmpl	$10, %ecx
	jb	.LBB1_29
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_17 Depth=2
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_17 Depth=2
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_33
	.p2align	4, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB1_33:                               #   in Loop: Header=BB1_17 Depth=2
	movl	(%rax), %r14d
	cmpl	$-2, %r14d
	movl	$-1, %eax
	cmovlel	%eax, %r14d
	jmp	.LBB1_17
.LBB1_34:                               #   in Loop: Header=BB1_17 Depth=2
	cmpb	$0, -41(%rbp)
	jne	.LBB1_17
# %bb.35:                               #   in Loop: Header=BB1_17 Depth=2
	movb	$32, -41(%rbp)
	jmp	.LBB1_17
.LBB1_36:                               #   in Loop: Header=BB1_17 Depth=2
	orl	$1, %r11d
	jmp	.LBB1_17
.LBB1_37:                               #   in Loop: Header=BB1_17 Depth=2
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	_localeconv_r
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movl	-48(%rbp), %r11d        # 4-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rbx, %rax
	movq	%rbx, -264(%rbp)        # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB1_17
# %bb.38:                               #   in Loop: Header=BB1_17 Depth=2
	cmpq	$0, -160(%rbp)          # 8-byte Folded Reload
	je	.LBB1_17
# %bb.39:                               #   in Loop: Header=BB1_17 Depth=2
	movl	%r11d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r11d
	jmp	.LBB1_17
.LBB1_40:                               #   in Loop: Header=BB1_17 Depth=2
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_48
# %bb.41:                               #   in Loop: Header=BB1_17 Depth=2
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_49
.LBB1_42:                               #   in Loop: Header=BB1_17 Depth=2
	movb	$43, -41(%rbp)
	jmp	.LBB1_17
.LBB1_43:                               #   in Loop: Header=BB1_17 Depth=2
	orl	$128, %r11d
	jmp	.LBB1_17
.LBB1_44:                               #   in Loop: Header=BB1_17 Depth=2
	orl	$8, %r11d
	jmp	.LBB1_17
.LBB1_45:                               #   in Loop: Header=BB1_17 Depth=2
	cmpb	$104, (%r13)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	1(%r13), %rax
	cmoveq	%rax, %r13
	orl	%ecx, %r11d
	jmp	.LBB1_17
.LBB1_46:                               #   in Loop: Header=BB1_17 Depth=2
	cmpb	$108, (%r13)
	leaq	1(%r13), %rax
	cmoveq	%rax, %r13
.LBB1_47:                               #   in Loop: Header=BB1_17 Depth=2
	orl	$16, %r11d
	jmp	.LBB1_17
.LBB1_48:                               #   in Loop: Header=BB1_17 Depth=2
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB1_49:                               #   in Loop: Header=BB1_17 Depth=2
	movl	(%rax), %r8d
	testl	%r8d, %r8d
	jns	.LBB1_17
# %bb.50:                               #   in Loop: Header=BB1_17 Depth=2
	negl	%r8d
.LBB1_51:                               # %.loopexit1
                                        #   in Loop: Header=BB1_17 Depth=2
	orl	$4, %r11d
	jmp	.LBB1_17
	.p2align	4, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$8, %r11b
	movq	%r8, -136(%rbp)         # 8-byte Spill
	jne	.LBB1_55
# %bb.53:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	4(%r15), %rcx
	movl	%r11d, %ebx
	cmpq	$160, %rcx
	ja	.LBB1_60
# %bb.54:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r15)
	jmp	.LBB1_61
.LBB1_55:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %r15
	movl	%r11d, %ebx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-304(%rbp)
	movsd	-304(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB1_62
.LBB1_56:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_110
# %bb.57:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_111
.LBB1_58:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_112
# %bb.59:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_113
.LBB1_60:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rsi)
.LBB1_61:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %r15
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB1_62:                               #   in Loop: Header=BB1_8 Depth=1
	movapd	%xmm0, -192(%rbp)       # 16-byte Spill
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB1_66
# %bb.63:                               #   in Loop: Header=BB1_8 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	ucomisd	%xmm2, %xmm0
	jbe	.LBB1_65
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
.LBB1_65:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r12d
	movl	$.L.str, %eax
	movl	$.L.str.1, %r9d
	cmovlq	%rax, %r9
	movl	%ebx, %r11d
	andl	$-129, %r11d
	movl	$3, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB1_250
.LBB1_66:                               #   in Loop: Header=BB1_8 Depth=1
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB1_70
# %bb.67:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %edi
	orl	$32, %edi
	cmpl	$97, %edi
	movl	%ebx, %ecx
	jne	.LBB1_73
# %bb.68:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$97, %r12d
	sete	%al
	movb	$48, -114(%rbp)
	shlb	$5, %al
	orb	$88, %al
	movb	%al, -113(%rbp)
	orl	$2, %ecx
	cmpl	$100, %r14d
	jl	.LBB1_127
# %bb.69:                               #   in Loop: Header=BB1_8 Depth=1
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
	jne	.LBB1_144
	jmp	.LBB1_461
.LBB1_70:                               #   in Loop: Header=BB1_8 Depth=1
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	%xmm2, %rax
	testq	%rax, %rax
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	%ebx, %r11d
	jns	.LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
.LBB1_72:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r12d
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %r9d
	cmovlq	%rax, %r9
	andl	$-129, %r11d
	movl	$3, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_126
.LBB1_73:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, %r14d
	movdqa	-192(%rbp), %xmm1       # 16-byte Reload
	je	.LBB1_142
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, %eax
	xorl	$103, %eax
	orl	%r14d, %eax
	movl	$1, %eax
	cmovnel	%r14d, %eax
	xorl	%edx, %edx
	movl	%eax, %r14d
	jmp	.LBB1_143
.LBB1_75:                               #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r11d
.LBB1_76:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r11b
	jne	.LBB1_81
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r11b
	jne	.LBB1_122
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_172
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_195
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_196
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	cmpq	$40, %rax
	ja	.LBB1_124
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	movq	(%rcx), %rbx
	jmp	.LBB1_198
.LBB1_83:                               #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r11d
	movl	$79, %r12d
.LBB1_84:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r11b
	jne	.LBB1_116
# %bb.85:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r11b
	jne	.LBB1_128
# %bb.86:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_179
# %bb.87:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_207
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_208
.LBB1_89:                               #   in Loop: Header=BB1_8 Depth=1
	orl	$16, %r11d
	movl	$85, %r12d
.LBB1_90:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r11b
	jne	.LBB1_118
# %bb.91:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r11b
	jne	.LBB1_130
# %bb.92:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_181
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_209
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_210
.LBB1_95:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.6, %esi
	testb	$16, %r11b
	je	.LBB1_106
.LBB1_96:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	cmpq	$40, %rax
	ja	.LBB1_132
# %bb.97:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	movq	(%rcx), %rbx
	movq	%rsi, %rdx
	jmp	.LBB1_224
.LBB1_98:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r11b
	jne	.LBB1_133
# %bb.99:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r11b
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	-148(%rbp), %r12d       # 4-byte Reload
	jne	.LBB1_183
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_211
# %bb.101:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_407
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_408
.LBB1_103:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_135
# %bb.104:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_136
.LBB1_105:                              # %.loopexit5
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.4, %esi
	testb	$16, %r11b
	jne	.LBB1_96
.LBB1_106:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r11b
	jne	.LBB1_137
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_185
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_213
# %bb.109:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_214
.LBB1_110:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_111:                              #   in Loop: Header=BB1_8 Depth=1
	movb	(%rax), %al
	movb	%al, -416(%rbp)
	jmp	.LBB1_121
.LBB1_112:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_113:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdi
	movb	$0, -41(%rbp)
	testq	%rdi, %rdi
	je	.LBB1_125
# %bb.114:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	testl	%r14d, %r14d
	js	.LBB1_168
# %bb.115:                              #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_169
.LBB1_116:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	cmpq	$40, %rax
	ja	.LBB1_139
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	movq	(%rcx), %rbx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_217
.LBB1_118:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_140
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_141
.LBB1_120:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%r12b, -416(%rbp)
.LBB1_121:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$0, -41(%rbp)
	movl	$1, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	-416(%rbp), %r9
	jmp	.LBB1_126
.LBB1_122:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rax
	cmpq	$40, %rax
	ja	.LBB1_174
# %bb.123:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	movswq	(%rcx), %rbx
	jmp	.LBB1_198
.LBB1_124:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	jmp	.LBB1_198
.LBB1_125:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r14d
	movl	$6, %ebx
	cmovbl	%r14d, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	$.L.str.5, %r9d
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	jmp	.LBB1_249
.LBB1_127:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-416(%rbp), %rax
	xorl	%edx, %edx
	movdqa	-192(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB1_144
.LBB1_128:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_187
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_188
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_189
# %bb.131:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_190
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	movq	%rsi, %rdx
	jmp	.LBB1_224
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-148(%rbp), %r12d       # 4-byte Reload
	movslq	%r12d, %rax
	movslq	(%r15), %rdx
	cmpq	$40, %rdx
	movq	-64(%rbp), %r14         # 8-byte Reload
	ja	.LBB1_191
# %bb.134:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r15), %rcx
	addl	$8, %edx
	movl	%edx, (%r15)
	jmp	.LBB1_192
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_136:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rbx
	orl	$2, %r11d
	movw	$30768, -114(%rbp)      # imm = 0x7830
	movl	$120, %r12d
	movl	$.L.str.4, %edx
	jmp	.LBB1_228
.LBB1_137:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_193
# %bb.138:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_194
.LBB1_139:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rbx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_217
.LBB1_140:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rax), %rbx
	movl	$1, %eax
	jmp	.LBB1_229
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$6, %r14d
	xorl	%edx, %edx
.LBB1_143:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r15, %rax
.LBB1_144:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%xmm1, %rsi
	testq	%rsi, %rsi
	js	.LBB1_146
# %bb.145:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	%xmm1, %xmm0
	jmp	.LBB1_147
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=1
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	pxor	%xmm1, %xmm0
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	cmpl	$97, %edi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	jne	.LBB1_161
# %bb.148:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, -168(%rbp)        # 4-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	leaq	-68(%rbp), %rdi
	callq	frexp
	mulsd	.LCPI1_1(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_150
	jp	.LBB1_150
# %bb.149:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, -68(%rbp)
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_151:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	.LCPI1_2(%rip), %xmm0
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
	movq	%r11, -248(%rbp)        # 8-byte Spill
	addl	$-1, %r11d
	addb	$31, %cl
	cmpl	%esi, %ebx
	je	.LBB1_153
# %bb.152:                              #   in Loop: Header=BB1_151 Depth=2
	leaq	1(%r9), %rdx
	leal	1(%r10), %r8d
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB1_151
	jp	.LBB1_151
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	-224(%rbp), %r9         # 8-byte Reload
	leaq	(%r9,%rax), %r8
	ucomisd	.LCPI1_3(%rip), %xmm0
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	ja	.LBB1_156
# %bb.154:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, %r15b
	je	.LBB1_175
# %bb.155:                              #   in Loop: Header=BB1_8 Depth=1
	ucomisd	.LCPI1_3(%rip), %xmm0
	jne	.LBB1_175
	jp	.LBB1_175
.LBB1_156:                              #   in Loop: Header=BB1_8 Depth=1
	addq	%r9, %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movb	(%rax), %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpb	15(%rdx), %cl
	jne	.LBB1_170
# %bb.157:                              # %.preheader50
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	.p2align	4, 0x90
.LBB1_158:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%rax)
	movq	-144(%rbp), %rdx
	leaq	-1(%rdx), %rax
	movq	%rax, -144(%rbp)
	movzbl	-1(%rdx), %edx
	cmpb	%cl, %dl
	je	.LBB1_158
# %bb.159:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$57, %dl
	jne	.LBB1_171
.LBB1_160:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movb	10(%rcx), %cl
	movb	%cl, (%rax)
	jmp	.LBB1_358
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
	cmpl	$102, %edi
	sete	%sil
	xorl	%ebx, %ebx
	cmpl	$101, %edi
	sete	%bl
	addl	%r14d, %ebx
	orl	$2, %esi
	leaq	-68(%rbp), %rcx
	leaq	-308(%rbp), %r8
	leaq	-144(%rbp), %r9
	movl	%edi, %r15d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movdqa	%xmm0, -224(%rbp)       # 16-byte Spill
	movl	%ebx, %edx
	callq	_dtoa_r
	movl	%r15d, %esi
	movq	%rax, %r9
	cmpl	$103, %r15d
	movl	-48(%rbp), %r10d        # 4-byte Reload
	jne	.LBB1_164
# %bb.162:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %ecx
	andl	$1, %ecx
	jne	.LBB1_164
# %bb.163:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-144(%rbp), %r8
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jmp	.LBB1_358
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%ebx, %rcx
	addq	%rcx, %rax
	cmpl	$102, %esi
	jne	.LBB1_178
# %bb.165:                              #   in Loop: Header=BB1_8 Depth=1
	pxor	%xmm0, %xmm0
	movapd	-224(%rbp), %xmm1       # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jne	.LBB1_166
	jnp	.LBB1_201
.LBB1_166:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$48, (%r9)
	jne	.LBB1_201
# %bb.167:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	subl	%ebx, %ecx
	movl	%ecx, -68(%rbp)
	jmp	.LBB1_202
.LBB1_168:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %r9
	movq	%rax, %rbx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB1_169:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movl	-48(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB1_250
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %edx
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	cmpb	$57, %dl
	je	.LBB1_160
.LBB1_171:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$1, %dl
	movb	%dl, (%rax)
	jmp	.LBB1_358
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_197
# %bb.173:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	movsbq	(%rcx), %rbx
	jmp	.LBB1_198
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rbx
	jmp	.LBB1_198
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%rax, %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	addq	$1, %rbx
	testl	%ebx, %ebx
	jle	.LBB1_352
# %bb.176:                              #   in Loop: Header=BB1_8 Depth=1
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
	ja	.LBB1_353
# %bb.177:                              # %._crit_edge68
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB1_356
.LBB1_178:                              #   in Loop: Header=BB1_8 Depth=1
	movapd	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movapd	-224(%rbp), %xmm1       # 16-byte Reload
	jmp	.LBB1_203
.LBB1_179:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_215
# %bb.180:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_216
.LBB1_181:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_218
# %bb.182:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_219
.LBB1_183:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_220
# %bb.184:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_221
.LBB1_185:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_222
# %bb.186:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r15), %rcx
	addl	$8, %eax
	movl	%eax, (%r15)
	jmp	.LBB1_223
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_188:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax), %ebx
	jmp	.LBB1_217
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax), %ebx
	movl	$1, %eax
	jmp	.LBB1_229
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_192:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_8
.LBB1_193:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %rdx
	movzwl	(%rax), %ebx
	jmp	.LBB1_224
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_196:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rcx), %rbx
	jmp	.LBB1_199
.LBB1_197:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rbx
.LBB1_198:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	testq	%rbx, %rbx
	jns	.LBB1_230
# %bb.200:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%rbx
	movb	$45, -41(%rbp)
	jmp	.LBB1_230
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %ecx
.LBB1_202:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%ecx, %rcx
	addq	%rcx, %rax
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB1_206
	jp	.LBB1_206
# %bb.204:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, -144(%rbp)
	movq	%rax, %r8
	jmp	.LBB1_358
.LBB1_205:                              #   in Loop: Header=BB1_206 Depth=2
	leaq	1(%r8), %rcx
	movq	%rcx, -144(%rbp)
	movb	$48, (%r8)
.LBB1_206:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %r8
	cmpq	%rax, %r8
	jb	.LBB1_205
	jmp	.LBB1_358
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_208:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	(%rcx), %ebx
	jmp	.LBB1_217
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_210:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	(%rcx), %ebx
	movl	$1, %eax
	jmp	.LBB1_229
.LBB1_211:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r15), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_409
# %bb.212:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r15), %rax
	addl	$8, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB1_410
.LBB1_213:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %rdx
	movl	(%rcx), %ebx
	jmp	.LBB1_224
.LBB1_215:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzbl	(%rcx), %ebx
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB1_229
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzbl	(%rcx), %ebx
	movl	$1, %eax
	jmp	.LBB1_229
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB1_8
.LBB1_222:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_223:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %rdx
	movzbl	(%rcx), %ebx
.LBB1_224:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, %r11b
	je	.LBB1_227
# %bb.225:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_227
# %bb.226:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -114(%rbp)
	movb	%r12b, -113(%rbp)
	orl	$2, %r11d
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
.LBB1_228:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
.LBB1_229:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$0, -41(%rbp)
.LBB1_230:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, %ecx
	andl	$-129, %r11d
	testl	%r14d, %r14d
	cmovsl	%ecx, %r11d
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jne	.LBB1_236
# %bb.231:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rbx, %rbx
	jne	.LBB1_236
# %bb.232:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	jne	.LBB1_241
# %bb.233:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, %eax
	andl	$1, %eax
	je	.LBB1_241
# %bb.234:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -317(%rbp)
.LBB1_235:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-317(%rbp), %r9
	jmp	.LBB1_247
.LBB1_236:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_242
# %bb.237:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_320
# %bb.238:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-316(%rbp), %r9
	cmpl	$2, %eax
	jne	.LBB1_322
	.p2align	4, 0x90
.LBB1_239:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	andl	$15, %eax
	movzbl	(%rdx,%rax), %eax
	movb	%al, -1(%r9)
	addq	$-1, %r9
	shrq	$4, %rbx
	jne	.LBB1_239
	jmp	.LBB1_247
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-316(%rbp), %r9
.LBB1_247:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-316(%rbp), %rax
	movl	%eax, %ebx
	subl	%r9d, %ebx
.LBB1_248:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
.LBB1_249:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB1_250:                              #   in Loop: Header=BB1_8 Depth=1
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
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	movl	%r11d, %r15d
	andl	$132, %r15d
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jne	.LBB1_258
# %bb.251:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r8d, %ebx
	subl	%edx, %ebx
	jle	.LBB1_258
# %bb.252:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %ebx
	jl	.LBB1_255
	.p2align	4, 0x90
.LBB1_253:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.254:                              #   in Loop: Header=BB1_253 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	jg	.LBB1_253
	jmp	.LBB1_256
.LBB1_255:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
.LBB1_256:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.blanks, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.257:                              #   in Loop: Header=BB1_8 Depth=1
	movb	-41(%rbp), %al
	.p2align	4, 0x90
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	testb	%al, %al
	je	.LBB1_260
# %bb.259:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-41(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_260:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$2, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_262
# %bb.261:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-114(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_262:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$128, %r15d
	jne	.LBB1_270
# %bb.263:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	-248(%rbp), %ebx        # 4-byte Folded Reload
	jle	.LBB1_270
# %bb.264:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %ebx
	jl	.LBB1_268
# %bb.265:                              # %.preheader33
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_266:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.267:                              #   in Loop: Header=BB1_266 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_266
	jmp	.LBB1_269
.LBB1_268:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_269:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_270:                              #   in Loop: Header=BB1_8 Depth=1
	subl	-168(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_277
# %bb.271:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_275
# %bb.272:                              # %.preheader30
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_273:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.274:                              #   in Loop: Header=BB1_273 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jg	.LBB1_273
	jmp	.LBB1_276
	.p2align	4, 0x90
.LBB1_275:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_276:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_277:                              #   in Loop: Header=BB1_8 Depth=1
	testl	$256, -48(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB1_280
# %bb.278:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-168(%rbp), %rcx        # 4-byte Folded Reload
.LBB1_279:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB1_301
	.p2align	4, 0x90
.LBB1_280:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$102, %r12d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	jl	.LBB1_292
# %bb.281:                              #   in Loop: Header=BB1_8 Depth=1
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI1_5, %xmm0
	jne	.LBB1_312
	jp	.LBB1_312
# %bb.282:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.283:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_285
# %bb.284:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, -68(%rbp)
	jge	.LBB1_302
.LBB1_285:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.286:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB1_302
# %bb.287:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$18, %eax
	jl	.LBB1_345
# %bb.288:                              # %.preheader13
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	15(%rax), %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_289:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.290:                              #   in Loop: Header=BB1_289 Depth=2
	addl	$-16, %ebx
	cmpl	$32, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_289
# %bb.291:                              # %.loopexit15
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %ebx
	jmp	.LBB1_346
.LBB1_292:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ecx
	callq	__sfputs_r
	cmpl	$1, -112(%rbp)          # 4-byte Folded Reload
	jg	.LBB1_294
# %bb.293:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %ecx         # 4-byte Reload
	andl	$1, %ecx
	je	.LBB1_299
.LBB1_294:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.295:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.296:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	leal	-1(%rax), %ebx
	movapd	-192(%rbp), %xmm0       # 16-byte Reload
	ucomisd	.LCPI1_5, %xmm0
	jne	.LBB1_297
	jnp	.LBB1_323
.LBB1_297:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_298:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
.LBB1_299:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_300:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-288(%rbp), %rcx        # 4-byte Folded Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-75(%rbp), %rdx
.LBB1_301:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_302:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$4, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB1_310
# %bb.303:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-136(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	-248(%rbp), %ebx        # 4-byte Folded Reload
	jle	.LBB1_310
# %bb.304:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %ebx
	jl	.LBB1_308
# %bb.305:                              # %.preheader10
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_306:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.blanks, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.307:                              #   in Loop: Header=BB1_306 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_306
	jmp	.LBB1_309
.LBB1_308:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_309:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.blanks, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_310:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	-248(%rbp), %r12d       # 4-byte Reload
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	addl	-148(%rbp), %r12d       # 4-byte Folded Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	movq	-64(%rbp), %r14         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	je	.LBB1_8
# %bb.311:                              #   in Loop: Header=BB1_8 Depth=1
	callq	free
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	jmp	.LBB1_8
.LBB1_312:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -68(%rbp)
	jle	.LBB1_337
# %bb.313:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, %r14d
	cmovgl	%ecx, %r14d
	testl	%r14d, %r14d
	jle	.LBB1_315
# %bb.314:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_315:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r14d, %r14d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movq	-104(%rbp), %rbx        # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	%r14d, %ebx
	jle	.LBB1_349
# %bb.316:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %ebx
	jl	.LBB1_347
# %bb.317:                              # %.preheader24
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_318:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.319:                              #   in Loop: Header=BB1_318 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_318
	jmp	.LBB1_348
.LBB1_242:                              # %.preheader39
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-317(%rbp), %rax
	.p2align	4, 0x90
.LBB1_243:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %rbx
	addq	$-1, %rax
	testq	%rbx, %rbx
	jne	.LBB1_243
# %bb.244:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	1(%rax), %r9
	testb	$1, %r11b
	je	.LBB1_247
# %bb.245:                              #   in Loop: Header=BB1_8 Depth=1
	cmpb	$48, %cl
	je	.LBB1_247
# %bb.246:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, (%rax)
	movq	%rax, %r9
	jmp	.LBB1_247
.LBB1_320:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$10, %rbx
	jae	.LBB1_330
# %bb.321:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$48, %bl
	movb	%bl, -317(%rbp)
	jmp	.LBB1_235
.LBB1_322:                              #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_248
.LBB1_323:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$2, %eax
	jl	.LBB1_300
# %bb.324:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpl	$18, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jl	.LBB1_329
# %bb.325:                              # %.preheader27
                                        #   in Loop: Header=BB1_8 Depth=1
	leal	15(%rax), %ebx
.LBB1_326:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.327:                              #   in Loop: Header=BB1_326 Depth=2
	addl	$-16, %ebx
	cmpl	$32, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_326
# %bb.328:                              # %.loopexit29
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %ebx
.LBB1_329:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%ebx, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	jmp	.LBB1_298
.LBB1_330:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	leaq	-316(%rbp), %r9
	movdqa	%xmm2, -192(%rbp)       # 16-byte Spill
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movl	%r11d, -48(%rbp)        # 4-byte Spill
	jmp	.LBB1_332
	.p2align	4, 0x90
.LBB1_331:                              #   in Loop: Header=BB1_332 Depth=2
	cmpq	$9, %r15
	jbe	.LBB1_247
.LBB1_332:                              #   Parent Loop BB1_8 Depth=1
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
	je	.LBB1_331
# %bb.333:                              #   in Loop: Header=BB1_332 Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.LBB1_331
# %bb.334:                              #   in Loop: Header=BB1_332 Depth=2
	cmpq	$10, %r15
	jb	.LBB1_331
# %bb.335:                              #   in Loop: Header=BB1_332 Depth=2
	cmpb	$127, %al
	je	.LBB1_331
# %bb.336:                              #   in Loop: Header=BB1_332 Depth=2
	addq	-248(%rbp), %r9         # 8-byte Folded Reload
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-48(%rbp), %r11d        # 4-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movdqa	-192(%rbp), %xmm2       # 16-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_331
.LBB1_337:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.338:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	-112(%rbp), %eax        # 4-byte Folded Reload
	orl	-68(%rbp), %eax
	je	.LBB1_302
# %bb.339:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.340:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_413
# %bb.341:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %ebx
	negl	%ebx
	cmpl	$-17, %eax
	jg	.LBB1_411
# %bb.342:                              # %.preheader16
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_343:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.344:                              #   in Loop: Header=BB1_343 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_343
	jmp	.LBB1_412
.LBB1_345:                              #   in Loop: Header=BB1_8 Depth=1
	leal	-1(%rax), %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_346:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%ebx, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	jmp	.LBB1_301
.LBB1_347:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_348:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_349:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-104(%rbp), %r15        # 4-byte Folded Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %r15
	movl	-48(%rbp), %eax         # 4-byte Reload
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB1_351
# %bb.350:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	jmp	.LBB1_442
.LBB1_351:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-200(%rbp), %rbx        # 8-byte Reload
	testl	%ebx, %ebx
	setg	%cl
	movslq	-112(%rbp), %rax        # 4-byte Folded Reload
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	testl	%r8d, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	jle	.LBB1_428
	jmp	.LBB1_429
.LBB1_352:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	jmp	.LBB1_358
.LBB1_353:                              #   in Loop: Header=BB1_8 Depth=1
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
	movq	-248(%rbp), %rax        # 8-byte Reload
	addl	%ebx, %eax
	movzbl	%al, %ecx
	andl	$31, %ecx
	movl	%r14d, %eax
	subl	%esi, %eax
	addl	%ebx, %eax
	notq	%rax
	addq	%rcx, %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
.LBB1_354:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	.LCPI1_4(%rip), %xmm0   # xmm0 = [48,48,48,48,48,48,48,48,48,48,48,48,48,48,48,48]
	movupd	%xmm0, -16(%rcx)
	movupd	%xmm0, (%rcx)
	addq	$32, %rcx
	addq	$32, %rax
	jne	.LBB1_354
# %bb.355:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%edx, %edx
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	-168(%rbp), %esi        # 4-byte Reload
	je	.LBB1_358
.LBB1_356:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %edi
	.p2align	4, 0x90
.LBB1_357:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$48, (%r8)
	addq	$1, %r8
	addl	$-1, %edi
	testl	%edi, %edi
	jg	.LBB1_357
.LBB1_358:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %r11d
	orl	$256, %r11d             # imm = 0x100
	subl	%r9d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %esi
	jne	.LBB1_361
# %bb.359:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %edx
	addl	$-2, %r12d
	cmpl	$-3, %edx
	jl	.LBB1_363
# %bb.360:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$103, %eax
	cmpl	%r14d, %edx
	jle	.LBB1_376
	jmp	.LBB1_363
.LBB1_361:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$70, %r12d
	jne	.LBB1_363
# %bb.362:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %edx
	jmp	.LBB1_373
.LBB1_363:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$101, %r12d
	jg	.LBB1_372
# %bb.364:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movl	-68(%rbp), %ecx
	leal	-1(%rcx), %edx
	movl	%r12d, %eax
	orl	$32, %eax
	leal	15(%r12), %esi
	cmpl	$97, %eax
	movzbl	%sil, %esi
	cmovnel	%r12d, %esi
	movl	%edx, -68(%rbp)
	movb	%sil, -75(%rbp)
	movl	$1, %ebx
	subl	%ecx, %ebx
	testl	%ecx, %ecx
	setle	%cl
	cmovgl	%edx, %ebx
	addb	%cl, %cl
	addb	$43, %cl
	movb	%cl, -74(%rbp)
	movq	%r8, %r9
	cmpl	$10, %ebx
	jl	.LBB1_382
# %bb.365:                              # %.preheader47
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$-1, %r15
	xorl	%r14d, %r14d
	leaq	-120(%rbp), %rdx
	.p2align	4, 0x90
.LBB1_366:                              #   Parent Loop BB1_8 Depth=1
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
	jg	.LBB1_366
# %bb.367:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$48, %bl
	movb	%bl, -138(%rbp,%r14)
	leaq	1(%r14), %r8
	leaq	-73(%rbp), %rcx
	cmpq	$1, %r8
	jg	.LBB1_385
# %bb.368:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%bl, -73(%rbp)
	leaq	-72(%rbp), %rcx
	testq	%r14, %r14
	je	.LBB1_385
# %bb.369:                              #   in Loop: Header=BB1_8 Depth=1
	movb	%al, -72(%rbp)
	leaq	-71(%rbp), %rcx
	testq	%r8, %r8
	jns	.LBB1_385
# %bb.370:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r14, %rbx
	notq	%rbx
	cmpq	$32, %rbx
	jae	.LBB1_414
# %bb.371:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-71(%rbp), %rsi
	jmp	.LBB1_426
.LBB1_372:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %edx
	movl	%r12d, %eax
	cmpl	$102, %r12d
	jne	.LBB1_376
.LBB1_373:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %eax
	andl	$1, %eax
	orl	%r14d, %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB1_380
# %bb.374:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$102, %r12d
	testl	%eax, %eax
	je	.LBB1_386
# %bb.375:                              #   in Loop: Header=BB1_8 Depth=1
	addl	-240(%rbp), %r14d       # 4-byte Folded Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addl	%edx, %r14d
	movl	%r14d, %ebx
	jmp	.LBB1_387
.LBB1_376:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r8d, %edx
	jge	.LBB1_379
# %bb.377:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-240(%rbp), %rcx        # 8-byte Reload
	leal	(%r8,%rcx), %ebx
	testl	%edx, %edx
	movq	-160(%rbp), %r14        # 8-byte Reload
	jle	.LBB1_398
# %bb.378:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %r12d
	jmp	.LBB1_388
.LBB1_379:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %ebx
	andl	$1, %ebx
	negl	%ebx
	andl	-240(%rbp), %ebx        # 4-byte Folded Reload
	addl	%edx, %ebx
	movl	%eax, %r12d
	jmp	.LBB1_387
.LBB1_380:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_401
# %bb.381:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	leaq	(%rax,%rcx), %rbx
	addq	$1, %rbx
	jmp	.LBB1_402
.LBB1_382:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-73(%rbp), %rcx
	cmpl	$97, %eax
	je	.LBB1_384
# %bb.383:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$48, -73(%rbp)
	leaq	-72(%rbp), %rcx
.LBB1_384:                              #   in Loop: Header=BB1_8 Depth=1
	addb	$48, %bl
	movb	%bl, (%rcx)
	addq	$1, %rcx
.LBB1_385:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-75(%rbp), %rax
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	%r9, %r8
	cmpl	$2, %r8d
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ebx
	movl	$0, %edx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cmovll	%esi, %ebx
	testb	$1, %r10b
	cmovnel	%eax, %ebx
	addl	%r8d, %ebx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	addl	%ecx, %ebx
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	-200(%rbp), %r15        # 8-byte Reload
	jmp	.LBB1_404
.LBB1_386:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	%edx, %ebx
.LBB1_387:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-160(%rbp), %r14        # 8-byte Reload
.LBB1_388:                              #   in Loop: Header=BB1_8 Depth=1
	testl	$1024, %r10d            # imm = 0x400
	je	.LBB1_397
# %bb.389:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%edx, %edx
	jle	.LBB1_397
# %bb.390:                              #   in Loop: Header=BB1_8 Depth=1
	movsbl	(%r14), %eax
	xorl	%edi, %edi
	cmpl	$127, %eax
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movl	%r11d, -248(%rbp)       # 4-byte Spill
	je	.LBB1_399
# %bb.391:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
	cmpl	%eax, %edx
	jle	.LBB1_400
# %bb.392:                              # %.preheader48
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_393:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r11
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r14)
	sete	%r10b
	setne	%bl
	je	.LBB1_395
# %bb.394:                              #   in Loop: Header=BB1_393 Depth=2
	addq	$1, %r14
.LBB1_395:                              #   in Loop: Header=BB1_393 Depth=2
	subl	%eax, %edx
	movb	%bl, %sil
	addl	%esi, %edi
	movb	%r10b, %cl
	movq	%r11, %rsi
	addl	%ecx, %esi
	movsbl	(%r14), %eax
	cmpl	$127, %eax
	je	.LBB1_400
# %bb.396:                              #   in Loop: Header=BB1_393 Depth=2
	cmpl	%eax, %edx
	jg	.LBB1_393
	jmp	.LBB1_400
.LBB1_397:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_403
.LBB1_398:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	subl	%edx, %ebx
	addl	$1, %ebx
	xorl	%ecx, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %r12d
	jmp	.LBB1_403
.LBB1_399:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
.LBB1_400:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r14, -160(%rbp)        # 8-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	leal	(%rsi,%rdi), %eax
	movq	-264(%rbp), %rcx        # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	imull	%eax, %ecx
	movq	-168(%rbp), %rbx        # 8-byte Reload
	addl	%ecx, %ebx
	movl	-248(%rbp), %r11d       # 4-byte Reload
	jmp	.LBB1_404
.LBB1_401:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %ebx
.LBB1_402:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$102, %r12d
.LBB1_403:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
.LBB1_404:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, -112(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	testq	%r15, %r15
	js	.LBB1_406
# %bb.405:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB1_250
.LBB1_406:                              #   in Loop: Header=BB1_8 Depth=1
	movb	$45, -41(%rbp)
	movq	-136(%rbp), %r8         # 8-byte Reload
	jmp	.LBB1_250
.LBB1_407:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_408:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rax
	movl	%r12d, (%rax)
	jmp	.LBB1_8
.LBB1_409:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_410:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rax
	movb	%r12b, (%rax)
	jmp	.LBB1_8
.LBB1_411:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB1_412:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
.LBB1_413:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-112(%rbp), %rcx        # 4-byte Folded Reload
	jmp	.LBB1_279
.LBB1_414:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-71(%rbp), %rax
	leaq	-137(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_416
# %bb.415:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-72(%rbp), %rax
	subq	%r14, %rax
	leaq	(%r14,%rbp), %rcx
	addq	$-136, %rcx
	leaq	-71(%rbp), %rsi
	cmpq	%rax, %rcx
	jb	.LBB1_426
.LBB1_416:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rbx, -168(%rbp)        # 8-byte Spill
	movq	%rbx, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rax
	movq	%rax, %r10
	shrq	$5, %r10
	addq	$1, %r10
	cmpq	$96, %rax
	jae	.LBB1_418
# %bb.417:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB1_420
.LBB1_418:                              #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_419:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-112(%rax,%rbx), %xmm0
	movups	-96(%rax,%rbx), %xmm1
	movups	%xmm0, -71(%rbp,%rbx)
	movups	%xmm1, -55(%rbp,%rbx)
	movups	-80(%rax,%rbx), %xmm0
	movups	-64(%rax,%rbx), %xmm1
	movups	%xmm0, -39(%rbp,%rbx)
	movups	%xmm1, -23(%rbp,%rbx)
	movups	-48(%rax,%rbx), %xmm0
	movups	-32(%rax,%rbx), %xmm1
	movups	%xmm0, -7(%rbp,%rbx)
	movups	%xmm1, 9(%rbp,%rbx)
	movupd	-16(%rax,%rbx), %xmm0
	movupd	(%rax,%rbx), %xmm1
	movupd	%xmm0, 25(%rbp,%rbx)
	movupd	%xmm1, 41(%rbp,%rbx)
	subq	$-128, %rbx
	addq	$4, %rdi
	jne	.LBB1_419
.LBB1_420:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$3, %r10b
	je	.LBB1_423
# %bb.421:                              # %.preheader44
                                        #   in Loop: Header=BB1_8 Depth=1
	addq	%rbx, %rdx
	leaq	-55(%rbp), %rax
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
.LBB1_422:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-16(%rdx,%rdi), %xmm0
	movupd	(%rdx,%rdi), %xmm1
	movupd	%xmm0, -16(%rax,%rdi)
	movupd	%xmm1, (%rax,%rdi)
	addq	$32, %rbx
	addq	$32, %rdi
	cmpq	%rdi, %r10
	jne	.LBB1_422
.LBB1_423:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-71(%rbp), %rax
	leaq	(%rax,%r8), %rsi
	cmpq	%r8, -168(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_425
# %bb.424:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %rcx
	movl	-48(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB1_385
.LBB1_425:                              #   in Loop: Header=BB1_8 Depth=1
	andq	$-32, %r15
	leaq	(%r15,%r14), %r8
	addq	$1, %r8
	movl	-48(%rbp), %r10d        # 4-byte Reload
.LBB1_426:                              #   in Loop: Header=BB1_8 Depth=1
	addq	$-1, %r8
	movq	%rsi, %rcx
.LBB1_427:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-136(%rbp,%r8), %eax
	movb	%al, (%rcx)
	addq	$1, %rcx
	addq	$1, %r8
	cmpq	$-1, %r8
	jl	.LBB1_427
	jmp	.LBB1_385
.LBB1_428:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_441
.LBB1_429:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_435 Depth 3
	movq	%rbx, -200(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	leaq	-1(%rsi), %r12
	movb	%cl, -168(%rbp)         # 1-byte Spill
	testb	$1, %cl
	cmovneq	%rsi, %r12
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.430:                              #   in Loop: Header=BB1_429 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r14d
	subl	%r15d, %r14d
	movb	(%r12), %al
	movsbl	%al, %ebx
	cmpl	%ebx, %r14d
	cmovgl	%ebx, %r14d
	testl	%r14d, %r14d
	jle	.LBB1_433
# %bb.431:                              #   in Loop: Header=BB1_429 Depth=2
	movslq	%r14d, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.432:                              #   in Loop: Header=BB1_429 Depth=2
	movb	(%r12), %al
	movsbl	%al, %ebx
.LBB1_433:                              #   in Loop: Header=BB1_429 Depth=2
	testl	%r14d, %r14d
	movl	$0, %ecx
	cmovsl	%ecx, %r14d
	subl	%r14d, %ebx
	movq	%r12, %rsi
	jle	.LBB1_440
# %bb.434:                              #   in Loop: Header=BB1_429 Depth=2
	cmpl	$17, %ebx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jl	.LBB1_437
.LBB1_435:                              #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_429 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.436:                              #   in Loop: Header=BB1_435 Depth=3
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_435
	jmp	.LBB1_438
.LBB1_437:                              #   in Loop: Header=BB1_429 Depth=2
	movl	%ebx, %eax
.LBB1_438:                              #   in Loop: Header=BB1_429 Depth=2
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.439:                              #   in Loop: Header=BB1_429 Depth=2
	movq	%r12, %rsi
	movb	(%r12), %al
.LBB1_440:                              #   in Loop: Header=BB1_429 Depth=2
	movb	-168(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %ecx
	notb	%dl
	movzbl	%dl, %edx
	andl	$1, %edx
	movq	-128(%rbp), %r8         # 8-byte Reload
	subl	%edx, %r8d
	andl	$1, %ecx
	movq	-200(%rbp), %rbx        # 8-byte Reload
	subl	%ecx, %ebx
	movsbq	%al, %rax
	addq	%rax, %r15
	testl	%ebx, %ebx
	setg	%cl
	testl	%r8d, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jle	.LBB1_428
	jmp	.LBB1_429
.LBB1_441:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, %r15
	cmovaq	%rax, %r15
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
.LBB1_442:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	testb	$1, %al
	jne	.LBB1_444
# %bb.443:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %ecx
	cmpl	-112(%rbp), %ecx        # 4-byte Folded Reload
	jge	.LBB1_446
.LBB1_444:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.445:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-224(%rbp), %rdx        # 8-byte Reload
.LBB1_446:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addl	%eax, %edx
	subl	%r15d, %edx
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	testl	%edx, %edx
	jle	.LBB1_449
# %bb.447:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rbx
	movslq	%edx, %rcx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.448:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	-68(%rbp), %eax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
.LBB1_449:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edx, %ebx
	negl	%ebx
	testl	%edx, %edx
	movl	$0, %ecx
	cmovlel	%ecx, %ebx
	addl	%eax, %ebx
	testl	%ebx, %ebx
	jle	.LBB1_302
# %bb.450:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %ebx
	jl	.LBB1_454
# %bb.451:                              # %.preheader19
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_452:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfprintf_r.zeroes, %edx
	movl	$16, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_456
# %bb.453:                              #   in Loop: Header=BB1_452 Depth=2
	leal	-16(%rbx), %eax
	cmpl	$32, %ebx
	movl	%eax, %ebx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_452
	jmp	.LBB1_455
.LBB1_454:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ebx, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_455:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	movl	$_vfprintf_r.zeroes, %edx
	jmp	.LBB1_301
.LBB1_456:
	movq	-232(%rbp), %rdi        # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_458
# %bb.457:
	callq	free
.LBB1_458:                              # %.loopexit6
	movl	-148(%rbp), %r12d       # 4-byte Reload
.LBB1_459:
	movl	-252(%rbp), %edi
	leaq	-252(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	16(%rax), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB1_460:
	movl	$42, __A_VARIABLE(%rip)
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_461:
	movq	-56(%rbp), %rax         # 8-byte Reload
	orb	$64, 16(%rax)
	jmp	.LBB1_458
.Lfunc_end1:
	.size	_vfprintf_r, .Lfunc_end1-_vfprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_458
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_34
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_36
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_37
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_40
	.quad	.LBB1_42
	.quad	.LBB1_120
	.quad	.LBB1_51
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_43
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_28
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_52
	.quad	.LBB1_120
	.quad	.LBB1_56
	.quad	.LBB1_75
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_44
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_83
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_58
	.quad	.LBB1_120
	.quad	.LBB1_89
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_95
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_52
	.quad	.LBB1_120
	.quad	.LBB1_56
	.quad	.LBB1_76
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_45
	.quad	.LBB1_76
	.quad	.LBB1_47
	.quad	.LBB1_120
	.quad	.LBB1_46
	.quad	.LBB1_120
	.quad	.LBB1_98
	.quad	.LBB1_84
	.quad	.LBB1_103
	.quad	.LBB1_47
	.quad	.LBB1_120
	.quad	.LBB1_58
	.quad	.LBB1_47
	.quad	.LBB1_90
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_105
	.quad	.LBB1_120
	.quad	.LBB1_47
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
