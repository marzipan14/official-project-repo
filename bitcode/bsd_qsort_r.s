	.text
	.file	"bsd_qsort_r.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __bsd_qsort_r
.LCPI0_0:
	.quad	2                       # 0x2
	.quad	2                       # 0x2
.LCPI0_1:
	.quad	31                      # 0x1f
	.quad	31                      # 0x1f
	.text
	.globl	__bsd_qsort_r
	.p2align	4, 0x90
	.type	__bsd_qsort_r,@function
__bsd_qsort_r:                          # @__bsd_qsort_r
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
	movl	%eax, -116(%rbp)        # 4-byte Spill
	cmpq	$7, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jae	.LBB0_41
# %bb.1:
	movq	%r11, %rcx
.LBB0_2:
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	imulq	%r15, %r12
	cmpq	%r15, %r12
	jle	.LBB0_320
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
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	subq	%rsi, %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	andl	$1, %edx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%r9, -160(%rbp)         # 8-byte Spill
	andq	$-32, %r9
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%r9, -312(%rbp)         # 8-byte Spill
	subq	%r9, %rbx
	movq	%rbx, -288(%rbp)        # 8-byte Spill
	movq	%xmm0, %rdx
	addq	$2, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	leal	1(%rcx), %edx
	andl	$1, %edx
	andq	$-2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	leaq	(%r8,%r15), %rcx
	leaq	48(%r8), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%r12, -272(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	$1, -320(%rbp)          # 8-byte Folded Spill
	addq	%rax, -128(%rbp)        # 8-byte Folded Spill
	movq	-272(%rbp), %r12        # 8-byte Reload
	cmpq	%r12, %rcx
	jae	.LBB0_320
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_17 Depth 3
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	cmpq	-64(%rbp), %rcx         # 8-byte Folded Reload
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_4
# %bb.6:                                # %.preheader5
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r13        # 8-byte Reload
	xorl	%r12d, %r12d
	movq	-80(%rbp), %r14         # 8-byte Reload
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
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jle	.LBB0_4
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
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
	movq	-144(%rbp), %rsi        # 8-byte Reload
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
	movq	-176(%rbp), %rcx        # 8-byte Reload
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
	cmpq	$31, -160(%rbp)         # 8-byte Folded Reload
	jbe	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%r8, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_32
# %bb.20:                               #   in Loop: Header=BB0_9 Depth=2
	addq	-168(%rbp), %rax        # 8-byte Folded Reload
	addq	%r8, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_32
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
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
	cmpq	$0, -264(%rbp)          # 8-byte Folded Reload
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
	movq	-296(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_16
.LBB0_32:                               #   in Loop: Header=BB0_9 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_40
# %bb.33:                               # %.preheader3
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-304(%rbp), %rdx        # 8-byte Reload
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
	movq	-312(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -160(%rbp)        # 8-byte Folded Reload
	je	.LBB0_24
# %bb.38:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r15,%rax), %rsi
	movq	-288(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_22
.LBB0_39:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -264(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_29
	jmp	.LBB0_30
.LBB0_40:                               #   in Loop: Header=BB0_9 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_36
	jmp	.LBB0_37
.LBB0_41:
	movl	%ecx, -312(%rbp)        # 4-byte Spill
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
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
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
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	subq	%rdi, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	andq	$-32, %rcx
	movq	%r10, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	subq	%rcx, %r10
	movq	%r10, -208(%rbp)        # 8-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	leaq	1(%rdx), %rcx
	movq	%rcx, %rax
	movq	%rcx, -264(%rbp)        # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$1, %ecx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	notq	%rdx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	addq	%rcx, %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r8, -296(%rbp)         # 8-byte Spill
	leaq	16(,%r8,8), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_204 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_197 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #       Child Loop BB0_89 Depth 3
                                        #         Child Loop BB0_105 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_108 Depth 4
                                        #         Child Loop BB0_98 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_140 Depth 4
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_156 Depth 4
                                        #         Child Loop BB0_151 Depth 4
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_183 Depth 3
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_170 Depth 3
                                        #     Child Loop BB0_226 Depth 2
                                        #     Child Loop BB0_220 Depth 2
                                        #     Child Loop BB0_233 Depth 2
                                        #     Child Loop BB0_239 Depth 2
                                        #     Child Loop BB0_263 Depth 2
                                        #     Child Loop BB0_269 Depth 2
                                        #     Child Loop BB0_251 Depth 2
                                        #     Child Loop BB0_257 Depth 2
	movq	%r15, %rbx
	movq	%r12, %r15
	shrq	%r15
	imulq	%rbx, %r15
	addq	%r11, %r15
	cmpq	$7, %r12
	movq	%r11, -88(%rbp)         # 8-byte Spill
	movq	%r12, -272(%rbp)        # 8-byte Spill
	jne	.LBB0_51
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-160(%rbp), %r13        # 8-byte Reload
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB0_83
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=1
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_55
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=1
	cmpq	$4, -152(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_48
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r15,%r13), %rax
	cmpq	%rax, %r11
	jae	.LBB0_195
# %bb.47:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%r13), %rax
	cmpq	%rax, %r15
	jae	.LBB0_195
.LBB0_48:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
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
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	%r11, %rsi
	movq	%r14, %rdx
	movq	-112(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	*%rbx
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	js	.LBB0_63
# %bb.53:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	jg	.LBB0_66
# %bb.54:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
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
	jae	.LBB0_202
# %bb.57:                               #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%r9), %rax
	cmpq	%rax, %r15
	jae	.LBB0_202
.LBB0_58:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-144(%rbp), %rcx        # 8-byte Reload
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
	jmp	.LBB0_84
	.p2align	4, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rbx
	jmp	.LBB0_77
.LBB0_63:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	js	.LBB0_66
# %bb.64:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r14
.LBB0_65:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r14, -64(%rbp)         # 8-byte Spill
.LBB0_66:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	negq	%rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	subq	%r12, %rbx
	leaq	(%r15,%r12), %r14
	leaq	(%r12,%r12), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-112(%rbp), %r12        # 8-byte Reload
	callq	*%r12
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	movq	%r14, %r13
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%r12
	cmpl	$0, -176(%rbp)          # 4-byte Folded Reload
	js	.LBB0_69
# %bb.67:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r14         # 8-byte Reload
	jg	.LBB0_71
# %bb.68:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r13
	movq	%r13, %r15
	jmp	.LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r14         # 8-byte Reload
	js	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r13, %rbx
	movq	%rbx, %r15
.LBB0_71:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	subq	-136(%rbp), %r12        # 8-byte Folded Reload
	movq	-80(%rbp), %r13         # 8-byte Reload
	addq	%r14, %r13
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	-112(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%r14, %rdi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*%rbx
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	js	.LBB0_74
# %bb.72:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jg	.LBB0_76
# %bb.73:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	movq	%r14, %r13
	jmp	.LBB0_76
.LBB0_74:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-64(%rbp), %rbx         # 8-byte Reload
	js	.LBB0_76
# %bb.75:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
	movq	%r12, %r13
.LBB0_76:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
.LBB0_77:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-112(%rbp), %rbx        # 8-byte Reload
	callq	*%rbx
	movl	%eax, %r12d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%rbx
	testl	%r12d, %r12d
	movq	%r14, %rbx
	js	.LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-160(%rbp), %r13        # 8-byte Reload
	jg	.LBB0_82
# %bb.79:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%r14, %rbx
	movq	%rbx, %r15
	jmp	.LBB0_82
.LBB0_80:                               #   in Loop: Header=BB0_42 Depth=1
	testl	%eax, %eax
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-160(%rbp), %r13        # 8-byte Reload
	js	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
.LBB0_82:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-272(%rbp), %r12        # 8-byte Reload
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	jne	.LBB0_44
.LBB0_83:                               #   in Loop: Header=BB0_42 Depth=1
	movq	(%r11), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r11)
	movq	%rax, (%r15)
.LBB0_84:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-72(%rbp), %r8          # 8-byte Reload
	leaq	(%r11,%r8), %rcx
	leaq	-1(%r12), %rax
	imulq	%r8, %rax
	addq	%r11, %rax
	movl	$0, -136(%rbp)          # 4-byte Folded Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %r12
	movq	%rax, %rcx
.LBB0_85:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_89 Depth 3
                                        #         Child Loop BB0_105 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_108 Depth 4
                                        #         Child Loop BB0_98 Depth 4
                                        #       Child Loop BB0_128 Depth 3
                                        #         Child Loop BB0_140 Depth 4
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_156 Depth 4
                                        #         Child Loop BB0_151 Depth 4
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_183 Depth 3
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_170 Depth 3
	cmpq	%rcx, %rsi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	ja	.LBB0_124
# %bb.86:                               # %.preheader37
                                        #   in Loop: Header=BB0_85 Depth=2
	xorl	%ebx, %ebx
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_89
	.p2align	4, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_89 Depth=3
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rsi
.LBB0_88:                               #   in Loop: Header=BB0_89 Depth=3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	addq	%r8, %rsi
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	ja	.LBB0_124
.LBB0_89:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_105 Depth 4
                                        #         Child Loop BB0_119 Depth 4
                                        #         Child Loop BB0_108 Depth 4
                                        #         Child Loop BB0_98 Depth 4
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	imulq	%r8, %rbx
	movq	-176(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rbx), %r15
	leaq	(%r9,%rbx), %r13
	addq	%rax, %r13
	addq	-160(%rbp), %rbx        # 8-byte Folded Reload
	addq	%rax, %rbx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, %r14
	movq	%r11, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB0_123
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=3
	jne	.LBB0_87
# %bb.91:                               #   in Loop: Header=BB0_89 Depth=3
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rsi
	je	.LBB0_99
# %bb.92:                               #   in Loop: Header=BB0_89 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_100
# %bb.93:                               #   in Loop: Header=BB0_89 Depth=3
	cmpq	$4, -152(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_96
# %bb.94:                               #   in Loop: Header=BB0_89 Depth=3
	cmpq	%rbx, %r12
	movq	-160(%rbp), %rax        # 8-byte Reload
	jae	.LBB0_106
# %bb.95:                               #   in Loop: Header=BB0_89 Depth=3
	addq	%r12, %rax
	cmpq	%rax, %r15
	jae	.LBB0_106
.LBB0_96:                               #   in Loop: Header=BB0_89 Depth=3
	movq	%rsi, %r10
	movq	%r12, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
.LBB0_97:                               #   in Loop: Header=BB0_89 Depth=3
	addq	$1, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_98:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rax), %rdi
	movq	(%r10,%rax), %rbx
	movq	%rbx, (%rcx,%rax)
	movq	%rdi, (%r10,%rax)
	addq	$8, %rax
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_98
	jmp	.LBB0_120
.LBB0_99:                               #   in Loop: Header=BB0_89 Depth=3
	movq	(%r12), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%r12)
	movq	%rax, (%rsi)
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_121
.LBB0_100:                              #   in Loop: Header=BB0_89 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r12, %r10
	movq	%rsi, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_118
# %bb.101:                              #   in Loop: Header=BB0_89 Depth=3
	cmpq	%r13, %r12
	jae	.LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_89 Depth=3
	leaq	(%r12,%r9), %rcx
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r12, %r10
	movq	%rsi, %rdx
	cmpq	%rcx, %r15
	jb	.LBB0_118
.LBB0_103:                              #   in Loop: Header=BB0_89 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_113
# %bb.104:                              # %.preheader27
                                        #   in Loop: Header=BB0_89 Depth=3
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_105:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r12,%rax), %xmm0
	movups	16(%r12,%rax), %xmm1
	movups	(%rsi,%rax), %xmm2
	movups	16(%rsi,%rax), %xmm3
	movups	%xmm2, (%r12,%rax)
	movups	%xmm3, 16(%r12,%rax)
	movups	%xmm0, (%rsi,%rax)
	movups	%xmm1, 16(%rsi,%rax)
	movdqu	32(%r12,%rax), %xmm0
	movdqu	48(%r12,%rax), %xmm1
	movdqu	32(%rsi,%rax), %xmm2
	movups	48(%rsi,%rax), %xmm3
	movdqu	%xmm2, 32(%r12,%rax)
	movups	%xmm3, 48(%r12,%rax)
	movdqu	%xmm0, 32(%rsi,%rax)
	movdqu	%xmm1, 48(%rsi,%rax)
	addq	$64, %rax
	addq	$2, %rcx
	jne	.LBB0_105
	jmp	.LBB0_114
.LBB0_106:                              #   in Loop: Header=BB0_89 Depth=3
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_122
# %bb.107:                              # %.preheader24
                                        #   in Loop: Header=BB0_89 Depth=3
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_108:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r12,%rax,8), %xmm0
	movups	16(%r12,%rax,8), %xmm1
	movups	(%rsi,%rax,8), %xmm2
	movups	16(%rsi,%rax,8), %xmm3
	movups	%xmm2, (%r12,%rax,8)
	movups	%xmm3, 16(%r12,%rax,8)
	movups	%xmm0, (%rsi,%rax,8)
	movups	%xmm1, 16(%rsi,%rax,8)
	movdqu	32(%r12,%rax,8), %xmm0
	movdqu	48(%r12,%rax,8), %xmm1
	movdqu	32(%rsi,%rax,8), %xmm2
	movups	48(%rsi,%rax,8), %xmm3
	movdqu	%xmm2, 32(%r12,%rax,8)
	movups	%xmm3, 48(%r12,%rax,8)
	movdqu	%xmm0, 32(%rsi,%rax,8)
	movdqu	%xmm1, 48(%rsi,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB0_108
# %bb.109:                              #   in Loop: Header=BB0_89 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_89 Depth=3
	movdqu	(%r12,%rax,8), %xmm0
	movdqu	16(%r12,%rax,8), %xmm1
	movdqu	(%rsi,%rax,8), %xmm2
	movups	16(%rsi,%rax,8), %xmm3
	movdqu	%xmm2, (%r12,%rax,8)
	movups	%xmm3, 16(%r12,%rax,8)
	movdqu	%xmm0, (%rsi,%rax,8)
	movdqu	%xmm1, 16(%rsi,%rax,8)
.LBB0_111:                              #   in Loop: Header=BB0_89 Depth=3
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_120
# %bb.112:                              #   in Loop: Header=BB0_89 Depth=3
	movq	-168(%rbp), %rcx        # 8-byte Reload
	leaq	(%rsi,%rcx,8), %r10
	leaq	(%r12,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_97
.LBB0_113:                              #   in Loop: Header=BB0_89 Depth=3
	xorl	%eax, %eax
.LBB0_114:                              #   in Loop: Header=BB0_89 Depth=3
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	je	.LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_89 Depth=3
	movdqu	(%r12,%rax), %xmm0
	movdqu	16(%r12,%rax), %xmm1
	movdqu	(%rsi,%rax), %xmm2
	movups	16(%rsi,%rax), %xmm3
	movdqu	%xmm2, (%r12,%rax)
	movups	%xmm3, 16(%r12,%rax)
	movdqu	%xmm0, (%rsi,%rax)
	movdqu	%xmm1, 16(%rsi,%rax)
.LBB0_116:                              #   in Loop: Header=BB0_89 Depth=3
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_120
# %bb.117:                              #   in Loop: Header=BB0_89 Depth=3
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r12,%rax), %r10
	leaq	(%rsi,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_118:                              #   in Loop: Header=BB0_89 Depth=3
	addq	$1, %rax
	xorl	%edi, %edi
	movq	-72(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_119:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_89 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r10,%rdi), %ebx
	movzbl	(%rdx,%rdi), %ecx
	movb	%cl, (%r10,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$-1, %rax
	addq	$1, %rdi
	cmpq	$1, %rax
	jg	.LBB0_119
.LBB0_120:                              #   in Loop: Header=BB0_89 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB0_121:                              #   in Loop: Header=BB0_89 Depth=3
	addq	%r8, %r12
	movl	$1, -136(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_88
.LBB0_122:                              #   in Loop: Header=BB0_89 Depth=3
	xorl	%eax, %eax
	movq	-72(%rbp), %r8          # 8-byte Reload
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_110
	jmp	.LBB0_111
	.p2align	4, 0x90
.LBB0_123:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r14, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_124:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	%rcx, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%r12, -176(%rbp)        # 8-byte Spill
	ja	.LBB0_209
# %bb.125:                              # %.preheader35
                                        #   in Loop: Header=BB0_85 Depth=2
	xorl	%r15d, %r15d
	movq	%rcx, %r14
	movq	-184(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_126:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
.LBB0_127:                              #   in Loop: Header=BB0_128 Depth=3
	addq	%rax, %r14
	addq	$1, %r15
	cmpq	%r14, %rsi
	ja	.LBB0_210
.LBB0_128:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_140 Depth 4
                                        #         Child Loop BB0_146 Depth 4
                                        #         Child Loop BB0_156 Depth 4
                                        #         Child Loop BB0_151 Depth 4
	movq	%r15, %r12
	imulq	%rax, %r12
	leaq	(%rcx,%r12), %r13
	leaq	(%r9,%r12), %rbx
	addq	%rcx, %rbx
	addq	-160(%rbp), %r12        # 8-byte Folded Reload
	addq	%rcx, %r12
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r14, %rsi
	movq	%r11, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB0_163
# %bb.129:                              #   in Loop: Header=BB0_128 Depth=3
	jne	.LBB0_126
# %bb.130:                              #   in Loop: Header=BB0_128 Depth=3
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	je	.LBB0_134
# %bb.131:                              #   in Loop: Header=BB0_128 Depth=3
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_135
# %bb.132:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	$4, -152(%rbp)          # 8-byte Folded Reload
	jae	.LBB0_147
# %bb.133:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-80(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_149
.LBB0_134:                              #   in Loop: Header=BB0_128 Depth=3
	movq	(%r14), %rax
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r8)
	jmp	.LBB0_153
.LBB0_135:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%r8, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_145
# %bb.136:                              #   in Loop: Header=BB0_128 Depth=3
	leaq	(%r8,%r9), %rax
	cmpq	%rax, %r13
	jae	.LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r14, %r10
	movq	%r8, %rdx
	cmpq	%rbx, %r8
	jb	.LBB0_145
.LBB0_138:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_161
# %bb.139:                              # %.preheader21
                                        #   in Loop: Header=BB0_128 Depth=3
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_140:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
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
	jne	.LBB0_140
# %bb.141:                              #   in Loop: Header=BB0_128 Depth=3
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	je	.LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_128 Depth=3
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r8,%rax), %xmm2
	movups	16(%r8,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r8,%rax)
	movdqu	%xmm1, 16(%r8,%rax)
.LBB0_143:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_152
# %bb.144:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %r10
	leaq	(%r8,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_145:                              #   in Loop: Header=BB0_128 Depth=3
	addq	$1, %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_146:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r10,%rdi), %ebx
	movzbl	(%rdx,%rdi), %ecx
	movb	%cl, (%r10,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$-1, %rax
	addq	$1, %rdi
	cmpq	$1, %rax
	jg	.LBB0_146
	jmp	.LBB0_152
.LBB0_147:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rax
	cmpq	%rax, %r13
	jae	.LBB0_154
# %bb.148:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	%r12, %r8
	jae	.LBB0_154
.LBB0_149:                              #   in Loop: Header=BB0_128 Depth=3
	movq	%r8, %r10
	movq	%r14, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
.LBB0_150:                              #   in Loop: Header=BB0_128 Depth=3
	addq	$1, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_151:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rax), %rdi
	movq	(%r10,%rax), %rbx
	movq	%rbx, (%rcx,%rax)
	movq	%rdi, (%r10,%rax)
	addq	$8, %rax
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_151
.LBB0_152:                              #   in Loop: Header=BB0_128 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB0_153:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %r8
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movl	$1, -136(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_127
.LBB0_154:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_162
# %bb.155:                              # %.preheader18
                                        #   in Loop: Header=BB0_128 Depth=3
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_156:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        #       Parent Loop BB0_128 Depth=3
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
	jne	.LBB0_156
# %bb.157:                              #   in Loop: Header=BB0_128 Depth=3
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_128 Depth=3
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r8,%rax,8), %xmm2
	movups	16(%r8,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r8,%rax,8)
	movdqu	%xmm1, 16(%r8,%rax,8)
.LBB0_159:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_152
# %bb.160:                              #   in Loop: Header=BB0_128 Depth=3
	movq	-168(%rbp), %rcx        # 8-byte Reload
	leaq	(%r8,%rcx,8), %r10
	leaq	(%r14,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_150
.LBB0_161:                              #   in Loop: Header=BB0_128 Depth=3
	xorl	%eax, %eax
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_142
	jmp	.LBB0_143
.LBB0_162:                              #   in Loop: Header=BB0_128 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_158
	jmp	.LBB0_159
	.p2align	4, 0x90
.LBB0_163:                              #   in Loop: Header=BB0_85 Depth=2
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB0_171
# %bb.164:                              #   in Loop: Header=BB0_85 Depth=2
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r10         # 8-byte Reload
	je	.LBB0_172
# %bb.165:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	$4, -152(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_168
# %bb.166:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-288(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx), %rax
	cmpq	%rax, %r10
	jae	.LBB0_186
# %bb.167:                              #   in Loop: Header=BB0_85 Depth=2
	leaq	(%r10,%rcx), %rax
	cmpq	%rax, %r14
	jae	.LBB0_186
.LBB0_168:                              #   in Loop: Header=BB0_85 Depth=2
	movq	%r14, %rax
	movq	%r10, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
.LBB0_169:                              #   in Loop: Header=BB0_85 Depth=2
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_170:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi), %rdi
	movq	(%rax,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%rax,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_170
	jmp	.LBB0_184
.LBB0_171:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r10)
	movq	%rax, (%r14)
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	jmp	.LBB0_185
.LBB0_172:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	$31, %r9
	jbe	.LBB0_182
# %bb.173:                              #   in Loop: Header=BB0_85 Depth=2
	leaq	(%r14,%r9), %rax
	cmpq	%rax, %r10
	jae	.LBB0_175
# %bb.174:                              #   in Loop: Header=BB0_85 Depth=2
	leaq	(%r10,%r9), %rsi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r10, %rdi
	movq	%r14, %rdx
	cmpq	%rsi, %r14
	jb	.LBB0_182
.LBB0_175:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_193
# %bb.176:                              # %.preheader33
                                        #   in Loop: Header=BB0_85 Depth=2
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_177:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
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
	jne	.LBB0_177
# %bb.178:                              #   in Loop: Header=BB0_85 Depth=2
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	je	.LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_85 Depth=2
	movdqu	(%r10,%rax), %xmm0
	movdqu	16(%r10,%rax), %xmm1
	movdqu	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movdqu	%xmm2, (%r10,%rax)
	movups	%xmm3, 16(%r10,%rax)
	movdqu	%xmm0, (%r14,%rax)
	movdqu	%xmm1, 16(%r14,%rax)
.LBB0_180:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_184
# %bb.181:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r10,%rax), %rdi
	leaq	(%r14,%rax), %rdx
	movq	-208(%rbp), %rax        # 8-byte Reload
.LBB0_182:                              #   in Loop: Header=BB0_85 Depth=2
	addq	$1, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_183:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%rdx,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$-1, %rax
	addq	$1, %rsi
	cmpq	$1, %rax
	jg	.LBB0_183
.LBB0_184:                              #   in Loop: Header=BB0_85 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rax        # 8-byte Reload
.LBB0_185:                              #   in Loop: Header=BB0_85 Depth=2
	addq	%r8, %r10
	addq	%rax, %r14
	movl	$1, -136(%rbp)          # 4-byte Folded Spill
	movq	%r14, %rcx
	movq	%r10, %rsi
	movq	-176(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_85
.LBB0_186:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_194
# %bb.187:                              # %.preheader30
                                        #   in Loop: Header=BB0_85 Depth=2
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_188:                              #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_85 Depth=2
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
	jne	.LBB0_188
# %bb.189:                              #   in Loop: Header=BB0_85 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_85 Depth=2
	movdqu	(%r10,%rax,8), %xmm0
	movdqu	16(%r10,%rax,8), %xmm1
	movdqu	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movdqu	%xmm2, (%r10,%rax,8)
	movups	%xmm3, 16(%r10,%rax,8)
	movdqu	%xmm0, (%r14,%rax,8)
	movdqu	%xmm1, 16(%r14,%rax,8)
.LBB0_191:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_184
# %bb.192:                              #   in Loop: Header=BB0_85 Depth=2
	movq	-168(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx,8), %rax
	leaq	(%r10,%rcx,8), %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB0_169
.LBB0_193:                              #   in Loop: Header=BB0_85 Depth=2
	xorl	%eax, %eax
	testb	$1, -264(%rbp)          # 1-byte Folded Reload
	jne	.LBB0_179
	jmp	.LBB0_180
.LBB0_194:                              #   in Loop: Header=BB0_85 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_190
	jmp	.LBB0_191
.LBB0_195:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_275
# %bb.196:                              # %.preheader51
                                        #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_197:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_197
# %bb.198:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rax,8), %xmm0
	movdqu	16(%r11,%rax,8), %xmm1
	movdqu	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movdqu	%xmm2, (%r11,%rax,8)
	movups	%xmm3, 16(%r11,%rax,8)
	movdqu	%xmm0, (%r15,%rax,8)
	movdqu	%xmm1, 16(%r15,%rax,8)
.LBB0_200:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_61
# %bb.201:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	leaq	(%r15,%rax,8), %r15
	leaq	(%r11,%rax,8), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_49
.LBB0_202:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB0_276
# %bb.203:                              # %.preheader54
                                        #   in Loop: Header=BB0_42 Depth=1
	movq	-232(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_204:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_204
# %bb.205:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	$0, -280(%rbp)          # 8-byte Folded Reload
	je	.LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rax), %xmm0
	movdqu	16(%r11,%rax), %xmm1
	movdqu	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movdqu	%xmm2, (%r11,%rax)
	movups	%xmm3, 16(%r11,%rax)
	movdqu	%xmm0, (%r15,%rax)
	movdqu	%xmm1, 16(%r15,%rax)
.LBB0_207:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_61
# %bb.208:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	leaq	(%r11,%rax), %rsi
	addq	%rax, %r15
	movq	-208(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_59
.LBB0_209:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%rcx, %r14
	.p2align	4, 0x90
.LBB0_210:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-272(%rbp), %r13        # 8-byte Reload
	imulq	%rcx, %r13
	leaq	(%r11,%r13), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	je	.LBB0_281
# %bb.211:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%rsi, %rax
	movq	-176(%rbp), %r15        # 8-byte Reload
	subq	%r15, %rax
	subq	%r11, %r15
	cmpq	%rax, %r15
	cmovgq	%rax, %r15
	testq	%r15, %r15
	movq	-80(%rbp), %r8          # 8-byte Reload
	je	.LBB0_241
# %bb.212:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r15, %r9
	negq	%r9
	movq	%rsi, %r12
	subq	%r15, %r12
	movslq	%r15d, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_215
# %bb.213:                              #   in Loop: Header=BB0_42 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jb	.LBB0_214
# %bb.221:                              #   in Loop: Header=BB0_42 Depth=1
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
	jae	.LBB0_231
# %bb.222:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r11,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_231
.LBB0_214:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rsi
.LBB0_238:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_239:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi), %rbx
	movq	(%r12,%rdi), %rcx
	movq	%rcx, (%rsi,%rdi)
	movq	%rbx, (%r12,%rdi)
	addq	$8, %rdi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_239
	jmp	.LBB0_240
	.p2align	4, 0x90
.LBB0_215:                              #   in Loop: Header=BB0_42 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rcx
	cmovleq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r10
	addq	$2, %r10
	cmpq	$31, %r10
	jbe	.LBB0_218
# %bb.216:                              #   in Loop: Header=BB0_42 Depth=1
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
	jae	.LBB0_224
# %bb.217:                              #   in Loop: Header=BB0_42 Depth=1
	addq	%rbx, %rdi
	leaq	(%r11,%rdi), %rsi
	addq	$2, %rsi
	cmpq	%rsi, %r12
	jae	.LBB0_224
.LBB0_218:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r11, %rsi
.LBB0_219:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_220:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movzbl	(%r12,%rdi), %ebx
	movb	%bl, (%rsi,%rdi)
	movb	%cl, (%r12,%rdi)
	addq	$-1, %rdx
	addq	$1, %rdi
	cmpq	$1, %rdx
	jg	.LBB0_220
.LBB0_240:                              #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_241:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	subq	%r8, %r15
	subq	%r14, %r8
	subq	-72(%rbp), %r15         # 8-byte Folded Reload
	cmpq	%r15, %r8
	cmovbq	%r8, %r15
	testq	%r15, %r15
	je	.LBB0_271
# %bb.242:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	subq	%r15, %r14
	movslq	%r15d, %rdx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_245
# %bb.243:                              #   in Loop: Header=BB0_42 Depth=1
	shrq	$3, %rdx
	cmpq	$1, %rdx
	movq	%rdx, %r10
	adcq	$0, %r10
	cmpq	$4, %r10
	jae	.LBB0_247
# %bb.244:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_256
	.p2align	4, 0x90
.LBB0_245:                              #   in Loop: Header=BB0_42 Depth=1
	movslq	%r15d, %rbx
	movq	%rbx, %rdi
	notq	%rdi
	cmpq	$-3, %rdi
	movq	$-2, %rcx
	cmovleq	%rcx, %rdi
	leaq	(%rdi,%rbx), %r10
	addq	$2, %r10
	cmpq	$31, %r10
	ja	.LBB0_258
# %bb.246:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB0_268
.LBB0_247:                              #   in Loop: Header=BB0_42 Depth=1
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
	jae	.LBB0_249
# %bb.248:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%rcx,%rdi,8), %rsi
	addq	$16, %rsi
	cmpq	%rsi, %r14
	jb	.LBB0_256
.LBB0_249:                              #   in Loop: Header=BB0_42 Depth=1
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
	je	.LBB0_279
# %bb.250:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r8, %rbx
	subq	%r15, %r13
	leaq	(%r11,%r13), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_251:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_251
# %bb.252:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi,8), %xmm0
	movdqu	16(%rcx,%rsi,8), %xmm1
	movdqu	(%r14,%rsi,8), %xmm2
	movups	16(%r14,%rsi,8), %xmm3
	movdqu	%xmm2, (%rcx,%rsi,8)
	movups	%xmm3, 16(%rcx,%rsi,8)
	movdqu	%xmm0, (%r14,%rsi,8)
	movdqu	%xmm1, 16(%r14,%rsi,8)
.LBB0_254:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r9, %r10
	movq	%r12, %r8
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB0_270
# %bb.255:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r14,%r9,8), %r14
	leaq	(%rcx,%r9,8), %rcx
	subq	%r9, %rdx
	.p2align	4, 0x90
.LBB0_256:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_257:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rsi), %rdi
	movq	(%r14,%rsi), %rbx
	movq	%rbx, (%rcx,%rsi)
	movq	%rdi, (%r14,%rsi)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_257
	jmp	.LBB0_270
.LBB0_258:                              #   in Loop: Header=BB0_42 Depth=1
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
	jae	.LBB0_261
# %bb.259:                              #   in Loop: Header=BB0_42 Depth=1
	addq	%r8, %rdi
	addq	%rcx, %rdi
	addq	$2, %rdi
	cmpq	%rdi, %r14
	jae	.LBB0_261
# %bb.260:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r12, %r8
	movq	%rcx, %rdi
	jmp	.LBB0_268
.LBB0_231:                              #   in Loop: Header=BB0_42 Depth=1
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
	je	.LBB0_278
# %bb.232:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r8, %rbx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %rdi
	addq	$48, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_233:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_233
# %bb.234:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rsi,8), %xmm0
	movdqu	16(%r11,%rsi,8), %xmm1
	movdqu	(%r12,%rsi,8), %xmm2
	movups	16(%r12,%rsi,8), %xmm3
	movdqu	%xmm2, (%r11,%rsi,8)
	movups	%xmm3, 16(%r11,%rsi,8)
	movdqu	%xmm0, (%r12,%rsi,8)
	movdqu	%xmm1, 16(%r12,%rsi,8)
.LBB0_236:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r10
	movq	-80(%rbp), %r8          # 8-byte Reload
	je	.LBB0_240
# %bb.237:                              #   in Loop: Header=BB0_42 Depth=1
	leaq	(%r12,%r15,8), %r12
	leaq	(%r11,%r15,8), %rsi
	subq	%r15, %rdx
	jmp	.LBB0_238
.LBB0_224:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r10, %r15
	andq	$-32, %r15
	leaq	-32(%r15), %rsi
	movq	%rsi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rsi, %rsi
	je	.LBB0_277
# %bb.225:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r9), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-88(%rbp), %r11         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_226:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_226
# %bb.227:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_42 Depth=1
	movdqu	(%r11,%rsi), %xmm0
	movdqu	16(%r11,%rsi), %xmm1
	movdqu	(%r12,%rsi), %xmm2
	movups	16(%r12,%rsi), %xmm3
	movdqu	%xmm2, (%r11,%rsi)
	movups	%xmm3, 16(%r11,%rsi)
	movdqu	%xmm0, (%r12,%rsi)
	movdqu	%xmm1, 16(%r12,%rsi)
.LBB0_229:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r10
	movq	-80(%rbp), %r8          # 8-byte Reload
	je	.LBB0_240
# %bb.230:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r15, %rdx
	leaq	(%r11,%r15), %rsi
	addq	%r15, %r12
	jmp	.LBB0_219
.LBB0_261:                              #   in Loop: Header=BB0_42 Depth=1
	movq	%r10, %r9
	andq	$-32, %r9
	leaq	-32(%r9), %rdi
	movq	%rdi, %r11
	shrq	$5, %r11
	addq	$1, %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rdi, %rdi
	je	.LBB0_280
# %bb.262:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r15, %r13
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rbx
	addq	$48, %rbx
	movq	%r8, %rdi
	subq	%r11, %rdi
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_263:                              #   Parent Loop BB0_42 Depth=1
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
	jne	.LBB0_263
# %bb.264:                              #   in Loop: Header=BB0_42 Depth=1
	testq	%r8, %r8
	je	.LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movdqu	(%rcx,%rsi), %xmm0
	movdqu	16(%rcx,%rsi), %xmm1
	movdqu	(%r14,%rsi), %xmm2
	movups	16(%r14,%rsi), %xmm3
	movdqu	%xmm2, (%rcx,%rsi)
	movups	%xmm3, 16(%rcx,%rsi)
	movdqu	%xmm0, (%r14,%rsi)
	movdqu	%xmm1, 16(%r14,%rsi)
.LBB0_266:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r9, %r10
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_270
# %bb.267:                              #   in Loop: Header=BB0_42 Depth=1
	subq	%r9, %rdx
	addq	%r9, %rdi
	addq	%r9, %r14
	.p2align	4, 0x90
.LBB0_268:                              #   in Loop: Header=BB0_42 Depth=1
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_269:                              #   Parent Loop BB0_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%r14,%rsi), %ecx
	movb	%cl, (%rdi,%rsi)
	movb	%bl, (%r14,%rsi)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_269
.LBB0_270:                              #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_271:                              #   in Loop: Header=BB0_42 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	cmpq	%r15, %rax
	jbe	.LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%edx, %edx
	divq	%r15
	movq	%r11, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%r8, %rbx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	__bsd_qsort_r
	movq	%rbx, %r8
	movq	-96(%rbp), %r9          # 8-byte Reload
.LBB0_273:                              #   in Loop: Header=BB0_42 Depth=1
	cmpq	%r15, %r8
	jbe	.LBB0_320
# %bb.274:                              #   in Loop: Header=BB0_42 Depth=1
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
	cmovel	-312(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rcx, %r11
	cmpq	$7, %r12
	jae	.LBB0_42
	jmp	.LBB0_2
.LBB0_275:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_199
	jmp	.LBB0_200
.LBB0_276:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -280(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_206
	jmp	.LBB0_207
.LBB0_279:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_253
	jmp	.LBB0_254
.LBB0_278:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_235
	jmp	.LBB0_236
.LBB0_277:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	movq	-88(%rbp), %r11         # 8-byte Reload
	testq	%r8, %r8
	jne	.LBB0_228
	jmp	.LBB0_229
.LBB0_280:                              #   in Loop: Header=BB0_42 Depth=1
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB0_265
	jmp	.LBB0_266
.LBB0_281:
	cmpq	%rcx, %r13
	movq	-320(%rbp), %rsi        # 8-byte Reload
	jle	.LBB0_320
# %bb.282:
	movq	-160(%rbp), %rax        # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	-296(%rbp), %rdx        # 8-byte Reload
	subq	%rax, %rdx
	addq	$2, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rax
	subq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-328(%rbp), %rdx        # 8-byte Reload
	leal	(%rdx,%rcx), %eax
	addl	$2, %eax
	andl	$31, %eax
	movq	%r9, %rdi
	subq	%rax, %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movslq	%ecx, %rax
	leaq	(%rdx,%rax), %rcx
	addq	$-30, %rcx
	shrq	$5, %rcx
	leal	1(%rcx), %edx
	movq	-128(%rbp), %rax        # 8-byte Reload
	subq	-168(%rbp), %rax        # 8-byte Folded Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	%eax, %edi
	andl	$1, %edi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rdi        # 8-byte Reload
	subq	-256(%rbp), %rdi        # 8-byte Folded Reload
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	andl	$1, %edx
	andq	$-2, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	leaq	48(%r11), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	notq	%rcx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	addq	%rdx, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_284
	.p2align	4, 0x90
.LBB0_283:                              #   in Loop: Header=BB0_284 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	$1, -192(%rbp)          # 8-byte Folded Spill
	addq	%rax, -200(%rbp)        # 8-byte Folded Spill
	cmpq	-64(%rbp), %rsi         # 8-byte Folded Reload
	jae	.LBB0_320
.LBB0_284:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_288 Depth 2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_296 Depth 3
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	cmpq	%r11, %rsi
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_283
# %bb.285:                              # %.preheader14
                                        #   in Loop: Header=BB0_284 Depth=1
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	imulq	%rax, %rcx
	leaq	(%r9,%rcx), %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	-160(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r13        # 8-byte Reload
	xorl	%r15d, %r15d
	movq	-136(%rbp), %r14        # 8-byte Reload
	jmp	.LBB0_288
	.p2align	4, 0x90
.LBB0_286:                              #   in Loop: Header=BB0_288 Depth=2
	movq	(%r14), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r12)
.LBB0_287:                              #   in Loop: Header=BB0_288 Depth=2
	addq	$1, %r15
	addq	%rbx, %r13
	movq	%r12, %r14
	cmpq	%r11, %r12
	jbe	.LBB0_283
.LBB0_288:                              #   Parent Loop BB0_284 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_296 Depth 3
	leaq	(%r14,%rbx), %r12
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*-112(%rbp)             # 8-byte Folded Reload
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r11         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB0_283
# %bb.289:                              #   in Loop: Header=BB0_288 Depth=2
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB0_286
# %bb.290:                              #   in Loop: Header=BB0_288 Depth=2
	movq	%r15, %rax
	imulq	%rbx, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	addq	%rdi, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	%rdi, %rcx
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_297
# %bb.291:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$4, -152(%rbp)          # 8-byte Folded Reload
	jb	.LBB0_294
# %bb.292:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-272(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_304
# %bb.293:                              #   in Loop: Header=BB0_288 Depth=2
	addq	-312(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_304
.LBB0_294:                              #   in Loop: Header=BB0_288 Depth=2
	movq	%r12, %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
.LBB0_295:                              #   in Loop: Header=BB0_288 Depth=2
	addq	$1, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_296:                              #   Parent Loop BB0_284 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx), %rsi
	movq	(%rax,%rdx), %rdi
	movq	%rdi, (%r14,%rdx)
	movq	%rsi, (%rax,%rdx)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_296
	jmp	.LBB0_303
	.p2align	4, 0x90
.LBB0_297:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$31, %r9
	jbe	.LBB0_300
# %bb.298:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-176(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	addq	%rdi, %rsi
	cmpq	%rsi, %rdx
	jae	.LBB0_311
# %bb.299:                              #   in Loop: Header=BB0_288 Depth=2
	addq	-264(%rbp), %rax        # 8-byte Folded Reload
	addq	%rdi, %rax
	cmpq	%rax, %rcx
	jae	.LBB0_311
.LBB0_300:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%r12, %rsi
.LBB0_301:                              #   in Loop: Header=BB0_288 Depth=2
	addq	$1, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_302:                              #   Parent Loop BB0_284 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %ebx
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%r14,%rdx)
	movb	%bl, (%rsi,%rdx)
	addq	$-1, %rax
	addq	$1, %rdx
	cmpq	$1, %rax
	jg	.LBB0_302
.LBB0_303:                              #   in Loop: Header=BB0_288 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_287
.LBB0_304:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB0_318
# %bb.305:                              # %.preheader9
                                        #   in Loop: Header=BB0_288 Depth=2
	xorl	%eax, %eax
	movq	-304(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB0_306:                              #   Parent Loop BB0_284 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
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
	jne	.LBB0_306
# %bb.307:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_288 Depth=2
	movdqu	(%r14,%rax,8), %xmm0
	movdqu	16(%r14,%rax,8), %xmm1
	movdqu	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movdqu	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movdqu	%xmm0, (%r12,%rax,8)
	movdqu	%xmm1, 16(%r12,%rax,8)
.LBB0_309:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -152(%rbp)        # 8-byte Folded Reload
	je	.LBB0_303
# %bb.310:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-296(%rbp), %rcx        # 8-byte Reload
	leaq	(%r12,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-328(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB0_295
.LBB0_311:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$0, -240(%rbp)          # 8-byte Folded Reload
	je	.LBB0_319
# %bb.312:                              # %.preheader12
                                        #   in Loop: Header=BB0_288 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rcx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_313:                              #   Parent Loop BB0_284 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
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
	jne	.LBB0_313
# %bb.314:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	je	.LBB0_316
.LBB0_315:                              #   in Loop: Header=BB0_288 Depth=2
	movdqu	(%r14,%rax), %xmm0
	movdqu	16(%r14,%rax), %xmm1
	movdqu	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movdqu	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movdqu	%xmm0, (%r12,%rax)
	movdqu	%xmm1, 16(%r12,%rax)
.LBB0_316:                              #   in Loop: Header=BB0_288 Depth=2
	cmpq	-256(%rbp), %r9         # 8-byte Folded Reload
	je	.LBB0_303
# %bb.317:                              #   in Loop: Header=BB0_288 Depth=2
	movq	-280(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r12,%rax), %rsi
	movq	-336(%rbp), %rax        # 8-byte Reload
	jmp	.LBB0_301
.LBB0_318:                              #   in Loop: Header=BB0_288 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_308
	jmp	.LBB0_309
.LBB0_319:                              #   in Loop: Header=BB0_288 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -232(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_315
	jmp	.LBB0_316
.LBB0_320:
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
	.size	__bsd_qsort_r, .Lfunc_end0-__bsd_qsort_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
