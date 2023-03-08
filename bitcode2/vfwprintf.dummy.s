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
	callq	_vfwprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$0, -44(%rbp)
	callq	_localeconv_r
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-164(%rbp), %rsi
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
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__swsetup_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_7
# %bb.6:
	movl	-164(%rbp), %edi
	leaq	-164(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB1_478
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r14), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	pxor	%xmm0, %xmm0
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r14, -264(%rbp)        # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_22 Depth 3
                                        #         Child Loop BB1_24 Depth 4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
                                        #     Child Loop BB1_310 Depth 2
                                        #     Child Loop BB1_322 Depth 2
                                        #     Child Loop BB1_312 Depth 2
                                        #     Child Loop BB1_277 Depth 2
                                        #     Child Loop BB1_280 Depth 2
                                        #     Child Loop BB1_227 Depth 2
                                        #     Child Loop BB1_169 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_344 Depth 2
                                        #     Child Loop BB1_356 Depth 2
                                        #     Child Loop BB1_362 Depth 2
                                        #     Child Loop BB1_414 Depth 2
                                        #     Child Loop BB1_409 Depth 2
                                        #     Child Loop BB1_439 Depth 2
                                        #       Child Loop BB1_446 Depth 3
                                        #     Child Loop BB1_465 Depth 2
                                        #     Child Loop BB1_424 Depth 2
                                        #     Child Loop BB1_378 Depth 2
                                        #     Child Loop BB1_395 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testl	%eax, %eax
	je	.LBB1_12
# %bb.9:                                # %.preheader6
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
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	shlq	$30, %rcx
	sarq	$30, %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_475
# %bb.16:                               #   in Loop: Header=BB1_8 Depth=1
	addl	%r15d, -132(%rbp)       # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
.LBB1_17:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_475
# %bb.18:                               #   in Loop: Header=BB1_8 Depth=1
	addq	$4, %r14
	movl	$0, -88(%rbp)
	movl	$-1, %r15d
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	movq	%r14, %rbx
	movq	-264(%rbp), %r14        # 8-byte Reload
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r15d
	cmpl	$-2, %r15d
	movl	$-1, %eax
	cmovlel	%eax, %r15d
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
	movl	(%rbx), %r13d
	addq	$4, %rbx
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_24 Depth=4
	movl	%eax, %r15d
.LBB1_24:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_33 Depth 5
                                        #           Child Loop BB1_28 Depth 5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %r13d
	jne	.LBB1_30
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=4
	movl	(%rbx), %r13d
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %r13d
	je	.LBB1_40
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB1_23
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB1_24 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_28:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        #         Parent Loop BB1_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rax,%rax,4), %eax
	leal	(%rcx,%rax,2), %eax
	movl	(%rbx), %r13d
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB1_28
# %bb.29:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$-1, %r15d
	testl	%eax, %eax
	js	.LBB1_24
	jmp	.LBB1_23
.LBB1_30:                               #   in Loop: Header=BB1_24 Depth=4
	leal	-32(%r13), %eax
	cmpl	$90, %eax
	ja	.LBB1_125
# %bb.31:                               #   in Loop: Header=BB1_24 Depth=4
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_32:                               #   in Loop: Header=BB1_24 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_33:                               #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        #       Parent Loop BB1_22 Depth=3
                                        #         Parent Loop BB1_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r12,%r12,4), %eax
	leal	-48(%r13,%rax,2), %r12d
	movl	(%rbx), %r13d
	addq	$4, %rbx
	leal	-48(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
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
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_37:                               #   in Loop: Header=BB1_22 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB1_22
# %bb.38:                               #   in Loop: Header=BB1_21 Depth=2
	negl	%r12d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:                               # %.loopexit1
                                        #   in Loop: Header=BB1_21 Depth=2
	orl	$4, %r11d
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
	cmpl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_21
# %bb.43:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$32, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_44:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$1, %r11d
	jmp	.LBB1_21
.LBB1_45:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%r12, -192(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, %r13d
	callq	_localeconv_r
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	movl	%eax, -172(%rbp)
	movq	%r12, %rdi
	movq	-192(%rbp), %r12        # 8-byte Reload
	callq	_localeconv_r
	movl	%r13d, %r11d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	16(%rax), %rdx
	movl	-172(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testq	%rdx, %rdx
	je	.LBB1_21
# %bb.46:                               #   in Loop: Header=BB1_21 Depth=2
	testl	%eax, %eax
	je	.LBB1_21
# %bb.47:                               #   in Loop: Header=BB1_21 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_21
# %bb.48:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$1024, %r11d            # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_49:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$43, -88(%rbp)
	jmp	.LBB1_21
.LBB1_50:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$128, %r11d
	jmp	.LBB1_21
.LBB1_51:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$8, %r11d
	jmp	.LBB1_21
.LBB1_52:                               #   in Loop: Header=BB1_21 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edx
	cmovel	%ecx, %edx
	cmoveq	%rax, %rbx
	orl	%edx, %r11d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_21
.LBB1_53:                               #   in Loop: Header=BB1_21 Depth=2
	leaq	4(%rbx), %rax
	cmpl	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:                               #   in Loop: Header=BB1_21 Depth=2
	orl	$16, %r11d
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_55:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r11b
	jne	.LBB1_58
# %bb.56:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	4(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$160, %rcx
	ja	.LBB1_70
# %bb.57:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$16, %ecx
	movl	%ecx, 4(%r14)
	jmp	.LBB1_71
.LBB1_58:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, %r14d
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	16(%rax), %rcx
	movq	%rcx, (%rdx)
	fldt	(%rax)
	fstpl	-272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB1_72
.LBB1_59:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %r13d
	jne	.LBB1_81
# %bb.60:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_81
# %bb.61:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, %r15d
	ja	.LBB1_200
# %bb.62:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_201
.LBB1_63:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_115
# %bb.64:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_116
.LBB1_65:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_121
# %bb.66:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB1_135
# %bb.67:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_205
# %bb.68:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_242
# %bb.69:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_243
.LBB1_70:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_71:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
.LBB1_72:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB1_76
# %bb.73:                               #   in Loop: Header=BB1_8 Depth=1
	xorpd	%xmm0, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm1, %xmm0
	jbe	.LBB1_75
# %bb.74:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_75:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	movl	$.L.str.1, %edi
	cmovbq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r11d
	jmp	.LBB1_86
.LBB1_76:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_83
# %bb.77:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, %edx
	orl	$32, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %edx
	movl	%r14d, %ecx
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jne	.LBB1_87
# %bb.78:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	cmpl	$97, %r13d
	sete	%al
	movl	$48, -200(%rbp)
	shll	$5, %eax
	orl	$88, %eax
	movl	%eax, -196(%rbp)
	orl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %r15d
	jl	.LBB1_134
# %bb.79:                               #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r14d
	movslq	%r15d, %rax
	leaq	4(,%rax,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_479
# %bb.80:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rax, %r10
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r14d, %ecx
	movq	%rax, %r14
	jmp	.LBB1_153
.LBB1_81:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_131
# %bb.82:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_132
.LBB1_83:                               #   in Loop: Header=BB1_8 Depth=1
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movq	%xmm0, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	%r14d, %r11d
	jns	.LBB1_85
# %bb.84:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_85:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$72, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %eax
	movl	$.L.str.3, %edi
	cmovbq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_86:                               #   in Loop: Header=BB1_8 Depth=1
	andl	$-129, %r11d
	movl	$3, %r15d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	jmp	.LBB1_335
.LBB1_87:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r15d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	leaq	-704(%rbp), %r10
	je	.LBB1_151
# %bb.88:                               #   in Loop: Header=BB1_8 Depth=1
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB1_153
# %bb.89:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$103, %edx
	jne	.LBB1_153
# %bb.90:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB1_152
.LBB1_91:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.6, %esi
	jmp	.LBB1_110
.LBB1_92:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_137
# %bb.93:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_207
# %bb.94:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_244
# %bb.95:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-72(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_283
# %bb.96:                               #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_284
.LBB1_97:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_139
# %bb.98:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB1_209
# %bb.99:                               #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_246
# %bb.100:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_285
# %bb.101:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_286
.LBB1_102:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_141
# %bb.103:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_142
.LBB1_104:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_143
# %bb.105:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB1_211
# %bb.106:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_248
# %bb.107:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_287
# %bb.108:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_288
.LBB1_109:                              # %.loopexit2
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.4, %esi
.LBB1_110:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_123
# %bb.111:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r11b
	jne	.LBB1_145
# %bb.112:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB1_213
# %bb.113:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_250
# %bb.114:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_251
.LBB1_115:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_116:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_133
# %bb.117:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$83, %r13d
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	je	.LBB1_127
# %bb.118:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r11b
	jne	.LBB1_127
# %bb.119:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB1_269
# %bb.120:                              #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_270
.LBB1_121:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_147
# %bb.122:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_148
.LBB1_123:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_149
# %bb.124:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_150
.LBB1_125:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB1_474
# %bb.126:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r13d, -704(%rbp)
	jmp	.LBB1_204
.LBB1_127:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB1_189
# %bb.128:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rdx
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	movq	%rdi, %r14
	callq	wmemchr
	movq	%r14, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_130
# %bb.129:                              #   in Loop: Header=BB1_8 Depth=1
	subq	%rdi, %rax
	shrq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	jge	.LBB1_234
.LBB1_130:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_190
.LBB1_131:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_132:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	%eax, -704(%rbp)
	jmp	.LBB1_203
.LBB1_133:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$6, %r15d
	movl	$6, %eax
	cmovbl	%r15d, %eax
	movl	$.L.str.5, %edi
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB1_335
.LBB1_134:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %r10
	xorl	%r14d, %r14d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB1_153
.LBB1_135:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_215
# %bb.136:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_216
.LBB1_137:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-132(%rbp), %rax        # 4-byte Folded Reload
	movslq	(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	movq	-64(%rbp), %r12         # 8-byte Reload
	ja	.LBB1_217
# %bb.138:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r14), %rcx
	addl	$8, %edx
	movl	%edx, (%r14)
	jmp	.LBB1_218
.LBB1_139:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_219
# %bb.140:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_220
.LBB1_141:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_142:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	orl	$2, %r11d
	movabsq	$515396075568, %rax     # imm = 0x7800000030
	movq	%rax, -200(%rbp)
	movl	$120, %r13d
	movl	$.L.str.4, %esi
	jmp	.LBB1_268
.LBB1_143:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_221
# %bb.144:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_222
.LBB1_145:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_223
# %bb.146:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_224
.LBB1_147:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_148:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_254
.LBB1_149:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_150:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_264
.LBB1_151:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %r15d
.LBB1_152:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r14d, %r14d
.LBB1_153:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	orl	$256, %edx              # imm = 0x100
	subq	$8, %rsp
	leaq	-44(%rbp), %rax
	leaq	-204(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	%edx, -128(%rbp)        # 4-byte Spill
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
	jne	.LBB1_158
# %bb.154:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %rcx
	cmpq	%rcx, %r8
	movl	-136(%rbp), %edi        # 4-byte Reload
	jne	.LBB1_159
# %bb.155:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$101, %eax
	jl	.LBB1_159
# %bb.156:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, %r14
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_479
# %bb.157:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %r12
	movl	-44(%rbp), %eax
	subq	$8, %rsp
	leaq	-204(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %esi
	movl	-128(%rbp), %edx        # 4-byte Reload
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
	movq	%r12, -184(%rbp)        # 8-byte Spill
	movq	%r14, %r12
	movq	%rax, %r14
.LBB1_158:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-136(%rbp), %edi        # 4-byte Reload
.LBB1_159:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$103, %edi
	movq	%r14, -152(%rbp)        # 8-byte Spill
	movq	%r8, -160(%rbp)         # 8-byte Spill
	jne	.LBB1_163
# %bb.160:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-3, %ecx
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jl	.LBB1_162
# %bb.161:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$103, %eax
	cmpl	%r15d, %ecx
	jle	.LBB1_164
.LBB1_162:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %edi
	orl	$32, %edi
	jmp	.LBB1_167
.LBB1_163:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$102, %eax
	cmpl	$70, %r13d
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jne	.LBB1_165
.LBB1_164:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	jmp	.LBB1_175
.LBB1_165:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$101, %r13d
	ja	.LBB1_175
# %bb.166:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %ecx
.LBB1_167:                              #   in Loop: Header=BB1_8 Depth=1
	leal	-1(%rcx), %edx
	movl	%edx, -116(%rbp)
	leal	15(%r13), %eax
	cmpl	$97, %edi
	cmovnel	%r13d, %eax
	movl	%eax, -256(%rbp)
	movl	$1, %eax
	subl	%ecx, %eax
	xorl	%esi, %esi
	testl	%ecx, %ecx
	setle	%sil
	movl	$42, __A_VARIABLE(%rip)
	leal	43(%rsi,%rsi), %ecx
	cmovgl	%edx, %eax
	movl	%ecx, -252(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jl	.LBB1_180
# %bb.168:                              # %.preheader46
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	$-1, %rcx
	xorl	%esi, %esi
	movq	-56(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_169:                              #   Parent Loop BB1_8 Depth=1
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
	movl	%edi, -280(%rbp,%rdx,4)
	leaq	-1(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$99, %r9d
	jg	.LBB1_169
# %bb.170:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %eax
	movl	%eax, -284(%rbp,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-248(%rbp), %r9
	cmpq	$1, %rdx
	jg	.LBB1_183
# %bb.171:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, -248(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-244(%rbp), %r9
	testq	%rsi, %rsi
	je	.LBB1_183
# %bb.172:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, -244(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-240(%rbp), %r9
	testq	%rdx, %rdx
	jns	.LBB1_183
# %bb.173:                              # %.preheader44
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-240(%rbp), %r9
.LBB1_174:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-272(%rbp,%r8,4), %eax
	movl	%eax, (%r9)
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r8
	cmpq	$-1, %r8
	jl	.LBB1_174
	jmp	.LBB1_183
.LBB1_175:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	jne	.LBB1_187
# %bb.176:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB1_230
# %bb.177:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_179
# %bb.178:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r14d
	testb	$1, %r11b
	je	.LBB1_195
.LBB1_179:                              #   in Loop: Header=BB1_8 Depth=1
	leal	(%rdi,%r15), %r14d
	addl	$1, %r14d
	jmp	.LBB1_194
.LBB1_180:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-248(%rbp), %r9
	cmpl	$97, %edi
	je	.LBB1_182
# %bb.181:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -248(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-244(%rbp), %r9
.LBB1_182:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %eax
	movl	%eax, (%r9)
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r10         # 8-byte Reload
.LBB1_183:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-256(%rbp), %rax
	subq	%rax, %r9
	shrq	$2, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	leal	(%rax,%r9), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB1_185
# %bb.184:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB1_186
.LBB1_185:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_186:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-128(%rbp), %r11d       # 4-byte Reload
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%edi, %edi
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_238
.LBB1_187:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %edi
	jge	.LBB1_192
# %bb.188:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
	subl	%edi, %eax
	testl	%edi, %edi
	movl	$1, %ecx
	cmovlel	%eax, %ecx
	addl	%ecx, %r14d
	jmp	.LBB1_194
.LBB1_189:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	callq	wcslen
	movq	%r14, %rdi
	movq	%rax, %r15
.LBB1_190:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
.LBB1_191:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	-80(%rbp), %r11d        # 4-byte Reload
	jmp	.LBB1_336
.LBB1_192:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r14d
	testb	$1, %r11b
	je	.LBB1_195
# %bb.193:                              #   in Loop: Header=BB1_8 Depth=1
	leal	1(%rdi), %r14d
.LBB1_194:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_195:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r11d            # imm = 0x400
	je	.LBB1_199
# %bb.196:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%edi, %edi
	jle	.LBB1_199
# %bb.197:                              #   in Loop: Header=BB1_8 Depth=1
	movb	(%r10), %dl
	xorl	%r11d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %dl
	jne	.LBB1_225
# %bb.198:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, %ecx
	xorl	%esi, %esi
	jmp	.LBB1_236
.LBB1_199:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%r14d, %r15d
	movl	-128(%rbp), %r11d       # 4-byte Reload
	jmp	.LBB1_239
.LBB1_200:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_201:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edi
	callq	btowc
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_481
# %bb.202:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, -704(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	movl	%r15d, %r11d
.LBB1_203:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -700(%rbp)
.LBB1_204:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -88(%rbp)
	movl	$1, %r15d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	leaq	-704(%rbp), %rdi
	jmp	.LBB1_336
.LBB1_205:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_252
# %bb.206:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_253
.LBB1_207:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_256
# %bb.208:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_257
.LBB1_209:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_258
# %bb.210:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_259
.LBB1_211:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_260
# %bb.212:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_261
.LBB1_213:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_262
# %bb.214:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_263
.LBB1_215:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_216:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %rdx
	jmp	.LBB1_254
.LBB1_217:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_218:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_291
.LBB1_219:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_220:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_294
.LBB1_221:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_222:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdx
	jmp	.LBB1_297
.LBB1_223:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_224:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB1_264
.LBB1_225:                              # %.preheader47
                                        #   in Loop: Header=BB1_8 Depth=1
	xorl	%esi, %esi
	xorl	%r11d, %r11d
	movl	%edi, %ecx
	jmp	.LBB1_227
	.p2align	4, 0x90
.LBB1_226:                              #   in Loop: Header=BB1_227 Depth=2
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
	je	.LBB1_236
.LBB1_227:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	%dl, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %ecx
	jle	.LBB1_235
# %bb.228:                              #   in Loop: Header=BB1_227 Depth=2
	xorl	%edx, %edx
	xorl	%edi, %edi
	cmpb	$0, 1(%r10)
	sete	%r8b
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_226
# %bb.229:                              #   in Loop: Header=BB1_227 Depth=2
	addq	$1, %r10
	jmp	.LBB1_226
.LBB1_230:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_232
# %bb.231:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testb	$1, %r11b
	je	.LBB1_233
.LBB1_232:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$2, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r14d
.LBB1_233:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$102, %r13d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_237
.LBB1_234:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	%eax, %r15d
	jmp	.LBB1_191
.LBB1_235:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%edi, %ecx
.LBB1_236:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	addl	%r11d, %r14d
	movl	%esi, -84(%rbp)         # 4-byte Spill
	addl	%esi, %r14d
	movl	%ecx, %edi
.LBB1_237:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-128(%rbp), %r11d       # 4-byte Reload
.LBB1_238:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
.LBB1_239:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%r10, -56(%rbp)         # 8-byte Spill
	cmpl	$0, -204(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_241
# %bb.240:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$45, -88(%rbp)
	xorl	%r14d, %r14d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB1_336
.LBB1_241:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%r14d, %r14d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB1_337
.LBB1_242:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_243:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %rdx
	jmp	.LBB1_254
.LBB1_244:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-72(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_289
# %bb.245:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r14), %rax
	addl	$8, %ecx
	movl	%ecx, (%r14)
	jmp	.LBB1_290
.LBB1_246:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_292
# %bb.247:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_293
.LBB1_248:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_295
# %bb.249:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r14), %rcx
	addl	$8, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_296
.LBB1_250:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_251:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB1_264
.LBB1_252:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_253:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %rdx
.LBB1_254:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	jns	.LBB1_299
# %bb.255:                              #   in Loop: Header=BB1_8 Depth=1
	negq	%rdx
	movl	$45, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_299
.LBB1_256:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_257:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB1_291
.LBB1_258:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_259:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB1_294
.LBB1_260:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_261:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %edx
	jmp	.LBB1_297
.LBB1_262:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_263:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB1_264:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB1_267
# %bb.265:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	je	.LBB1_267
# %bb.266:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -200(%rbp)
	movl	%r13d, -196(%rbp)
	orl	$2, %r11d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_267:                              #   in Loop: Header=BB1_8 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
.LBB1_268:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$2, %eax
	jmp	.LBB1_298
.LBB1_269:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, %r14
	callq	strlen
	movq	%r14, %rcx
	movq	%rax, %rsi
.LBB1_270:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %r8         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$100, %rsi
	jb	.LBB1_273
# %bb.271:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, %r14
	movq	%rsi, %r15
	leaq	4(,%rsi,4), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_481
# %bb.272:                              #   in Loop: Header=BB1_8 Depth=1
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
	jmp	.LBB1_274
.LBB1_273:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-704(%rbp), %rax
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
	je	.LBB1_282
.LBB1_274:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-1(%rsi), %rdx
	movl	%esi, %r10d
	andl	$3, %r10d
	cmpq	$3, %rdx
	jae	.LBB1_276
# %bb.275:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %r15
	xorl	%edx, %edx
	jmp	.LBB1_278
.LBB1_276:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rsi, %r15
	andq	$-4, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_277:                              #   Parent Loop BB1_8 Depth=1
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
	jne	.LBB1_277
.LBB1_278:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%r10, %r10
	je	.LBB1_281
# %bb.279:                              # %.preheader52
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rax,%rdx,4), %rsi
	addq	%rdx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_280:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rcx,%rdx), %edi
	movl	%edi, (%rsi,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB1_280
.LBB1_281:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %edx
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB1_282:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	$0, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movq	%rax, %rdi
	jmp	.LBB1_336
.LBB1_283:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_284:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_291
.LBB1_285:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_286:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB1_294
.LBB1_287:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_288:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	jmp	.LBB1_297
.LBB1_289:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_290:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movb	%cl, (%rax)
.LBB1_291:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_292:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_293:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB1_294:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %r11d           # imm = 0xFBFF
	movl	$111, %r13d
	xorl	%eax, %eax
	jmp	.LBB1_298
.LBB1_295:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_296:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %edx
.LBB1_297:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$117, %r13d
	movl	$1, %eax
	.p2align	4, 0x90
.LBB1_298:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -88(%rbp)
.LBB1_299:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	js	.LBB1_305
# %bb.300:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r11d, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB1_306
# %bb.301:                              #   in Loop: Header=BB1_8 Depth=1
	testq	%rdx, %rdx
	jne	.LBB1_306
# %bb.302:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_304
# %bb.303:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	jne	.LBB1_332
.LBB1_304:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r11d
	leaq	-304(%rbp), %rdi
	jmp	.LBB1_334
.LBB1_305:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_307
.LBB1_306:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%ecx, %r11d
.LBB1_307:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_311
# %bb.308:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, %eax
	je	.LBB1_316
# %bb.309:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-304(%rbp), %rdi
	cmpl	$2, %eax
	jne	.LBB1_318
	.p2align	4, 0x90
.LBB1_310:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %eax
	andl	$15, %eax
	movl	(%rsi,%rax,4), %eax
	movl	%eax, -4(%rdi)
	addq	$-4, %rdi
	shrq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_310
	jmp	.LBB1_334
.LBB1_311:                              # %.preheader40
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	-308(%rbp), %rax
	.p2align	4, 0x90
.LBB1_312:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ecx
	andl	$7, %ecx
	orl	$48, %ecx
	movl	%ecx, (%rax)
	shrq	$3, %rdx
	addq	$-4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB1_312
# %bb.313:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	4(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r11b
	je	.LBB1_334
# %bb.314:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	je	.LBB1_334
# %bb.315:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB1_334
.LBB1_316:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdx
	ja	.LBB1_319
# %bb.317:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$48, %edx
	movl	%edx, -308(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_333
.LBB1_318:                              #   in Loop: Header=BB1_8 Depth=1
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
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movl	%eax, %r15d
	jmp	.LBB1_335
.LBB1_319:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-304(%rbp), %rdi
	jmp	.LBB1_322
	.p2align	4, 0x90
.LBB1_320:                              #   in Loop: Header=BB1_322 Depth=2
	movq	%rax, %rdi
.LBB1_321:                              #   in Loop: Header=BB1_322 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rcx
	jbe	.LBB1_331
.LBB1_322:                              #   Parent Loop BB1_8 Depth=1
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
	je	.LBB1_320
# %bb.323:                              #   in Loop: Header=BB1_322 Depth=2
	movsbl	(%r8), %r9d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %esi
	jne	.LBB1_320
# %bb.324:                              #   in Loop: Header=BB1_322 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %rcx
	jb	.LBB1_320
# %bb.325:                              #   in Loop: Header=BB1_322 Depth=2
	cmpb	$127, %r9b
	je	.LBB1_320
# %bb.326:                              #   in Loop: Header=BB1_322 Depth=2
	movl	-172(%rbp), %eax
	movl	%eax, -8(%rdi)
	addq	$-8, %rdi
	movl	$0, -44(%rbp)
	cmpb	$0, 1(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_321
# %bb.327:                              #   in Loop: Header=BB1_322 Depth=2
	addq	$1, %r8
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_321
.LBB1_331:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%r8, -56(%rbp)          # 8-byte Spill
	jmp	.LBB1_334
.LBB1_332:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$48, -308(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r11d
.LBB1_333:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	-308(%rbp), %rdi
	.p2align	4, 0x90
.LBB1_334:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %r14d
	leaq	-304(%rbp), %r15
	subq	%rdi, %r15
	shrq	$2, %r15
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
.LBB1_335:                              #   in Loop: Header=BB1_8 Depth=1
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB1_336:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_337:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	%r15d, %r14d
	movl	%r15d, %ecx
	cmovgel	%r14d, %ecx
	movl	-88(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_339
# %bb.338:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_339:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r11b
	je	.LBB1_341
# %bb.340:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_341:                              #   in Loop: Header=BB1_8 Depth=1
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%xmm0, -104(%rbp)       # 8-byte Folded Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r11d
	movl	%r11d, -128(%rbp)       # 4-byte Spill
	movq	%r12, -192(%rbp)        # 8-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	jne	.LBB1_349
# %bb.342:                              #   in Loop: Header=BB1_8 Depth=1
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r12d
	jle	.LBB1_349
# %bb.343:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB1_346
	.p2align	4, 0x90
.LBB1_344:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.blanks, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.345:                              #   in Loop: Header=BB1_344 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_344
	jmp	.LBB1_347
.LBB1_346:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_347:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.blanks, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.348:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-88(%rbp), %eax
	.p2align	4, 0x90
.LBB1_349:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_351
# %bb.350:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-88(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_351:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB1_353
# %bb.352:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$8, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-200(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_353:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -128(%rbp)        # 4-byte Folded Reload
	jne	.LBB1_360
# %bb.354:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-192(%rbp), %r12        # 8-byte Reload
                                        # kill: def $r12d killed $r12d killed $r12 def $r12
	movl	$42, __A_VARIABLE(%rip)
	subl	-136(%rbp), %r12d       # 4-byte Folded Reload
	jle	.LBB1_360
# %bb.355:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB1_358
	.p2align	4, 0x90
.LBB1_356:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.357:                              #   in Loop: Header=BB1_356 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB1_356
	jmp	.LBB1_359
.LBB1_358:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r12d, %eax
.LBB1_359:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_360:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %r14d
	jle	.LBB1_366
# %bb.361:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_364
	.p2align	4, 0x90
.LBB1_362:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.363:                              #   in Loop: Header=BB1_362 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB1_362
	jmp	.LBB1_365
	.p2align	4, 0x90
.LBB1_364:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_365:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_366:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %eax         # 4-byte Reload
	testl	$256, %eax              # imm = 0x100
	jne	.LBB1_369
# %bb.367:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
.LBB1_368:                              #   in Loop: Header=BB1_8 Depth=1
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB1_390
	.p2align	4, 0x90
.LBB1_369:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	movq	-160(%rbp), %rdx        # 8-byte Reload
	jb	.LBB1_381
# %bb.370:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0, %xmm0
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	jne	.LBB1_402
	jp	.LBB1_402
# %bb.371:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.372:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %eax
	cmpl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB1_374
# %bb.373:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB1_391
.LBB1_374:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.375:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB1_391
# %bb.376:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %r14d
	jl	.LBB1_426
# %bb.377:                              # %.preheader12
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$15, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_378:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.379:                              #   in Loop: Header=BB1_378 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_378
# %bb.380:                              # %.loopexit14
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
	jmp	.LBB1_427
.LBB1_381:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_384
# %bb.382:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB1_384
# %bb.383:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	jmp	.LBB1_388
.LBB1_384:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.385:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.386:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0, %xmm0
	jne	.LBB1_387
	jnp	.LBB1_411
.LBB1_387:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	$4, %rdx
	movslq	-44(%rbp), %rax
	leaq	-4(,%rax,4), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB1_388:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_389:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-216(%rbp), %rcx        # 4-byte Folded Reload
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-256(%rbp), %rdx
.LBB1_390:                              #   in Loop: Header=BB1_8 Depth=1
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_391:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB1_399
# %bb.392:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-192(%rbp), %r14        # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	-136(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB1_399
# %bb.393:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_397
# %bb.394:                              # %.preheader9
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_395:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.blanks, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.396:                              #   in Loop: Header=BB1_395 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_395
	jmp	.LBB1_398
.LBB1_397:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_398:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.blanks, %edx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_399:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_401
# %bb.400:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %r14d
	callq	free
	movl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB1_401:                              #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	addl	%ecx, -132(%rbp)        # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %xmm0       # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB1_8
.LBB1_402:                              #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, -116(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_417
# %bb.403:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpl	%eax, %r14d
	jle	.LBB1_405
# %bb.404:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB1_405:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_407
# %bb.406:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
.LBB1_407:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r14d, %r14d
	movl	$0, %eax
	cmovsl	%eax, %r14d
	movq	-144(%rbp), %r15        # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r15d
	jle	.LBB1_430
# %bb.408:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB1_428
	.p2align	4, 0x90
.LBB1_409:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
# %bb.410:                              #   in Loop: Header=BB1_409 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB1_409
	jmp	.LBB1_429
.LBB1_411:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB1_389
# %bb.412:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$18, %r14d
	jl	.LBB1_433
# %bb.413:                              # %.preheader28
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$15, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_414:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.415:                              #   in Loop: Header=BB1_414 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-16, %r14d
	cmpl	$32, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_414
# %bb.416:                              # %.loopexit30
                                        #   in Loop: Header=BB1_8 Depth=1
	addl	$-16, %r14d
	jmp	.LBB1_434
.LBB1_417:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$.L.str.8, %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.418:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax
	orl	-116(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_420
# %bb.419:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -80(%rbp)           # 1-byte Folded Reload
	je	.LBB1_391
.LBB1_420:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.421:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_437
# %bb.422:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %r14d
	negl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-17, %eax
	jg	.LBB1_435
# %bb.423:                              # %.preheader15
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_424:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
# %bb.425:                              #   in Loop: Header=BB1_424 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jg	.LBB1_424
	jmp	.LBB1_436
.LBB1_426:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-1, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_427:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	jmp	.LBB1_390
.LBB1_428:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %eax
.LBB1_429:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
.LBB1_430:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-144(%rbp), %rax        # 4-byte Folded Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	leaq	(%rsi,%rax,4), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %edx         # 4-byte Reload
	testl	$1024, %edx             # imm = 0x400
	jne	.LBB1_432
# %bb.431:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax
	jmp	.LBB1_454
.LBB1_432:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-84(%rbp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	setg	%r15b
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -76(%rbp)           # 4-byte Folded Reload
	jle	.LBB1_438
	jmp	.LBB1_439
.LBB1_433:                              #   in Loop: Header=BB1_8 Depth=1
	addl	$-1, %r14d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_434:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r14d, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	jmp	.LBB1_388
.LBB1_435:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
.LBB1_436:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_472
.LBB1_437:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-44(%rbp), %rcx
	jmp	.LBB1_368
.LBB1_438:                              #   in Loop: Header=BB1_8 Depth=1
	testl	%r14d, %r14d
	jle	.LBB1_451
.LBB1_439:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_446 Depth 3
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rax), %rcx
	testb	$1, %r15b
	cmovneq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	-172(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_471
# %bb.440:                              #   in Loop: Header=BB1_439 Depth=2
	movl	-44(%rbp), %eax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax,4), %r12
	subq	-128(%rbp), %r12        # 8-byte Folded Reload
	shrq	$2, %r12
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r12d
	jle	.LBB1_442
# %bb.441:                              #   in Loop: Header=BB1_439 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
.LBB1_442:                              #   in Loop: Header=BB1_439 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB1_444
# %bb.443:                              #   in Loop: Header=BB1_439 Depth=2
	movslq	%r12d, %rcx
	shlq	$2, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
.LBB1_444:                              #   in Loop: Header=BB1_439 Depth=2
	testl	%r12d, %r12d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %r13d
	movl	$0, %eax
	cmovsl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r12d, %r13d
	jle	.LBB1_450
# %bb.445:                              #   in Loop: Header=BB1_439 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r13d
	jl	.LBB1_448
	.p2align	4, 0x90
.LBB1_446:                              #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_439 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
# %bb.447:                              #   in Loop: Header=BB1_446 Depth=3
	leal	-16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r13d
	movl	%eax, %r13d
	jg	.LBB1_446
	jmp	.LBB1_449
.LBB1_448:                              #   in Loop: Header=BB1_439 Depth=2
	movl	%r13d, %eax
.LBB1_449:                              #   in Loop: Header=BB1_439 Depth=2
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
.LBB1_450:                              #   in Loop: Header=BB1_439 Depth=2
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
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%rax,4), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	setg	%r15b
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, -76(%rbp)         # 4-byte Spill
	testl	%edx, %edx
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	jle	.LBB1_438
	jmp	.LBB1_439
.LBB1_451:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	-44(%rbp), %rax
	movq	-160(%rbp), %rsi        # 8-byte Reload
	leaq	(%rsi,%rax,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, -128(%rbp)        # 8-byte Folded Reload
	jbe	.LBB1_453
# %bb.452:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB1_453:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB1_454:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-116(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jl	.LBB1_456
# %bb.455:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB1_458
.LBB1_456:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	-168(%rbp), %rdx
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_471
# %bb.457:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax
	movl	-116(%rbp), %ecx
	movq	-160(%rbp), %rsi        # 8-byte Reload
.LBB1_458:                              #   in Loop: Header=BB1_8 Depth=1
	leaq	(%rsi,%rax,4), %r15
	subq	-128(%rbp), %r15        # 8-byte Folded Reload
	shrq	$2, %r15
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jge	.LBB1_460
# %bb.459:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r15d
.LBB1_460:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB1_463
# %bb.461:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
# %bb.462:                              #   in Loop: Header=BB1_8 Depth=1
	movl	-44(%rbp), %eax
	subl	-116(%rbp), %eax
.LBB1_463:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r15d, %r14d
	negl	%r14d
	testl	%r15d, %r15d
	movl	$0, %ecx
	cmovlel	%ecx, %r14d
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_469
# %bb.464:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB1_467
.LBB1_465:                              #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_vfwprintf_r.zeroes, %edx
	movl	$64, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
# %bb.466:                              #   in Loop: Header=BB1_465 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB1_465
	jmp	.LBB1_468
.LBB1_467:                              #   in Loop: Header=BB1_8 Depth=1
	movl	%r14d, %eax
.LBB1_468:                              #   in Loop: Header=BB1_8 Depth=1
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movl	$_vfwprintf_r.zeroes, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__sfputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_470
.LBB1_469:                              #   in Loop: Header=BB1_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_391
.LBB1_470:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_471:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_472:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_476
# %bb.473:
	movq	-184(%rbp), %rdi        # 8-byte Reload
	callq	free
.LBB1_474:
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB1_475:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_477
.LBB1_476:
	movq	-64(%rbp), %r12         # 8-byte Reload
.LBB1_477:
	movl	-164(%rbp), %edi
	leaq	-164(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-132(%rbp), %eax        # 4-byte Folded Reload
.LBB1_478:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_479:
	movq	-64(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	jmp	.LBB1_482
.LBB1_481:
	movq	-64(%rbp), %r12         # 8-byte Reload
	orb	$64, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_482:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_475
.Lfunc_end1:
	.size	_vfwprintf_r, .Lfunc_end1-_vfwprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_42
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_44
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_45
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_34
	.quad	.LBB1_49
	.quad	.LBB1_125
	.quad	.LBB1_39
	.quad	.LBB1_125
	.quad	.LBB1_125
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
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_55
	.quad	.LBB1_125
	.quad	.LBB1_59
	.quad	.LBB1_125
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_51
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_63
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_91
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_55
	.quad	.LBB1_125
	.quad	.LBB1_59
	.quad	.LBB1_65
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_55
	.quad	.LBB1_52
	.quad	.LBB1_65
	.quad	.LBB1_54
	.quad	.LBB1_125
	.quad	.LBB1_53
	.quad	.LBB1_125
	.quad	.LBB1_92
	.quad	.LBB1_97
	.quad	.LBB1_102
	.quad	.LBB1_54
	.quad	.LBB1_125
	.quad	.LBB1_63
	.quad	.LBB1_54
	.quad	.LBB1_104
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_109
	.quad	.LBB1_125
	.quad	.LBB1_54
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function wcvt
.LCPI2_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
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
	movl	%r9d, %r12d
	movq	%r8, %r10
	movl	%esi, %r15d
	movq	%xmm0, %rsi
	movq	%rsi, %rax
	sarq	$63, %rax
	andl	$45, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jns	.LBB2_2
# %bb.1:
	pxor	.LCPI2_0(%rip), %xmm0
.LBB2_2:
	movq	24(%rbp), %r14
	movq	16(%rbp), %rsi
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r13d
	orl	$32, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$97, %r13d
	jne	.LBB2_22
# %bb.3:
	movq	%rsi, %r13
	movq	%r10, %rdi
	movq	%r10, %rbx
	callq	frexp
	mulsd	.LCPI2_1(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_5
	jp	.LBB2_5
# %bb.4:
	movl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_5:
	cmpl	$97, %r12d
	movl	$.L.str.4, %eax
	movl	$.L.str.6, %r8d
	cmoveq	%rax, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	xorl	%edi, %edi
	movsd	.LCPI2_2(%rip), %xmm2   # xmm2 = mem[0],zero
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
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
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_6
	jp	.LBB2_6
.LBB2_8:
	addl	$1, %r15d
	subq	%rbx, %r15
	movq	%r14, %rax
	subq	%rdi, %rax
	ucomisd	.LCPI2_3(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_18
	jp	.LBB2_18
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB2_11
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB2_21
	.p2align	4, 0x90
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r15d
	testl	%r15d, %r15d
	jg	.LBB2_19
	jmp	.LBB2_21
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %esi
	cmpl	$102, %r13d
	jne	.LBB2_24
# %bb.23:
	movl	%edx, %r12d
	jmp	.LBB2_26
.LBB2_11:
	leaq	-4(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	60(%r8), %edx
	jne	.LBB2_12
	.p2align	4, 0x90
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	movl	$48, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	-4(%rsi), %edi
	addq	$-4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %edi
	je	.LBB2_13
	jmp	.LBB2_14
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %esi
	movl	%edx, %r12d
	cmpl	$101, %r13d
	jne	.LBB2_26
# %bb.25:
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_26:
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
	jne	.LBB2_29
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB2_29
# %bb.28:
	movq	-48(%rbp), %rdx
	movq	16(%rbp), %rdi
	jmp	.LBB2_41
.LBB2_29:
	movslq	%r15d, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$102, %r13d
	jne	.LBB2_30
# %bb.31:
	movb	(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_32
	jnp	.LBB2_33
.LBB2_32:
	cmpb	$48, %dl
	jne	.LBB2_33
# %bb.34:
	movl	$1, %edx
	subl	%r15d, %edx
	movl	%edx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_35
.LBB2_30:
	movq	16(%rbp), %rdi
	movapd	-80(%rbp), %xmm1        # 16-byte Reload
	jmp	.LBB2_36
.LBB2_12:
	movl	%edx, %edi
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %edi
	jne	.LBB2_16
# %bb.15:
	movl	40(%r8), %edi
	jmp	.LBB2_17
.LBB2_16:
	addl	$1, %edi
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_21:
	subq	%r14, %rax
	shrq	$2, %rax
	movl	%eax, (%r13)
	jmp	.LBB2_45
.LBB2_33:
	movl	(%rbx), %edx
.LBB2_35:
	movq	16(%rbp), %rdi
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_38
	jp	.LBB2_38
# %bb.37:
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
.LBB2_41:
	subl	%eax, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB2_45
# %bb.42:
	movslq	32(%rbp), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_43:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jge	.LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_43 Depth=1
	movsbl	(%rax,%rdx), %esi
	movl	%esi, (%r14,%rdx,4)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jl	.LBB2_43
.LBB2_45:
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
.LBB2_38:
	movq	-48(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_40:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB2_41
# %bb.39:                               #   in Loop: Header=BB2_40 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, -48(%rbp)
	movb	$48, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	jmp	.LBB2_40
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
