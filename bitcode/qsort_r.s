	.text
	.file	"qsort_r.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function qsort_r
.LCPI0_0:
	.quad	2                       # 0x2
	.quad	2                       # 0x2
.LCPI0_1:
	.quad	31                      # 0x1f
	.quad	31                      # 0x1f
	.text
	.globl	qsort_r
	.p2align	4, 0x90
	.type	qsort_r,@function
qsort_r:                                # @qsort_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r11
	movq	%rdx, %rax
	negq	%rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%r11d, %eax
	orl	%r15d, %eax
	xorl	%ecx, %ecx
	cmpq	$8, %rdx
	setne	%cl
	testb	$7, %al
	sete	-41(%rbp)               # 1-byte Folded Spill
	movl	$2, %eax
	cmovel	%ecx, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	cmpq	$7, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	jae	.LBB0_41
# %bb.1:
	movq	%r11, %rcx
.LBB0_2:
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	imulq	%r15, %r12
	cmpq	%r15, %r12
	jle	.LBB0_321
# %bb.3:
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	%r8, %r12
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	shrq	$3, %rdi
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdx
	xorl	%eax, %eax
	testq	%rdi, %rdi
	sete	%al
	cmovneq	%rcx, %rdx
	leaq	(%rax,%rdi), %rcx
	addq	%rdi, %rdx
	leaq	(%r15,%rdx,8), %rsi
	addq	$16, %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	leaq	16(,%rdx,8), %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	andq	$-4, %rsi
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rbx), %r9
	leaq	(%rdx,%r15), %rcx
	leaq	2(%rbx,%rcx), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %xmm1
	movq	%rbx, %xmm0
	paddq	%xmm1, %xmm0
	movq	%r15, %xmm2
	paddq	%xmm1, %xmm2
	paddq	.LCPI0_0(%rip), %xmm2
	pand	.LCPI0_1(%rip), %xmm2
	psubq	%xmm2, %xmm0
	leaq	(%rdx,%rbx), %rcx
	addq	$-30, %rcx
	shrq	$5, %rcx
	addq	%rdi, %rax
	addq	$-4, %rax
	shrq	$2, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	addq	$1, %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	subq	%rsi, %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	andl	$1, %edx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	andq	$-32, %r9
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r9, -320(%rbp)         # 8-byte Spill
	subq	%r9, %rbx
	movq	%rbx, -296(%rbp)        # 8-byte Spill
	movq	%xmm0, %rdx
	addq	$2, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	leal	1(%rcx), %edx
	andl	$1, %edx
	andq	$-2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	leaq	(%r8,%r15), %rcx
	leaq	48(%r8), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%r12, -280(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, -264(%rbp)          # 8-byte Folded Spill
	addq	%rax, -136(%rbp)        # 8-byte Folded Spill
	movq	-280(%rbp), %r12        # 8-byte Reload
	cmpq	%r12, %rcx
	jae	.LBB0_321
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_17 Depth 3
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	cmpq	-64(%rbp), %rcx         # 8-byte Folded Reload
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_4
# %bb.6:                                # %.preheader5
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %r13        # 8-byte Reload
	xorl	%r12d, %r12d
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=2
	movq	(%r14), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r15)
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=2
	addq	$1, %r12
	addq	%rbx, %r13
	movq	%r15, %r14
	cmpq	%r8, %r15
	jbe	.LBB0_4
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_17 Depth 3
	leaq	(%r14,%rbx), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jle	.LBB0_4
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_7
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r12, %rax
	imulq	%rbx, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	%r8, %rcx
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_18
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$4, -56(%rbp)           # 8-byte Folded Reload
	jb	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_25
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=2
	addq	-256(%rbp), %rax        # 8-byte Folded Reload
	addq	%r8, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_25
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	movq	%r15, %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
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
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$31, -168(%rbp)         # 8-byte Folded Reload
	jbe	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_32
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=2
	addq	-176(%rbp), %rax        # 8-byte Folded Reload
	addq	%r8, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_32
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
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
.LBB0_24:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_8
.LBB0_25:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_39
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_27:                               #   Parent Loop BB0_5 Depth=1
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
	jne	.LBB0_27
# %bb.28:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -272(%rbp)          # 8-byte Folded Reload
	je	.LBB0_30
.LBB0_29:                               #   in Loop: Header=BB0_9 Depth=2
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r15,%rax,8)
	movdqu	%xmm1, 16(%r15,%rax,8)
.LBB0_30:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -56(%rbp)         # 8-byte Folded Reload
	je	.LBB0_24
# %bb.31:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-248(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-304(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_16
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_40
# %bb.33:                               # %.preheader3
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-312(%rbp), %rdx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_34:                               #   Parent Loop BB0_5 Depth=1
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
	jne	.LBB0_34
# %bb.35:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_9 Depth=2
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r15,%rax)
	movdqu	%xmm1, 16(%r15,%rax)
.LBB0_37:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -168(%rbp)        # 8-byte Folded Reload
	je	.LBB0_24
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r15,%rax), %rsi
	movq	-296(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_22
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -272(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_29
	jmp	.LBB0_30
.LBB0_40:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_36
	jmp	.LBB0_37
.LBB0_41:
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movabsq	$2305843009213693950, %rdx # imm = 0x1FFFFFFFFFFFFFFE
	movslq	%r15d, %r10
	movq	%r10, %rsi
	shrq	$3, %rsi
	leaq	1(%rdx), %rcx
	xorl	%r14d, %r14d
	testq	%rsi, %rsi
	sete	%r14b
	cmovneq	%rdx, %rcx
	orq	$-2, %r14
	leaq	(%r14,%rsi), %rdi
	addq	$2, %rdi
	leaq	(%r14,%rsi), %r8
	addq	%rsi, %rcx
	leaq	16(,%rcx,8), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	andq	$-4, %rdi
	movq	%r10, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rcx
	cmovleq	%rcx, %rdx
	leaq	(%rdx,%r10), %r9
	addq	$2, %r9
	leal	(%rdx,%r10), %ecx
	addl	$2, %ecx
	andl	$31, %ecx
	movq	%r9, %rax
	subq	%rcx, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	addq	%r10, %rdx
	addq	$-30, %rdx
	shrq	$5, %rdx
	leaq	(%r14,%rsi), %rax
	addq	$-2, %rax
	shrq	$2, %rax
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	subq	%rdi, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	andq	$-32, %rcx
	movq	%r10, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	subq	%rcx, %r10
	movq	%r10, -208(%rbp)        # 8-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leaq	1(%rdx), %rcx
	movq	%rcx, %rax
	movq	%rcx, -272(%rbp)        # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$1, %ecx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	notq	%rdx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	addq	%rcx, %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r8, -304(%rbp)         # 8-byte Spill
	leaq	16(,%r8,8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_205 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_198 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #       Child Loop BB0_90 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_120 Depth 4
                                        #         Child Loop BB0_109 Depth 4
                                        #         Child Loop BB0_99 Depth 4
                                        #       Child Loop BB0_129 Depth 3
                                        #         Child Loop BB0_141 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_152 Depth 4
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_227 Depth 2
                                        #     Child Loop BB0_221 Depth 2
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_240 Depth 2
                                        #     Child Loop BB0_264 Depth 2
                                        #     Child Loop BB0_270 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #     Child Loop BB0_258 Depth 2
	movq	%r15, %rbx
	movq	%r12, %r15
	shrq	%r15
	imulq	%rbx, %r15
	addq	%r11, %r15
	cmpq	$7, %r12
	movq	%r11, -88(%rbp)         # 8-byte Spill
	movq	%r12, -280(%rbp)        # 8-byte Spill
	jne	.LBB0_51
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-168(%rbp), %rbx        # 8-byte Reload
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_84
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=1
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_55
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=1
	cmpq	$4, -160(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r15,%rbx), %rax
	cmpq	%rax, %r11
	jae	.LBB0_196
# %bb.47:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%rbx), %rax
	cmpq	%rax, %r15
	jae	.LBB0_196
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
.LBB0_49:                               #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_50:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx), %rsi
	movq	(%r15,%rdx), %rdi
	movq	%rdi, (%rax,%rdx)
	movq	%rsi, (%r15,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_50
	jmp	.LBB0_61
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	-1(%r12), %r14
	imulq	%rbx, %r14
	addq	%r11, %r14
	cmpq	$41, %r12
	jb	.LBB0_62
# %bb.52:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	shrq	$3, %r12
	imulq	%rbx, %r12
	leaq	(%r11,%r12), %r14
	leaq	(%r11,%r12,2), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%r14, %rsi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdx
	movq	-104(%rbp), %r13        # 8-byte Reload
	callq	*%r13
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r13
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	js	.LBB0_63
# %bb.53:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	jg	.LBB0_66
# %bb.54:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r14
	jmp	.LBB0_65
	.p2align	4, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_42 Depth=1
	cmpq	$31, %r9
	jbe	.LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r15,%r9), %rax
	cmpq	%rax, %r11
	jae	.LBB0_203
# %bb.57:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%r9), %rax
	cmpq	%rax, %r15
	jae	.LBB0_203
.LBB0_58:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%r11, %rsi
.LBB0_59:                               #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_60:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdx), %ebx
	movzbl	(%r15,%rdx), %eax
	movb	%al, (%rsi,%rdx)
	movb	%bl, (%r15,%rdx)
	addq	$-1, %rcx
	addq	$1, %rdx
	cmpq	$1, %rcx
	jg	.LBB0_60
.LBB0_61:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_85
	.p2align	4, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rbx
	jmp	.LBB0_77
.LBB0_63:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	js	.LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r14
.LBB0_65:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r14, -64(%rbp)         # 8-byte Spill
.LBB0_66:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	negq	%rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	subq	%r12, %rbx
	leaq	(%r15,%r12), %r14
	leaq	(%r12,%r12), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	-112(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdx
	movq	-104(%rbp), %r13        # 8-byte Reload
	callq	*%r13
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movq	%r15, %rdi
	movq	%r14, -264(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*%r13
	cmpl	$0, -144(%rbp)          # 4-byte Folded Reload
	js	.LBB0_69
# %bb.67:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	jg	.LBB0_71
# %bb.68:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
	jmp	.LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	js	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %rbx
	movq	%rbx, %r15
.LBB0_71:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	subq	-120(%rbp), %rdi        # 8-byte Folded Reload
	movq	-72(%rbp), %r14         # 8-byte Reload
	addq	%r12, %r14
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdx
	movq	-104(%rbp), %r13        # 8-byte Reload
	callq	*%r13
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%r13
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	js	.LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jg	.LBB0_76
# %bb.73:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	movq	%r14, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	js	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
	movq	%r12, -72(%rbp)         # 8-byte Spill
.LBB0_76:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB0_77:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdx
	movq	-104(%rbp), %r13        # 8-byte Reload
	callq	*%r13
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r13
	testl	%r12d, %r12d
	js	.LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-168(%rbp), %rbx        # 8-byte Reload
	jg	.LBB0_83
# %bb.79:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-168(%rbp), %rbx        # 8-byte Reload
	js	.LBB0_83
# %bb.81:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
.LBB0_82:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%r14, %r15
.LBB0_83:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-280(%rbp), %r12        # 8-byte Reload
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_44
.LBB0_84:                               #   in Loop: Header=BB0_42 Depth=1
	movq	(%r11), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r11)
	movq	%rax, (%r15)
.LBB0_85:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	(%r11,%r8), %rcx
	leaq	-1(%r12), %rax
	imulq	%r8, %rax
	addq	%r11, %rax
	movl	$0, -120(%rbp)          # 4-byte Folded Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %r12
	movq	%rax, %rcx
.LBB0_86:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_90 Depth 3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_120 Depth 4
                                        #         Child Loop BB0_109 Depth 4
                                        #         Child Loop BB0_99 Depth 4
                                        #       Child Loop BB0_129 Depth 3
                                        #         Child Loop BB0_141 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_152 Depth 4
                                        #       Child Loop BB0_178 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	cmpq	%rcx, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB0_125
# %bb.87:                               # %.preheader37
                                        #   in Loop: Header=BB0_86 Depth=2
	xorl	%ebx, %ebx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_90
	.p2align	4, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_90 Depth=3
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rdi
.LBB0_89:                               #   in Loop: Header=BB0_90 Depth=3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	%r8, %rdi
	addq	$1, %rbx
	cmpq	%rcx, %rdi
	ja	.LBB0_125
.LBB0_90:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_106 Depth 4
                                        #         Child Loop BB0_120 Depth 4
                                        #         Child Loop BB0_109 Depth 4
                                        #         Child Loop BB0_99 Depth 4
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	imulq	%r8, %rbx
	movq	-144(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rbx), %r15
	leaq	(%r9,%rbx), %r13
	addq	%rax, %r13
	addq	-168(%rbp), %rbx        # 8-byte Folded Reload
	addq	%rax, %rbx
	movq	%rdi, %r14
	movq	%r11, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB0_124
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=3
	jne	.LBB0_88
# %bb.92:                               #   in Loop: Header=BB0_90 Depth=3
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rdi
	je	.LBB0_100
# %bb.93:                               #   in Loop: Header=BB0_90 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_101
# %bb.94:                               #   in Loop: Header=BB0_90 Depth=3
	cmpq	$4, -160(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_97
# %bb.95:                               #   in Loop: Header=BB0_90 Depth=3
	cmpq	%rbx, %r12
	movq	-168(%rbp), %rax        # 8-byte Reload
	jae	.LBB0_107
# %bb.96:                               #   in Loop: Header=BB0_90 Depth=3
	addq	%r12, %rax
	cmpq	%rax, %r15
	jae	.LBB0_107
.LBB0_97:                               #   in Loop: Header=BB0_90 Depth=3
	movq	%rdi, %r10
	movq	%r12, %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
.LBB0_98:                               #   in Loop: Header=BB0_90 Depth=3
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_99:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi), %rax
	movq	(%r10,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rax, (%r10,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_99
	jmp	.LBB0_121
.LBB0_100:                              #   in Loop: Header=BB0_90 Depth=3
	movq	(%r12), %rax
	movq	(%rdi), %rcx
	movq	%rcx, (%r12)
	movq	%rax, (%rdi)
	movq	-80(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_122
.LBB0_101:                              #   in Loop: Header=BB0_90 Depth=3
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r12, %r10
	movq	%rdi, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_119
# %bb.102:                              #   in Loop: Header=BB0_90 Depth=3
	cmpq	%r13, %r12
	jae	.LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_90 Depth=3
	leaq	(%r12,%r9), %rsi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r12, %r10
	movq	%rdi, %rdx
	cmpq	%rsi, %r15
	jb	.LBB0_119
.LBB0_104:                              #   in Loop: Header=BB0_90 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_114
# %bb.105:                              # %.preheader27
                                        #   in Loop: Header=BB0_90 Depth=3
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r12,%rax), %xmm0
	movups	16(%r12,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%r12,%rax)
	movups	%xmm3, 16(%r12,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
	movdqu	32(%r12,%rax), %xmm0
	movdqu	48(%r12,%rax), %xmm1
	movdqu	32(%rdi,%rax), %xmm2
	movups	48(%rdi,%rax), %xmm3
	movdqu	%xmm2, 32(%r12,%rax)
	movups	%xmm3, 48(%r12,%rax)
	movdqu	%xmm0, 32(%rdi,%rax)
	movdqu	%xmm1, 48(%rdi,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_106
	jmp	.LBB0_115
.LBB0_107:                              #   in Loop: Header=BB0_90 Depth=3
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_123
# %bb.108:                              # %.preheader24
                                        #   in Loop: Header=BB0_90 Depth=3
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_109:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r12,%rax,8), %xmm0
	movups	16(%r12,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%r12,%rax,8)
	movups	%xmm3, 16(%r12,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
	movdqu	32(%r12,%rax,8), %xmm0
	movdqu	48(%r12,%rax,8), %xmm1
	movdqu	32(%rdi,%rax,8), %xmm2
	movups	48(%rdi,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r12,%rax,8)
	movups	%xmm3, 48(%r12,%rax,8)
	movdqu	%xmm0, 32(%rdi,%rax,8)
	movdqu	%xmm1, 48(%rdi,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_109
# %bb.110:                              #   in Loop: Header=BB0_90 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_90 Depth=3
	movdqu	(%r12,%rax,8), %xmm0
	movdqu	16(%r12,%rax,8), %xmm1
	movdqu	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movdqu	%xmm2, (%r12,%rax,8)
	movups	%xmm3, 16(%r12,%rax,8)
	movdqu	%xmm0, (%rdi,%rax,8)
	movdqu	%xmm1, 16(%rdi,%rax,8)
.LBB0_112:                              #   in Loop: Header=BB0_90 Depth=3
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_121
# %bb.113:                              #   in Loop: Header=BB0_90 Depth=3
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leaq	(%rdi,%rcx,8), %r10
	leaq	(%r12,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_98
.LBB0_114:                              #   in Loop: Header=BB0_90 Depth=3
	xorl	%eax, %eax
.LBB0_115:                              #   in Loop: Header=BB0_90 Depth=3
	testb	$1, -272(%rbp)          # 1-byte Folded Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	je	.LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_90 Depth=3
	movdqu	(%r12,%rax), %xmm0
	movdqu	16(%r12,%rax), %xmm1
	movdqu	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movdqu	%xmm2, (%r12,%rax)
	movups	%xmm3, 16(%r12,%rax)
	movdqu	%xmm0, (%rdi,%rax)
	movdqu	%xmm1, 16(%rdi,%rax)
.LBB0_117:                              #   in Loop: Header=BB0_90 Depth=3
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_121
# %bb.118:                              #   in Loop: Header=BB0_90 Depth=3
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r12,%rax), %r10
	leaq	(%rdi,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_119:                              #   in Loop: Header=BB0_90 Depth=3
	addq	$1, %rax
	xorl	%esi, %esi
	movq	-80(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_120:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r10,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%r10,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_120
.LBB0_121:                              #   in Loop: Header=BB0_90 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB0_122:                              #   in Loop: Header=BB0_90 Depth=3
	addq	%r8, %r12
	movl	$1, -120(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_89
.LBB0_123:                              #   in Loop: Header=BB0_90 Depth=3
	xorl	%eax, %eax
	movq	-80(%rbp), %r8          # 8-byte Reload
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_111
	jmp	.LBB0_112
	.p2align	4, 0x90
.LBB0_124:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_125:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	%rcx, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r12, -144(%rbp)        # 8-byte Spill
	ja	.LBB0_210
# %bb.126:                              # %.preheader35
                                        #   in Loop: Header=BB0_86 Depth=2
	xorl	%r15d, %r15d
	movq	%rcx, %r14
	movq	-184(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_129
	.p2align	4, 0x90
.LBB0_127:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_128:                              #   in Loop: Header=BB0_129 Depth=3
	addq	%rax, %r14
	addq	$1, %r15
	cmpq	%r14, %rdi
	ja	.LBB0_211
.LBB0_129:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_141 Depth 4
                                        #         Child Loop BB0_147 Depth 4
                                        #         Child Loop BB0_157 Depth 4
                                        #         Child Loop BB0_152 Depth 4
	movq	%r15, %r12
	imulq	%rax, %r12
	leaq	(%rcx,%r12), %r13
	leaq	(%r9,%r12), %rbx
	addq	%rcx, %rbx
	addq	-168(%rbp), %r12        # 8-byte Folded Reload
	addq	%rcx, %r12
	movq	%r14, %rdi
	movq	%r11, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB0_164
# %bb.130:                              #   in Loop: Header=BB0_129 Depth=3
	jne	.LBB0_127
# %bb.131:                              #   in Loop: Header=BB0_129 Depth=3
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_135
# %bb.132:                              #   in Loop: Header=BB0_129 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_136
# %bb.133:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	$4, -160(%rbp)          # 8-byte Folded Reload
	jae	.LBB0_148
# %bb.134:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_150
.LBB0_135:                              #   in Loop: Header=BB0_129 Depth=3
	movq	(%r14), %rax
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r8)
	jmp	.LBB0_154
.LBB0_136:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r8, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_146
# %bb.137:                              #   in Loop: Header=BB0_129 Depth=3
	leaq	(%r8,%r9), %rax
	cmpq	%rax, %r13
	jae	.LBB0_139
# %bb.138:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	%r8, %rdx
	cmpq	%rbx, %r8
	jb	.LBB0_146
.LBB0_139:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_162
# %bb.140:                              # %.preheader21
                                        #   in Loop: Header=BB0_129 Depth=3
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_141:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r8,%rax), %xmm2
	movups	16(%r8,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r8,%rax)
	movups	%xmm1, 16(%r8,%rax)
	movdqu	32(%r14,%rax), %xmm0
	movdqu	48(%r14,%rax), %xmm1
	movdqu	32(%r8,%rax), %xmm2
	movups	48(%r8,%rax), %xmm3
	movdqu	%xmm2, 32(%r14,%rax)
	movups	%xmm3, 48(%r14,%rax)
	movdqu	%xmm0, 32(%r8,%rax)
	movdqu	%xmm1, 48(%r8,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_141
# %bb.142:                              #   in Loop: Header=BB0_129 Depth=3
	testb	$1, -272(%rbp)          # 1-byte Folded Reload
	je	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_129 Depth=3
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r8,%rax), %xmm2
	movups	16(%r8,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r8,%rax)
	movdqu	%xmm1, 16(%r8,%rax)
.LBB0_144:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_153
# %bb.145:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %r10
	leaq	(%r8,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_146:                              #   in Loop: Header=BB0_129 Depth=3
	addq	$1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_147:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r10,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%r10,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_147
	jmp	.LBB0_153
.LBB0_148:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rax
	cmpq	%rax, %r13
	jae	.LBB0_155
# %bb.149:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	%r12, %r8
	jae	.LBB0_155
.LBB0_150:                              #   in Loop: Header=BB0_129 Depth=3
	movq	%r8, %r10
	movq	%r14, %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
.LBB0_151:                              #   in Loop: Header=BB0_129 Depth=3
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_152:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi), %rax
	movq	(%r10,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rax, (%r10,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_152
.LBB0_153:                              #   in Loop: Header=BB0_129 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB0_154:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %r8
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	$1, -120(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_128
.LBB0_155:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_163
# %bb.156:                              # %.preheader18
                                        #   in Loop: Header=BB0_129 Depth=3
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_157:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        #       Parent Loop BB0_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r8,%rax,8), %xmm2
	movups	16(%r8,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r8,%rax,8)
	movups	%xmm1, 16(%r8,%rax,8)
	movdqu	32(%r14,%rax,8), %xmm0
	movdqu	48(%r14,%rax,8), %xmm1
	movdqu	32(%r8,%rax,8), %xmm2
	movups	48(%r8,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movdqu	%xmm0, 32(%r8,%rax,8)
	movdqu	%xmm1, 48(%r8,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_157
# %bb.158:                              #   in Loop: Header=BB0_129 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_160
.LBB0_159:                              #   in Loop: Header=BB0_129 Depth=3
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r8,%rax,8), %xmm2
	movups	16(%r8,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r8,%rax,8)
	movdqu	%xmm1, 16(%r8,%rax,8)
.LBB0_160:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_153
# %bb.161:                              #   in Loop: Header=BB0_129 Depth=3
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leaq	(%r8,%rcx,8), %r10
	leaq	(%r14,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_151
.LBB0_162:                              #   in Loop: Header=BB0_129 Depth=3
	xorl	%eax, %eax
	testb	$1, -272(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_143
	jmp	.LBB0_144
.LBB0_163:                              #   in Loop: Header=BB0_129 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_159
	jmp	.LBB0_160
	.p2align	4, 0x90
.LBB0_164:                              #   in Loop: Header=BB0_86 Depth=2
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_172
# %bb.165:                              #   in Loop: Header=BB0_86 Depth=2
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r10         # 8-byte Reload
	je	.LBB0_173
# %bb.166:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	$4, -160(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_169
# %bb.167:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-296(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx), %rax
	cmpq	%rax, %r10
	jae	.LBB0_187
# %bb.168:                              #   in Loop: Header=BB0_86 Depth=2
	leaq	(%r10,%rcx), %rax
	cmpq	%rax, %r14
	jae	.LBB0_187
.LBB0_169:                              #   in Loop: Header=BB0_86 Depth=2
	movq	%r14, %rax
	movq	%r10, %rcx
	movq	-136(%rbp), %rdx        # 8-byte Reload
.LBB0_170:                              #   in Loop: Header=BB0_86 Depth=2
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_171:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi), %rdi
	movq	(%rax,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%rax,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_171
	jmp	.LBB0_185
.LBB0_172:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r10)
	movq	%rax, (%r14)
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	jmp	.LBB0_186
.LBB0_173:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_183
# %bb.174:                              #   in Loop: Header=BB0_86 Depth=2
	leaq	(%r14,%r9), %rax
	cmpq	%rax, %r10
	jae	.LBB0_176
# %bb.175:                              #   in Loop: Header=BB0_86 Depth=2
	leaq	(%r10,%r9), %rsi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	%rsi, %r14
	jb	.LBB0_183
.LBB0_176:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_194
# %bb.177:                              # %.preheader33
                                        #   in Loop: Header=BB0_86 Depth=2
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_178:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
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
	jne	.LBB0_178
# %bb.179:                              #   in Loop: Header=BB0_86 Depth=2
	testb	$1, -272(%rbp)          # 1-byte Folded Reload
	je	.LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_86 Depth=2
	movdqu	(%r10,%rax), %xmm0
	movdqu	16(%r10,%rax), %xmm1
	movdqu	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movdqu	%xmm2, (%r10,%rax)
	movups	%xmm3, 16(%r10,%rax)
	movdqu	%xmm0, (%r14,%rax)
	movdqu	%xmm1, 16(%r14,%rax)
.LBB0_181:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_185
# %bb.182:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r10,%rax), %rdi
	leaq	(%r14,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_183:                              #   in Loop: Header=BB0_86 Depth=2
	addq	$1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_184:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_184
.LBB0_185:                              #   in Loop: Header=BB0_86 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rax        # 8-byte Reload
.LBB0_186:                              #   in Loop: Header=BB0_86 Depth=2
	addq	%r8, %r10
	addq	%rax, %r14
	movl	$1, -120(%rbp)          # 4-byte Folded Spill
	movq	%r14, %rcx
	movq	%r10, %rdi
	movq	-144(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_86
.LBB0_187:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_195
# %bb.188:                              # %.preheader30
                                        #   in Loop: Header=BB0_86 Depth=2
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_189:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
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
	jne	.LBB0_189
# %bb.190:                              #   in Loop: Header=BB0_86 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_192
.LBB0_191:                              #   in Loop: Header=BB0_86 Depth=2
	movdqu	(%r10,%rax,8), %xmm0
	movdqu	16(%r10,%rax,8), %xmm1
	movdqu	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movdqu	%xmm2, (%r10,%rax,8)
	movups	%xmm3, 16(%r10,%rax,8)
	movdqu	%xmm0, (%r14,%rax,8)
	movdqu	%xmm1, 16(%r14,%rax,8)
.LBB0_192:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_185
# %bb.193:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx,8), %rax
	leaq	(%r10,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_170
.LBB0_194:                              #   in Loop: Header=BB0_86 Depth=2
	xorl	%eax, %eax
	testb	$1, -272(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_180
	jmp	.LBB0_181
.LBB0_195:                              #   in Loop: Header=BB0_86 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_191
	jmp	.LBB0_192
.LBB0_196:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_276
# %bb.197:                              # %.preheader51
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_198:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rax,8), %xmm0
	movups	16(%r11,%rax,8), %xmm1
	movups	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movups	%xmm2, (%r11,%rax,8)
	movups	%xmm3, 16(%r11,%rax,8)
	movups	%xmm0, (%r15,%rax,8)
	movups	%xmm1, 16(%r15,%rax,8)
	movdqu	32(%r11,%rax,8), %xmm0
	movdqu	48(%r11,%rax,8), %xmm1
	movdqu	32(%r15,%rax,8), %xmm2
	movups	48(%r15,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r11,%rax,8)
	movups	%xmm3, 48(%r11,%rax,8)
	movdqu	%xmm0, 32(%r15,%rax,8)
	movdqu	%xmm1, 48(%r15,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_198
# %bb.199:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_201
.LBB0_200:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rax,8), %xmm0
	movdqu	16(%r11,%rax,8), %xmm1
	movdqu	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movdqu	%xmm2, (%r11,%rax,8)
	movups	%xmm3, 16(%r11,%rax,8)
	movdqu	%xmm0, (%r15,%rax,8)
	movdqu	%xmm1, 16(%r15,%rax,8)
.LBB0_201:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_61
# %bb.202:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	(%r15,%rax,8), %r15
	leaq	(%r11,%rax,8), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_49
.LBB0_203:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_277
# %bb.204:                              # %.preheader54
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_205:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r11,%rax), %xmm0
	movups	16(%r11,%rax), %xmm1
	movups	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movups	%xmm2, (%r11,%rax)
	movups	%xmm3, 16(%r11,%rax)
	movups	%xmm0, (%r15,%rax)
	movups	%xmm1, 16(%r15,%rax)
	movdqu	32(%r11,%rax), %xmm0
	movdqu	48(%r11,%rax), %xmm1
	movdqu	32(%r15,%rax), %xmm2
	movups	48(%r15,%rax), %xmm3
	movdqu	%xmm2, 32(%r11,%rax)
	movups	%xmm3, 48(%r11,%rax)
	movdqu	%xmm0, 32(%r15,%rax)
	movdqu	%xmm1, 48(%r15,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_205
# %bb.206:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -288(%rbp)          # 8-byte Folded Reload
	je	.LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rax), %xmm0
	movdqu	16(%r11,%rax), %xmm1
	movdqu	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movdqu	%xmm2, (%r11,%rax)
	movups	%xmm3, 16(%r11,%rax)
	movdqu	%xmm0, (%r15,%rax)
	movdqu	%xmm1, 16(%r15,%rax)
.LBB0_208:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_61
# %bb.209:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r11,%rax), %rsi
	addq	%rax, %r15
	movq	-208(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_59
.LBB0_210:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%rcx, %r14
	.p2align	4, 0x90
.LBB0_211:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-280(%rbp), %r13        # 8-byte Reload
	imulq	%rcx, %r13
	leaq	(%r11,%r13), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	je	.LBB0_282
# %bb.212:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%rdi, %rax
	movq	-144(%rbp), %r15        # 8-byte Reload
	subq	%r15, %rax
	subq	%r11, %r15
	cmpq	%rax, %r15
	cmovgq	%rax, %r15
	testq	%r15, %r15
	movq	-72(%rbp), %r8          # 8-byte Reload
	je	.LBB0_242
# %bb.213:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r15, %r9
	negq	%r9
	movq	%rdi, %r12
	subq	%r15, %r12
	movslq	%r15d, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_216
# %bb.214:                              #   in Loop: Header=BB0_42 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jb	.LBB0_215
# %bb.222:                              #   in Loop: Header=BB0_42 Depth=1
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdi
	testq	%rdx, %rdx
	cmovneq	%rcx, %rdi
	addq	%rdx, %rdi
	notq	%r15
	leaq	(%r15,%rdi,8), %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rsi
	addq	$17, %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_232
# %bb.223:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_232
.LBB0_215:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rsi
.LBB0_239:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_240:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi), %rbx
	movq	(%r12,%rdi), %rcx
	movq	%rcx, (%rsi,%rdi)
	movq	%rbx, (%r12,%rdi)
	addq	$8, %rdi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_240
	jmp	.LBB0_241
	.p2align	4, 0x90
.LBB0_216:                              #   in Loop: Header=BB0_42 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rcx
	cmovleq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r10
	addq	$2, %r10
	cmpq	$31, %r10
	jbe	.LBB0_219
# %bb.217:                              #   in Loop: Header=BB0_42 Depth=1
	notq	%r15
	movq	%r15, %rbx
	shlq	$32, %rbx
	movabsq	$-4294967296, %rsi      # imm = 0xFFFFFFFF00000000
	xorq	%rsi, %rbx
	sarq	$32, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	cmovleq	%rcx, %rdi
	addq	%rdi, %r15
	addq	%rbx, %r15
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rsi
	addq	$3, %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_225
# %bb.218:                              #   in Loop: Header=BB0_42 Depth=1
	addq	%rbx, %rdi
	leaq	(%r11,%rdi), %rsi
	addq	$2, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_225
.LBB0_219:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rsi
.LBB0_220:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_221:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movzbl	(%r12,%rdi), %ebx
	movb	%bl, (%rsi,%rdi)
	movb	%cl, (%r12,%rdi)
	addq	$-1, %rdx
	addq	$1, %rdi
	cmpq	$1, %rdx
	jg	.LBB0_221
.LBB0_241:                              #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_242:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	subq	%r8, %r15
	subq	%r14, %r8
	subq	-80(%rbp), %r15         # 8-byte Folded Reload
	cmpq	%r15, %r8
	cmovbq	%r8, %r15
	testq	%r15, %r15
	je	.LBB0_272
# %bb.243:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	subq	%r15, %r14
	movslq	%r15d, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_246
# %bb.244:                              #   in Loop: Header=BB0_42 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jae	.LBB0_248
# %bb.245:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_257
	.p2align	4, 0x90
.LBB0_246:                              #   in Loop: Header=BB0_42 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rcx
	cmovleq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r10
	addq	$2, %r10
	cmpq	$31, %r10
	ja	.LBB0_259
# %bb.247:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_269
.LBB0_248:                              #   in Loop: Header=BB0_42 Depth=1
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	leaq	1(%rcx), %rdi
	testq	%rdx, %rdx
	cmovneq	%rcx, %rdi
	addq	%rdx, %rdi
	movq	%r15, %rsi
	notq	%rsi
	addq	%r13, %rsi
	leaq	(%rsi,%rdi,8), %rsi
	addq	%r11, %rsi
	addq	$17, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rsi, %rcx
	jae	.LBB0_250
# %bb.249:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%rcx,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r14
	jb	.LBB0_257
.LBB0_250:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r8, %r12
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
	je	.LBB0_280
# %bb.251:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r8, %rbx
	subq	%r15, %r13
	leaq	(%r11,%r13), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_252:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_252
# %bb.253:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_255
.LBB0_254:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi,8), %xmm0
	movdqu	16(%rcx,%rsi,8), %xmm1
	movdqu	(%r14,%rsi,8), %xmm2
	movups	16(%r14,%rsi,8), %xmm3
	movdqu	%xmm2, (%rcx,%rsi,8)
	movups	%xmm3, 16(%rcx,%rsi,8)
	movdqu	%xmm0, (%r14,%rsi,8)
	movdqu	%xmm1, 16(%r14,%rsi,8)
.LBB0_255:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r9, %r10
	movq	%r12, %r8
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_271
# %bb.256:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r14,%r9,8), %r14
	leaq	(%rcx,%r9,8), %rcx
	subq	%r9, %rdx
	.p2align	4, 0x90
.LBB0_257:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_258:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rsi), %rdi
	movq	(%r14,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%r14,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_258
	jmp	.LBB0_271
.LBB0_259:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r8, %r12
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
	addq	%r13, %rbx
	addq	%r8, %rbx
	addq	%r11, %rbx
	addq	$3, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rbx, %rcx
	jae	.LBB0_262
# %bb.260:                              #   in Loop: Header=BB0_42 Depth=1
	addq	%r8, %rdi
	addq	%rcx, %rdi
	addq	$2, %rdi
	cmpq	%rdi, %r14
	jae	.LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r12, %r8
	movq	%rcx, %rdi
	jmp	.LBB0_269
.LBB0_232:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r10, %r15
	movabsq	$4611686018427387900, %rcx # imm = 0x3FFFFFFFFFFFFFFC
	andq	%rcx, %r15
	leaq	-4(%r15), %rsi
	movq	%rsi, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_279
# %bb.233:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r8, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_234:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_234
# %bb.235:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rsi,8), %xmm0
	movdqu	16(%r11,%rsi,8), %xmm1
	movdqu	(%r12,%rsi,8), %xmm2
	movups	16(%r12,%rsi,8), %xmm3
	movdqu	%xmm2, (%r11,%rsi,8)
	movups	%xmm3, 16(%r11,%rsi,8)
	movdqu	%xmm0, (%r12,%rsi,8)
	movdqu	%xmm1, 16(%r12,%rsi,8)
.LBB0_237:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r10
	movq	-72(%rbp), %r8          # 8-byte Reload
	je	.LBB0_241
# %bb.238:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r12,%r15,8), %r12
	leaq	(%r11,%r15,8), %rsi
	subq	%r15, %rdx
	jmp	.LBB0_239
.LBB0_225:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r10, %r15
	andq	$-32, %r15
	leaq	-32(%r15), %rsi
	movq	%rsi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_278
# %bb.226:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-88(%rbp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_227:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_227
# %bb.228:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_230
.LBB0_229:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rsi), %xmm0
	movdqu	16(%r11,%rsi), %xmm1
	movdqu	(%r12,%rsi), %xmm2
	movups	16(%r12,%rsi), %xmm3
	movdqu	%xmm2, (%r11,%rsi)
	movups	%xmm3, 16(%r11,%rsi)
	movdqu	%xmm0, (%r12,%rsi)
	movdqu	%xmm1, 16(%r12,%rsi)
.LBB0_230:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r10
	movq	-72(%rbp), %r8          # 8-byte Reload
	je	.LBB0_241
# %bb.231:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r15, %rdx
	leaq	(%r11,%r15), %rsi
	addq	%r15, %r12
	jmp	.LBB0_220
.LBB0_262:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r10, %r9
	andq	$-32, %r9
	leaq	-32(%r9), %rdi
	movq	%rdi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rdi, %rdi
	je	.LBB0_281
# %bb.263:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r15, %r13
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_264:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_264
# %bb.265:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	16(%rcx,%rsi), %xmm1
	movdqu	(%r14,%rsi), %xmm2
	movups	16(%r14,%rsi), %xmm3
	movdqu	%xmm2, (%rcx,%rsi)
	movups	%xmm3, 16(%rcx,%rsi)
	movdqu	%xmm0, (%r14,%rsi)
	movdqu	%xmm1, 16(%r14,%rsi)
.LBB0_267:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r9, %r10
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_271
# %bb.268:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r9, %rdx
	addq	%r9, %rdi
	addq	%r9, %r14
	.p2align	4, 0x90
.LBB0_269:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_270:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%r14,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%r14,%rsi)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_270
.LBB0_271:                              #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_272:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-80(%rbp), %r15         # 8-byte Reload
	cmpq	%r15, %rax
	jbe	.LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%edx, %edx
	divq	%r15
	movq	%r11, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%r8, %rbx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	qsort_r
	movq	%rbx, %r8
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_274:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r8
	jbe	.LBB0_321
# %bb.275:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	subq	%r8, %rcx
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%r15
	movq	%rax, %r12
	movl	%r15d, %eax
	orl	%ecx, %eax
	testb	$7, %al
	sete	-41(%rbp)               # 1-byte Folded Spill
	movl	$2, %eax
	cmovel	-320(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rcx, %r11
	cmpq	$7, %r12
	jae	.LBB0_42
	jmp	.LBB0_2
.LBB0_276:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_200
	jmp	.LBB0_201
.LBB0_277:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -288(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_207
	jmp	.LBB0_208
.LBB0_280:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_254
	jmp	.LBB0_255
.LBB0_279:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_236
	jmp	.LBB0_237
.LBB0_278:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	movq	-88(%rbp), %r11         # 8-byte Reload
	testq	%r8, %r8
	jne	.LBB0_229
	jmp	.LBB0_230
.LBB0_281:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_266
	jmp	.LBB0_267
.LBB0_282:
	cmpq	%rcx, %r13
	movq	-264(%rbp), %rsi        # 8-byte Reload
	jle	.LBB0_321
# %bb.283:
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	-304(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%r9, %rax
	subq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-328(%rbp), %rdx        # 8-byte Reload
	leal	(%rdx,%rcx), %eax
	addl	$2, %eax
	andl	$31, %eax
	movq	%r9, %rdi
	subq	%rax, %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movslq	%ecx, %rax
	leaq	(%rdx,%rax), %rcx
	addq	$-30, %rcx
	shrq	$5, %rcx
	leal	1(%rcx), %edx
	movq	-136(%rbp), %rax        # 8-byte Reload
	subq	-176(%rbp), %rax        # 8-byte Folded Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	%eax, %edi
	andl	$1, %edi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rdi        # 8-byte Reload
	subq	-256(%rbp), %rdi        # 8-byte Folded Reload
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	andl	$1, %edx
	andq	$-2, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	leaq	48(%r11), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_285
	.p2align	4, 0x90
.LBB0_284:                              #   in Loop: Header=BB0_285 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	$1, -192(%rbp)          # 8-byte Folded Spill
	addq	%rax, -200(%rbp)        # 8-byte Folded Spill
	cmpq	-64(%rbp), %rsi         # 8-byte Folded Reload
	jae	.LBB0_321
.LBB0_285:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_289 Depth 2
                                        #       Child Loop BB0_314 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_297 Depth 3
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	cmpq	%r11, %rsi
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_284
# %bb.286:                              # %.preheader14
                                        #   in Loop: Header=BB0_285 Depth=1
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-80(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	leaq	(%r9,%rcx), %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r13        # 8-byte Reload
	xorl	%r15d, %r15d
	movq	-120(%rbp), %r14        # 8-byte Reload
	jmp	.LBB0_289
	.p2align	4, 0x90
.LBB0_287:                              #   in Loop: Header=BB0_289 Depth=2
	movq	(%r14), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r12)
.LBB0_288:                              #   in Loop: Header=BB0_289 Depth=2
	addq	$1, %r15
	addq	%rbx, %r13
	movq	%r12, %r14
	cmpq	%r11, %r12
	jbe	.LBB0_284
.LBB0_289:                              #   Parent Loop BB0_285 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_314 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_297 Depth 3
	leaq	(%r14,%rbx), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	*-104(%rbp)             # 8-byte Folded Reload
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_284
# %bb.290:                              #   in Loop: Header=BB0_289 Depth=2
	cmpl	$0, -124(%rbp)          # 4-byte Folded Reload
	je	.LBB0_287
# %bb.291:                              #   in Loop: Header=BB0_289 Depth=2
	movq	%r15, %rax
	imulq	%rbx, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	addq	%rdi, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	%rdi, %rcx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_298
# %bb.292:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$4, -160(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_295
# %bb.293:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-280(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_305
# %bb.294:                              #   in Loop: Header=BB0_289 Depth=2
	addq	-320(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_305
.LBB0_295:                              #   in Loop: Header=BB0_289 Depth=2
	movq	%r12, %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
.LBB0_296:                              #   in Loop: Header=BB0_289 Depth=2
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_297:                              #   Parent Loop BB0_285 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx), %rsi
	movq	(%rax,%rdx), %rdi
	movq	%rdi, (%r14,%rdx)
	movq	%rsi, (%rax,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_297
	jmp	.LBB0_304
	.p2align	4, 0x90
.LBB0_298:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$31, %r9
	jbe	.LBB0_301
# %bb.299:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_312
# %bb.300:                              #   in Loop: Header=BB0_289 Depth=2
	addq	-272(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_312
.LBB0_301:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%r12, %rsi
.LBB0_302:                              #   in Loop: Header=BB0_289 Depth=2
	addq	$1, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_303:                              #   Parent Loop BB0_285 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %ebx
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r14,%rdx)
	movb	%bl, (%rsi,%rdx)
	addq	$-1, %rax
	addq	$1, %rdx
	cmpq	$1, %rax
	jg	.LBB0_303
.LBB0_304:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_288
.LBB0_305:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_319
# %bb.306:                              # %.preheader9
                                        #   in Loop: Header=BB0_289 Depth=2
	xorl	%eax, %eax
	movq	-312(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_307:                              #   Parent Loop BB0_285 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
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
	jne	.LBB0_307
# %bb.308:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB0_310
.LBB0_309:                              #   in Loop: Header=BB0_289 Depth=2
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r12,%rax,8)
	movdqu	%xmm1, 16(%r12,%rax,8)
.LBB0_310:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_304
# %bb.311:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-304(%rbp), %rcx        # 8-byte Reload
	leaq	(%r12,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-328(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_296
.LBB0_312:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_320
# %bb.313:                              # %.preheader12
                                        #   in Loop: Header=BB0_289 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_314:                              #   Parent Loop BB0_285 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
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
	jne	.LBB0_314
# %bb.315:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	je	.LBB0_317
.LBB0_316:                              #   in Loop: Header=BB0_289 Depth=2
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r12,%rax)
	movdqu	%xmm1, 16(%r12,%rax)
.LBB0_317:                              #   in Loop: Header=BB0_289 Depth=2
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_304
# %bb.318:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r12,%rax), %rsi
	movq	-336(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_302
.LBB0_319:                              #   in Loop: Header=BB0_289 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_309
	jmp	.LBB0_310
.LBB0_320:                              #   in Loop: Header=BB0_289 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_316
	jmp	.LBB0_317
.LBB0_321:
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	qsort_r, .Lfunc_end0-qsort_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
