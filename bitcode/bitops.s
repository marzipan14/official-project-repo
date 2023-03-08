	.text
	.file	"bitops.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisPopcount
.LCPI0_0:
	.long	1431655765              # 0x55555555
	.long	1431655765              # 0x55555555
	.zero	4
	.zero	4
.LCPI0_1:
	.long	858993459               # 0x33333333
	.long	858993459               # 0x33333333
	.zero	4
	.zero	4
.LCPI0_2:
	.long	252645135               # 0xf0f0f0f
	.long	252645135               # 0xf0f0f0f
	.zero	4
	.zero	4
.LCPI0_3:
	.long	16843009                # 0x1010101
	.long	16843009                # 0x1010101
	.zero	4
	.zero	4
	.text
	.globl	redisPopcount
	.p2align	4, 0x90
	.type	redisPopcount,@function
redisPopcount:                          # @redisPopcount
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	xorl	%r12d, %r12d
	testq	%rsi, %rsi
	je	.LBB0_5
# %bb.1:
	movl	%edi, %eax
	andl	$3, %eax
	testq	%rax, %rax
	je	.LBB0_5
# %bb.2:                                # %.preheader4
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %rax
	movzbl	(%rdi), %ecx
	addq	$1, %rdi
	movzbl	redisPopcount.bitsinbyte(%rcx), %r12d
	addq	%rax, %r12
	cmpq	$1, %rsi
	leaq	-1(%rsi), %rsi
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%edi, %eax
	andl	$3, %eax
	testq	%rax, %rax
	jne	.LBB0_3
.LBB0_5:
	cmpq	$28, %rsi
	jl	.LBB0_14
# %bb.6:
	movq	%rsi, %rax
	notq	%rax
	cmpq	$-57, %rax
	movq	$-56, %rcx
	cmovgq	%rax, %rcx
	leaq	(%rsi,%rcx), %r9
	addq	$28, %r9
	movq	%r9, %r8
	shrq	$2, %r8
	movabsq	$5270498306774157605, %r11 # imm = 0x4924924924924925
	movq	%r8, %rax
	mulq	%r11
	leaq	-28(%rsi), %r10
	shrq	%rdx
	leaq	1(%rdx), %rcx
	cmpq	$2, %rcx
	jae	.LBB0_8
# %bb.7:
	movq	%rdi, %r14
	jmp	.LBB0_11
.LBB0_8:
	movl	%ecx, %eax
	andl	$1, %eax
	andq	$-2, %rcx
	leaq	(%rax,%rax,8), %rbx
	leaq	(%rbx,%rbx,2), %rbx
	addq	%rax, %rbx
	addq	%rbx, %rsi
	imulq	$-28, %rdx, %rbx
	addq	%rbx, %rsi
	addq	$-28, %rsi
	leaq	(%rcx,%rcx,8), %rbx
	leaq	(%rbx,%rbx,2), %r14
	addq	%rcx, %r14
	addq	%rdi, %r14
	movq	%r12, %xmm12
	subq	%rax, %rdx
	addq	$1, %rdx
	movdqa	.LCPI0_0(%rip), %xmm10  # xmm10 = <1431655765,1431655765,u,u>
	movdqa	.LCPI0_1(%rip), %xmm13  # xmm13 = <858993459,858993459,u,u>
	movdqa	.LCPI0_2(%rip), %xmm11  # xmm11 = <252645135,252645135,u,u>
	movdqa	.LCPI0_3(%rip), %xmm9   # xmm9 = <16843009,16843009,u,u>
	pxor	%xmm8, %xmm8
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm0
	movdqu	16(%rdi), %xmm4
	movdqu	32(%rdi), %xmm6
	pshufd	$231, %xmm4, %xmm7      # xmm7 = xmm4[3,1,2,3]
	pshufd	$229, %xmm0, %xmm5      # xmm5 = xmm0[1,1,2,3]
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	pshufd	$250, %xmm0, %xmm14     # xmm14 = xmm0[2,2,3,3]
	punpckldq	%xmm7, %xmm0    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1]
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pshufd	$229, %xmm6, %xmm7      # xmm7 = xmm6[1,1,2,3]
	punpckldq	%xmm7, %xmm1    # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1]
	punpckhdq	%xmm6, %xmm14   # xmm14 = xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	pshufd	$231, %xmm6, %xmm2      # xmm2 = xmm6[3,1,2,3]
	pshufd	$229, %xmm4, %xmm7      # xmm7 = xmm4[1,1,2,3]
	pshufd	$78, %xmm4, %xmm6       # xmm6 = xmm4[2,3,0,1]
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movq	48(%rdi), %xmm2         # xmm2 = mem[0],zero
	punpckldq	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1]
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm6    # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	movdqa	%xmm0, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm0
	pand	%xmm13, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm5, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm5
	pand	%xmm13, %xmm5
	paddd	%xmm2, %xmm5
	movdqa	%xmm1, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm1
	pand	%xmm13, %xmm1
	paddd	%xmm2, %xmm1
	movdqa	%xmm14, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm14
	movdqa	%xmm14, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm14
	pand	%xmm13, %xmm14
	paddd	%xmm2, %xmm14
	movdqa	%xmm4, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm4
	movdqa	%xmm4, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm4
	pand	%xmm13, %xmm4
	paddd	%xmm2, %xmm4
	movdqa	%xmm7, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm7
	pand	%xmm13, %xmm7
	paddd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm2
	psrld	$1, %xmm2
	pand	%xmm10, %xmm2
	psubd	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	pand	%xmm13, %xmm2
	psrld	$2, %xmm6
	pand	%xmm13, %xmm6
	paddd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	psrld	$4, %xmm2
	paddd	%xmm0, %xmm2
	pand	%xmm11, %xmm2
	movdqa	%xmm5, %xmm3
	psrld	$4, %xmm3
	paddd	%xmm5, %xmm3
	pand	%xmm11, %xmm3
	paddd	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$4, %xmm2
	paddd	%xmm1, %xmm2
	pand	%xmm11, %xmm2
	movdqa	%xmm14, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm14, %xmm0
	pand	%xmm11, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	%xmm4, %xmm1
	psrld	$4, %xmm1
	paddd	%xmm4, %xmm1
	pand	%xmm11, %xmm1
	movdqa	%xmm7, %xmm2
	psrld	$4, %xmm2
	paddd	%xmm7, %xmm2
	pand	%xmm11, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm6, %xmm1
	psrld	$4, %xmm1
	paddd	%xmm6, %xmm1
	pand	%xmm11, %xmm1
	paddd	%xmm2, %xmm1
	paddd	%xmm0, %xmm1
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pmuludq	%xmm9, %xmm0
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	psrld	$24, %xmm1
	punpckldq	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1]
	paddq	%xmm1, %xmm12
	addq	$56, %rdi
	addq	$-2, %rdx
	jne	.LBB0_9
# %bb.10:
	pshufd	$78, %xmm12, %xmm0      # xmm0 = xmm12[2,3,0,1]
	paddq	%xmm12, %xmm0
	movq	%xmm0, %r12
	testq	%rax, %rax
	je	.LBB0_13
.LBB0_11:
	addq	$28, %rsi
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14), %edx
	movl	4(%r14), %eax
	movl	8(%r14), %ebx
	movl	12(%r14), %ebp
	movl	16(%r14), %edi
	movl	20(%r14), %r13d
	movl	24(%r14), %r15d
	addq	$28, %r14
	movl	%edx, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %edx
	movl	%edx, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %edx
	andl	$858993459, %edx        # imm = 0x33333333
	addl	%ecx, %edx
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %eax
	movl	%eax, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %eax
	andl	$858993459, %eax        # imm = 0x33333333
	addl	%ecx, %eax
	movl	%ebx, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %ebx
	movl	%ebx, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %ebx
	andl	$858993459, %ebx        # imm = 0x33333333
	addl	%ecx, %ebx
	movl	%ebp, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %ebp
	andl	$858993459, %ebp        # imm = 0x33333333
	addl	%ecx, %ebp
	movl	%edi, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %edi
	movl	%edi, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %edi
	andl	$858993459, %edi        # imm = 0x33333333
	addl	%ecx, %edi
	movl	%r13d, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %r13d
	movl	%r13d, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %r13d
	andl	$858993459, %r13d       # imm = 0x33333333
	addl	%ecx, %r13d
	movl	%r15d, %ecx
	shrl	%ecx
	andl	$1431655765, %ecx       # imm = 0x55555555
	subl	%ecx, %r15d
	movl	%r15d, %ecx
	andl	$858993459, %ecx        # imm = 0x33333333
	shrl	$2, %r15d
	andl	$858993459, %r15d       # imm = 0x33333333
	addl	%ecx, %r15d
	movl	%edx, %ecx
	shrl	$4, %ecx
	addl	%edx, %ecx
	andl	$252645135, %ecx        # imm = 0xF0F0F0F
	movl	%eax, %edx
	shrl	$4, %edx
	addl	%eax, %edx
	andl	$252645135, %edx        # imm = 0xF0F0F0F
	addl	%ecx, %edx
	movl	%ebx, %eax
	shrl	$4, %eax
	addl	%ebx, %eax
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	addl	%edx, %eax
	movl	%ebp, %ecx
	shrl	$4, %ecx
	addl	%ebp, %ecx
	andl	$252645135, %ecx        # imm = 0xF0F0F0F
	addl	%eax, %ecx
	movl	%edi, %eax
	shrl	$4, %eax
	addl	%edi, %eax
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	addl	%ecx, %eax
	movl	%r13d, %ecx
	shrl	$4, %ecx
	addl	%r13d, %ecx
	andl	$252645135, %ecx        # imm = 0xF0F0F0F
	addl	%eax, %ecx
	movl	%r15d, %eax
	shrl	$4, %eax
	addl	%r15d, %eax
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	addl	%ecx, %eax
	imull	$16843009, %eax, %eax   # imm = 0x1010101
	shrl	$24, %eax
	addq	%rax, %r12
	addq	$-28, %rsi
	cmpq	$55, %rsi
	jg	.LBB0_12
.LBB0_13:
	movq	%r8, %rax
	mulq	%r11
	shrq	%rdx
	leaq	(%rdx,%rdx,8), %rax
	leaq	(%rax,%rax,2), %rax
	addq	%rdx, %rax
	movq	%r9, %rcx
	subq	%rax, %rcx
	subq	%r9, %rcx
	addq	%rcx, %r10
	movq	%r14, %rdi
	movq	%r10, %rsi
.LBB0_14:
	testq	%rsi, %rsi
	je	.LBB0_22
# %bb.15:
	leaq	-1(%rsi), %rax
	movq	%rsi, %rdx
	andq	$3, %rdx
	je	.LBB0_19
# %bb.16:                               # %.preheader1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %ebp
	movzbl	redisPopcount.bitsinbyte(%rbp), %ebp
	addq	%rbp, %r12
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_17
# %bb.18:                               # %.loopexit2
	subq	%rcx, %rsi
	addq	%rcx, %rdi
.LBB0_19:
	cmpq	$3, %rax
	jb	.LBB0_22
# %bb.20:                               # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %ecx
	movzbl	redisPopcount.bitsinbyte(%rcx), %ecx
	addq	%r12, %rcx
	movzbl	1(%rdi,%rax), %edx
	movzbl	redisPopcount.bitsinbyte(%rdx), %edx
	addq	%rcx, %rdx
	movzbl	2(%rdi,%rax), %ecx
	movzbl	redisPopcount.bitsinbyte(%rcx), %ecx
	addq	%rdx, %rcx
	movzbl	3(%rdi,%rax), %edx
	movzbl	redisPopcount.bitsinbyte(%rdx), %r12d
	addq	%rcx, %r12
	addq	$4, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_21
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisPopcount, .Lfunc_end0-redisPopcount
                                        # -- End function
	.globl	redisBitpos             # -- Begin function redisBitpos
	.p2align	4, 0x90
	.type	redisBitpos,@function
redisBitpos:                            # @redisBitpos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	testl	%edx, %edx
	movl	$255, %r8d
	cmovneq	%rcx, %r8
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.1:
	movl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	je	.LBB1_6
# %bb.2:                                # %.preheader4
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	cmpq	%rax, %r8
	jne	.LBB1_17
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	addq	$1, %rdi
	addq	$8, %rcx
	cmpq	$1, %rsi
	leaq	-1(%rsi), %rsi
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.LBB1_3
.LBB1_6:
	cmpl	$1, %edx
	sbbq	%rax, %rax
	cmpq	$8, %rsi
	jb	.LBB1_9
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rax, (%rdi)
	jne	.LBB1_17
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	addq	$8, %rdi
	addq	$-8, %rsi
	addq	$64, %rcx
	cmpq	$7, %rsi
	ja	.LBB1_7
.LBB1_9:
	testq	%rsi, %rsi
	je	.LBB1_10
.LBB1_17:
	movzbl	(%rdi), %r8d
	shlq	$8, %r8
	cmpq	$1, %rsi
	je	.LBB1_11
# %bb.18:
	movzbl	1(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	cmpq	$2, %rsi
	je	.LBB1_12
# %bb.19:
	movzbl	2(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	cmpq	$3, %rsi
	je	.LBB1_13
# %bb.20:
	movzbl	3(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	cmpq	$4, %rsi
	je	.LBB1_14
# %bb.21:
	movzbl	4(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	cmpq	$5, %rsi
	je	.LBB1_15
# %bb.22:
	movzbl	5(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	addq	$-6, %rsi
	je	.LBB1_16
# %bb.23:
	movzbl	6(%rdi), %eax
	orq	%rax, %r8
	shlq	$8, %r8
	cmpq	$1, %rsi
	je	.LBB1_25
# %bb.24:
	movzbl	7(%rdi), %eax
	orq	%rax, %r8
	jmp	.LBB1_25
.LBB1_10:
	xorl	%r8d, %r8d
.LBB1_11:
	shlq	$8, %r8
.LBB1_12:
	shlq	$8, %r8
.LBB1_13:
	shlq	$8, %r8
.LBB1_14:
	shlq	$8, %r8
.LBB1_15:
	shlq	$8, %r8
.LBB1_16:
	shlq	$8, %r8
.LBB1_25:
	cmpl	$1, %edx
	jne	.LBB1_27
# %bb.26:
	movq	$-1, %rax
	testq	%r8, %r8
	je	.LBB1_34
.LBB1_27:                               # %.preheader
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	.p2align	4, 0x90
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	testq	%r8, %rax
	setne	%sil
	cmpl	%edx, %esi
	je	.LBB1_33
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=1
	movq	%rax, %rsi
	shrq	%rsi
	xorl	%edi, %edi
	testq	%r8, %rsi
	setne	%dil
	cmpl	%edx, %edi
	je	.LBB1_30
# %bb.35:                               #   in Loop: Header=BB1_28 Depth=1
	movq	%rax, %rsi
	shrq	$2, %rsi
	xorl	%edi, %edi
	testq	%r8, %rsi
	setne	%dil
	cmpl	%edx, %edi
	je	.LBB1_32
# %bb.36:                               #   in Loop: Header=BB1_28 Depth=1
	movq	%rax, %rsi
	shrq	$3, %rsi
	xorl	%edi, %edi
	testq	%r8, %rsi
	setne	%dil
	cmpl	%edx, %edi
	je	.LBB1_31
# %bb.37:                               #   in Loop: Header=BB1_28 Depth=1
	addq	$4, %rcx
	shrq	$4, %rax
	jne	.LBB1_28
# %bb.38:
	movl	$.L.str, %edi
	movl	$.L.str.1, %edx
	movl	$184, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.LBB1_30:
	addq	$1, %rcx
	jmp	.LBB1_33
.LBB1_32:
	addq	$2, %rcx
	jmp	.LBB1_33
.LBB1_31:
	addq	$3, %rcx
.LBB1_33:
	movq	%rcx, %rax
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	redisBitpos, .Lfunc_end1-redisBitpos
                                        # -- End function
	.globl	setUnsignedBitfield     # -- Begin function setUnsignedBitfield
	.p2align	4, 0x90
	.type	setUnsignedBitfield,@function
setUnsignedBitfield:                    # @setUnsignedBitfield
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB2_3
# %bb.1:                                # %.preheader
	movq	%rcx, %r8
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	btq	%rdx, %r8
	setb	%al
	movq	%rsi, %r9
	shrq	$3, %r9
	movzbl	(%rdi,%r9), %r10d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	btrl	%ecx, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	orl	%r10d, %eax
	movb	%al, (%rdi,%r9)
	addq	$1, %rsi
	addq	$-1, %rdx
	jb	.LBB2_2
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	setUnsignedBitfield, .Lfunc_end2-setUnsignedBitfield
                                        # -- End function
	.globl	setSignedBitfield       # -- Begin function setSignedBitfield
	.p2align	4, 0x90
	.type	setSignedBitfield,@function
setSignedBitfield:                      # @setSignedBitfield
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB3_3
# %bb.1:                                # %.preheader
	movq	%rcx, %r8
	addq	$-1, %rdx
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	btq	%rdx, %r8
	setb	%al
	movq	%rsi, %r9
	shrq	$3, %r9
	movzbl	(%rdi,%r9), %r10d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	btrl	%ecx, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	orl	%r10d, %eax
	movb	%al, (%rdi,%r9)
	addq	$1, %rsi
	addq	$-1, %rdx
	jb	.LBB3_2
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	setSignedBitfield, .Lfunc_end3-setSignedBitfield
                                        # -- End function
	.globl	getUnsignedBitfield     # -- Begin function getUnsignedBitfield
	.p2align	4, 0x90
	.type	getUnsignedBitfield,@function
getUnsignedBitfield:                    # @getUnsignedBitfield
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB4_1
# %bb.2:
	movl	%edx, %r8d
	andl	$1, %r8d
	cmpq	$1, %rdx
	jne	.LBB4_4
# %bb.3:
	xorl	%edx, %edx
                                        # implicit-def: $rax
	testq	%r8, %r8
	jne	.LBB4_8
	jmp	.LBB4_9
.LBB4_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_4:
	movq	%r8, %r9
	subq	%rdx, %r9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movzbl	(%rdi,%rcx), %r10d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %r10
	leaq	1(%rsi), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movzbl	(%rdi,%rdx), %edx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$1, %r10d
	andl	$1, %edx
	addq	%r10, %r10
	leaq	(%r10,%rax,4), %rax
	orq	%rdx, %rax
	addq	$2, %rsi
	addq	$2, %r9
	jne	.LBB4_5
# %bb.6:
	leaq	(%rax,%rax), %rdx
	testq	%r8, %r8
	je	.LBB4_9
.LBB4_8:
	movq	%rsi, %rax
	shrq	$3, %rax
	movzbl	(%rdi,%rax), %eax
	notb	%sil
	andb	$7, %sil
	movl	%esi, %ecx
	shrq	%cl, %rax
	andl	$1, %eax
	orq	%rdx, %rax
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	getUnsignedBitfield, .Lfunc_end4-getUnsignedBitfield
                                        # -- End function
	.globl	getSignedBitfield       # -- Begin function getSignedBitfield
	.p2align	4, 0x90
	.type	getSignedBitfield,@function
getSignedBitfield:                      # @getSignedBitfield
# %bb.0:
	movq	%rdx, %r9
	testq	%rdx, %rdx
	je	.LBB5_1
# %bb.2:
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpq	$1, %r9
	jne	.LBB5_4
# %bb.3:
	xorl	%eax, %eax
                                        # implicit-def: $r11
	testq	%r8, %r8
	jne	.LBB5_8
	jmp	.LBB5_9
.LBB5_1:
	xorl	%r11d, %r11d
	jmp	.LBB5_9
.LBB5_4:
	movq	%r8, %r10
	subq	%r9, %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	shrq	$3, %rax
	movzbl	(%rdi,%rax), %eax
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rax
	leaq	1(%rsi), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movzbl	(%rdi,%rdx), %edx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$1, %eax
	andl	$1, %edx
	addq	%rax, %rax
	leaq	(%rax,%r11,4), %r11
	orq	%rdx, %r11
	addq	$2, %rsi
	addq	$2, %r10
	jne	.LBB5_5
# %bb.6:
	leaq	(%r11,%r11), %rax
	testq	%r8, %r8
	je	.LBB5_9
.LBB5_8:
	movq	%rsi, %rcx
	shrq	$3, %rcx
	movzbl	(%rdi,%rcx), %r11d
	notb	%sil
	andb	$7, %sil
	movl	%esi, %ecx
	shrq	%cl, %r11
	andl	$1, %r11d
	orq	%rax, %r11
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rdx
	movl	%r9d, %ecx
	shlq	%cl, %rdx
	leal	-1(%r9), %eax
	movzbl	%al, %ecx
	xorl	%eax, %eax
	btq	%rcx, %r11
	cmovbq	%rdx, %rax
	orq	%r11, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	getSignedBitfield, .Lfunc_end5-getSignedBitfield
                                        # -- End function
	.globl	checkUnsignedBitfieldOverflow # -- Begin function checkUnsignedBitfieldOverflow
	.p2align	4, 0x90
	.type	checkUnsignedBitfieldOverflow,@function
checkUnsignedBitfieldOverflow:          # @checkUnsignedBitfieldOverflow
# %bb.0:
	movl	%ecx, %r9d
	movq	%rdx, %rcx
	movq	$-1, %r10
	movq	$-1, %rdx
	shlq	%cl, %rdx
	cmpq	$64, %rcx
	notq	%rdx
	cmovneq	%rdx, %r10
	movq	%r10, %rax
	subq	%rdi, %rax
	jb	.LBB6_3
# %bb.1:
	testq	%rsi, %rsi
	jle	.LBB6_7
# %bb.2:
	cmpq	%rsi, %rax
	jge	.LBB6_7
.LBB6_3:
	movl	$1, %eax
	testq	%r8, %r8
	je	.LBB6_14
# %bb.4:
	testl	%r9d, %r9d
	je	.LBB6_13
# %bb.5:
	cmpl	$1, %r9d
	jne	.LBB6_14
# %bb.6:
	movq	%r10, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB6_7:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jns	.LBB6_14
# %bb.8:
	movq	%rdi, %rcx
	negq	%rcx
	cmpq	%rsi, %rcx
	jle	.LBB6_14
# %bb.9:
	movl	$-1, %eax
	testq	%r8, %r8
	je	.LBB6_14
# %bb.10:
	testl	%r9d, %r9d
	je	.LBB6_13
# %bb.11:
	cmpl	$1, %r9d
	jne	.LBB6_14
# %bb.12:
	movq	$0, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB6_13:
	addq	%rdi, %rsi
	andq	%rdx, %rsi
	movq	%rsi, (%r8)
	movl	$1, %eax
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end6:
	.size	checkUnsignedBitfieldOverflow, .Lfunc_end6-checkUnsignedBitfieldOverflow
                                        # -- End function
	.globl	checkSignedBitfieldOverflow # -- Begin function checkSignedBitfieldOverflow
	.p2align	4, 0x90
	.type	checkSignedBitfieldOverflow,@function
checkSignedBitfieldOverflow:            # @checkSignedBitfieldOverflow
# %bb.0:
	movl	%ecx, %r9d
	cmpq	$64, %rdx
	jne	.LBB7_1
# %bb.3:
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rcx), %r10
	xorl	%r11d, %r11d
	testq	%rdi, %rdi
	js	.LBB7_11
# %bb.4:
	testq	%rsi, %rsi
	jle	.LBB7_11
# %bb.5:
	movq	%rcx, %rax
	subq	%rdi, %rax
	cmpq	%rsi, %rax
	jl	.LBB7_7
	jmp	.LBB7_11
.LBB7_1:
	leal	-1(%rdx), %ecx
	movq	$-1, %r10
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r10
	movq	%r10, %rcx
	notq	%rcx
	movq	%rcx, %rax
	subq	%rdi, %rax
	jl	.LBB7_7
# %bb.2:
	movb	$1, %r11b
	cmpq	%rsi, %rax
	jge	.LBB7_11
.LBB7_7:
	movl	$1, %eax
	testq	%r8, %r8
	je	.LBB7_20
# %bb.8:
	testl	%r9d, %r9d
	je	.LBB7_19
# %bb.9:
	cmpl	$1, %r9d
	jne	.LBB7_20
# %bb.10:
	movq	%rcx, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_11:
	movq	%r10, %rax
	subq	%rdi, %rax
	cmpq	%rsi, %rax
	setg	%al
	movq	%r10, %rcx
	subq	%rdi, %rcx
	jg	.LBB7_15
# %bb.12:
	andb	%al, %r11b
	jne	.LBB7_15
# %bb.13:
	xorl	%eax, %eax
	testq	%rdi, %rsi
	jns	.LBB7_20
# %bb.14:
	cmpq	%rsi, %rcx
	jle	.LBB7_20
.LBB7_15:
	movl	$-1, %eax
	testq	%r8, %r8
	je	.LBB7_20
# %bb.16:
	testl	%r9d, %r9d
	je	.LBB7_19
# %bb.17:
	cmpl	$1, %r9d
	jne	.LBB7_20
# %bb.18:
	movq	%r10, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_19:
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	addb	$-1, %dl
	addq	%rdi, %rsi
	movzbl	%dl, %ecx
	movq	%rax, %rdx
	orq	%rsi, %rdx
	notq	%rax
	andq	%rsi, %rax
	btq	%rcx, %rsi
	cmovbq	%rdx, %rax
	movq	%rax, (%r8)
	movl	$1, %eax
.LBB7_20:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	checkSignedBitfieldOverflow, .Lfunc_end7-checkSignedBitfieldOverflow
                                        # -- End function
	.globl	printBits               # -- Begin function printBits
	.p2align	4, 0x90
	.type	printBits,@function
printBits:                              # @printBits
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB8_3
# %bb.1:                                # %.preheader
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%r12), %ebx
	xorl	%esi, %esi
	testb	%bl, %bl
	setns	%sil
	xorl	$49, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$64, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$32, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$16, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$8, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$4, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %eax
	andl	$2, %eax
	cmpq	$1, %rax
	movl	$49, %esi
	sbbl	$0, %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	andl	$1, %ebx
	orl	$48, %ebx
	movl	$.L.str.2, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r12
	cmpq	%r12, %r15
	jne	.LBB8_2
.LBB8_3:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	printBits, .Lfunc_end8-printBits
                                        # -- End function
	.globl	getBitOffsetFromArgument # -- Begin function getBitOffsetFromArgument
	.p2align	4, 0x90
	.type	getBitOffsetFromArgument,@function
getBitOffsetFromArgument:               # @getBitOffsetFromArgument
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%r8d, %r12d
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	8(%rsi), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB9_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_3:
	shrq	$3, %rsi
	jmp	.LBB9_8
.LBB9_1:
	xorl	%esi, %esi
	jmp	.LBB9_8
.LBB9_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB9_8
.LBB9_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB9_8
.LBB9_6:
	movl	-9(%rdi), %esi
	jmp	.LBB9_8
.LBB9_7:
	movq	-17(%rdi), %rsi
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$35, (%rdi)
	sete	%al
	testl	%ecx, %ecx
	setne	%cl
	testl	%r12d, %r12d
	setg	%bl
	andb	%cl, %bl
	andb	%al, %bl
	movzbl	%bl, %eax
	addq	%rax, %rdi
	subq	%rax, %rsi
	leaq	-40(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB9_9
# %bb.10:
	testb	%bl, %bl
	je	.LBB9_12
# %bb.11:
	movslq	%r12d, %rax
	imulq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_13
.LBB9_12:
	movq	-40(%rbp), %rax
.LBB9_13:
	movq	%rax, %rcx
	shrq	$32, %rcx
	je	.LBB9_14
.LBB9_9:
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$-1, %eax
	jmp	.LBB9_15
.LBB9_14:
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB9_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	getBitOffsetFromArgument, .Lfunc_end9-getBitOffsetFromArgument
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
                                        # -- End function
	.text
	.globl	getBitfieldTypeFromArgument # -- Begin function getBitfieldTypeFromArgument
	.p2align	4, 0x90
	.type	getBitfieldTypeFromArgument,@function
getBitfieldTypeFromArgument:            # @getBitfieldTypeFromArgument
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %r15
	movq	8(%rsi), %rbx
	movb	(%rbx), %al
	cmpb	$105, %al
	je	.LBB10_1
# %bb.2:
	cmpb	$117, %al
	jne	.LBB10_10
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB10_4
.LBB10_1:
	movl	$1, %eax
.LBB10_4:
	movl	%eax, (%r12)
	addq	$1, %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	string2ll
	testl	%eax, %eax
	je	.LBB10_10
# %bb.5:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB10_10
# %bb.6:
	movl	(%r12), %ecx
	cmpq	$65, %rax
	jl	.LBB10_8
# %bb.7:
	cmpl	$1, %ecx
	je	.LBB10_10
.LBB10_8:
	cmpq	$64, %rax
	jl	.LBB10_11
# %bb.9:
	testl	%ecx, %ecx
	jne	.LBB10_11
.LBB10_10:
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_11:
	movl	%eax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB10_12
.Lfunc_end10:
	.size	getBitfieldTypeFromArgument, .Lfunc_end10-getBitfieldTypeFromArgument
                                        # -- End function
	.globl	lookupStringForBitCommand # -- Begin function lookupStringForBitCommand
	.p2align	4, 0x90
	.type	lookupStringForBitCommand,@function
lookupStringForBitCommand:              # @lookupStringForBitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	shrq	$3, %r14
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:
	movq	%rax, %r12
	xorl	%r15d, %r15d
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB11_4
# %bb.3:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r15
	movq	8(%rax), %rdi
	addq	$1, %r14
	movq	%r14, %rsi
	callq	sdsgrowzero
	movq	%rax, 8(%r15)
	jmp	.LBB11_4
.LBB11_1:
	addq	$1, %r14
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	sdsnewlen
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lookupStringForBitCommand, .Lfunc_end11-lookupStringForBitCommand
                                        # -- End function
	.globl	getObjectReadOnlyString # -- Begin function getObjectReadOnlyString
	.p2align	4, 0x90
	.type	getObjectReadOnlyString,@function
getObjectReadOnlyString:                # @getObjectReadOnlyString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	(%rdi), %eax
	testb	$15, %al
	jne	.LBB12_16
# %bb.1:
	movq	%rsi, %r14
	andl	$240, %eax
	cmpl	$16, %eax
	jne	.LBB12_4
# %bb.2:
	movq	%rdx, %rbx
	testq	%r14, %r14
	je	.LBB12_15
# %bb.3:
	movq	8(%rdi), %rdx
	movl	$21, %esi
	movq	%rbx, %rdi
	callq	ll2string
	cltq
	jmp	.LBB12_14
.LBB12_4:
	movq	8(%rdi), %rbx
	testq	%r14, %r14
	je	.LBB12_15
# %bb.5:
	movzbl	-1(%rbx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB12_6
# %bb.7:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_8:
	shrq	$3, %rax
	jmp	.LBB12_13
.LBB12_10:
	movzwl	-5(%rbx), %eax
	jmp	.LBB12_13
.LBB12_12:
	movq	-17(%rbx), %rax
	jmp	.LBB12_13
.LBB12_6:
	xorl	%eax, %eax
	jmp	.LBB12_13
.LBB12_9:
	movzbl	-3(%rbx), %eax
	jmp	.LBB12_13
.LBB12_11:
	movl	-9(%rbx), %eax
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movq	%rax, (%r14)
.LBB12_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB12_16:
	movl	$.L.str.7, %edi
	movl	$.L.str, %esi
	movl	$507, %edx              # imm = 0x1FB
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	getObjectReadOnlyString, .Lfunc_end12-getObjectReadOnlyString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_8
	.quad	.LBB12_9
	.quad	.LBB12_10
	.quad	.LBB12_11
	.quad	.LBB12_12
                                        # -- End function
	.text
	.globl	setbitCommand           # -- Begin function setbitCommand
	.p2align	4, 0x90
	.type	setbitCommand,@function
setbitCommand:                          # @setbitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	getBitOffsetFromArgument
	testl	%eax, %eax
	jne	.LBB13_6
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movl	$.L.str.8, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB13_6
# %bb.2:
	cmpq	$2, -32(%rbp)
	jb	.LBB13_4
# %bb.3:
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB13_6
.LBB13_4:
	movq	-40(%rbp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lookupStringForBitCommand
	testq	%rax, %rax
	je	.LBB13_6
# %bb.5:
	movq	%r14, %rdx
	shrq	$3, %rdx
	movq	8(%rax), %rax
	movzbl	(%rax,%rdx), %r15d
	notb	%r14b
	andb	$7, %r14b
	movl	%r15d, %esi
	btrl	%r14d, %esi
	movl	-32(%rbp), %edi
	andl	$1, %edi
	movl	%r14d, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movb	%dil, (%rax,%rdx)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movzbl	%r14b, %eax
	btl	%eax, %r15d
	movl	$shared+32, %eax
	movl	$shared+40, %ecx
	cmovaeq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	setbitCommand, .Lfunc_end13-setbitCommand
                                        # -- End function
	.globl	getbitCommand           # -- Begin function getbitCommand
	.p2align	4, 0x90
	.type	getbitCommand,@function
getbitCommand:                          # @getbitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	getBitOffsetFromArgument
	testl	%eax, %eax
	je	.LBB14_1
.LBB14_19:
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB14_19
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB14_19
# %bb.3:
	movq	-40(%rbp), %r15
	movq	%r15, %r12
	shrq	$3, %r12
	movb	(%r14), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB14_14
# %bb.4:
	movq	8(%r14), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB14_6
# %bb.5:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI14_0(,%rdx,8)
.LBB14_7:
	shrq	$3, %rcx
	jmp	.LBB14_12
.LBB14_14:
	movq	8(%r14), %rdx
	leaq	-80(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	cltq
	cmpq	%rax, %r12
	jae	.LBB14_17
# %bb.15:
	movsbl	-80(%rbp,%r12), %eax
	jmp	.LBB14_16
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_17
.LBB14_8:
	movzbl	-3(%rax), %ecx
	jmp	.LBB14_12
.LBB14_9:
	movzwl	-5(%rax), %ecx
	jmp	.LBB14_12
.LBB14_10:
	movl	-9(%rax), %ecx
	jmp	.LBB14_12
.LBB14_11:
	movq	-17(%rax), %rcx
.LBB14_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jae	.LBB14_17
# %bb.13:
	movzbl	(%rax,%r12), %eax
.LBB14_16:
	notb	%r15b
	andb	$7, %r15b
	movzbl	%r15b, %edx
	movl	$shared+40, %ecx
	btl	%edx, %eax
	jb	.LBB14_18
.LBB14_17:
	movl	$shared+32, %ecx
.LBB14_18:
	movq	(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB14_19
.Lfunc_end14:
	.size	getbitCommand, .Lfunc_end14-getbitCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_7
	.quad	.LBB14_8
	.quad	.LBB14_9
	.quad	.LBB14_10
	.quad	.LBB14_11
                                        # -- End function
	.text
	.globl	bitopCommand            # -- Begin function bitopCommand
	.p2align	4, 0x90
	.type	bitopCommand,@function
bitopCommand:                           # @bitopCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	72(%rdi), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rbx
	movb	(%rbx), %r14b
	leal	-65(%r14), %ecx
	cmpb	$55, %cl
	ja	.LBB15_12
# %bb.1:
	movq	16(%rax), %r12
	movzbl	%cl, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_2:
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_18
# %bb.3:
	cmpb	$78, %r14b
	je	.LBB15_11
# %bb.4:
	cmpb	$88, %r14b
	je	.LBB15_9
# %bb.5:
	cmpb	$79, %r14b
	jne	.LBB15_12
.LBB15_6:
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_16
# %bb.7:
	cmpb	$110, %r14b
	je	.LBB15_11
# %bb.8:
	cmpb	$88, %r14b
	jne	.LBB15_12
.LBB15_9:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_15
# %bb.10:
	cmpb	$110, %r14b
	jne	.LBB15_12
.LBB15_11:
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB15_13
.LBB15_12:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB15_98
.LBB15_13:
	movq	-48(%rbp), %r15         # 8-byte Reload
	cmpl	$4, 64(%r15)
	jne	.LBB15_53
# %bb.14:
	movb	$3, %r14b
	movb	$1, %al
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_20
.LBB15_15:
	movb	$2, %r14b
	jmp	.LBB15_17
.LBB15_16:
	movb	$1, %r14b
.LBB15_17:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_19
.LBB15_18:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
.LBB15_19:
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB15_20:
	movslq	64(%r15), %r13
	leaq	-24(,%r13,8), %rbx
	addq	$-3, %r13
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, -104(%rbp)        # 8-byte Spill
	testl	%r13d, %r13d
	je	.LBB15_46
# %bb.21:
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	%r14d, -108(%rbp)       # 4-byte Spill
	movq	%r12, -96(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB15_25
.LBB15_22:                              #   in Loop: Header=BB15_25 Depth=1
	movq	-17(%rcx), %rax
	.p2align	4, 0x90
.LBB15_23:                              #   in Loop: Header=BB15_25 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	cmovbq	%rax, %r12
	movq	%rax, (%rsi,%r15,8)
	testq	%r15, %r15
	cmoveq	%rax, %r12
.LBB15_24:                              #   in Loop: Header=BB15_25 Depth=1
	addq	$1, %r15
	cmpq	%r13, %r15
	jae	.LBB15_35
.LBB15_25:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %r14
	movq	%r12, %rbx
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	24(%rax,%r15,8), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB15_30
# %bb.26:                               #   in Loop: Header=BB15_25 Depth=1
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB15_47
# %bb.27:                               #   in Loop: Header=BB15_25 Depth=1
	movq	%r12, %rdi
	callq	getDecodedObject
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx,%r15,8)
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx,%r15,8)
	movq	(%rcx,%r15,8), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB15_31
# %bb.28:                               #   in Loop: Header=BB15_25 Depth=1
	movl	%eax, %edx
	andl	$7, %edx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r12
	movq	%r14, %r13
	jmpq	*.LJTI15_1(,%rdx,8)
.LBB15_29:                              #   in Loop: Header=BB15_25 Depth=1
	shrq	$3, %rax
	jmp	.LBB15_23
	.p2align	4, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_25 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	$0, (%rax,%r15,8)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax,%r15,8)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax,%r15,8)
	xorl	%r12d, %r12d
	movq	%r14, %r13
	jmp	.LBB15_24
.LBB15_31:                              #   in Loop: Header=BB15_25 Depth=1
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r12
	movq	%r14, %r13
	jmp	.LBB15_23
.LBB15_32:                              #   in Loop: Header=BB15_25 Depth=1
	movzbl	-3(%rcx), %eax
	jmp	.LBB15_23
.LBB15_33:                              #   in Loop: Header=BB15_25 Depth=1
	movzwl	-5(%rcx), %eax
	jmp	.LBB15_23
.LBB15_34:                              #   in Loop: Header=BB15_25 Depth=1
	movl	-9(%rcx), %eax
	jmp	.LBB15_23
.LBB15_35:
	movq	-80(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	setne	%al
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB15_54
# %bb.36:
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	sdsnewlen
	cmpl	$16, %r13d
	movq	-96(%rbp), %r10         # 8-byte Reload
	ja	.LBB15_55
# %bb.37:
	cmpq	$32, %r12
	movl	-108(%rbp), %r14d       # 4-byte Reload
	jb	.LBB15_56
# %bb.38:
	leaq	-256(%rbp), %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r12, %r15
	movq	%rax, %r12
	callq	memcpy
	movq	(%rbx), %rsi
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy
	testb	%r14b, %r14b
	je	.LBB15_57
# %bb.39:
	cmpb	$1, %r14b
	je	.LBB15_62
# %bb.40:
	cmpb	$2, %r14b
	jne	.LBB15_99
# %bb.41:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r9
	movq	%r15, %r8
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_43
	.p2align	4, 0x90
.LBB15_42:                              #   in Loop: Header=BB15_43 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	cmpq	$31, %r8
	jbe	.LBB15_67
.LBB15_43:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_45 Depth 2
	cmpl	$2, %r13d
	jb	.LBB15_42
# %bb.44:                               #   in Loop: Header=BB15_43 Depth=1
	movq	(%r9), %r10
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_45:                              #   Parent Loop BB15_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	xorq	(%rdx), %r10
	movq	%r10, (%r9)
	xorq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	xorq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	xorq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB15_45
	jmp	.LBB15_42
.LBB15_46:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB15_93
.LBB15_47:
	testq	%r15, %r15
	je	.LBB15_52
# %bb.48:                               # %.preheader9
	xorl	%ebx, %ebx
	jmp	.LBB15_50
	.p2align	4, 0x90
.LBB15_49:                              #   in Loop: Header=BB15_50 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, %r15
	je	.LBB15_52
.LBB15_50:                              # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_49
# %bb.51:                               #   in Loop: Header=BB15_50 Depth=1
	callq	decrRefCount
	jmp	.LBB15_49
.LBB15_52:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	jmp	.LBB15_98
.LBB15_53:
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB15_98
.LBB15_54:
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_86
.LBB15_55:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	-108(%rbp), %r14d       # 4-byte Reload
	movq	%r10, %r12
	jmp	.LBB15_68
.LBB15_56:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%r10, %r12
	jmp	.LBB15_68
.LBB15_57:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r9
	movq	%r15, %r8
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_59
	.p2align	4, 0x90
.LBB15_58:                              #   in Loop: Header=BB15_59 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	cmpq	$31, %r8
	jbe	.LBB15_67
.LBB15_59:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_61 Depth 2
	cmpl	$2, %r13d
	jb	.LBB15_58
# %bb.60:                               #   in Loop: Header=BB15_59 Depth=1
	movq	(%r9), %r10
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_61:                              #   Parent Loop BB15_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	andq	(%rdx), %r10
	movq	%r10, (%r9)
	andq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	andq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	andq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB15_61
	jmp	.LBB15_58
.LBB15_62:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %r9
	movq	%r15, %r8
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_64
	.p2align	4, 0x90
.LBB15_63:                              #   in Loop: Header=BB15_64 Depth=1
	addq	$32, %r9
	addq	$-32, %r8
	cmpq	$31, %r8
	jbe	.LBB15_67
.LBB15_64:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_66 Depth 2
	cmpl	$2, %r13d
	jb	.LBB15_63
# %bb.65:                               #   in Loop: Header=BB15_64 Depth=1
	movq	(%r9), %r10
	movq	8(%r9), %rsi
	movq	16(%r9), %rdi
	movq	24(%r9), %rbx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_66:                              #   Parent Loop BB15_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp,%rcx,8), %rdx
	orq	(%rdx), %r10
	movq	%r10, (%r9)
	orq	8(%rdx), %rsi
	movq	%rsi, 8(%r9)
	orq	16(%rdx), %rdi
	movq	%rdi, 16(%r9)
	orq	24(%rdx), %rbx
	movq	%rbx, 24(%r9)
	addq	$32, %rdx
	movq	%rdx, -256(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jb	.LBB15_66
	jmp	.LBB15_63
.LBB15_67:
	andq	$-32, %r15
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB15_68:
	cmpq	-80(%rbp), %r15         # 8-byte Folded Reload
	jae	.LBB15_86
# %bb.69:
	negb	%r8b
	movq	-72(%rbp), %r9          # 8-byte Reload
	jmp	.LBB15_71
	.p2align	4, 0x90
.LBB15_70:                              #   in Loop: Header=BB15_71 Depth=1
	movb	%dil, (%rax,%r15)
	addq	$1, %r15
	cmpq	-80(%rbp), %r15         # 8-byte Folded Reload
	je	.LBB15_86
.LBB15_71:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_79 Depth 2
	cmpq	%r15, (%rsi)
	jbe	.LBB15_73
# %bb.72:                               #   in Loop: Header=BB15_71 Depth=1
	movq	(%r9), %rcx
	movb	(%rcx,%r15), %dil
	jmp	.LBB15_74
	.p2align	4, 0x90
.LBB15_73:                              #   in Loop: Header=BB15_71 Depth=1
	xorl	%edi, %edi
.LBB15_74:                              #   in Loop: Header=BB15_71 Depth=1
	xorb	%r8b, %dil
	cmpl	$2, %r13d
	jb	.LBB15_70
# %bb.75:                               # %.preheader1
                                        #   in Loop: Header=BB15_71 Depth=1
	movl	$1, %ecx
	jmp	.LBB15_79
	.p2align	4, 0x90
.LBB15_76:                              #   in Loop: Header=BB15_79 Depth=2
	xorb	%dil, %dl
.LBB15_77:                              #   in Loop: Header=BB15_79 Depth=2
	movl	%edx, %edi
.LBB15_78:                              #   in Loop: Header=BB15_79 Depth=2
	addq	$1, %rcx
	cmpq	%r13, %rcx
	jae	.LBB15_70
.LBB15_79:                              #   Parent Loop BB15_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, (%rsi,%rcx,8)
	jbe	.LBB15_81
# %bb.80:                               #   in Loop: Header=BB15_79 Depth=2
	movq	(%r9,%rcx,8), %rdx
	movzbl	(%rdx,%r15), %edx
	cmpb	$2, %r14b
	jne	.LBB15_82
	jmp	.LBB15_76
	.p2align	4, 0x90
.LBB15_81:                              #   in Loop: Header=BB15_79 Depth=2
	xorl	%edx, %edx
	cmpb	$2, %r14b
	je	.LBB15_76
.LBB15_82:                              #   in Loop: Header=BB15_79 Depth=2
	cmpb	$1, %r14b
	je	.LBB15_85
# %bb.83:                               #   in Loop: Header=BB15_79 Depth=2
	testb	%r14b, %r14b
	jne	.LBB15_78
# %bb.84:                               #   in Loop: Header=BB15_79 Depth=2
	andb	%dil, %dl
	jmp	.LBB15_77
	.p2align	4, 0x90
.LBB15_85:                              #   in Loop: Header=BB15_79 Depth=2
	orb	%dil, %dl
	jmp	.LBB15_77
.LBB15_86:
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%rax, %r14
	testl	%r13d, %r13d
	je	.LBB15_92
# %bb.87:                               # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB15_89
	.p2align	4, 0x90
.LBB15_88:                              #   in Loop: Header=BB15_89 Depth=1
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jae	.LBB15_91
.LBB15_89:                              # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_88
# %bb.90:                               #   in Loop: Header=BB15_89 Depth=1
	callq	decrRefCount
	jmp	.LBB15_88
.LBB15_91:
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB15_92:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %r13        # 8-byte Reload
.LBB15_93:
	callq	zfree
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	zfree
	testb	%r13b, %r13b
	je	.LBB15_95
# %bb.94:
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	setKey
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.15, %esi
	movl	$8, %edi
	movq	%r12, %rdx
	callq	notifyKeyspaceEvent
	movq	%r15, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	callq	decrRefCount
	jmp	.LBB15_97
.LBB15_95:
	movq	16(%r15), %rdi
	movq	%r12, %rsi
	callq	dbDelete
	testl	%eax, %eax
	je	.LBB15_97
# %bb.96:
	movq	16(%r15), %rdi
	movq	%r12, %rsi
	callq	signalModifiedKey
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.16, %esi
	movl	$4, %edi
	movq	%r12, %rdx
	callq	notifyKeyspaceEvent
.LBB15_97:
	addq	$1, server+2080(%rip)
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	addReplyLongLong
.LBB15_98:
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_99:
	cmpb	$0, -64(%rbp)           # 1-byte Folded Reload
	je	.LBB15_106
# %bb.100:
	leaq	-32(%r15), %rdx
	movq	%r15, %rcx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	testb	$32, %dl
	jne	.LBB15_102
# %bb.101:
	pcmpeqd	%xmm0, %xmm0
	movdqu	(%rax), %xmm1
	movdqu	16(%rax), %xmm2
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, (%rax)
	pxor	%xmm0, %xmm2
	movdqu	%xmm2, 16(%rax)
	movq	%rax, %rdi
	addq	$32, %rdi
	movq	%rdx, %rcx
.LBB15_102:
	cmpq	$32, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	jb	.LBB15_105
# %bb.103:                              # %.preheader4
	pcmpeqd	%xmm0, %xmm0
.LBB15_104:                             # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi), %xmm1
	movdqu	16(%rdi), %xmm2
	movdqu	32(%rdi), %xmm3
	movdqu	48(%rdi), %xmm4
	pxor	%xmm0, %xmm1
	movdqu	%xmm1, (%rdi)
	pxor	%xmm0, %xmm2
	movdqu	%xmm2, 16(%rdi)
	pxor	%xmm0, %xmm3
	movdqu	%xmm3, 32(%rdi)
	pxor	%xmm0, %xmm4
	movdqu	%xmm4, 48(%rdi)
	addq	$-64, %rcx
	addq	$64, %rdi
	cmpq	$31, %rcx
	ja	.LBB15_104
.LBB15_105:
	andq	$-32, %r15
	movb	$1, %r8b
	jmp	.LBB15_68
.LBB15_106:
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-96(%rbp), %r12         # 8-byte Reload
	jmp	.LBB15_68
.Lfunc_end15:
	.size	bitopCommand, .Lfunc_end15-bitopCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_2
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_11
	.quad	.LBB15_6
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_9
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_2
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_11
	.quad	.LBB15_6
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_12
	.quad	.LBB15_9
.LJTI15_1:
	.quad	.LBB15_29
	.quad	.LBB15_32
	.quad	.LBB15_33
	.quad	.LBB15_34
	.quad	.LBB15_22
                                        # -- End function
	.text
	.globl	bitcountCommand         # -- Begin function bitcountCommand
	.p2align	4, 0x90
	.type	bitcountCommand,@function
bitcountCommand:                        # @bitcountCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	testq	%rax, %rax
	je	.LBB16_24
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB16_24
# %bb.2:
	leaq	-40(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rbx, %rdi
	callq	getObjectReadOnlyString
	movq	%rax, %r14
	movl	64(%r15), %eax
	cmpl	$2, %eax
	je	.LBB16_21
# %bb.3:
	cmpl	$4, %eax
	jne	.LBB16_20
# %bb.4:
	movq	72(%r15), %rax
	movq	16(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB16_24
# %bb.5:
	movq	72(%r15), %rax
	movq	24(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB16_24
# %bb.6:
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB16_10
# %bb.7:
	movq	%rsi, %rcx
	andq	%rax, %rcx
	js	.LBB16_8
.LBB16_10:
	testq	%rax, %rax
	js	.LBB16_11
# %bb.12:
	testq	%rsi, %rsi
	js	.LBB16_13
.LBB16_14:
	testq	%rax, %rax
	js	.LBB16_15
.LBB16_16:
	testq	%rsi, %rsi
	js	.LBB16_17
.LBB16_18:
	movq	-40(%rbp), %rcx
	cmpq	%rcx, %rsi
	jl	.LBB16_22
# %bb.19:
	addq	$-1, %rcx
	movq	%rcx, -32(%rbp)
	movq	%rcx, %rsi
	jmp	.LBB16_22
.LBB16_21:
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rsi
	addq	$-1, %rsi
	movq	%rsi, -32(%rbp)
	xorl	%eax, %eax
.LBB16_22:
	subq	%rax, %rsi
	jge	.LBB16_23
.LBB16_8:
	movq	shared+32(%rip), %rsi
	jmp	.LBB16_9
.LBB16_20:
	movq	shared+128(%rip), %rsi
.LBB16_9:
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB16_24
.LBB16_23:
	addq	$1, %rsi
	addq	%rax, %r14
	movq	%r14, %rdi
	callq	redisPopcount
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB16_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_11:
	addq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	testq	%rsi, %rsi
	jns	.LBB16_14
.LBB16_13:
	addq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	testq	%rax, %rax
	jns	.LBB16_16
.LBB16_15:
	movq	$0, -48(%rbp)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	jns	.LBB16_18
.LBB16_17:
	movq	$0, -32(%rbp)
	xorl	%esi, %esi
	jmp	.LBB16_18
.Lfunc_end16:
	.size	bitcountCommand, .Lfunc_end16-bitcountCommand
                                        # -- End function
	.globl	bitposCommand           # -- Begin function bitposCommand
	.p2align	4, 0x90
	.type	bitposCommand,@function
bitposCommand:                          # @bitposCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB17_34
# %bb.1:
	cmpq	$2, -64(%rbp)
	jb	.LBB17_3
# %bb.2:
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB17_34
.LBB17_3:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB17_4
# %bb.5:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB17_34
# %bb.6:
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	callq	getObjectReadOnlyString
	movq	%rax, %r14
	movl	64(%rbx), %eax
	leal	-4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB17_7
# %bb.9:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB17_34
# %bb.10:
	cmpl	$5, 64(%rbx)
	jne	.LBB17_13
# %bb.11:
	movq	72(%rbx), %rax
	movq	32(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB17_34
# %bb.12:
	movl	$1, %r15d
	jmp	.LBB17_14
.LBB17_4:
	xorl	%eax, %eax
	cmpq	-64(%rbp), %rax
	sbbq	%rsi, %rsi
.LBB17_32:
	movq	%rbx, %rdi
.LBB17_33:
	callq	addReplyLongLong
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_7:
	cmpl	$3, %eax
	jne	.LBB17_35
# %bb.8:
	movq	$0, -56(%rbp)
	movq	-48(%rbp), %r12
	addq	$-1, %r12
	movq	%r12, -40(%rbp)
	xorl	%eax, %eax
	xorl	%r15d, %r15d
	jmp	.LBB17_24
.LBB17_35:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB17_34
.LBB17_13:
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	xorl	%r15d, %r15d
.LBB17_14:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jns	.LBB17_16
# %bb.15:
	addq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB17_16:
	movq	-40(%rbp), %r12
	testq	%r12, %r12
	js	.LBB17_17
# %bb.18:
	testq	%rax, %rax
	js	.LBB17_19
.LBB17_20:
	testq	%r12, %r12
	js	.LBB17_21
.LBB17_22:
	movq	-48(%rbp), %rcx
	cmpq	%rcx, %r12
	jl	.LBB17_24
# %bb.23:
	addq	$-1, %rcx
	movq	%rcx, -40(%rbp)
	movq	%rcx, %r12
.LBB17_24:
	subq	%rax, %r12
	jl	.LBB17_25
# %bb.26:
	leaq	1(%r12), %rsi
	addq	%rax, %r14
	movl	-64(%rbp), %edx
	movq	%r14, %rdi
	callq	redisBitpos
	leaq	8(,%r12,8), %rcx
	cmpq	%rcx, %rax
	jne	.LBB17_29
# %bb.27:
	testl	%r15d, %r15d
	je	.LBB17_29
# %bb.28:
	cmpq	$0, -64(%rbp)
	jne	.LBB17_29
.LBB17_25:
	movq	%rbx, %rdi
	movq	$-1, %rsi
	jmp	.LBB17_33
.LBB17_29:
	cmpq	$-1, %rax
	je	.LBB17_30
# %bb.31:
	movq	-56(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rsi
	jmp	.LBB17_32
.LBB17_17:
	addq	-48(%rbp), %r12
	movq	%r12, -40(%rbp)
	testq	%rax, %rax
	jns	.LBB17_20
.LBB17_19:
	movq	$0, -56(%rbp)
	xorl	%eax, %eax
	testq	%r12, %r12
	jns	.LBB17_22
.LBB17_21:
	movq	$0, -40(%rbp)
	xorl	%r12d, %r12d
	jmp	.LBB17_22
.LBB17_30:
	movq	$-1, %rsi
	jmp	.LBB17_32
.Lfunc_end17:
	.size	bitposCommand, .Lfunc_end17-bitposCommand
                                        # -- End function
	.globl	bitfieldCommand         # -- Begin function bitfieldCommand
	.p2align	4, 0x90
	.type	bitfieldCommand,@function
bitfieldCommand:                        # @bitfieldCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rdi, %r15
	movl	64(%rdi), %edx
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, %r13d
	cmpl	$3, %edx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jl	.LBB18_37
# %bb.1:
	movl	$1, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$2, %r13d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movl	%r13d, %r14d
	notl	%r14d
	movl	%edx, -104(%rbp)        # 4-byte Spill
	addl	%edx, %r14d
	movq	72(%r15), %r15
	movslq	%r13d, %rax
	movq	%rax, %r12
	movq	(%r15,%rax,8), %rax
	movq	8(%rax), %rbx
	movq	$0, -72(%rbp)
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r14d
	jl	.LBB18_4
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$0, -80(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB18_18
.LBB18_4:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r14d
	jl	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$1, -80(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB18_18
.LBB18_6:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r14d
	jl	.LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$2, -80(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	jne	.LBB18_8
	.p2align	4, 0x90
.LBB18_18:                              #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r15,%r12,8), %rax
	movq	%r12, %r15
	movq	8(%rax), %rbx
	movzbl	(%rbx), %eax
	movl	$1, %r14d
	cmpb	$105, %al
	je	.LBB18_21
# %bb.19:                               #   in Loop: Header=BB18_2 Depth=1
	cmpb	$117, %al
	jne	.LBB18_27
# %bb.20:                               #   in Loop: Header=BB18_2 Depth=1
	xorl	%r14d, %r14d
.LBB18_21:                              #   in Loop: Header=BB18_2 Depth=1
	addq	$1, %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	leaq	-160(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB18_27
# %bb.22:                               #   in Loop: Header=BB18_2 Depth=1
	movq	-160(%rbp), %r12
	testq	%r12, %r12
	jle	.LBB18_27
# %bb.23:                               #   in Loop: Header=BB18_2 Depth=1
	testl	%r14d, %r14d
	je	.LBB18_25
# %bb.24:                               #   in Loop: Header=BB18_2 Depth=1
	cmpq	$64, %r12
	jg	.LBB18_27
.LBB18_25:                              #   in Loop: Header=BB18_2 Depth=1
	testl	%r14d, %r14d
	jne	.LBB18_28
# %bb.26:                               #   in Loop: Header=BB18_2 Depth=1
	cmpq	$64, %r12
	jge	.LBB18_27
.LBB18_28:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	72(%rdi), %rax
	movq	16(%rax,%r15,8), %rsi
	leaq	-136(%rbp), %rdx
	movl	$1, %ecx
	movl	%r12d, %r8d
	callq	getBitOffsetFromArgument
	testl	%eax, %eax
	jne	.LBB18_29
# %bb.30:                               #   in Loop: Header=BB18_2 Depth=1
	movl	%r14d, -104(%rbp)       # 4-byte Spill
	movq	-136(%rbp), %r14
	cmpl	$0, -80(%rbp)           # 4-byte Folded Reload
	je	.LBB18_31
# %bb.32:                               #   in Loop: Header=BB18_2 Depth=1
	movslq	%r12d, %rax
	addq	%r14, %rax
	addq	$-1, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovbq	%rax, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	72(%r15), %rax
	movq	24(%rax,%rcx,8), %rsi
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	leaq	-72(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB18_33
	jmp	.LBB18_29
	.p2align	4, 0x90
.LBB18_31:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB18_33:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	%eax, %rbx
	addl	$1, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	shlq	$5, %rbx
	leaq	32(%rbx), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	zrealloc
	movq	%r14, (%rax,%rbx)
	movq	-72(%rbp), %rcx
	movq	%rcx, 8(%rax,%rbx)
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	%edx, 16(%rax,%rbx)
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 20(%rax,%rbx)
	movl	%r12d, 24(%rax,%rbx)
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 28(%rax,%rbx)
	cmpl	$1, %edx
	sbbl	$0, %r13d
	addl	$3, %r13d
	movl	64(%r15), %edx
.LBB18_34:                              #   in Loop: Header=BB18_2 Depth=1
	addl	$1, %r13d
	cmpl	%r13d, %edx
	jg	.LBB18_2
	jmp	.LBB18_35
.LBB18_8:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%r14d, %r14d
	jle	.LBB18_17
# %bb.9:                                #   in Loop: Header=BB18_2 Depth=1
	testl	%eax, %eax
	jne	.LBB18_17
# %bb.10:                               #   in Loop: Header=BB18_2 Depth=1
	leal	1(%r12), %r13d
	movq	8(%r15,%r12,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB18_11
# %bb.12:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB18_13
# %bb.14:                               #   in Loop: Header=BB18_2 Depth=1
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$2, -88(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB18_15
	jmp	.LBB18_16
.LBB18_11:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	jmp	.LBB18_15
.LBB18_13:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
.LBB18_15:                              #   in Loop: Header=BB18_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	jmp	.LBB18_34
.LBB18_27:
	movl	$.L.str.6, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_162
.LBB18_29:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_162
.LBB18_35:
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB18_40
# %bb.36:
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB18_37:
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rsi
	movq	%r15, %r14
	callq	lookupKeyRead
	testq	%rax, %rax
	je	.LBB18_38
# %bb.39:
	movq	%r14, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	testl	%eax, %eax
	jne	.LBB18_161
	jmp	.LBB18_41
.LBB18_38:
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB18_41:
	movq	-120(%rbp), %r15        # 8-byte Reload
	movslq	%r15d, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyMultiBulkLen
	testl	%ebx, %ebx
	jle	.LBB18_161
# %bb.42:
	movl	%r15d, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $rax
                                        # kill: killed $rax
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_43
.LBB18_140:                             #   in Loop: Header=BB18_43 Depth=1
	xorl	%eax, %eax
.LBB18_147:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rdx
	movl	%r9d, %ecx
	shlq	%cl, %rdx
	leal	-1(%r9), %ecx
	movzbl	%cl, %ecx
	btq	%rcx, %rax
	movl	$0, %esi
	cmovbq	%rdx, %rsi
	orq	%rax, %rsi
.LBB18_156:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	addReplyLongLong
.LBB18_157:                             #   in Loop: Header=BB18_43 Depth=1
	movq	-80(%rbp), %rdi         # 8-byte Reload
.LBB18_158:                             #   in Loop: Header=BB18_43 Depth=1
	addq	$1, %r14
	cmpq	-120(%rbp), %r14        # 8-byte Folded Reload
	je	.LBB18_159
.LBB18_43:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_144 Depth 2
                                        #     Child Loop BB18_153 Depth 2
                                        #     Child Loop BB18_50 Depth 2
                                        #     Child Loop BB18_92 Depth 2
                                        #     Child Loop BB18_100 Depth 2
                                        #     Child Loop BB18_128 Depth 2
	movq	%r14, %r15
	shlq	$5, %r15
	leaq	(%r15,%r13), %r12
	movl	16(%r13,%r15), %r8d
	leal	-1(%r8), %eax
	cmpl	$1, %eax
	ja	.LBB18_131
# %bb.44:                               #   in Loop: Header=BB18_43 Depth=1
	cmpl	$0, 28(%r13,%r15)
	movq	8(%rdi), %r11
	movq	(%r12), %rdx
	leaq	24(%r13,%r15), %rax
	movslq	24(%r13,%r15), %r9
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB18_95
# %bb.45:                               #   in Loop: Header=BB18_43 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_46
# %bb.47:                               #   in Loop: Header=BB18_43 Depth=1
	movl	%r9d, %r10d
	andl	$1, %r10d
	cmpl	$1, %r9d
	jne	.LBB18_49
# %bb.48:                               #   in Loop: Header=BB18_43 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB18_51
	.p2align	4, 0x90
.LBB18_131:                             #   in Loop: Header=BB18_43 Depth=1
	movq	$0, -128(%rbp)
	testq	%rdi, %rdi
	je	.LBB18_132
# %bb.133:                              #   in Loop: Header=BB18_43 Depth=1
	leaq	-128(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	callq	getObjectReadOnlyString
	movq	%rax, %r13
	jmp	.LBB18_134
.LBB18_95:                              #   in Loop: Header=BB18_43 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_96
# %bb.97:                               #   in Loop: Header=BB18_43 Depth=1
	movl	%r9d, %r10d
	andl	$1, %r10d
	cmpl	$1, %r9d
	jne	.LBB18_99
# %bb.98:                               #   in Loop: Header=BB18_43 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_101
.LBB18_132:                             #   in Loop: Header=BB18_43 Depth=1
	xorl	%r13d, %r13d
.LBB18_134:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$9, %edx
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	(%r12), %rcx
	movq	%rcx, %r11
	testq	%r13, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB18_138
# %bb.135:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%rcx, %rax
	shrq	$3, %rax
	movq	-128(%rbp), %rdx
	cmpq	%rdx, %rax
	jae	.LBB18_137
# %bb.136:                              #   in Loop: Header=BB18_43 Depth=1
	movb	(%r13,%rax), %bl
	movb	%bl, -72(%rbp)
	leaq	1(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.163:                              #   in Loop: Header=BB18_43 Depth=1
	movb	1(%r13,%rax), %bl
	movb	%bl, -71(%rbp)
	leaq	2(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.164:                              #   in Loop: Header=BB18_43 Depth=1
	movb	2(%r13,%rax), %bl
	movb	%bl, -70(%rbp)
	leaq	3(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.165:                              #   in Loop: Header=BB18_43 Depth=1
	movb	3(%r13,%rax), %bl
	movb	%bl, -69(%rbp)
	leaq	4(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.166:                              #   in Loop: Header=BB18_43 Depth=1
	movb	4(%r13,%rax), %bl
	movb	%bl, -68(%rbp)
	leaq	5(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.167:                              #   in Loop: Header=BB18_43 Depth=1
	movb	5(%r13,%rax), %bl
	movb	%bl, -67(%rbp)
	leaq	6(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.168:                              #   in Loop: Header=BB18_43 Depth=1
	movb	6(%r13,%rax), %bl
	movb	%bl, -66(%rbp)
	leaq	7(%rax), %rsi
	cmpq	%rdx, %rsi
	jae	.LBB18_137
# %bb.169:                              #   in Loop: Header=BB18_43 Depth=1
	movb	7(%r13,%rax), %bl
	movb	%bl, -65(%rbp)
	addq	$8, %rax
	cmpq	%rdx, %rax
	jae	.LBB18_137
# %bb.170:                              #   in Loop: Header=BB18_43 Depth=1
	movb	(%r13,%rax), %al
	movb	%al, -64(%rbp)
	.p2align	4, 0x90
.LBB18_137:                             #   in Loop: Header=BB18_43 Depth=1
	movq	(%r12), %r11
.LBB18_138:                             #   in Loop: Header=BB18_43 Depth=1
	andq	$-8, %rcx
	subq	%rcx, %r11
	movq	-48(%rbp), %r13         # 8-byte Reload
	cmpl	$0, 28(%r13,%r15)
	movslq	24(%r13,%r15), %r9
	je	.LBB18_148
# %bb.139:                              #   in Loop: Header=BB18_43 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_140
# %bb.141:                              #   in Loop: Header=BB18_43 Depth=1
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB18_143
# %bb.142:                              #   in Loop: Header=BB18_43 Depth=1
	xorl	%eax, %eax
	jmp	.LBB18_145
.LBB18_148:                             #   in Loop: Header=BB18_43 Depth=1
	testl	%r9d, %r9d
	je	.LBB18_149
# %bb.150:                              #   in Loop: Header=BB18_43 Depth=1
	movl	%r9d, %r8d
	andl	$1, %r8d
	cmpl	$1, %r9d
	jne	.LBB18_152
# %bb.151:                              #   in Loop: Header=BB18_43 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_154
.LBB18_46:                              #   in Loop: Header=BB18_43 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB18_53
.LBB18_49:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r10, %rsi
	subq	%r9, %rsi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB18_50:                              #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	movl	%edx, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rax
	leaq	1(%rdx), %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movzbl	(%r11,%rdi), %edi
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdi
	andl	$1, %eax
	andl	$1, %edi
	addq	%rax, %rax
	leaq	(%rax,%rbx,4), %rbx
	orq	%rdi, %rbx
	addq	$2, %rdx
	addq	$2, %rsi
	jne	.LBB18_50
.LBB18_51:                              #   in Loop: Header=BB18_43 Depth=1
	testq	%r10, %r10
	je	.LBB18_53
# %bb.52:                               #   in Loop: Header=BB18_43 Depth=1
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	notb	%dl
	andb	$7, %dl
	movl	%edx, %ecx
	shrq	%cl, %rax
	andl	$1, %eax
	leaq	(%rax,%rbx,2), %rbx
.LBB18_53:                              #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r9), %rdx
	movl	$1, %r13d
	movl	%edx, %ecx
	shlq	%cl, %r13
	movq	$-1, %r11
	movl	%r9d, %ecx
	shlq	%cl, %r11
	btq	%rdx, %rbx
	movl	$0, %esi
	cmovbq	%r11, %rsi
	orq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax,%r15), %r10
	cmpl	$2, %r8d
	jne	.LBB18_75
# %bb.54:                               #   in Loop: Header=BB18_43 Depth=1
	leaq	(%rsi,%r10), %rdi
	movl	20(%rax,%r15), %r8d
	cmpl	$64, %r9d
	jne	.LBB18_55
# %bb.57:                               #   in Loop: Header=BB18_43 Depth=1
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	addq	$1, %rax
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	js	.LBB18_65
# %bb.58:                               #   in Loop: Header=BB18_43 Depth=1
	testq	%r10, %r10
	jle	.LBB18_65
# %bb.59:                               #   in Loop: Header=BB18_43 Depth=1
	movabsq	$9223372036854775807, %r15 # imm = 0x7FFFFFFFFFFFFFFF
	movq	%r15, %rdx
	subq	%rsi, %rdx
	cmpq	%r10, %rdx
	jl	.LBB18_61
	jmp	.LBB18_65
.LBB18_75:                              #   in Loop: Header=BB18_43 Depth=1
	cmpl	$64, %r9d
	jne	.LBB18_78
.LBB18_76:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB18_77:                              #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %r15
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_90
.LBB18_143:                             #   in Loop: Header=BB18_43 Depth=1
	movq	%r8, %rsi
	subq	%r9, %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB18_144:                             #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %rcx
	shrq	$3, %rcx
	movzbl	-72(%rbp,%rcx), %ebx
	movl	%r11d, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rbx
	leaq	1(%r11), %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movzbl	-72(%rbp,%rdx), %edx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdx
	andl	$1, %ebx
	andl	$1, %edx
	addq	%rbx, %rbx
	leaq	(%rbx,%rax,4), %rax
	orq	%rdx, %rax
	addq	$2, %r11
	addq	$2, %rsi
	jne	.LBB18_144
.LBB18_145:                             #   in Loop: Header=BB18_43 Depth=1
	testq	%r8, %r8
	je	.LBB18_147
# %bb.146:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r11, %rcx
	shrq	$3, %rcx
	movzbl	-72(%rbp,%rcx), %edx
	notb	%r11b
	andb	$7, %r11b
	movl	%r11d, %ecx
	shrq	%cl, %rdx
	andl	$1, %edx
	leaq	(%rdx,%rax,2), %rax
	jmp	.LBB18_147
.LBB18_55:                              #   in Loop: Header=BB18_43 Depth=1
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	movq	%rax, %r15
	notq	%r15
	movq	%r15, %rdx
	subq	%rsi, %rdx
	jl	.LBB18_61
# %bb.56:                               #   in Loop: Header=BB18_43 Depth=1
	movb	$1, %cl
	cmpq	%r10, %rdx
	jge	.LBB18_65
.LBB18_61:                              #   in Loop: Header=BB18_43 Depth=1
	testl	%r8d, %r8d
	je	.LBB18_74
# %bb.62:                               #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %r8d
	jne	.LBB18_72
# %bb.63:                               #   in Loop: Header=BB18_43 Depth=1
	movq	%r15, %rsi
	jmp	.LBB18_64
.LBB18_78:                              #   in Loop: Header=BB18_43 Depth=1
	movq	$-1, %rax
	movl	%edx, %ecx
	shlq	%cl, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	20(%rcx,%r15), %r8d
	movq	%rax, %r15
	notq	%r15
	cmpq	%r15, %r10
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jle	.LBB18_81
# %bb.79:                               #   in Loop: Header=BB18_43 Depth=1
	testl	%r8d, %r8d
	je	.LBB18_86
# %bb.80:                               #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %r8d
	je	.LBB18_87
	jmp	.LBB18_84
.LBB18_65:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%rax, %rdx
	subq	%rsi, %rdx
	cmpq	%r10, %rdx
	setg	%bl
	movq	%rax, %rdx
	subq	%rsi, %rdx
	jg	.LBB18_70
# %bb.66:                               #   in Loop: Header=BB18_43 Depth=1
	andb	%bl, %cl
	jne	.LBB18_70
# %bb.67:                               #   in Loop: Header=BB18_43 Depth=1
	testq	%rsi, %r10
	jns	.LBB18_68
# %bb.69:                               #   in Loop: Header=BB18_43 Depth=1
	cmpq	%r10, %rdx
	jle	.LBB18_68
.LBB18_70:                              #   in Loop: Header=BB18_43 Depth=1
	testl	%r8d, %r8d
	je	.LBB18_74
# %bb.71:                               #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %r8d
	jne	.LBB18_72
# %bb.73:                               #   in Loop: Header=BB18_43 Depth=1
	movq	%rax, %r15
	movq	%rax, %rsi
	jmp	.LBB18_64
.LBB18_96:                              #   in Loop: Header=BB18_43 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_103
.LBB18_149:                             #   in Loop: Header=BB18_43 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_156
.LBB18_99:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r10, %rbx
	subq	%r9, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_100:                             #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	movl	%edx, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rax
	leaq	1(%rdx), %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	movzbl	(%r11,%rdi), %edi
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rdi
	andl	$1, %eax
	andl	$1, %edi
	addq	%rax, %rax
	leaq	(%rax,%rsi,4), %rsi
	orq	%rdi, %rsi
	addq	$2, %rdx
	addq	$2, %rbx
	jne	.LBB18_100
.LBB18_101:                             #   in Loop: Header=BB18_43 Depth=1
	testq	%r10, %r10
	je	.LBB18_103
# %bb.102:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%rdx, %rax
	shrq	$3, %rax
	movzbl	(%r11,%rax), %eax
	notb	%dl
	andb	$7, %dl
	movl	%edx, %ecx
	shrq	%cl, %rax
	andl	$1, %eax
	leaq	(%rax,%rsi,2), %rsi
.LBB18_103:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13,%r15), %rbx
	cmpl	$2, %r8d
	jne	.LBB18_119
# %bb.104:                              #   in Loop: Header=BB18_43 Depth=1
	leaq	(%rbx,%rsi), %r8
	movl	20(%r13,%r15), %eax
	movq	$-1, %rdx
	movl	%r9d, %ecx
	shlq	%cl, %rdx
	cmpl	$64, %r9d
	notq	%rdx
	movq	%rdx, %r13
	movq	$-1, %rcx
	cmoveq	%rcx, %r13
	movq	%r13, %rcx
	subq	%rsi, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jb	.LBB18_107
# %bb.105:                              #   in Loop: Header=BB18_43 Depth=1
	testq	%rbx, %rbx
	jle	.LBB18_110
# %bb.106:                              #   in Loop: Header=BB18_43 Depth=1
	cmpq	%rbx, %rcx
	jge	.LBB18_110
.LBB18_107:                             #   in Loop: Header=BB18_43 Depth=1
	testl	%eax, %eax
	je	.LBB18_118
# %bb.108:                              #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %eax
	jne	.LBB18_116
# %bb.109:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r13, %rsi
	jmp	.LBB18_124
.LBB18_119:                             #   in Loop: Header=BB18_43 Depth=1
	movq	$-1, %rdx
	movl	%r9d, %ecx
	shlq	%cl, %rdx
	cmpl	$64, %r9d
	notq	%rdx
	movq	%rdx, %r13
	movq	$-1, %rax
	cmoveq	%rax, %r13
	cmpq	%rbx, %r13
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jae	.LBB18_112
# %bb.120:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	20(%rax,%r15), %eax
	testl	%eax, %eax
	je	.LBB18_123
# %bb.121:                              #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %eax
	je	.LBB18_124
# %bb.122:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB18_124
.LBB18_152:                             #   in Loop: Header=BB18_43 Depth=1
	movq	%r8, %r10
	subq	%r9, %r10
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB18_153:                             #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %rcx
	shrq	$3, %rcx
	movzbl	-72(%rbp,%rcx), %edx
	movl	%r11d, %ecx
	notb	%cl
	andb	$7, %cl
	shrq	%cl, %rdx
	leaq	1(%r11), %rcx
	movq	%rcx, %rbx
	shrq	$3, %rbx
	movzbl	-72(%rbp,%rbx), %ebx
	notb	%cl
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrq	%cl, %rbx
	andl	$1, %edx
	andl	$1, %ebx
	addq	%rdx, %rdx
	leaq	(%rdx,%rsi,4), %rsi
	orq	%rbx, %rsi
	addq	$2, %r11
	addq	$2, %r10
	jne	.LBB18_153
.LBB18_154:                             #   in Loop: Header=BB18_43 Depth=1
	testq	%r8, %r8
	je	.LBB18_156
# %bb.155:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r11, %rcx
	shrq	$3, %rcx
	movzbl	-72(%rbp,%rcx), %edx
	notb	%r11b
	andb	$7, %r11b
	movl	%r11d, %ecx
	shrq	%cl, %rdx
	andl	$1, %edx
	leaq	(%rdx,%rsi,2), %rsi
	jmp	.LBB18_156
.LBB18_74:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r11, %rax
	orq	%rdi, %rax
	notq	%r11
	andq	%rdi, %r11
	testq	%rdi, %r13
	cmovneq	%rax, %r11
	movq	%r11, %r15
	movq	%r11, %rsi
	jmp	.LBB18_64
.LBB18_72:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %r15
.LBB18_64:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_88
.LBB18_81:                              #   in Loop: Header=BB18_43 Depth=1
	cmpq	%r10, %rax
	jle	.LBB18_77
# %bb.82:                               #   in Loop: Header=BB18_43 Depth=1
	testl	%r8d, %r8d
	je	.LBB18_86
# %bb.83:                               #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %r8d
	jne	.LBB18_84
# %bb.85:                               #   in Loop: Header=BB18_43 Depth=1
	movq	%rax, %r15
	jmp	.LBB18_87
.LBB18_110:                             #   in Loop: Header=BB18_43 Depth=1
	testq	%rbx, %rbx
	jns	.LBB18_111
# %bb.113:                              #   in Loop: Header=BB18_43 Depth=1
	negq	%rsi
	cmpq	%rsi, %rbx
	jge	.LBB18_111
# %bb.114:                              #   in Loop: Header=BB18_43 Depth=1
	testl	%eax, %eax
	je	.LBB18_118
# %bb.115:                              #   in Loop: Header=BB18_43 Depth=1
	cmpl	$1, %eax
	jne	.LBB18_116
# %bb.117:                              #   in Loop: Header=BB18_43 Depth=1
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.LBB18_124
.LBB18_118:                             #   in Loop: Header=BB18_43 Depth=1
	andq	%rdx, %r8
	movq	%r8, %r13
	movq	%r8, %rsi
	jmp	.LBB18_124
.LBB18_116:                             #   in Loop: Header=BB18_43 Depth=1
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %r13
	jmp	.LBB18_124
.LBB18_68:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%rdi, %rsi
	movq	%rdi, %r10
	jmp	.LBB18_76
.LBB18_86:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r11, %rax
	orq	%r10, %rax
	notq	%r11
	andq	%r10, %r11
	testq	%r10, %r13
	cmovneq	%rax, %r11
	movq	%r11, %r15
	jmp	.LBB18_87
.LBB18_84:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-88(%rbp), %r15         # 8-byte Reload
.LBB18_87:                              #   in Loop: Header=BB18_43 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB18_88:                              #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r8d
	jne	.LBB18_89
# %bb.94:                               #   in Loop: Header=BB18_43 Depth=1
	movq	shared+80(%rip), %rsi
	callq	addReply
	addl	$1, -96(%rbp)           # 4-byte Folded Spill
	movq	%r15, -88(%rbp)         # 8-byte Spill
	jmp	.LBB18_157
.LBB18_89:                              #   in Loop: Header=BB18_43 Depth=1
	movq	%r15, -88(%rbp)         # 8-byte Spill
.LBB18_90:                              #   in Loop: Header=BB18_43 Depth=1
	callq	addReplyLongLong
	movq	-104(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testq	%rax, %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	je	.LBB18_93
# %bb.91:                               #   in Loop: Header=BB18_43 Depth=1
	movq	8(%rdi), %r8
	movq	(%r12), %rsi
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB18_92:                              #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	btq	%rax, %r15
	setb	%dl
	movq	%rsi, %rbx
	shrq	$3, %rbx
	movzbl	(%r8,%rbx), %r9d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	btrl	%ecx, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	orl	%r9d, %edx
	movb	%dl, (%r8,%rbx)
	addq	$1, %rsi
	addq	$-1, %rax
	jb	.LBB18_92
.LBB18_93:                              #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -96(%rbp)           # 4-byte Folded Spill
	jmp	.LBB18_158
.LBB18_123:                             #   in Loop: Header=BB18_43 Depth=1
	andq	%rdx, %rbx
	movq	%rbx, %r13
.LBB18_124:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB18_125
# %bb.130:                              #   in Loop: Header=BB18_43 Depth=1
	movq	shared+80(%rip), %rsi
	callq	addReply
	addl	$1, -96(%rbp)           # 4-byte Folded Spill
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_157
.LBB18_125:                             #   in Loop: Header=BB18_43 Depth=1
	movq	%r13, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_126
.LBB18_111:                             #   in Loop: Header=BB18_43 Depth=1
	movq	%r8, %rsi
	movq	%r8, %rbx
.LBB18_112:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
.LBB18_126:                             #   in Loop: Header=BB18_43 Depth=1
	callq	addReplyLongLong
	movq	-104(%rbp), %rax        # 8-byte Reload
	movslq	(%rax), %rax
	testq	%rax, %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	je	.LBB18_129
# %bb.127:                              #   in Loop: Header=BB18_43 Depth=1
	movq	8(%rdi), %r8
	movq	(%r12), %rsi
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB18_128:                             #   Parent Loop BB18_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	btq	%rax, %r13
	setb	%dl
	movq	%rsi, %rbx
	shrq	$3, %rbx
	movzbl	(%r8,%rbx), %r9d
	movl	%esi, %ecx
	notb	%cl
	andb	$7, %cl
	btrl	%ecx, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	orl	%r9d, %edx
	movb	%dl, (%r8,%rbx)
	addq	$1, %rsi
	addq	$-1, %rax
	jb	.LBB18_128
.LBB18_129:                             #   in Loop: Header=BB18_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -96(%rbp)           # 4-byte Folded Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB18_158
.LBB18_159:
	movl	-96(%rbp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB18_161
# %bb.160:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	movslq	%r14d, %rax
	addq	%rax, server+2080(%rip)
.LBB18_161:
	movq	%r13, %rdi
.LBB18_162:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_40:
	movq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %r14
	callq	lookupStringForBitCommand
	movq	%rax, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB18_41
	jmp	.LBB18_161
.LBB18_17:
	movq	shared+128(%rip), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_162
.LBB18_16:
	movl	$.L.str.24, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReplyError
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB18_162
.Lfunc_end18:
	.size	bitfieldCommand, .Lfunc_end18-bitfieldCommand
                                        # -- End function
	.type	redisPopcount.bitsinbyte,@object # @redisPopcount.bitsinbyte
	.section	.rodata,"a",@progbits
	.p2align	4
redisPopcount.bitsinbyte:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	redisPopcount.bitsinbyte, 256

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bitops.c"
	.size	.L.str, 74

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"End of redisBitpos() reached."
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%c"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"|"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"bit offset is not an integer or out of range"
	.size	.L.str.5, 45

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is."
	.size	.L.str.6, 93

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"o->type == OBJ_STRING"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"bit is not an integer or out of range"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"setbit"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"and"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"or"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"xor"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"not"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"BITOP NOT must be called with a single source key."
	.size	.L.str.14, 51

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"set"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"del"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The bit argument must be 1 or 0."
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"get"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"incrby"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"overflow"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"wrap"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sat"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"fail"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Invalid OVERFLOW type specified"
	.size	.L.str.24, 32

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
