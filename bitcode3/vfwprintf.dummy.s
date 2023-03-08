	.text
	.file	"vfwprintf.c"
	.globl	vfwprintf               # -- Begin function vfwprintf
	.p2align	4, 0x90
	.type	vfwprintf,@function
vfwprintf:                              # @vfwprintf
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_vfwprintf_r            # TAILCALL
.Lfunc_end0:
	.size	vfwprintf, .Lfunc_end0-vfwprintf
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _vfwprintf_r
.LCPI1_0:
	.quad	0                       # double 0
	.text
	.globl	_vfwprintf_r
	.p2align	4, 0x90
	.type	_vfwprintf_r,@function
_vfwprintf_r:                           # @_vfwprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$0, -172(%rbp)
	movl	$0, -76(%rbp)
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -168(%rbp)
	testq	%r13, %r13
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r13)
	jne	.LBB1_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
.LBB1_3:
	leaq	-164(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%r12)
	je	.LBB1_5
# %bb.4:
	cmpq	$0, 24(%r12)
	jne	.LBB1_7
.LBB1_5:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__swsetup_r
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-164(%rbp), %edi
	leaq	-164(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB1_454
.LBB1_7:
	movq	%r14, -264(%rbp)        # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	pxor	%xmm2, %xmm2
	movl	$0, %ecx
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_24 Depth 5
                                        #     Child Loop BB1_283 Depth 2
                                        #     Child Loop BB1_380 Depth 2
                                        #     Child Loop BB1_287 Depth 2
                                        #     Child Loop BB1_262 Depth 2
                                        #     Child Loop BB1_432 Depth 2
                                        #     Child Loop BB1_434 Depth 2
                                        #     Child Loop BB1_199 Depth 2
                                        #     Child Loop BB1_176 Depth 2
                                        #     Child Loop BB1_442 Depth 2
                                        #     Child Loop BB1_445 Depth 2
                                        #     Child Loop BB1_449 Depth 2
                                        #     Child Loop BB1_296 Depth 2
                                        #     Child Loop BB1_308 Depth 2
                                        #     Child Loop BB1_314 Depth 2
                                        #     Child Loop BB1_367 Depth 2
                                        #     Child Loop BB1_359 Depth 2
                                        #     Child Loop BB1_406 Depth 2
                                        #       Child Loop BB1_412 Depth 3
                                        #     Child Loop BB1_403 Depth 2
                                        #     Child Loop BB1_376 Depth 2
                                        #     Child Loop BB1_330 Depth 2
                                        #     Child Loop BB1_347 Depth 2
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB1_9:                                #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_18 Depth 3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_24 Depth 5
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
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_453
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=2
	addl	%r15d, -140(%rbp)       # 4-byte Folded Spill
	movl	(%r14), %eax
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
.LBB1_16:                               #   in Loop: Header=BB1_9 Depth=2
	testl	%eax, %eax
	je	.LBB1_453
# %bb.17:                               #   in Loop: Header=BB1_9 Depth=2
	addq	$4, %r14
	movl	$0, -88(%rbp)
	movl	$-1, %r15d
	xorl	%r12d, %r12d
	xorl	%r10d, %r10d
	movq	%r14, %rbx
	movq	-264(%rbp), %r14        # 8-byte Reload
.LBB1_18:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_20 Depth 4
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	movl	(%rbx), %r13d
	addq	$4, %rbx
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=4
	movl	%eax, %r15d
.LBB1_20:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	cmpl	$46, %r13d
	jne	.LBB1_26
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=4
	movl	(%rbx), %r13d
	addq	$4, %rbx
	cmpl	$42, %r13d
	je	.LBB1_30
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=4
	leal	-48(%r13), %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	ja	.LBB1_19
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB1_20 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %ecx
	cmpl	$10, %ecx
	jb	.LBB1_24
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=4
	movl	$-1, %r15d
	testl	%eax, %eax
	js	.LBB1_20
	jmp	.LBB1_19
.LBB1_26:                               #   in Loop: Header=BB1_20 Depth=4
	cmpl	$122, %r13d
	ja	.LBB1_135
# %bb.27:                               #   in Loop: Header=BB1_20 Depth=4
	movl	%r13d, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=4
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_29:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        #       Parent Loop BB1_18 Depth=3
                                        #         Parent Loop BB1_20 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r12,%r12,4), %eax
	leal	-48(%r13,%rax,2), %r12d
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %eax
	cmpl	$10, %eax
	jb	.LBB1_29
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_32
# %bb.31:                               #   in Loop: Header=BB1_18 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_33
	.p2align	4, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_18 Depth=3
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_33:                               #   in Loop: Header=BB1_18 Depth=3
	movl	(%rax), %r15d
	cmpl	$-2, %r15d
	movl	$-1, %eax
	cmovlel	%eax, %r15d
	jmp	.LBB1_18
.LBB1_34:                               #   in Loop: Header=BB1_18 Depth=3
	cmpl	$0, -88(%rbp)
	jne	.LBB1_18
# %bb.35:                               #   in Loop: Header=BB1_18 Depth=3
	movl	$32, -88(%rbp)
	jmp	.LBB1_18
.LBB1_36:                               #   in Loop: Header=BB1_18 Depth=3
	orl	$1, %r10d
	jmp	.LBB1_18
.LBB1_37:                               #   in Loop: Header=BB1_18 Depth=3
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r13d
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -172(%rbp)
	movq	%r12, %rdi
	movq	-184(%rbp), %r12        # 8-byte Reload
	callq	_localeconv_r
	movl	%r13d, %r10d
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movq	16(%rax), %rcx
	movq	%rcx, %rax
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB1_18
# %bb.38:                               #   in Loop: Header=BB1_18 Depth=3
	cmpl	$0, -172(%rbp)
	je	.LBB1_18
# %bb.39:                               #   in Loop: Header=BB1_18 Depth=3
	movl	%r10d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r10d
	jmp	.LBB1_18
.LBB1_40:                               #   in Loop: Header=BB1_18 Depth=3
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_48
# %bb.41:                               #   in Loop: Header=BB1_18 Depth=3
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_49
.LBB1_42:                               #   in Loop: Header=BB1_18 Depth=3
	movl	$43, -88(%rbp)
	jmp	.LBB1_18
.LBB1_43:                               #   in Loop: Header=BB1_18 Depth=3
	orl	$128, %r10d
	jmp	.LBB1_18
.LBB1_44:                               #   in Loop: Header=BB1_18 Depth=3
	orl	$8, %r10d
	jmp	.LBB1_18
.LBB1_45:                               #   in Loop: Header=BB1_18 Depth=3
	cmpl	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r10d
	jmp	.LBB1_18
.LBB1_46:                               #   in Loop: Header=BB1_18 Depth=3
	cmpl	$108, (%rbx)
	leaq	4(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB1_47:                               #   in Loop: Header=BB1_18 Depth=3
	orl	$16, %r10d
	jmp	.LBB1_18
.LBB1_48:                               #   in Loop: Header=BB1_18 Depth=3
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_49:                               #   in Loop: Header=BB1_18 Depth=3
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB1_18
# %bb.50:                               #   in Loop: Header=BB1_18 Depth=3
	negl	%r12d
.LBB1_51:                               # %.loopexit1
                                        #   in Loop: Header=BB1_18 Depth=3
	orl	$4, %r10d
	jmp	.LBB1_18
.LBB1_52:                               #   in Loop: Header=BB1_9 Depth=2
	testb	$16, %r10b
	jne	.LBB1_57
# %bb.53:                               #   in Loop: Header=BB1_9 Depth=2
	testb	$64, %r10b
	jne	.LBB1_59
# %bb.54:                               #   in Loop: Header=BB1_9 Depth=2
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_63
# %bb.55:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_67
# %bb.56:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_68
.LBB1_57:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	-140(%rbp), %rax        # 4-byte Folded Reload
	movslq	(%r14), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_61
# %bb.58:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_62
.LBB1_59:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_65
# %bb.60:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_66
.LBB1_61:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_62:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_9
.LBB1_63:                               #   in Loop: Header=BB1_9 Depth=2
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_69
# %bb.64:                               #   in Loop: Header=BB1_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_70
.LBB1_65:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_66:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	(%rax), %rax
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_9
.LBB1_67:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_68:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rax), %rax
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_9
.LBB1_69:                               #   in Loop: Header=BB1_9 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_70:                               #   in Loop: Header=BB1_9 Depth=2
	movq	(%rax), %rax
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_71:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$8, %r10b
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	jne	.LBB1_74
# %bb.72:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	4(%r14), %rcx
	cmpq	$160, %rcx
	ja	.LBB1_86
# %bb.73:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r14)
	jmp	.LBB1_87
.LBB1_74:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB1_88
.LBB1_75:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testb	$16, %r10b
	jne	.LBB1_123
# %bb.76:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$99, %r13d
	jne	.LBB1_123
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r15d
	ja	.LBB1_141
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_142
.LBB1_79:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_125
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_126
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r10b
	jne	.LBB1_133
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r10b
	jne	.LBB1_143
# %bb.83:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_210
# %bb.84:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_237
# %bb.85:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_238
.LBB1_86:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_87:                               #   in Loop: Header=BB1_8 Depth=1
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB1_88:                               #   in Loop: Header=BB1_8 Depth=1
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB1_92
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB1_91
# %bb.90:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
.LBB1_91:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r13d
	movl	$.L.str, %eax
	movl	$.L.str.1, %r11d
	cmovbq	%rax, %r11
	movl	-60(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB1_100
.LBB1_92:                               #   in Loop: Header=BB1_8 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB1_97
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, %ecx
	orl	$32, %ecx
	cmpl	$97, %ecx
	movl	-60(%rbp), %edx         # 4-byte Reload
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jne	.LBB1_101
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	cmpl	$97, %r13d
	sete	%al
	movl	$48, -240(%rbp)
	shll	$5, %eax
	orl	$88, %eax
	movl	%eax, -236(%rbp)
	orl	$2, %edx
	cmpl	$100, %r15d
	jl	.LBB1_137
# %bb.95:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movslq	%r15d, %rax
	leaq	4(,%rax,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_455
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %r14
	movq	%rax, %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rax, %r10
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edx         # 4-byte Reload
	jmp	.LBB1_161
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movq	%xmm2, %rax
	testq	%rax, %rax
	movl	-60(%rbp), %r10d        # 4-byte Reload
	jns	.LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
.LBB1_99:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r13d
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %r11d
	cmovbq	%rax, %r11
.LBB1_100:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-129, %r10d
	movl	$3, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB1_292
.LBB1_101:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %r10
	cmpl	$-1, %r15d
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB1_159
# %bb.102:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	$103, %ecx
	orl	%r15d, %ecx
	movl	$1, %ecx
	cmovel	%ecx, %r15d
	jmp	.LBB1_160
.LBB1_103:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.6, %r9d
	testb	$16, %r10b
	je	.LBB1_119
.LBB1_104:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_145
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_255
.LBB1_106:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r10b
	jne	.LBB1_146
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r10b
	jne	.LBB1_212
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_239
# %bb.109:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_263
# %bb.110:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_264
.LBB1_111:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_148
# %bb.112:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_149
.LBB1_113:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r10b
	jne	.LBB1_150
# %bb.114:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r10b
	jne	.LBB1_214
# %bb.115:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_241
# %bb.116:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_265
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_266
.LBB1_118:                              # %.loopexit2
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.4, %r9d
	testb	$16, %r10b
	jne	.LBB1_104
.LBB1_119:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$64, %r10b
	jne	.LBB1_152
# %bb.120:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	testl	$512, %r10d             # imm = 0x200
	jne	.LBB1_216
# %bb.121:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_243
# %bb.122:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_244
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_154
# %bb.124:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_155
.LBB1_125:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_126:                              #   in Loop: Header=BB1_8 Depth=1
	movq	(%rax), %rdi
	movl	$0, -88(%rbp)
	testq	%rdi, %rdi
	je	.LBB1_136
# %bb.127:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$16, %r10b
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	jne	.LBB1_138
# %bb.128:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$83, %r13d
	je	.LBB1_138
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	js	.LBB1_225
# %bb.130:                              #   in Loop: Header=BB1_8 Depth=1
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
	jb	.LBB1_226
.LBB1_131:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, %r14
	movq	%r9, %r15
	leaq	4(,%r9,4), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_455
# %bb.132:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %r11
	movq	%rax, %rcx
	movq	%r11, -152(%rbp)        # 8-byte Spill
	movq	%r11, -232(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	%r14, %r8
	movq	%r15, %r9
	jmp	.LBB1_227
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_158
# %bb.134:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB1_246
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, -704(%rbp)
	jmp	.LBB1_157
.LBB1_136:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r15d
	movl	$6, %eax
	cmovbl	%r15d, %eax
	movl	$.L.str.5, %r11d
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB1_292
.LBB1_137:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %r10
	xorl	%r14d, %r14d
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB1_161
.LBB1_138:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	js	.LBB1_232
# %bb.139:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rdx
	xorl	%esi, %esi
	movq	%rdi, %r14
	callq	wmemchr
	testq	%rax, %rax
	je	.LBB1_234
# %bb.140:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%r14, %rax
	shrq	$2, %rax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movq	%r14, %r11
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB1_236
.LBB1_141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rcx), %edi
	callq	btowc
	cmpl	$-1, %eax
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	%r15d, %r10d
	jne	.LBB1_156
	jmp	.LBB1_455
.LBB1_143:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_218
# %bb.144:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movswq	(%rcx), %rdx
	jmp	.LBB1_246
.LBB1_145:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB1_255
.LBB1_146:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	cmpq	$40, %rax
	ja	.LBB1_219
# %bb.147:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movq	(%rcx), %rdx
	jmp	.LBB1_220
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	(%rax), %rdx
	orl	$2, %r10d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -240(%rbp)
	movl	$120, %r13d
	movl	$.L.str.4, %r9d
	jmp	.LBB1_259
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_221
# %bb.151:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_222
.LBB1_152:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_223
# %bb.153:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_224
.LBB1_154:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_155:                              #   in Loop: Header=BB1_8 Depth=1
	movl	(%rcx), %eax
.LBB1_156:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, -704(%rbp)
	movl	$0, -700(%rbp)
.LBB1_157:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -88(%rbp)
	movl	$1, %r15d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	-704(%rbp), %r11
	jmp	.LBB1_293
.LBB1_158:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
	jmp	.LBB1_246
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$6, %r15d
.LBB1_160:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r14d, %r14d
.LBB1_161:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edx, -60(%rbp)         # 4-byte Spill
	orl	$256, %edx              # imm = 0x100
	subq	$8, %rsp
	leaq	-76(%rbp), %rax
	leaq	-244(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r13d, %r9d
	pushq	$100
	pushq	%r10
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r11
	testq	%r14, %r14
	jne	.LBB1_166
# %bb.162:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %rax
	cmpq	%rax, %r11
	jne	.LBB1_166
# %bb.163:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	cmpl	$101, %eax
	jl	.LBB1_166
# %bb.164:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_455
# %bb.165:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movq	%rax, %r14
	movl	-76(%rbp), %eax
	subq	$8, %rsp
	leaq	-244(%rbp), %rcx
	leaq	-108(%rbp), %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %esi
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%r13d, %r9d
	pushq	%rax
	pushq	%r14
	leaq	-76(%rbp), %rax
	pushq	%rax
	callq	wcvt
	addq	$32, %rsp
	movq	%rax, %r11
	movq	%r14, %rax
	movq	%r14, -232(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %r12        # 8-byte Reload
.LBB1_166:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-188(%rbp), %esi        # 4-byte Reload
	cmpl	$103, %esi
	movq	%r14, -152(%rbp)        # 8-byte Spill
	jne	.LBB1_170
# %bb.167:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %r9d
	cmpl	$-3, %r9d
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-60(%rbp), %edx         # 4-byte Reload
	jl	.LBB1_169
# %bb.168:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r15d, %r9d
	jle	.LBB1_190
.LBB1_169:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-2, %r13d
	movl	%r13d, %esi
	orl	$32, %esi
	jmp	.LBB1_174
.LBB1_170:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$70, %r13d
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-60(%rbp), %edx         # 4-byte Reload
	jne	.LBB1_172
# %bb.171:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %r9d
	jmp	.LBB1_187
.LBB1_172:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$101, %r13d
	ja	.LBB1_186
# %bb.173:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %r9d
.LBB1_174:                              #   in Loop: Header=BB1_8 Depth=1
	leal	-1(%r9), %eax
	leal	15(%r13), %ecx
	cmpl	$97, %esi
	cmovnel	%r13d, %ecx
	movl	%eax, -108(%rbp)
	movl	%ecx, -224(%rbp)
	movl	$1, %ecx
	subl	%r9d, %ecx
	xorl	%edx, %edx
	testl	%r9d, %r9d
	setle	%dl
	leal	43(%rdx,%rdx), %edx
	cmovgl	%eax, %ecx
	movl	%edx, -220(%rbp)
	cmpl	$10, %ecx
	movq	%r11, -160(%rbp)        # 8-byte Spill
	movq	%r12, %r8
	jl	.LBB1_182
# %bb.175:                              # %.preheader45
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$-1, %r11
	xorl	%r10d, %r10d
	leaq	-256(%rbp), %r15
	leaq	-212(%rbp), %rax
	leaq	-160(%rbp), %r12
	.p2align	4, 0x90
.LBB1_176:                              #   Parent Loop BB1_8 Depth=1
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
	movl	%edi, -280(%rbp,%r14,4)
	addq	$-4, %r12
	addq	$1, %r11
	addq	$4, %rax
	addq	$-4, %r15
	cmpl	$99, %edx
	jg	.LBB1_176
# %bb.177:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %ecx
	movl	%ecx, -284(%rbp,%r14,4)
	leaq	1(%r10), %r9
	leaq	-216(%rbp), %rdx
	cmpq	$1, %r9
	jg	.LBB1_185
# %bb.178:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, -216(%rbp)
	leaq	-212(%rbp), %rdx
	testq	%r10, %r10
	je	.LBB1_185
# %bb.179:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, -212(%rbp)
	leaq	-208(%rbp), %rdx
	testq	%r9, %r9
	jns	.LBB1_185
# %bb.180:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r10, %rdi
	notq	%rdi
	cmpq	$8, %rdi
	jae	.LBB1_437
# %bb.181:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-208(%rbp), %rdx
	jmp	.LBB1_448
.LBB1_182:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-216(%rbp), %rax
	cmpl	$97, %esi
	je	.LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -216(%rbp)
	leaq	-212(%rbp), %rax
.LBB1_184:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	movq	%rax, %rdx
.LBB1_185:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-224(%rbp), %rax
	subq	%rax, %rdx
	shrq	$2, %rdx
	movl	-76(%rbp), %eax
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	leal	(%rax,%rdx), %ecx
	xorl	%r15d, %r15d
	cmpl	$1, %eax
	setg	%r15b
	movl	-60(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	%eax, %r15d
	addl	%ecx, %r15d
	movl	-124(%rbp), %ecx        # 4-byte Reload
	andl	$-1025, %ecx            # imm = 0xFBFF
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r10d, %r10d
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movq	%r8, %r12
	movq	-160(%rbp), %r11        # 8-byte Reload
	jmp	.LBB1_207
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %r9d
	cmpl	$102, %r13d
	jne	.LBB1_190
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edx, %eax
	andl	$1, %eax
	orl	%r15d, %eax
	testl	%r9d, %r9d
	jle	.LBB1_205
# %bb.188:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$102, %r13d
	testl	%eax, %eax
	je	.LBB1_233
# %bb.189:                              #   in Loop: Header=BB1_8 Depth=1
	addl	%r9d, %r15d
	addl	$1, %r15d
	jmp	.LBB1_194
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	cmpl	%eax, %r9d
	jge	.LBB1_192
# %bb.191:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %ecx
	subl	%r9d, %ecx
	testl	%r9d, %r9d
	movl	$1, %r15d
	cmovlel	%ecx, %r15d
	addl	%eax, %r15d
	jmp	.LBB1_193
.LBB1_192:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edx, %r15d
	andl	$1, %r15d
	addl	%r9d, %r15d
.LBB1_193:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$103, %r13d
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	xorl	%r10d, %r10d
	testl	$1024, %edx             # imm = 0x400
	je	.LBB1_204
# %bb.195:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r9d, %r9d
	jle	.LBB1_204
# %bb.196:                              #   in Loop: Header=BB1_8 Depth=1
	movsbl	(%r8), %eax
	xorl	%r10d, %r10d
	xorl	%edi, %edi
	cmpl	$127, %eax
	je	.LBB1_203
# %bb.197:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%eax, %r9d
	jle	.LBB1_203
# %bb.198:                              # %.preheader46
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB1_199:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpb	$0, 1(%r8)
	sete	%r14b
	setne	%dl
	je	.LBB1_201
# %bb.200:                              #   in Loop: Header=BB1_199 Depth=2
	addq	$1, %r8
.LBB1_201:                              #   in Loop: Header=BB1_199 Depth=2
	subl	%eax, %r9d
	movb	%dl, %sil
	addl	%esi, %r10d
	movb	%r14b, %cl
	addl	%ecx, %edi
	movsbl	(%r8), %eax
	cmpl	$127, %eax
	je	.LBB1_203
# %bb.202:                              #   in Loop: Header=BB1_199 Depth=2
	cmpl	%eax, %r9d
	jg	.LBB1_199
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	addl	%r10d, %r15d
	movl	%edi, -80(%rbp)         # 4-byte Spill
	addl	%edi, %r15d
	jmp	.LBB1_206
.LBB1_204:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_206
.LBB1_205:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -136(%rbp)         # 8-byte Spill
	addl	$2, %r15d
	testl	%eax, %eax
	movl	$1, %eax
	cmovnel	%r15d, %eax
	xorl	%r10d, %r10d
	movl	$102, %r13d
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
.LBB1_206:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-124(%rbp), %ecx        # 4-byte Reload
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	cmpl	$0, -244(%rbp)
	je	.LBB1_209
# %bb.208:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r10d
	jmp	.LBB1_293
.LBB1_210:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_245
# %bb.211:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	movsbq	(%rcx), %rdx
	jmp	.LBB1_246
.LBB1_212:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_249
# %bb.213:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_250
.LBB1_214:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_251
# %bb.215:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_252
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_253
# %bb.217:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_254
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rdx
	jmp	.LBB1_246
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rdx
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_269
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_222:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	(%rax), %rdx
	jmp	.LBB1_272
.LBB1_223:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_224:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB1_255
.LBB1_225:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %r8
	movq	%rax, %r9
	cmpq	$100, %r9
	jae	.LBB1_131
.LBB1_226:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %r11
	xorl	%ecx, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	$0, %r15d
	movl	$0, %ecx
	testq	%r9, %r9
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-60(%rbp), %r10d        # 4-byte Reload
	je	.LBB1_436
.LBB1_227:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$8, %r9
	jb	.LBB1_228
# %bb.229:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%r8,%r9), %rcx
	cmpq	%r11, %rcx
	jbe	.LBB1_260
# %bb.230:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%r11,%r9,4), %rcx
	cmpq	%rcx, %r8
	jae	.LBB1_260
.LBB1_228:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%ecx, %ecx
.LBB1_431:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rdx
	notq	%rdx
	addq	%r9, %rdx
	movq	%r9, %rsi
	andq	$3, %rsi
	je	.LBB1_433
	.p2align	4, 0x90
.LBB1_432:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r8,%rcx), %edi
	movl	%edi, (%r11,%rcx,4)
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB1_432
.LBB1_433:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$3, %rdx
	jb	.LBB1_435
	.p2align	4, 0x90
.LBB1_434:                              #   Parent Loop BB1_8 Depth=1
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
	jne	.LBB1_434
	jmp	.LBB1_435
.LBB1_232:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	callq	wcslen
	movq	%r14, %r11
	movq	%rax, %r15
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_235
.LBB1_233:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %r15d
	jmp	.LBB1_194
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movq	%r14, %r11
.LBB1_235:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r14d, %r14d
.LBB1_236:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	-60(%rbp), %r10d        # 4-byte Reload
	jmp	.LBB1_293
.LBB1_237:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_238:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movslq	(%rcx), %rdx
	jmp	.LBB1_247
.LBB1_239:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_267
# %bb.240:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_268
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_270
# %bb.242:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_271
.LBB1_243:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_244:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB1_255
.LBB1_245:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rdx
.LBB1_246:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
.LBB1_247:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB1_274
# %bb.248:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%rdx
	movl	$45, -88(%rbp)
	jmp	.LBB1_274
.LBB1_249:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_250:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB1_269
.LBB1_251:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_252:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movzwl	(%rax), %edx
	jmp	.LBB1_272
.LBB1_253:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_254:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB1_255:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, %r10b
	je	.LBB1_258
# %bb.256:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_258
# %bb.257:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -240(%rbp)
	movl	%r13d, -236(%rbp)
	orl	$2, %r10d
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
.LBB1_259:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
	jmp	.LBB1_273
.LBB1_260:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, %rcx
	andq	$-8, %rcx
	leaq	-8(%rcx), %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %esi
	andl	$1, %esi
	testq	%rdx, %rdx
	je	.LBB1_427
# %bb.261:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%rsi, %rdi
	xorl	%edx, %edx
.LBB1_262:                              #   Parent Loop BB1_8 Depth=1
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
	jne	.LBB1_262
	jmp	.LBB1_428
.LBB1_263:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_264:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB1_269
.LBB1_265:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_266:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movl	(%rcx), %edx
	jmp	.LBB1_272
.LBB1_267:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_268:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB1_269:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r10d           # imm = 0xFBFF
	movl	$111, %r13d
	xorl	%eax, %eax
	jmp	.LBB1_273
.LBB1_270:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_271:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movzbl	(%rcx), %edx
.LBB1_272:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$117, %r13d
	movl	$1, %eax
	.p2align	4, 0x90
.LBB1_273:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -88(%rbp)
.LBB1_274:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %ecx
	andl	$-129, %r10d
	testl	%r15d, %r15d
	cmovsl	%ecx, %r10d
	movq	%r9, -120(%rbp)         # 8-byte Spill
	jne	.LBB1_280
# %bb.275:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	jne	.LBB1_280
# %bb.276:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	jne	.LBB1_285
# %bb.277:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r10d, %eax
	andl	$1, %eax
	je	.LBB1_285
# %bb.278:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -308(%rbp)
.LBB1_279:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-308(%rbp), %r11
	jmp	.LBB1_291
.LBB1_280:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_286
# %bb.281:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_361
# %bb.282:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-304(%rbp), %r11
	cmpl	$2, %eax
	jne	.LBB1_363
	.p2align	4, 0x90
.LBB1_283:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%r9,%rax,4), %eax
	movl	%eax, -4(%r11)
	addq	$-4, %r11
	shrq	$4, %rdx
	jne	.LBB1_283
	jmp	.LBB1_291
.LBB1_285:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-304(%rbp), %r11
.LBB1_291:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	%r15d, %r14d
	leaq	-304(%rbp), %r15
	subq	%r11, %r15
	shrq	$2, %r15
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB1_292:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB1_293:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r11, -160(%rbp)        # 8-byte Spill
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	cmpl	%r15d, %r14d
	movl	%r15d, %ecx
	cmovgel	%r14d, %ecx
	movl	-88(%rbp), %eax
	cmpl	$1, %eax
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r10b
	cmovel	%ecx, %edx
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	andl	$132, %r10d
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jne	.LBB1_301
# %bb.294:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	subl	%edx, %r12d
	jle	.LBB1_301
# %bb.295:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r12d
	jl	.LBB1_298
	.p2align	4, 0x90
.LBB1_296:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.297:                              #   in Loop: Header=BB1_296 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_296
	jmp	.LBB1_299
.LBB1_298:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_299:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.blanks, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.300:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-88(%rbp), %eax
	.p2align	4, 0x90
.LBB1_301:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	je	.LBB1_303
# %bb.302:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_303:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$2, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB1_305
# %bb.304:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$8, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-240(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_305:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$128, -188(%rbp)        # 4-byte Folded Reload
	jne	.LBB1_312
# %bb.306:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %r12        # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	subl	-124(%rbp), %r12d       # 4-byte Folded Reload
	jle	.LBB1_312
# %bb.307:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r12d
	jl	.LBB1_310
	.p2align	4, 0x90
.LBB1_308:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.309:                              #   in Loop: Header=BB1_308 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_308
	jmp	.LBB1_311
.LBB1_310:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_311:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_312:                              #   in Loop: Header=BB1_8 Depth=1
	subl	%r15d, %r14d
	jle	.LBB1_318
# %bb.313:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_316
	.p2align	4, 0x90
.LBB1_314:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.315:                              #   in Loop: Header=BB1_314 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB1_314
	jmp	.LBB1_317
	.p2align	4, 0x90
.LBB1_316:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_317:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_318:                              #   in Loop: Header=BB1_8 Depth=1
	testl	$256, -60(%rbp)         # 4-byte Folded Reload
                                        # imm = 0x100
	jne	.LBB1_321
# %bb.319:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
.LBB1_320:                              #   in Loop: Header=BB1_8 Depth=1
	shlq	$2, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB1_342
	.p2align	4, 0x90
.LBB1_321:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$102, %r13d
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jb	.LBB1_333
# %bb.322:                              #   in Loop: Header=BB1_8 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0, %xmm0
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jne	.LBB1_353
	jp	.LBB1_353
# %bb.323:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.324:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, -60(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_326
# %bb.325:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	cmpl	%eax, -108(%rbp)
	jge	.LBB1_343
.LBB1_326:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.327:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r14d
	cmpl	$2, %r14d
	jl	.LBB1_343
# %bb.328:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$18, %r14d
	jl	.LBB1_385
# %bb.329:                              # %.preheader10
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$15, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_330:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.331:                              #   in Loop: Header=BB1_330 Depth=2
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_330
# %bb.332:                              # %.loopexit12
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
	jmp	.LBB1_420
.LBB1_333:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r14d
	movl	$4, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	testb	$1, -60(%rbp)           # 1-byte Folded Reload
	jne	.LBB1_335
# %bb.334:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$2, %r14d
	jl	.LBB1_340
.LBB1_335:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.336:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.337:                              #   in Loop: Header=BB1_8 Depth=1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0, %xmm0
	jne	.LBB1_338
	jnp	.LBB1_364
.LBB1_338:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	$4, %rdx
	movslq	-76(%rbp), %rax
	leaq	-4(,%rax,4), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB1_339:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
.LBB1_340:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_341:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-256(%rbp), %rcx        # 4-byte Folded Reload
	shlq	$2, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-224(%rbp), %rdx
.LBB1_342:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_343:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$4, -60(%rbp)           # 1-byte Folded Reload
	je	.LBB1_351
# %bb.344:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	-124(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_351
# %bb.345:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_349
# %bb.346:                              # %.preheader7
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_347:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.blanks, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.348:                              #   in Loop: Header=BB1_347 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_347
	jmp	.LBB1_350
.LBB1_349:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_350:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.blanks, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_351:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	addl	-140(%rbp), %ecx        # 4-byte Folded Reload
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	je	.LBB1_8
# %bb.352:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	xorl	%eax, %eax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_353:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -108(%rbp)
	jle	.LBB1_370
# %bb.354:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r15d
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB1_356
# %bb.355:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_356:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	movl	$0, %eax
	cmovsl	%eax, %r15d
	movq	-136(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	%r15d, %r14d
	jle	.LBB1_389
# %bb.357:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_387
# %bb.358:                              # %.preheader22
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_359:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.360:                              #   in Loop: Header=BB1_359 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_359
	jmp	.LBB1_388
.LBB1_286:                              # %.preheader37
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-308(%rbp), %rax
	.p2align	4, 0x90
.LBB1_287:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	testq	%rdx, %rdx
	jne	.LBB1_287
# %bb.288:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	4(%rax), %r11
	testb	$1, %r10b
	je	.LBB1_291
# %bb.289:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$48, %ecx
	je	.LBB1_291
# %bb.290:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, (%rax)
	movq	%rax, %r11
	jmp	.LBB1_291
.LBB1_361:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	$9, %rdx
	ja	.LBB1_378
# %bb.362:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %edx
	movl	%edx, -308(%rbp)
	jmp	.LBB1_279
.LBB1_363:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.7, %edi
	movq	%xmm2, -104(%rbp)       # 8-byte Folded Spill
	movl	%r10d, %r14d
	callq	wcslen
	movl	$.L.str.7, %r11d
	movl	%r14d, %r10d
	movq	-104(%rbp), %xmm2       # 8-byte Folded Reload
                                        # xmm2 = mem[0],zero
	movl	%r15d, %r14d
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
	jmp	.LBB1_292
.LBB1_364:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %r14d
	cmpl	$2, %r14d
	jl	.LBB1_341
# %bb.365:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$18, %r14d
	jl	.LBB1_422
# %bb.366:                              # %.preheader25
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$15, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_367:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.368:                              #   in Loop: Header=BB1_367 Depth=2
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_367
# %bb.369:                              # %.loopexit27
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
	jmp	.LBB1_423
.LBB1_370:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.371:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	andl	$1, %eax
	orl	-108(%rbp), %eax
	orl	-76(%rbp), %eax
	je	.LBB1_343
# %bb.372:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.373:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB1_426
# %bb.374:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	cmpl	$-17, %eax
	jg	.LBB1_424
# %bb.375:                              # %.preheader13
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_376:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.377:                              #   in Loop: Header=BB1_376 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_376
	jmp	.LBB1_425
.LBB1_378:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -76(%rbp)
	leaq	-304(%rbp), %rsi
	jmp	.LBB1_380
	.p2align	4, 0x90
.LBB1_379:                              #   in Loop: Header=BB1_380 Depth=2
	movq	%r11, %rsi
	cmpq	$9, %rcx
	jbe	.LBB1_291
.LBB1_380:                              #   Parent Loop BB1_8 Depth=1
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
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	testl	$1024, %r10d            # imm = 0x400
	je	.LBB1_379
# %bb.381:                              #   in Loop: Header=BB1_380 Depth=2
	movsbl	(%r8), %edi
	cmpl	%edi, %eax
	jne	.LBB1_379
# %bb.382:                              #   in Loop: Header=BB1_380 Depth=2
	cmpq	$10, %rcx
	jb	.LBB1_379
# %bb.383:                              #   in Loop: Header=BB1_380 Depth=2
	cmpb	$127, %dil
	je	.LBB1_379
# %bb.384:                              #   in Loop: Header=BB1_380 Depth=2
	movl	-172(%rbp), %eax
	movl	%eax, -8(%rsi)
	addq	$-8, %rsi
	movl	$0, -76(%rbp)
	leaq	1(%r8), %rax
	cmpb	$0, 1(%r8)
	cmovneq	%rax, %r8
	movq	%rsi, %r11
	jmp	.LBB1_379
.LBB1_385:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-1, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_420
.LBB1_387:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_388:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_389:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-136(%rbp), %rax        # 4-byte Folded Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	leaq	(%r8,%rax,4), %rdx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	testl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_391
# %bb.390:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_394
.LBB1_391:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	setg	%r10b
	movl	-84(%rbp), %r9d         # 4-byte Reload
	testl	%r9d, %r9d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_406
# %bb.392:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%eax, %eax
	jg	.LBB1_406
.LBB1_393:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-76(%rbp), %rax
	leaq	(%r8,%rax,4), %rcx
	cmpq	%rcx, %rdx
	cmovaq	%rcx, %rdx
	movl	-60(%rbp), %ecx         # 4-byte Reload
.LBB1_394:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$1, %cl
	jne	.LBB1_396
# %bb.395:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-108(%rbp), %ecx
	cmpl	%eax, %ecx
	jge	.LBB1_398
.LBB1_396:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %r14
	movl	$4, %ecx
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.397:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	movl	-108(%rbp), %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r14, %rdx
.LBB1_398:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%r8,%rax,4), %r15
	subq	%rdx, %r15
	shrq	$2, %r15
	subl	%ecx, %eax
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	testl	%r15d, %r15d
	jle	.LBB1_401
# %bb.399:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.400:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-76(%rbp), %eax
	subl	-108(%rbp), %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_401:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %r14d
	negl	%r14d
	testl	%r15d, %r15d
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB1_343
# %bb.402:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB1_419
.LBB1_403:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.404:                              #   in Loop: Header=BB1_403 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_403
# %bb.405:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	jmp	.LBB1_421
.LBB1_406:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_412 Depth 3
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movq	%rdx, %r15
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	-1(%rax), %rcx
	movl	%r10d, %r14d
	testb	$1, %r10b
	cmovneq	%rax, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$4, %ecx
	leaq	-172(%rbp), %rdx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.407:                              #   in Loop: Header=BB1_406 Depth=2
	movl	-76(%rbp), %eax
	movq	-160(%rbp), %r8         # 8-byte Reload
	leaq	(%r8,%rax,4), %r13
	movq	%r15, %rdx
	subq	%r15, %r13
	shrq	$2, %r13
	movq	-72(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movsbl	%al, %r12d
	cmpl	%r12d, %r13d
	cmovgl	%r12d, %r13d
	testl	%r13d, %r13d
	jle	.LBB1_410
# %bb.408:                              #   in Loop: Header=BB1_406 Depth=2
	movslq	%r13d, %rcx
	shlq	$2, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.409:                              #   in Loop: Header=BB1_406 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movsbl	%al, %r12d
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r15, %rdx
.LBB1_410:                              #   in Loop: Header=BB1_406 Depth=2
	testl	%r13d, %r13d
	movl	$0, %ecx
	cmovsl	%ecx, %r13d
	subl	%r13d, %r12d
	jle	.LBB1_417
# %bb.411:                              #   in Loop: Header=BB1_406 Depth=2
	cmpl	$17, %r12d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jl	.LBB1_414
.LBB1_412:                              #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_406 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.413:                              #   in Loop: Header=BB1_412 Depth=3
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_412
	jmp	.LBB1_415
.LBB1_414:                              #   in Loop: Header=BB1_406 Depth=2
	movl	%r12d, %eax
.LBB1_415:                              #   in Loop: Header=BB1_406 Depth=2
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
# %bb.416:                              #   in Loop: Header=BB1_406 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movb	(%rax), %al
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%r15, %rdx
.LBB1_417:                              #   in Loop: Header=BB1_406 Depth=2
	movzbl	%r14b, %ecx
	notb	%r14b
	movzbl	%r14b, %esi
	andl	$1, %esi
	movl	-84(%rbp), %r9d         # 4-byte Reload
	subl	%esi, %r9d
	andl	$1, %ecx
	movl	-80(%rbp), %esi         # 4-byte Reload
	subl	%ecx, %esi
	movsbq	%al, %rax
	leaq	(%rdx,%rax,4), %rdx
	movl	%esi, -80(%rbp)         # 4-byte Spill
	testl	%esi, %esi
	setg	%r10b
	testl	%r9d, %r9d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_406
# %bb.418:                              #   in Loop: Header=BB1_406 Depth=2
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	jg	.LBB1_406
	jmp	.LBB1_393
.LBB1_419:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_420:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
.LBB1_421:                              #   in Loop: Header=BB1_8 Depth=1
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	jmp	.LBB1_342
.LBB1_422:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-1, %r14d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_423:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	jmp	.LBB1_339
.LBB1_424:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB1_425:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	callq	__sfputs_r
	cmpl	$-1, %eax
	je	.LBB1_450
.LBB1_426:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-76(%rbp), %rcx
	jmp	.LBB1_320
.LBB1_427:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%edx, %edx
.LBB1_428:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rsi, %rsi
	je	.LBB1_430
# %bb.429:                              #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_430:                              #   in Loop: Header=BB1_8 Depth=1
	cmpq	%rcx, %r9
	jne	.LBB1_431
.LBB1_435:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r9d, %ecx
	movl	%r9d, %r15d
.LBB1_436:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, (%r11,%rcx,4)
	xorl	%ecx, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB1_293
.LBB1_437:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-208(%rbp), %rcx
	leaq	-276(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_439
# %bb.438:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-112(%r12), %rcx
	leaq	-208(%rbp), %rdx
	cmpq	%rax, %rcx
	jb	.LBB1_448
.LBB1_439:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r9
	andq	$-8, %r9
	leaq	-8(%r9), %rcx
	movq	%rcx, %rax
	shrq	$3, %rax
	addq	$1, %rax
	cmpq	$24, %rcx
	jae	.LBB1_441
# %bb.440:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB1_443
.LBB1_441:                              #   in Loop: Header=BB1_8 Depth=1
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
.LBB1_442:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-112(%r12,%rcx,4), %xmm0
	movups	-96(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -208(%rbp,%rcx,4)
	movaps	%xmm1, -192(%rbp,%rcx,4)
	movups	-80(%r12,%rcx,4), %xmm0
	movups	-64(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -176(%rbp,%rcx,4)
	movaps	%xmm1, -160(%rbp,%rcx,4)
	movups	-48(%r12,%rcx,4), %xmm0
	movups	-32(%r12,%rcx,4), %xmm1
	movaps	%xmm0, -144(%rbp,%rcx,4)
	movaps	%xmm1, -128(%rbp,%rcx,4)
	movupd	-16(%r12,%rcx,4), %xmm0
	movdqu	(%r12,%rcx,4), %xmm1
	movapd	%xmm0, -112(%rbp,%rcx,4)
	movdqa	%xmm1, -96(%rbp,%rcx,4)
	addq	$32, %rcx
	addq	$4, %r14
	jne	.LBB1_442
.LBB1_443:                              #   in Loop: Header=BB1_8 Depth=1
	testb	$3, %al
	je	.LBB1_446
# %bb.444:                              # %.preheader42
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	(%r15,%rcx,4), %rax
	leaq	-216(%rbp), %rdx
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
.LBB1_445:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movupd	-16(%rax,%rsi), %xmm0
	movdqu	(%rax,%rsi), %xmm1
	movapd	%xmm0, -16(%rcx,%rsi)
	movdqa	%xmm1, (%rcx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_445
.LBB1_446:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-208(%rbp), %rax
	leaq	(%rax,%r9,4), %rdx
	cmpq	%r9, %rdi
	je	.LBB1_185
# %bb.447:                              #   in Loop: Header=BB1_8 Depth=1
	andq	$-8, %r11
	leaq	(%r11,%r10), %r9
	addq	$1, %r9
.LBB1_448:                              #   in Loop: Header=BB1_8 Depth=1
	addq	$-1, %r9
.LBB1_449:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-272(%rbp,%r9,4), %eax
	movl	%eax, (%rdx)
	addq	$4, %rdx
	addq	$1, %r9
	cmpq	$-1, %r9
	jl	.LBB1_449
	jmp	.LBB1_185
.LBB1_450:
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_452
# %bb.451:
	movq	-232(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB1_452:                              # %.loopexit3
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB1_453:
	movl	-164(%rbp), %edi
	leaq	-164(%rbp), %rsi
	callq	pthread_setcancelstate
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-140(%rbp), %eax        # 4-byte Folded Reload
.LBB1_454:
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_455:
	movq	-48(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	jmp	.LBB1_453
.Lfunc_end1:
	.size	_vfwprintf_r, .Lfunc_end1-_vfwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_452
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_34
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_36
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_37
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_40
	.quad	.LBB1_42
	.quad	.LBB1_135
	.quad	.LBB1_51
	.quad	.LBB1_135
	.quad	.LBB1_135
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
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_71
	.quad	.LBB1_135
	.quad	.LBB1_75
	.quad	.LBB1_135
	.quad	.LBB1_71
	.quad	.LBB1_71
	.quad	.LBB1_71
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_44
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_79
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_103
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_71
	.quad	.LBB1_135
	.quad	.LBB1_75
	.quad	.LBB1_81
	.quad	.LBB1_71
	.quad	.LBB1_71
	.quad	.LBB1_71
	.quad	.LBB1_45
	.quad	.LBB1_81
	.quad	.LBB1_47
	.quad	.LBB1_135
	.quad	.LBB1_46
	.quad	.LBB1_135
	.quad	.LBB1_52
	.quad	.LBB1_106
	.quad	.LBB1_111
	.quad	.LBB1_47
	.quad	.LBB1_135
	.quad	.LBB1_79
	.quad	.LBB1_47
	.quad	.LBB1_113
	.quad	.LBB1_135
	.quad	.LBB1_135
	.quad	.LBB1_118
	.quad	.LBB1_135
	.quad	.LBB1_47
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function wcvt
.LCPI2_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI2_4:
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_1:
	.quad	4593671619917905920     # double 0.125
.LCPI2_2:
	.quad	4625196817309499392     # double 16
.LCPI2_3:
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
	jns	.LBB2_2
# %bb.1:
	pxor	.LCPI2_0(%rip), %xmm0
.LBB2_2:
	movl	%eax, (%rcx)
	movl	%r14d, %r13d
	orl	$32, %r13d
	cmpl	$97, %r13d
	jne	.LBB2_27
# %bb.3:
	movq	%r15, %rdi
	callq	frexp
	mulsd	.LCPI2_1(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_5
	jp	.LBB2_5
# %bb.4:
	movl	$1, (%r15)
.LBB2_5:
	cmpl	$97, %r14d
	movl	$.L.str.4, %eax
	movl	$.L.str.6, %r8d
	cmoveq	%rax, %r8
	movl	%ebx, %esi
	negl	%esi
	leal	1(%rbx), %edx
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movq	24(%rbp), %r15
	movq	%r15, %r9
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
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
	jae	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	leal	1(%r14), %esi
	leal	7(%r11), %edx
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_6
	jp	.LBB2_6
.LBB2_8:
	ucomisd	.LCPI2_3(%rip), %xmm0
	ja	.LBB2_21
# %bb.9:
	testb	$1, %cl
	je	.LBB2_11
# %bb.10:
	ucomisd	.LCPI2_3(%rip), %xmm0
	jne	.LBB2_11
	jp	.LBB2_11
.LBB2_21:
	cmpl	60(%r8), %eax
	jne	.LBB2_22
	.p2align	4, 0x90
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rdi)
	movl	-4(%rdi), %ecx
	addq	$-4, %rdi
	cmpl	%eax, %ecx
	je	.LBB2_23
# %bb.24:
	cmpl	$57, %ecx
	jne	.LBB2_26
.LBB2_25:
	movl	40(%r8), %eax
	movl	%eax, (%rdi)
	jmp	.LBB2_12
.LBB2_27:
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
	jne	.LBB2_30
# %bb.28:
	cmpl	$103, %r13d
	jne	.LBB2_30
# %bb.29:
	movq	-48(%rbp), %rdx
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	jmp	.LBB2_41
.LBB2_30:
	movslq	%r14d, %rdx
	addq	%rdx, %rax
	cmpl	$102, %r13d
	jne	.LBB2_31
# %bb.32:
	pxor	%xmm0, %xmm0
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_33
	jnp	.LBB2_34
.LBB2_33:
	cmpb	$48, (%rcx)
	jne	.LBB2_34
# %bb.35:
	movl	$1, %edx
	subl	%r14d, %edx
	movl	%edx, (%r15)
	jmp	.LBB2_36
.LBB2_22:
	movl	%eax, %ecx
	cmpl	$57, %ecx
	je	.LBB2_25
.LBB2_26:
	addl	$1, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB2_12
.LBB2_11:
	testl	%r10d, %r10d
	jle	.LBB2_12
# %bb.13:
	movl	%r10d, %r8d
	negl	%r8d
	cmpl	$-2, %r8d
	movl	$-1, %eax
	cmovlel	%eax, %r8d
	addl	%r10d, %r8d
	leaq	1(%r8), %rcx
	cmpq	$7, %rcx
	ja	.LBB2_17
# %bb.14:
	movq	%r9, %rdi
	movq	16(%rbp), %rax
	jmp	.LBB2_15
.LBB2_12:
	movq	%r9, %rdi
	movq	16(%rbp), %rax
.LBB2_20:
	subq	%r15, %rdi
	shrq	$2, %rdi
	movl	%edi, (%rax)
.LBB2_46:
	movq	%r15, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_31:
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_37
.LBB2_34:
	movl	(%r15), %edx
.LBB2_36:
	movq	24(%rbp), %r15
	movq	16(%rbp), %rdi
	movslq	%edx, %rdx
	addq	%rdx, %rax
.LBB2_37:
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_40
	jp	.LBB2_40
# %bb.38:
	movq	%rax, -48(%rbp)
	movq	%rax, %rdx
	jmp	.LBB2_41
	.p2align	4, 0x90
.LBB2_39:                               #   in Loop: Header=BB2_40 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movb	$48, (%rdx)
.LBB2_40:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdx
	cmpq	%rax, %rdx
	jb	.LBB2_39
.LBB2_41:
	movl	32(%rbp), %eax
	subl	%ecx, %edx
	movl	%edx, (%rdi)
	testl	%eax, %eax
	jle	.LBB2_46
# %bb.42:
	testl	%edx, %edx
	jle	.LBB2_46
# %bb.43:
	cltq
	movl	$1, %edx
	.p2align	4, 0x90
.LBB2_44:                               # =>This Inner Loop Header: Depth=1
	movsbl	-1(%rcx,%rdx), %esi
	movl	%esi, -4(%r15,%rdx,4)
	cmpq	%rax, %rdx
	jge	.LBB2_46
# %bb.45:                               #   in Loop: Header=BB2_44 Depth=1
	movslq	(%rdi), %rsi
	cmpq	%rsi, %rdx
	leaq	1(%rdx), %rdx
	jl	.LBB2_44
	jmp	.LBB2_46
.LBB2_17:
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
	movapd	.LCPI2_4(%rip), %xmm0   # xmm0 = [48,48,48,48]
	.p2align	4, 0x90
.LBB2_18:                               # =>This Inner Loop Header: Depth=1
	movupd	%xmm0, (%r9,%rax,4)
	movupd	%xmm0, 16(%r9,%rax,4)
	addq	$8, %rax
	cmpq	%rax, %r10
	jne	.LBB2_18
# %bb.19:
	testl	%r8d, %r8d
	movq	16(%rbp), %rax
	je	.LBB2_20
.LBB2_15:
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rdi)
	addq	$4, %rdi
	addl	$-1, %ebx
	testl	%ebx, %ebx
	jg	.LBB2_16
	jmp	.LBB2_20
.Lfunc_end2:
	.size	wcvt, .Lfunc_end2-wcvt
                                        # -- End function
	.type	_vfwprintf_r.blanks,@object # @_vfwprintf_r.blanks
	.section	.rodata,"a",@progbits
	.p2align	4
_vfwprintf_r.blanks:
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
	.size	_vfwprintf_r.blanks, 64

	.type	_vfwprintf_r.zeroes,@object # @_vfwprintf_r.zeroes
	.p2align	4
_vfwprintf_r.zeroes:
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
	.size	_vfwprintf_r.zeroes, 64

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
