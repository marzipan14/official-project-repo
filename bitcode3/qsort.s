	.text
	.file	"qsort.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function qsort
.LCPI0_0:
	.quad	2                       # 0x2
	.quad	2                       # 0x2
.LCPI0_1:
	.quad	31                      # 0x1f
	.quad	31                      # 0x1f
	.text
	.globl	qsort
	.p2align	4, 0x90
	.type	qsort,@function
qsort:                                  # @qsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r11
	movq	%rdx, %rbx
	negq	%rbx
	movl	%r11d, %eax
	orl	%r12d, %eax
	xorl	%ecx, %ecx
	cmpq	$8, %rdx
	setne	%cl
	testb	$7, %al
	sete	-41(%rbp)               # 1-byte Folded Spill
	movl	$2, %eax
	cmovel	%ecx, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	cmpq	$7, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rbx, -256(%rbp)        # 8-byte Spill
	jae	.LBB0_40
# %bb.1:
	movq	%r11, %rcx
.LBB0_2:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	imulq	%r12, %r15
	cmpq	%r12, %r15
	jle	.LBB0_314
# %bb.3:
	movq	-72(%rbp), %r8          # 8-byte Reload
	addq	%r8, %r15
	movslq	%r12d, %rsi
	movq	%rsi, %rdi
	shrq	$3, %rdi
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdx
	xorl	%r9d, %r9d
	testq	%rdi, %rdi
	sete	%r9b
	cmovneq	%rcx, %rdx
	leaq	(%r9,%rdi), %rcx
	addq	%rdi, %rdx
	leaq	(%r12,%rdx,8), %rax
	addq	$16, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	leaq	16(,%rdx,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	andq	$-4, %rax
	movq	%rsi, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rsi), %r10
	leaq	(%rdx,%r12), %rcx
	leaq	2(%rsi,%rcx), %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %xmm1
	movq	%rsi, %xmm0
	paddq	%xmm1, %xmm0
	movq	%r12, %xmm2
	paddq	%xmm1, %xmm2
	paddq	.LCPI0_0(%rip), %xmm2
	pand	.LCPI0_1(%rip), %xmm2
	psubq	%xmm2, %xmm0
	leaq	(%rdx,%rsi), %rcx
	addq	$-30, %rcx
	shrq	$5, %rcx
	leaq	(%r9,%rdi), %rdx
	addq	$-4, %rdx
	shrq	$2, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	addq	$1, %rdx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	subq	%rax, %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	andl	$1, %eax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%r10, -176(%rbp)        # 8-byte Spill
	andq	$-32, %r10
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%r10, -304(%rbp)        # 8-byte Spill
	subq	%r10, %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%xmm0, %rax
	addq	$2, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	leal	1(%rcx), %eax
	andl	$1, %eax
	andq	$-2, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	addq	%rax, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	leaq	(%r8,%r12), %rcx
	leaq	48(%r8), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%r15, -152(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, -312(%rbp)          # 8-byte Folded Spill
	addq	%rax, -120(%rbp)        # 8-byte Folded Spill
	movq	-152(%rbp), %r15        # 8-byte Reload
	cmpq	%r15, %rcx
	jae	.LBB0_314
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_17 Depth 3
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	cmpq	-72(%rbp), %rcx         # 8-byte Folded Reload
	jbe	.LBB0_4
# %bb.6:                                # %.preheader5
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-208(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r13        # 8-byte Reload
	xorl	%r12d, %r12d
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	movq	(%r14), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r15)
	movq	-72(%rbp), %r8          # 8-byte Reload
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	addq	$1, %r12
	movq	-256(%rbp), %rbx        # 8-byte Reload
	addq	%rbx, %r13
	cmpq	%r8, %r15
	jbe	.LBB0_4
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_26 Depth 3
                                        #       Child Loop BB0_17 Depth 3
	movq	%r15, %r14
	addq	%rbx, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jle	.LBB0_4
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB0_7
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r12, %rax
	imulq	%rbx, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	-72(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	%r8, %rcx
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$4, -56(%rbp)           # 8-byte Folded Reload
	jb	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_24
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=2
	addq	-248(%rbp), %rax        # 8-byte Folded Reload
	addq	%r8, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_24
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r15, %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=2
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx), %rsi
	movq	(%rax,%rdx), %rdi
	movq	%rdi, (%r14,%rdx)
	movq	%rsi, (%rax,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_17
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$31, -176(%rbp)         # 8-byte Folded Reload
	jbe	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_31
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=2
	addq	-144(%rbp), %rax        # 8-byte Folded Reload
	addq	%r8, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_31
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%r15, %rsi
.LBB0_22:                               #   in Loop: Header=BB0_9 Depth=2
	addq	$1, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_23:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %ebx
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r14,%rdx)
	movb	%bl, (%rsi,%rdx)
	addq	$-1, %rax
	addq	$1, %rdx
	cmpq	$1, %rax
	jg	.LBB0_23
	jmp	.LBB0_8
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB0_38
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_26:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	-48(%r13,%rax,8), %xmm2
	movups	-32(%r13,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, -48(%r13,%rax,8)
	movups	%xmm1, -32(%r13,%rax,8)
	movdqu	32(%r14,%rax,8), %xmm0
	movdqu	48(%r14,%rax,8), %xmm1
	movdqu	-16(%r13,%rax,8), %xmm2
	movups	(%r13,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movdqu	%xmm0, -16(%r13,%rax,8)
	movdqu	%xmm1, (%r13,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -264(%rbp)          # 8-byte Folded Reload
	je	.LBB0_29
.LBB0_28:                               #   in Loop: Header=BB0_9 Depth=2
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r15,%rax,8)
	movdqu	%xmm1, 16(%r15,%rax,8)
.LBB0_29:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -56(%rbp)         # 8-byte Folded Reload
	je	.LBB0_8
# %bb.30:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-240(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-288(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_16
.LBB0_31:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_39
# %bb.32:                               # %.preheader3
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_33:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rcx,%rax), %xmm0
	movups	-32(%rcx,%rax), %xmm1
	movups	-48(%r13,%rax), %xmm2
	movups	-32(%r13,%rax), %xmm3
	movups	%xmm2, -48(%rcx,%rax)
	movups	%xmm3, -32(%rcx,%rax)
	movups	%xmm0, -48(%r13,%rax)
	movups	%xmm1, -32(%r13,%rax)
	movdqu	-16(%rcx,%rax), %xmm0
	movdqu	(%rcx,%rax), %xmm1
	movdqu	-16(%r13,%rax), %xmm2
	movups	(%r13,%rax), %xmm3
	movdqu	%xmm2, -16(%rcx,%rax)
	movups	%xmm3, (%rcx,%rax)
	movdqu	%xmm0, -16(%r13,%rax)
	movdqu	%xmm1, (%r13,%rax)
	addq	$64, %rax
	addq	$2, %rdx
	jne	.LBB0_33
# %bb.34:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	je	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_9 Depth=2
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r15,%rax)
	movdqu	%xmm1, 16(%r15,%rax)
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -176(%rbp)        # 8-byte Folded Reload
	je	.LBB0_8
# %bb.37:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r15,%rax), %rsi
	movq	-280(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_22
.LBB0_38:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -264(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_28
	jmp	.LBB0_29
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_35
	jmp	.LBB0_36
.LBB0_40:
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movabsq	$2305843009213693950, %rdx # imm = 0x1FFFFFFFFFFFFFFE
	movslq	%r12d, %r10
	movq	%r10, %rsi
	shrq	$3, %rsi
	leaq	1(%rdx), %rcx
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	cmovneq	%rdx, %rcx
	orq	$-2, %rax
	leaq	(%rax,%rsi), %rdi
	addq	$2, %rdi
	leaq	(%rax,%rsi), %r9
	addq	%rsi, %rcx
	leaq	16(,%rcx,8), %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	andq	$-4, %rdi
	movq	%r10, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rcx
	cmovleq	%rcx, %rdx
	leaq	(%rdx,%r10), %r8
	addq	$2, %r8
	leal	(%rdx,%r10), %ecx
	addl	$2, %ecx
	andl	$31, %ecx
	movq	%r8, %rbx
	subq	%rcx, %rbx
	movq	%rbx, -216(%rbp)        # 8-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	addq	%r10, %rdx
	addq	$-30, %rdx
	shrq	$5, %rdx
	addq	%rsi, %rax
	addq	$-2, %rax
	shrq	$2, %rax
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	subq	%rdi, %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	andq	$-32, %rcx
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	subq	%rcx, %r10
	movq	%r10, -200(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	leaq	1(%rdx), %rcx
	movq	%rcx, %rax
	movq	%rcx, -264(%rbp)        # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$1, %ecx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	notq	%rdx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	addq	%rcx, %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%r9, -288(%rbp)         # 8-byte Spill
	leaq	16(,%r9,8), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB0_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_194 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_83 Depth 2
                                        #       Child Loop BB0_88 Depth 3
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_112 Depth 4
                                        #       Child Loop BB0_127 Depth 3
                                        #         Child Loop BB0_139 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_154 Depth 4
                                        #         Child Loop BB0_150 Depth 4
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_223 Depth 2
                                        #     Child Loop BB0_217 Depth 2
                                        #     Child Loop BB0_230 Depth 2
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_259 Depth 2
                                        #     Child Loop BB0_265 Depth 2
                                        #     Child Loop BB0_247 Depth 2
                                        #     Child Loop BB0_253 Depth 2
	movq	%r15, %r13
	shrq	%r13
	imulq	%r12, %r13
	addq	%r11, %r13
	cmpq	$7, %r15
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movq	%r15, -152(%rbp)        # 8-byte Spill
	je	.LBB0_67
# %bb.42:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	-1(%r15), %r14
	imulq	%r12, %r14
	addq	%r11, %r14
	cmpq	$41, %r15
	jb	.LBB0_46
# %bb.43:                               #   in Loop: Header=BB0_41 Depth=1
	shrq	$3, %r15
	imulq	%r12, %r15
	leaq	(%r11,%r15), %r12
	leaq	(%r11,%r15,2), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%r12, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	callq	*%rbx
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	js	.LBB0_47
# %bb.44:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	jg	.LBB0_50
# %bb.45:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r12
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_46:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r11, %rbx
	jmp	.LBB0_62
.LBB0_47:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	js	.LBB0_50
# %bb.48:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r12
.LBB0_49:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r12, -72(%rbp)         # 8-byte Spill
.LBB0_50:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r15, %rax
	negq	%rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	subq	%r15, %rdi
	leaq	(%r15,%r13), %r12
	leaq	(%r15,%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%r12, %r15
	movq	%r12, %rsi
	callq	*%rbx
	cmpl	$0, -168(%rbp)          # 4-byte Folded Reload
	js	.LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	jg	.LBB0_55
# %bb.52:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
	movq	%r15, %r13
	jmp	.LBB0_55
.LBB0_53:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	js	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-160(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r15, %r13
.LBB0_55:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r14, %r12
	subq	-64(%rbp), %r12         # 8-byte Folded Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	%r14, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-104(%rbp), %r15        # 8-byte Reload
	callq	*%r15
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	js	.LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jg	.LBB0_61
# %bb.60:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	jmp	.LBB0_62
.LBB0_58:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	js	.LBB0_61
# %bb.59:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%r12, %r14
	jmp	.LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB0_62:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, %r12d
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*%rbx
	testl	%r12d, %r12d
	js	.LBB0_65
# %bb.63:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	jg	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r14
	movq	%r14, %r13
	jmp	.LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_41 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	js	.LBB0_67
# %bb.66:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%r14, %r13
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_41 Depth=1
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB0_75
# %bb.68:                               #   in Loop: Header=BB0_41 Depth=1
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_76
# %bb.69:                               #   in Loop: Header=BB0_41 Depth=1
	cmpq	$4, -136(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_72
# %bb.70:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leaq	(%rcx,%r13), %rax
	cmpq	%rax, %r11
	jae	.LBB0_192
# %bb.71:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r11,%rcx), %rax
	cmpq	%rax, %r13
	jae	.LBB0_192
.LBB0_72:                               #   in Loop: Header=BB0_41 Depth=1
	movq	%r11, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
.LBB0_73:                               #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_74:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx), %rsi
	movq	(%r13,%rdx), %rdi
	movq	%rdi, (%rax,%rdx)
	movq	%rsi, (%r13,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_74
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_41 Depth=1
	movq	(%r11), %rax
	movq	(%r13), %rcx
	movq	%rcx, (%r11)
	movq	%rax, (%r13)
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_76:                               #   in Loop: Header=BB0_41 Depth=1
	cmpq	$31, %r8
	jbe	.LBB0_79
# %bb.77:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r8,%r13), %rax
	cmpq	%rax, %r11
	jae	.LBB0_199
# %bb.78:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r11,%r8), %rax
	cmpq	%rax, %r13
	jae	.LBB0_199
.LBB0_79:                               #   in Loop: Header=BB0_41 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%r11, %rsi
.LBB0_80:                               #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_81:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdx), %ebx
	movzbl	(%r13,%rdx), %eax
	movb	%al, (%rsi,%rdx)
	movb	%bl, (%r13,%rdx)
	addq	$-1, %rcx
	addq	$1, %rdx
	cmpq	$1, %rcx
	jg	.LBB0_81
.LBB0_82:                               #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r11,%r12), %rax
	leaq	-1(%r15), %r9
	imulq	%r12, %r9
	addq	%r11, %r9
	movl	$0, -168(%rbp)          # 4-byte Folded Spill
	movq	%r9, %rcx
	movq	%rax, %rdx
	movq	%rax, %r13
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB0_83:                               #   Parent Loop BB0_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_112 Depth 4
                                        #       Child Loop BB0_127 Depth 3
                                        #         Child Loop BB0_139 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_154 Depth 4
                                        #         Child Loop BB0_150 Depth 4
                                        #       Child Loop BB0_175 Depth 3
                                        #       Child Loop BB0_181 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_168 Depth 3
	movq	%r9, -64(%rbp)          # 8-byte Spill
	cmpq	%rcx, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jbe	.LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_83 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB0_123
	.p2align	4, 0x90
.LBB0_85:                               # %.preheader37
                                        #   in Loop: Header=BB0_83 Depth=2
	xorl	%ebx, %ebx
	movq	%rdx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_88 Depth=3
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%r14, %rdi
.LBB0_87:                               #   in Loop: Header=BB0_88 Depth=3
	addq	%r12, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	$1, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	ja	.LBB0_123
.LBB0_88:                               #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_100 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_112 Depth 4
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	imulq	%r12, %rbx
	leaq	(%rdx,%rbx), %r15
	leaq	(%r8,%rbx), %r12
	addq	%rdx, %r12
	addq	-176(%rbp), %rbx        # 8-byte Folded Reload
	addq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%r11, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB0_122
# %bb.89:                               #   in Loop: Header=BB0_88 Depth=3
	jne	.LBB0_86
# %bb.90:                               #   in Loop: Header=BB0_88 Depth=3
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%r14, %rdi
	je	.LBB0_94
# %bb.91:                               #   in Loop: Header=BB0_88 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_95
# %bb.92:                               #   in Loop: Header=BB0_88 Depth=3
	cmpq	$4, -136(%rbp)          # 8-byte Folded Reload
	jae	.LBB0_101
# %bb.93:                               #   in Loop: Header=BB0_88 Depth=3
	movq	%rdi, %r9
	movq	%r13, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_111
.LBB0_94:                               #   in Loop: Header=BB0_88 Depth=3
	movq	(%r13), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%rdi)
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_120
.LBB0_95:                               #   in Loop: Header=BB0_88 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r13, %r9
	movq	%rdi, %rdx
	cmpq	$31, %r8
	jbe	.LBB0_118
# %bb.96:                               #   in Loop: Header=BB0_88 Depth=3
	cmpq	%r12, %r13
	jae	.LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_88 Depth=3
	leaq	(%r8,%r13), %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r13, %r9
	movq	%rdi, %rdx
	cmpq	%rsi, %r15
	jb	.LBB0_118
.LBB0_98:                               #   in Loop: Header=BB0_88 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_113
# %bb.99:                               # %.preheader27
                                        #   in Loop: Header=BB0_88 Depth=3
	movq	-224(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_100:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r13,%rax), %xmm0
	movups	16(%r13,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%r13,%rax)
	movups	%xmm3, 16(%r13,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
	movdqu	32(%r13,%rax), %xmm0
	movdqu	48(%r13,%rax), %xmm1
	movdqu	32(%rdi,%rax), %xmm2
	movups	48(%rdi,%rax), %xmm3
	movdqu	%xmm2, 32(%r13,%rax)
	movups	%xmm3, 48(%r13,%rax)
	movdqu	%xmm0, 32(%rdi,%rax)
	movdqu	%xmm1, 48(%rdi,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_100
	jmp	.LBB0_114
.LBB0_101:                              #   in Loop: Header=BB0_88 Depth=3
	cmpq	%rbx, %r13
	movq	-96(%rbp), %r12         # 8-byte Reload
	jae	.LBB0_104
# %bb.102:                              #   in Loop: Header=BB0_88 Depth=3
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	%r13, %rax
	cmpq	%rax, %r15
	jae	.LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_88 Depth=3
	movq	%rdi, %r9
	movq	%r13, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_111
.LBB0_104:                              #   in Loop: Header=BB0_88 Depth=3
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_121
# %bb.105:                              # %.preheader24
                                        #   in Loop: Header=BB0_88 Depth=3
	xorl	%eax, %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r13,%rax,8), %xmm0
	movups	16(%r13,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%r13,%rax,8)
	movups	%xmm3, 16(%r13,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
	movdqu	32(%r13,%rax,8), %xmm0
	movdqu	48(%r13,%rax,8), %xmm1
	movdqu	32(%rdi,%rax,8), %xmm2
	movups	48(%rdi,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r13,%rax,8)
	movups	%xmm3, 48(%r13,%rax,8)
	movdqu	%xmm0, 32(%rdi,%rax,8)
	movdqu	%xmm1, 48(%rdi,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_106
# %bb.107:                              #   in Loop: Header=BB0_88 Depth=3
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_88 Depth=3
	movdqu	(%r13,%rax,8), %xmm0
	movdqu	16(%r13,%rax,8), %xmm1
	movdqu	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movdqu	%xmm2, (%r13,%rax,8)
	movups	%xmm3, 16(%r13,%rax,8)
	movdqu	%xmm0, (%rdi,%rax,8)
	movdqu	%xmm1, 16(%rdi,%rax,8)
.LBB0_109:                              #   in Loop: Header=BB0_88 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB0_120
# %bb.110:                              #   in Loop: Header=BB0_88 Depth=3
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%rdi,%rcx,8), %r9
	leaq	(,%rcx,8), %rcx
	addq	%r13, %rcx
	movq	-208(%rbp), %rdx        # 8-byte Reload
.LBB0_111:                              #   in Loop: Header=BB0_88 Depth=3
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_112:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi), %rax
	movq	(%r9,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rax, (%r9,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_112
	jmp	.LBB0_120
.LBB0_113:                              #   in Loop: Header=BB0_88 Depth=3
	xorl	%eax, %eax
.LBB0_114:                              #   in Loop: Header=BB0_88 Depth=3
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	je	.LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_88 Depth=3
	movdqu	(%r13,%rax), %xmm0
	movdqu	16(%r13,%rax), %xmm1
	movdqu	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movdqu	%xmm2, (%r13,%rax)
	movups	%xmm3, 16(%r13,%rax)
	movdqu	%xmm0, (%rdi,%rax)
	movdqu	%xmm1, 16(%rdi,%rax)
.LBB0_116:                              #   in Loop: Header=BB0_88 Depth=3
	cmpq	-248(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_120
# %bb.117:                              #   in Loop: Header=BB0_88 Depth=3
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r13), %r9
	leaq	(%rdi,%rax), %rdx
	movq	-200(%rbp), %rax        # 8-byte Reload
.LBB0_118:                              #   in Loop: Header=BB0_88 Depth=3
	addq	$1, %rax
	xorl	%esi, %esi
	movq	-96(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_119:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r9,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%r9,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_119
.LBB0_120:                              #   in Loop: Header=BB0_88 Depth=3
	addq	%r12, %r13
	movl	$1, -168(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_87
.LBB0_121:                              #   in Loop: Header=BB0_88 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_108
	jmp	.LBB0_109
	.p2align	4, 0x90
.LBB0_122:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%r14, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB0_123:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	%rcx, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r13, -160(%rbp)        # 8-byte Spill
	ja	.LBB0_206
# %bb.124:                              # %.preheader35
                                        #   in Loop: Header=BB0_83 Depth=2
	xorl	%r12d, %r12d
	movq	%rcx, %r14
	movq	-256(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_127
	.p2align	4, 0x90
.LBB0_125:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_126:                              #   in Loop: Header=BB0_127 Depth=3
	addq	%rbx, %r14
	addq	$1, %r12
	cmpq	%r14, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	ja	.LBB0_207
.LBB0_127:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_139 Depth 4
                                        #         Child Loop BB0_145 Depth 4
                                        #         Child Loop BB0_154 Depth 4
                                        #         Child Loop BB0_150 Depth 4
	movq	%r12, %r13
	imulq	%rbx, %r13
	leaq	(%rcx,%r13), %r15
	leaq	(%r8,%r13), %rbx
	addq	%rcx, %rbx
	addq	-176(%rbp), %r13        # 8-byte Folded Reload
	addq	%rcx, %r13
	movq	%r14, %rdi
	movq	%r11, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB0_161
# %bb.128:                              #   in Loop: Header=BB0_127 Depth=3
	jne	.LBB0_125
# %bb.129:                              #   in Loop: Header=BB0_127 Depth=3
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_133
# %bb.130:                              #   in Loop: Header=BB0_127 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_134
# %bb.131:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	$4, -136(%rbp)          # 8-byte Folded Reload
	jae	.LBB0_146
# %bb.132:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-64(%rbp), %r9          # 8-byte Reload
	jmp	.LBB0_148
.LBB0_133:                              #   in Loop: Header=BB0_127 Depth=3
	movq	(%r14), %rax
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	(%r9), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r9)
	jmp	.LBB0_151
.LBB0_134:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r9, %rdx
	cmpq	$31, %r8
	jbe	.LBB0_144
# %bb.135:                              #   in Loop: Header=BB0_127 Depth=3
	leaq	(%r9,%r8), %rax
	cmpq	%rax, %r15
	jae	.LBB0_137
# %bb.136:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	%r9, %rdx
	cmpq	%rbx, %r9
	jb	.LBB0_144
.LBB0_137:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_159
# %bb.138:                              # %.preheader21
                                        #   in Loop: Header=BB0_127 Depth=3
	movq	-224(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_139:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r9,%rax), %xmm2
	movups	16(%r9,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r9,%rax)
	movups	%xmm1, 16(%r9,%rax)
	movdqu	32(%r14,%rax), %xmm0
	movdqu	48(%r14,%rax), %xmm1
	movdqu	32(%r9,%rax), %xmm2
	movups	48(%r9,%rax), %xmm3
	movdqu	%xmm2, 32(%r14,%rax)
	movups	%xmm3, 48(%r14,%rax)
	movdqu	%xmm0, 32(%r9,%rax)
	movdqu	%xmm1, 48(%r9,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_139
# %bb.140:                              #   in Loop: Header=BB0_127 Depth=3
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	je	.LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_127 Depth=3
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r9,%rax), %xmm2
	movups	16(%r9,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r9,%rax)
	movdqu	%xmm1, 16(%r9,%rax)
.LBB0_142:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	-248(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_151
# %bb.143:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %r10
	leaq	(%r9,%rax), %rdx
	movq	-200(%rbp), %rax        # 8-byte Reload
.LBB0_144:                              #   in Loop: Header=BB0_127 Depth=3
	addq	$1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_145:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r10,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%r10,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_145
	jmp	.LBB0_151
.LBB0_146:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	addq	%r9, %rax
	cmpq	%rax, %r15
	jae	.LBB0_152
# %bb.147:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	%r13, %r9
	jae	.LBB0_152
.LBB0_148:                              #   in Loop: Header=BB0_127 Depth=3
	movq	%r9, %r10
	movq	%r14, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB0_149:                              #   in Loop: Header=BB0_127 Depth=3
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_150:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi), %rax
	movq	(%r10,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rax, (%r10,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_150
.LBB0_151:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-256(%rbp), %rbx        # 8-byte Reload
	addq	%rbx, %r9
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movl	$1, -168(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_126
.LBB0_152:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_160
# %bb.153:                              # %.preheader18
                                        #   in Loop: Header=BB0_127 Depth=3
	xorl	%eax, %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_154:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        #       Parent Loop BB0_127 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r9,%rax,8), %xmm2
	movups	16(%r9,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r9,%rax,8)
	movups	%xmm1, 16(%r9,%rax,8)
	movdqu	32(%r14,%rax,8), %xmm0
	movdqu	48(%r14,%rax,8), %xmm1
	movdqu	32(%r9,%rax,8), %xmm2
	movups	48(%r9,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movdqu	%xmm0, 32(%r9,%rax,8)
	movdqu	%xmm1, 48(%r9,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_154
# %bb.155:                              #   in Loop: Header=BB0_127 Depth=3
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB0_157
.LBB0_156:                              #   in Loop: Header=BB0_127 Depth=3
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r9,%rax,8), %xmm2
	movups	16(%r9,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r9,%rax,8)
	movdqu	%xmm1, 16(%r9,%rax,8)
.LBB0_157:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB0_151
# %bb.158:                              #   in Loop: Header=BB0_127 Depth=3
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%r9,%rcx,8), %r10
	leaq	(%r14,%rcx,8), %rcx
	movq	-208(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_149
.LBB0_159:                              #   in Loop: Header=BB0_127 Depth=3
	xorl	%eax, %eax
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_141
	jmp	.LBB0_142
.LBB0_160:                              #   in Loop: Header=BB0_127 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_156
	jmp	.LBB0_157
	.p2align	4, 0x90
.LBB0_161:                              #   in Loop: Header=BB0_83 Depth=2
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB0_169
# %bb.162:                              #   in Loop: Header=BB0_83 Depth=2
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %r10         # 8-byte Reload
	je	.LBB0_170
# %bb.163:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	$4, -136(%rbp)          # 8-byte Folded Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	jb	.LBB0_166
# %bb.164:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-280(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx), %rax
	cmpq	%rax, %r10
	jae	.LBB0_183
# %bb.165:                              #   in Loop: Header=BB0_83 Depth=2
	leaq	(%r10,%rcx), %rax
	cmpq	%rax, %r14
	jae	.LBB0_183
.LBB0_166:                              #   in Loop: Header=BB0_83 Depth=2
	movq	%r14, %rax
	movq	%r10, %rcx
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB0_167:                              #   in Loop: Header=BB0_83 Depth=2
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_168:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi), %rdi
	movq	(%rax,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%rax,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_168
	jmp	.LBB0_182
.LBB0_169:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r10)
	movq	%rax, (%r14)
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	jmp	.LBB0_182
.LBB0_170:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	$31, %r8
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	jbe	.LBB0_180
# %bb.171:                              #   in Loop: Header=BB0_83 Depth=2
	leaq	(%r14,%r8), %rax
	cmpq	%rax, %r10
	jae	.LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_83 Depth=2
	leaq	(%r10,%r8), %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	%rsi, %r14
	jb	.LBB0_180
.LBB0_173:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_190
# %bb.174:                              # %.preheader33
                                        #   in Loop: Header=BB0_83 Depth=2
	movq	-224(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_175:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r10,%rax), %xmm0
	movups	16(%r10,%rax), %xmm1
	movups	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movups	%xmm2, (%r10,%rax)
	movups	%xmm3, 16(%r10,%rax)
	movups	%xmm0, (%r14,%rax)
	movups	%xmm1, 16(%r14,%rax)
	movdqu	32(%r10,%rax), %xmm0
	movdqu	48(%r10,%rax), %xmm1
	movdqu	32(%r14,%rax), %xmm2
	movups	48(%r14,%rax), %xmm3
	movdqu	%xmm2, 32(%r10,%rax)
	movups	%xmm3, 48(%r10,%rax)
	movdqu	%xmm0, 32(%r14,%rax)
	movdqu	%xmm1, 48(%r14,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_175
# %bb.176:                              #   in Loop: Header=BB0_83 Depth=2
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	je	.LBB0_178
.LBB0_177:                              #   in Loop: Header=BB0_83 Depth=2
	movdqu	(%r10,%rax), %xmm0
	movdqu	16(%r10,%rax), %xmm1
	movdqu	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movdqu	%xmm2, (%r10,%rax)
	movups	%xmm3, 16(%r10,%rax)
	movdqu	%xmm0, (%r14,%rax)
	movdqu	%xmm1, 16(%r14,%rax)
.LBB0_178:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	-248(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_182
# %bb.179:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%r10,%rax), %rdi
	leaq	(%r14,%rax), %rdx
	movq	-200(%rbp), %rax        # 8-byte Reload
.LBB0_180:                              #   in Loop: Header=BB0_83 Depth=2
	addq	$1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_181:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_181
.LBB0_182:                              #   in Loop: Header=BB0_83 Depth=2
	addq	%r12, %r10
	addq	-256(%rbp), %r14        # 8-byte Folded Reload
	movl	$1, -168(%rbp)          # 4-byte Folded Spill
	movq	%r14, %rcx
	movq	%r10, %rdx
	movq	-160(%rbp), %r13        # 8-byte Reload
	jmp	.LBB0_83
.LBB0_183:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_191
# %bb.184:                              # %.preheader30
                                        #   in Loop: Header=BB0_83 Depth=2
	xorl	%eax, %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_185:                              #   Parent Loop BB0_41 Depth=1
                                        #     Parent Loop BB0_83 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r10,%rax,8), %xmm0
	movups	16(%r10,%rax,8), %xmm1
	movups	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movups	%xmm2, (%r10,%rax,8)
	movups	%xmm3, 16(%r10,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	movups	%xmm1, 16(%r14,%rax,8)
	movdqu	32(%r10,%rax,8), %xmm0
	movdqu	48(%r10,%rax,8), %xmm1
	movdqu	32(%r14,%rax,8), %xmm2
	movups	48(%r14,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r10,%rax,8)
	movups	%xmm3, 48(%r10,%rax,8)
	movdqu	%xmm0, 32(%r14,%rax,8)
	movdqu	%xmm1, 48(%r14,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_185
# %bb.186:                              #   in Loop: Header=BB0_83 Depth=2
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_83 Depth=2
	movdqu	(%r10,%rax,8), %xmm0
	movdqu	16(%r10,%rax,8), %xmm1
	movdqu	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movdqu	%xmm2, (%r10,%rax,8)
	movups	%xmm3, 16(%r10,%rax,8)
	movdqu	%xmm0, (%r14,%rax,8)
	movdqu	%xmm1, 16(%r14,%rax,8)
.LBB0_188:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB0_182
# %bb.189:                              #   in Loop: Header=BB0_83 Depth=2
	movq	-144(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx,8), %rax
	leaq	(%r10,%rcx,8), %rcx
	movq	-208(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_167
.LBB0_190:                              #   in Loop: Header=BB0_83 Depth=2
	xorl	%eax, %eax
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_177
	jmp	.LBB0_178
.LBB0_191:                              #   in Loop: Header=BB0_83 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_187
	jmp	.LBB0_188
.LBB0_192:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_270
# %bb.193:                              # %.preheader51
                                        #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_194:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rax,8), %xmm0
	movups	16(%r11,%rax,8), %xmm1
	movups	(%r13,%rax,8), %xmm2
	movups	16(%r13,%rax,8), %xmm3
	movups	%xmm2, (%r11,%rax,8)
	movups	%xmm3, 16(%r11,%rax,8)
	movups	%xmm0, (%r13,%rax,8)
	movups	%xmm1, 16(%r13,%rax,8)
	movdqu	32(%r11,%rax,8), %xmm0
	movdqu	48(%r11,%rax,8), %xmm1
	movdqu	32(%r13,%rax,8), %xmm2
	movups	48(%r13,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r11,%rax,8)
	movups	%xmm3, 48(%r11,%rax,8)
	movdqu	%xmm0, 32(%r13,%rax,8)
	movdqu	%xmm1, 48(%r13,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_194
# %bb.195:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	je	.LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_41 Depth=1
	movdqu	(%r11,%rax,8), %xmm0
	movdqu	16(%r11,%rax,8), %xmm1
	movdqu	(%r13,%rax,8), %xmm2
	movups	16(%r13,%rax,8), %xmm3
	movdqu	%xmm2, (%r11,%rax,8)
	movups	%xmm3, 16(%r11,%rax,8)
	movdqu	%xmm0, (%r13,%rax,8)
	movdqu	%xmm1, 16(%r13,%rax,8)
.LBB0_197:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB0_82
# %bb.198:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	(%r13,%rax,8), %r13
	leaq	(%r11,%rax,8), %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_73
.LBB0_199:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_271
# %bb.200:                              # %.preheader54
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-224(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_201:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rax), %xmm0
	movups	16(%r11,%rax), %xmm1
	movups	(%r13,%rax), %xmm2
	movups	16(%r13,%rax), %xmm3
	movups	%xmm2, (%r11,%rax)
	movups	%xmm3, 16(%r11,%rax)
	movups	%xmm0, (%r13,%rax)
	movups	%xmm1, 16(%r13,%rax)
	movdqu	32(%r11,%rax), %xmm0
	movdqu	48(%r11,%rax), %xmm1
	movdqu	32(%r13,%rax), %xmm2
	movups	48(%r13,%rax), %xmm3
	movdqu	%xmm2, 32(%r11,%rax)
	movups	%xmm3, 48(%r11,%rax)
	movdqu	%xmm0, 32(%r13,%rax)
	movdqu	%xmm1, 48(%r13,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_201
# %bb.202:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -272(%rbp)          # 8-byte Folded Reload
	je	.LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_41 Depth=1
	movdqu	(%r11,%rax), %xmm0
	movdqu	16(%r11,%rax), %xmm1
	movdqu	(%r13,%rax), %xmm2
	movups	16(%r13,%rax), %xmm3
	movdqu	%xmm2, (%r11,%rax)
	movups	%xmm3, 16(%r11,%rax)
	movdqu	%xmm0, (%r13,%rax)
	movdqu	%xmm1, 16(%r13,%rax)
.LBB0_204:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	-248(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_82
# %bb.205:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%r11,%rax), %rsi
	addq	%rax, %r13
	movq	-200(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_80
.LBB0_206:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%rcx, %r14
	movq	-256(%rbp), %rbx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_207:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-152(%rbp), %r13        # 8-byte Reload
	imulq	%rcx, %r13
	leaq	(%r11,%r13), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	cmpl	$0, -168(%rbp)          # 4-byte Folded Reload
	je	.LBB0_276
# %bb.208:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r13, -152(%rbp)        # 8-byte Spill
	movq	%rdi, %rax
	movq	-160(%rbp), %rsi        # 8-byte Reload
	subq	%rsi, %rax
	subq	%r11, %rsi
	cmpq	%rax, %rsi
	cmovgq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB0_237
# %bb.209:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%rsi, %r15
	negq	%r15
	movq	%rdi, %r12
	subq	%rsi, %r12
	movslq	%esi, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_212
# %bb.210:                              #   in Loop: Header=BB0_41 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jb	.LBB0_211
# %bb.218:                              #   in Loop: Header=BB0_41 Depth=1
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdi
	testq	%rdx, %rdx
	cmovneq	%rcx, %rdi
	addq	%rdx, %rdi
	notq	%rsi
	leaq	(%rsi,%rdi,8), %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rsi
	addq	$17, %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_228
# %bb.219:                              #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r11,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_228
.LBB0_211:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r11, %rsi
.LBB0_235:                              #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_236:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi), %rbx
	movq	(%r12,%rdi), %rcx
	movq	%rcx, (%rsi,%rdi)
	movq	%rbx, (%r12,%rdi)
	addq	$8, %rdi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_236
	jmp	.LBB0_237
	.p2align	4, 0x90
.LBB0_212:                              #   in Loop: Header=BB0_41 Depth=1
	movslq	%esi, %rcx
	movq	%rcx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %r10
	cmovleq	%r10, %rdi
	leaq	(%rdi,%rcx), %r13
	addq	$2, %r13
	cmpq	$31, %r13
	jbe	.LBB0_215
# %bb.213:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%rsi, %rbx
	notq	%rbx
	movq	%rbx, %r9
	shlq	$32, %r9
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	xorq	%rsi, %r9
	sarq	$32, %r9
	movq	%r9, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	cmovleq	%r10, %rdi
	addq	%rdi, %rbx
	addq	%r9, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rbx), %rsi
	addq	$3, %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_221
# %bb.214:                              #   in Loop: Header=BB0_41 Depth=1
	addq	%r9, %rdi
	leaq	(%r11,%rdi), %rsi
	addq	$2, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_221
.LBB0_215:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r11, %rsi
.LBB0_216:                              #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_217:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movzbl	(%r12,%rdi), %ebx
	movb	%bl, (%rsi,%rdi)
	movb	%cl, (%r12,%rdi)
	addq	$-1, %rdx
	addq	$1, %rdi
	cmpq	$1, %rdx
	jg	.LBB0_217
.LBB0_237:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%rcx, %r15
	subq	%r14, %rcx
	movq	-96(%rbp), %r12         # 8-byte Reload
	subq	%r12, %r15
	cmpq	%r15, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	cmovbq	%rcx, %r15
	testq	%r15, %r15
	je	.LBB0_266
# %bb.238:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
	subq	%r15, %r14
	movslq	%r15d, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_241
# %bb.239:                              #   in Loop: Header=BB0_41 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jae	.LBB0_243
# %bb.240:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_252
	.p2align	4, 0x90
.LBB0_241:                              #   in Loop: Header=BB0_41 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rcx
	cmovleq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r10
	addq	$2, %r10
	cmpq	$31, %r10
	ja	.LBB0_254
# %bb.242:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_264
.LBB0_243:                              #   in Loop: Header=BB0_41 Depth=1
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdi
	testq	%rdx, %rdx
	cmovneq	%rcx, %rdi
	addq	%rdx, %rdi
	movq	%r15, %rsi
	notq	%rsi
	addq	-152(%rbp), %rsi        # 8-byte Folded Reload
	leaq	(%rsi,%rdi,8), %rsi
	addq	%r11, %rsi
	addq	$17, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rsi, %rcx
	jae	.LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_41 Depth=1
	leaq	(%rcx,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r14
	jb	.LBB0_252
.LBB0_245:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r10, %r9
	movabsq	$4611686018427387900, %rcx # imm = 0x3FFFFFFFFFFFFFFC
	andq	%rcx, %r9
	leaq	-4(%r9), %rsi
	movq	%rsi, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_274
# %bb.246:                              #   in Loop: Header=BB0_41 Depth=1
	subq	%r8, %rbx
	movq	-152(%rbp), %r13        # 8-byte Reload
	subq	%r15, %r13
	leaq	(%r11,%r13), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_247:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rcx,%rsi,8), %xmm0
	movups	16(%rcx,%rsi,8), %xmm1
	movups	-48(%rdi,%rsi,8), %xmm2
	movups	-32(%rdi,%rsi,8), %xmm3
	movups	%xmm2, (%rcx,%rsi,8)
	movups	%xmm3, 16(%rcx,%rsi,8)
	movups	%xmm0, -48(%rdi,%rsi,8)
	movups	%xmm1, -32(%rdi,%rsi,8)
	movdqu	32(%rcx,%rsi,8), %xmm0
	movdqu	48(%rcx,%rsi,8), %xmm1
	movdqu	-16(%rdi,%rsi,8), %xmm2
	movups	(%rdi,%rsi,8), %xmm3
	movdqu	%xmm2, 32(%rcx,%rsi,8)
	movups	%xmm3, 48(%rcx,%rsi,8)
	movdqu	%xmm0, -16(%rdi,%rsi,8)
	movdqu	%xmm1, (%rdi,%rsi,8)
	addq	$8, %rsi
	addq	$-2, %rbx
	jne	.LBB0_247
# %bb.248:                              #   in Loop: Header=BB0_41 Depth=1
	testq	%r8, %r8
	je	.LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi,8), %xmm0
	movdqu	16(%rcx,%rsi,8), %xmm1
	movdqu	(%r14,%rsi,8), %xmm2
	movups	16(%r14,%rsi,8), %xmm3
	movdqu	%xmm2, (%rcx,%rsi,8)
	movups	%xmm3, 16(%rcx,%rsi,8)
	movdqu	%xmm0, (%r14,%rsi,8)
	movdqu	%xmm1, 16(%r14,%rsi,8)
.LBB0_250:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	%r9, %r10
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_266
# %bb.251:                              #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r14,%r9,8), %r14
	leaq	(%rcx,%r9,8), %rcx
	subq	%r9, %rdx
	.p2align	4, 0x90
.LBB0_252:                              #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_253:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rsi), %rdi
	movq	(%r14,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%r14,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_253
	jmp	.LBB0_266
.LBB0_254:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r15, %rbx
	notq	%rbx
	movq	%rbx, %r8
	shlq	$32, %r8
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	xorq	%rsi, %r8
	sarq	$32, %r8
	movq	%r8, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	cmovleq	%rcx, %rdi
	addq	%rdi, %rbx
	addq	-152(%rbp), %rbx        # 8-byte Folded Reload
	addq	%r8, %rbx
	addq	%r11, %rbx
	addq	$3, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rbx, %rcx
	jae	.LBB0_257
# %bb.255:                              #   in Loop: Header=BB0_41 Depth=1
	addq	%r8, %rdi
	addq	%rcx, %rdi
	addq	$2, %rdi
	cmpq	%rdi, %r14
	jae	.LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rcx, %rdi
	jmp	.LBB0_264
.LBB0_228:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r10, %r9
	movabsq	$4611686018427387900, %rcx # imm = 0x3FFFFFFFFFFFFFFC
	andq	%rcx, %r9
	leaq	-4(%r9), %rsi
	movq	%rsi, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_273
# %bb.229:                              #   in Loop: Header=BB0_41 Depth=1
	subq	%r8, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_230:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rsi,8), %xmm0
	movups	16(%r11,%rsi,8), %xmm1
	movups	-48(%rdi,%rsi,8), %xmm2
	movups	-32(%rdi,%rsi,8), %xmm3
	movups	%xmm2, (%r11,%rsi,8)
	movups	%xmm3, 16(%r11,%rsi,8)
	movups	%xmm0, -48(%rdi,%rsi,8)
	movups	%xmm1, -32(%rdi,%rsi,8)
	movdqu	32(%r11,%rsi,8), %xmm0
	movdqu	48(%r11,%rsi,8), %xmm1
	movdqu	-16(%rdi,%rsi,8), %xmm2
	movups	(%rdi,%rsi,8), %xmm3
	movdqu	%xmm2, 32(%r11,%rsi,8)
	movups	%xmm3, 48(%r11,%rsi,8)
	movdqu	%xmm0, -16(%rdi,%rsi,8)
	movdqu	%xmm1, (%rdi,%rsi,8)
	addq	$8, %rsi
	addq	$-2, %rbx
	jne	.LBB0_230
# %bb.231:                              #   in Loop: Header=BB0_41 Depth=1
	testq	%r8, %r8
	je	.LBB0_233
.LBB0_232:                              #   in Loop: Header=BB0_41 Depth=1
	movdqu	(%r11,%rsi,8), %xmm0
	movdqu	16(%r11,%rsi,8), %xmm1
	movdqu	(%r12,%rsi,8), %xmm2
	movups	16(%r12,%rsi,8), %xmm3
	movdqu	%xmm2, (%r11,%rsi,8)
	movups	%xmm3, 16(%r11,%rsi,8)
	movdqu	%xmm0, (%r12,%rsi,8)
	movdqu	%xmm1, 16(%r12,%rsi,8)
.LBB0_233:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	%r9, %r10
	movq	-88(%rbp), %r8          # 8-byte Reload
	je	.LBB0_237
# %bb.234:                              #   in Loop: Header=BB0_41 Depth=1
	leaq	(%r12,%r9,8), %r12
	leaq	(%r11,%r9,8), %rsi
	subq	%r9, %rdx
	jmp	.LBB0_235
.LBB0_221:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r13, %r9
	andq	$-32, %r9
	leaq	-32(%r9), %rsi
	movq	%rsi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_272
# %bb.222:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-80(%rbp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_223:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rsi), %xmm0
	movups	16(%r11,%rsi), %xmm1
	movups	-48(%rbx,%rsi), %xmm2
	movups	-32(%rbx,%rsi), %xmm3
	movups	%xmm2, (%r11,%rsi)
	movups	%xmm3, 16(%r11,%rsi)
	movups	%xmm0, -48(%rbx,%rsi)
	movups	%xmm1, -32(%rbx,%rsi)
	movdqu	32(%r11,%rsi), %xmm0
	movdqu	48(%r11,%rsi), %xmm1
	movdqu	-16(%rbx,%rsi), %xmm2
	movups	(%rbx,%rsi), %xmm3
	movdqu	%xmm2, 32(%r11,%rsi)
	movups	%xmm3, 48(%r11,%rsi)
	movdqu	%xmm0, -16(%rbx,%rsi)
	movdqu	%xmm1, (%rbx,%rsi)
	addq	$64, %rsi
	addq	$2, %rdi
	jne	.LBB0_223
# %bb.224:                              #   in Loop: Header=BB0_41 Depth=1
	testq	%r8, %r8
	je	.LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_41 Depth=1
	movdqu	(%r11,%rsi), %xmm0
	movdqu	16(%r11,%rsi), %xmm1
	movdqu	(%r12,%rsi), %xmm2
	movups	16(%r12,%rsi), %xmm3
	movdqu	%xmm2, (%r11,%rsi)
	movups	%xmm3, 16(%r11,%rsi)
	movdqu	%xmm0, (%r12,%rsi)
	movdqu	%xmm1, 16(%r12,%rsi)
.LBB0_226:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	%r9, %r13
	movq	-88(%rbp), %r8          # 8-byte Reload
	je	.LBB0_237
# %bb.227:                              #   in Loop: Header=BB0_41 Depth=1
	subq	%r9, %rdx
	leaq	(%r11,%r9), %rsi
	addq	%r9, %r12
	jmp	.LBB0_216
.LBB0_257:                              #   in Loop: Header=BB0_41 Depth=1
	movq	%r10, %r9
	andq	$-32, %r9
	leaq	-32(%r9), %rdi
	movq	%rdi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rdi, %rdi
	je	.LBB0_275
# %bb.258:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-152(%rbp), %r13        # 8-byte Reload
	subq	%r15, %r13
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_259:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rcx,%rsi), %xmm0
	movups	16(%rcx,%rsi), %xmm1
	movups	-48(%rbx,%rsi), %xmm2
	movups	-32(%rbx,%rsi), %xmm3
	movups	%xmm2, (%rcx,%rsi)
	movups	%xmm3, 16(%rcx,%rsi)
	movups	%xmm0, -48(%rbx,%rsi)
	movups	%xmm1, -32(%rbx,%rsi)
	movdqu	32(%rcx,%rsi), %xmm0
	movdqu	48(%rcx,%rsi), %xmm1
	movdqu	-16(%rbx,%rsi), %xmm2
	movups	(%rbx,%rsi), %xmm3
	movdqu	%xmm2, 32(%rcx,%rsi)
	movups	%xmm3, 48(%rcx,%rsi)
	movdqu	%xmm0, -16(%rbx,%rsi)
	movdqu	%xmm1, (%rbx,%rsi)
	addq	$64, %rsi
	addq	$2, %rdi
	jne	.LBB0_259
# %bb.260:                              #   in Loop: Header=BB0_41 Depth=1
	testq	%r8, %r8
	je	.LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	16(%rcx,%rsi), %xmm1
	movdqu	(%r14,%rsi), %xmm2
	movups	16(%r14,%rsi), %xmm3
	movdqu	%xmm2, (%rcx,%rsi)
	movups	%xmm3, 16(%rcx,%rsi)
	movdqu	%xmm0, (%r14,%rsi)
	movdqu	%xmm1, 16(%r14,%rsi)
.LBB0_262:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	%r9, %r10
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_266
# %bb.263:                              #   in Loop: Header=BB0_41 Depth=1
	subq	%r9, %rdx
	addq	%r9, %rdi
	addq	%r9, %r14
	.p2align	4, 0x90
.LBB0_264:                              #   in Loop: Header=BB0_41 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_265:                              #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%r14,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%r14,%rsi)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_265
.LBB0_266:                              #   in Loop: Header=BB0_41 Depth=1
	cmpq	%r12, %rax
	movq	-256(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_268
# %bb.267:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%edx, %edx
	divq	%r12
	movq	%r11, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	qsort
	movq	-88(%rbp), %r8          # 8-byte Reload
.LBB0_268:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpq	%r12, %rax
	jbe	.LBB0_314
# %bb.269:                              #   in Loop: Header=BB0_41 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r15
	movl	%r12d, %eax
	orl	%ecx, %eax
	testb	$7, %al
	sete	-41(%rbp)               # 1-byte Folded Spill
	movl	$2, %eax
	cmovel	-304(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, %r11
	cmpq	$7, %r15
	jae	.LBB0_41
	jmp	.LBB0_2
.LBB0_270:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -184(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_196
	jmp	.LBB0_197
.LBB0_271:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -272(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_203
	jmp	.LBB0_204
.LBB0_274:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_249
	jmp	.LBB0_250
.LBB0_273:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_232
	jmp	.LBB0_233
.LBB0_272:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%esi, %esi
	movq	-80(%rbp), %r11         # 8-byte Reload
	testq	%r8, %r8
	jne	.LBB0_225
	jmp	.LBB0_226
.LBB0_275:                              #   in Loop: Header=BB0_41 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_261
	jmp	.LBB0_262
.LBB0_276:
	cmpq	%rcx, %r13
	jle	.LBB0_314
# %bb.277:
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	-288(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%r8, %rax
	subq	%rcx, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-320(%rbp), %rdx        # 8-byte Reload
	leal	(%rdx,%rcx), %eax
	addl	$2, %eax
	andl	$31, %eax
	movq	%r8, %rsi
	subq	%rax, %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movslq	%ecx, %rax
	leaq	(%rdx,%rax), %rcx
	addq	$-30, %rcx
	shrq	$5, %rcx
	leal	1(%rcx), %edx
	movq	-120(%rbp), %rax        # 8-byte Reload
	subq	-144(%rbp), %rax        # 8-byte Folded Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	%eax, %esi
	andl	$1, %esi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rsi        # 8-byte Reload
	subq	-248(%rbp), %rsi        # 8-byte Folded Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	andl	$1, %edx
	andq	$-2, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	leaq	48(%r11), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	-312(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_279
	.p2align	4, 0x90
.LBB0_278:                              #   in Loop: Header=BB0_279 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, -184(%rbp)          # 8-byte Folded Spill
	addq	%rax, -192(%rbp)        # 8-byte Folded Spill
	cmpq	-72(%rbp), %rcx         # 8-byte Folded Reload
	jae	.LBB0_314
.LBB0_279:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_283 Depth 2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_291 Depth 3
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	cmpq	%r11, %rcx
	jbe	.LBB0_278
# %bb.280:                              # %.preheader14
                                        #   in Loop: Header=BB0_279 Depth=1
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-96(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	leaq	(%r8,%rcx), %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %r13        # 8-byte Reload
	xorl	%r15d, %r15d
	movq	-168(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_283
	.p2align	4, 0x90
.LBB0_281:                              #   in Loop: Header=BB0_283 Depth=2
	movq	(%r14), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r12)
.LBB0_282:                              #   in Loop: Header=BB0_283 Depth=2
	addq	$1, %r15
	movq	-256(%rbp), %rbx        # 8-byte Reload
	addq	%rbx, %r13
	cmpq	%r11, %r12
	jbe	.LBB0_278
.LBB0_283:                              #   Parent Loop BB0_279 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_291 Depth 3
	movq	%r12, %r14
	addq	%rbx, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*-104(%rbp)             # 8-byte Folded Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_278
# %bb.284:                              #   in Loop: Header=BB0_283 Depth=2
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	je	.LBB0_281
# %bb.285:                              #   in Loop: Header=BB0_283 Depth=2
	movq	%r15, %rax
	imulq	%rbx, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	%rdi, %rcx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_292
# %bb.286:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$4, -136(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_289
# %bb.287:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_298
# %bb.288:                              #   in Loop: Header=BB0_283 Depth=2
	addq	-304(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_298
.LBB0_289:                              #   in Loop: Header=BB0_283 Depth=2
	movq	%r12, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
.LBB0_290:                              #   in Loop: Header=BB0_283 Depth=2
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_291:                              #   Parent Loop BB0_279 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx), %rsi
	movq	(%rax,%rdx), %rdi
	movq	%rdi, (%r14,%rdx)
	movq	%rsi, (%rax,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_291
	jmp	.LBB0_282
	.p2align	4, 0x90
.LBB0_292:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$31, %r8
	jbe	.LBB0_295
# %bb.293:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_305
# %bb.294:                              #   in Loop: Header=BB0_283 Depth=2
	addq	-264(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_305
.LBB0_295:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r12, %rsi
.LBB0_296:                              #   in Loop: Header=BB0_283 Depth=2
	addq	$1, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_297:                              #   Parent Loop BB0_279 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %ebx
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r14,%rdx)
	movb	%bl, (%rsi,%rdx)
	addq	$-1, %rax
	addq	$1, %rdx
	cmpq	$1, %rax
	jg	.LBB0_297
	jmp	.LBB0_282
.LBB0_298:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_312
# %bb.299:                              # %.preheader9
                                        #   in Loop: Header=BB0_283 Depth=2
	xorl	%eax, %eax
	movq	-296(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_300:                              #   Parent Loop BB0_279 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	-48(%r13,%rax,8), %xmm2
	movups	-32(%r13,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, -48(%r13,%rax,8)
	movups	%xmm1, -32(%r13,%rax,8)
	movdqu	32(%r14,%rax,8), %xmm0
	movdqu	48(%r14,%rax,8), %xmm1
	movdqu	-16(%r13,%rax,8), %xmm2
	movups	(%r13,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movdqu	%xmm0, -16(%r13,%rax,8)
	movdqu	%xmm1, (%r13,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_300
# %bb.301:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_283 Depth=2
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r12,%rax,8)
	movdqu	%xmm1, 16(%r12,%rax,8)
.LBB0_303:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB0_282
# %bb.304:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-288(%rbp), %rcx        # 8-byte Reload
	leaq	(%r12,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-320(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_290
.LBB0_305:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	je	.LBB0_313
# %bb.306:                              # %.preheader12
                                        #   in Loop: Header=BB0_283 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_307:                              #   Parent Loop BB0_279 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rcx,%rax), %xmm0
	movups	-32(%rcx,%rax), %xmm1
	movups	-48(%r13,%rax), %xmm2
	movups	-32(%r13,%rax), %xmm3
	movups	%xmm2, -48(%rcx,%rax)
	movups	%xmm3, -32(%rcx,%rax)
	movups	%xmm0, -48(%r13,%rax)
	movups	%xmm1, -32(%r13,%rax)
	movdqu	-16(%rcx,%rax), %xmm0
	movdqu	(%rcx,%rax), %xmm1
	movdqu	-16(%r13,%rax), %xmm2
	movups	(%r13,%rax), %xmm3
	movdqu	%xmm2, -16(%rcx,%rax)
	movups	%xmm3, (%rcx,%rax)
	movdqu	%xmm0, -16(%r13,%rax)
	movdqu	%xmm1, (%r13,%rax)
	addq	$64, %rax
	addq	$2, %rdx
	jne	.LBB0_307
# %bb.308:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB0_310
.LBB0_309:                              #   in Loop: Header=BB0_283 Depth=2
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r12,%rax)
	movdqu	%xmm1, 16(%r12,%rax)
.LBB0_310:                              #   in Loop: Header=BB0_283 Depth=2
	cmpq	-248(%rbp), %r8         # 8-byte Folded Reload
	je	.LBB0_282
# %bb.311:                              #   in Loop: Header=BB0_283 Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r12,%rax), %rsi
	movq	-328(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_296
.LBB0_312:                              #   in Loop: Header=BB0_283 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_302
	jmp	.LBB0_303
.LBB0_313:                              #   in Loop: Header=BB0_283 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_309
	jmp	.LBB0_310
.LBB0_314:
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	qsort, .Lfunc_end0-qsort
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
