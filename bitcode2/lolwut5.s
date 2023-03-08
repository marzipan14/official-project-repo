	.text
	.file	"lolwut5.c"
	.globl	lwTranslatePixelsGroup  # -- Begin function lwTranslatePixelsGroup
	.p2align	4, 0x90
	.type	lwTranslatePixelsGroup,@function
lwTranslatePixelsGroup:                 # @lwTranslatePixelsGroup
# %bb.0:
	addl	$10240, %edi            # imm = 0x2800
	movl	%edi, %eax
	shrl	$12, %eax
	orb	$-32, %al
	movb	%al, (%rsi)
	movl	%edi, %eax
	shrl	$6, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 1(%rsi)
	andb	$63, %dil
	orb	$-128, %dil
	movb	%dil, 2(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	lwTranslatePixelsGroup, .Lfunc_end0-lwTranslatePixelsGroup
                                        # -- End function
	.globl	lwCreateCanvas          # -- Begin function lwCreateCanvas
	.p2align	4, 0x90
	.type	lwCreateCanvas,@function
lwCreateCanvas:                         # @lwCreateCanvas
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	movl	%r14d, (%rax)
	movl	%ebx, 4(%rax)
	imull	%r14d, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, 8(%r15)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lwCreateCanvas, .Lfunc_end1-lwCreateCanvas
                                        # -- End function
	.globl	lwFreeCanvas            # -- Begin function lwFreeCanvas
	.p2align	4, 0x90
	.type	lwFreeCanvas,@function
lwFreeCanvas:                           # @lwFreeCanvas
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lwFreeCanvas, .Lfunc_end2-lwFreeCanvas
                                        # -- End function
	.globl	lwDrawPixel             # -- Begin function lwDrawPixel
	.p2align	4, 0x90
	.type	lwDrawPixel,@function
lwDrawPixel:                            # @lwDrawPixel
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB3_5
# %bb.1:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB3_5
# %bb.2:
	cmpl	%esi, %eax
	jle	.LBB3_5
# %bb.3:
	cmpl	%edx, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB3_5
# %bb.4:
	movq	8(%rdi), %rdi
	imull	%edx, %eax
	addl	%esi, %eax
	cltq
	movb	%cl, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	lwDrawPixel, .Lfunc_end3-lwDrawPixel
                                        # -- End function
	.globl	lwGetPixel              # -- Begin function lwGetPixel
	.p2align	4, 0x90
	.type	lwGetPixel,@function
lwGetPixel:                             # @lwGetPixel
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB4_5
# %bb.1:
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB4_5
# %bb.2:
	cmpl	%esi, %ecx
	jle	.LBB4_5
# %bb.3:
	cmpl	%edx, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB4_5
# %bb.4:
	movq	8(%rdi), %rax
	imull	%edx, %ecx
	addl	%esi, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	lwGetPixel, .Lfunc_end4-lwGetPixel
                                        # -- End function
	.globl	lwDrawLine              # -- Begin function lwDrawLine
	.p2align	4, 0x90
	.type	lwDrawLine,@function
lwDrawLine:                             # @lwDrawLine
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%eax, %eax
	subl	%edx, %r8d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	setg	%al
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movl	%ecx, %edi
	subl	%esi, %edi
	setg	%al
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	abs
	movl	%eax, %r15d
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	abs
	movl	-48(%rbp), %r11d        # 4-byte Reload
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx), %r8d
	addl	$-1, %r8d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx), %r9d
	addl	$-1, %r9d
	movl	%r15d, %esi
	subl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edi
	negl	%edi
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB5_6
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB5_6
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	cmpl	%ebx, %ecx
	jle	.LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	cmpl	%r13d, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	movq	8(%r14), %rdx
	imull	%r13d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movb	%r10b, (%rdx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jne	.LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r11d, %r13d
	je	.LBB5_13
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	leal	(%rsi,%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %ecx
	jle	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_1 Depth=1
	subl	%eax, %esi
	addl	%r8d, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:                               #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ecx
	jge	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_1 Depth=1
	addl	%r15d, %esi
	addl	%r9d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_12
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lwDrawLine, .Lfunc_end5-lwDrawLine
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function lwDrawSquare
.LCPI6_0:
	.quad	4609047870844843494     # double 1.4142135623000001
.LCPI6_1:
	.quad	4605249457297304856     # double 0.78539816339744828
.LCPI6_2:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.globl	lwDrawSquare
	.p2align	4, 0x90
	.type	lwDrawSquare,@function
lwDrawSquare:                           # @lwDrawSquare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	cvtss2sd	%xmm0, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	movss	%xmm1, -56(%rbp)        # 4-byte Spill
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	round
	cvtsd2ss	%xmm0, %xmm0
	movss	-56(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI6_1(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cvtsi2sd	%ebx, %xmm2
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r15d, %xmm2
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	sin
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %ebx
	movl	%ebx, -112(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %r13d
	movl	%r13d, -96(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI6_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	sin
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -108(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI6_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	sin
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI6_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	sin
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	mulsd	-56(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	-72(%rbp), %xmm0        # 8-byte Folded Reload
	callq	round
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$1, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movl	-112(%rbp,%rax,4), %r15d
	movl	-96(%rbp,%rax,4), %r14d
	xorl	%eax, %eax
	movl	%r14d, %ecx
	subl	%r13d, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	setg	%al
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movl	%r15d, %edi
	subl	%ebx, %edi
	setg	%al
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	abs
	movl	%eax, %r12d
	movl	-48(%rbp), %edi         # 4-byte Reload
	callq	abs
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx), %r8d
	addl	$-1, %r8d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx), %r9d
	addl	$-1, %r9d
	movl	%r12d, %esi
	subl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r10d
	negl	%r10d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_13:                               #   in Loop: Header=BB6_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB6_7
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=2
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB6_7
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=2
	cmpl	%ebx, %ecx
	jle	.LBB6_7
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=2
	cmpl	%r13d, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_2 Depth=2
	movq	8(%rdi), %rdx
	imull	%r13d, %ecx
	addl	%ebx, %ecx
	movslq	%ecx, %rcx
	movb	$1, (%rdx,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebx
	jne	.LBB6_9
# %bb.8:                                #   in Loop: Header=BB6_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r13d
	je	.LBB6_14
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=2
	leal	(%rsi,%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %ecx
	jle	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_2 Depth=2
	subl	%eax, %esi
	addl	%r8d, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ecx
	jge	.LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_2 Depth=2
	addl	%r12d, %esi
	addl	%r9d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_14:                               #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	$4, %rcx
	je	.LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	-108(%rbp,%rax,4), %ebx
	movl	-92(%rbp,%rax,4), %r13d
	movq	%rcx, %rax
	jmp	.LBB6_1
.LBB6_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lwDrawSquare, .Lfunc_end6-lwDrawSquare
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function lwDrawSchotter
.LCPI7_0:
	.long	1056964608              # float 0.5
.LCPI7_1:
	.long	805306368               # float 4.65661287E-10
.LCPI7_3:
	.long	1077936128              # float 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI7_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	lwDrawSchotter
	.p2align	4, 0x90
	.type	lwDrawSchotter,@function
lwDrawSchotter:                         # @lwDrawSchotter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
                                        # kill: def $edi killed $edi def $rdi
	leal	(%rdi,%rdi), %ebx
	xorl	%r14d, %r14d
	cmpl	$2, %edi
	setg	%r14b
	leal	(,%r14,4), %eax
	movl	%ebx, %ecx
	subl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm1
	movl	%esi, %r15d
	cvtsi2ss	%esi, %xmm0
	movl	%edx, -56(%rbp)         # 4-byte Spill
	cvtsi2ss	%edx, %xmm2
	divss	%xmm0, %xmm1
	movss	%xmm1, -44(%rbp)        # 4-byte Spill
	movaps	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	%xmm2, -48(%rbp)        # 4-byte Spill
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r13d
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r12
	movl	%ebx, (%rax)
	movl	%r13d, 4(%rax)
	imull	%r13d, %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdi
	callq	zmalloc
	movq	%rax, 8(%r12)
	xorl	%r13d, %r13d
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -56(%rbp)           # 4-byte Folded Reload
	jle	.LBB7_7
# %bb.1:
	addl	%r14d, %r14d
	movss	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtsi2ss	%r14d, %xmm2
	movss	%xmm2, -60(%rbp)        # 4-byte Spill
	mulss	%xmm0, %xmm1
	movss	%xmm1, -64(%rbp)        # 4-byte Spill
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-56(%rbp), %r13d        # 4-byte Folded Reload
	je	.LBB7_7
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB7_6
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2ss	%r13d, %xmm2
	movaps	%xmm0, %xmm1
	movss	%xmm2, -52(%rbp)        # 4-byte Spill
	mulss	%xmm2, %xmm1
	addss	-64(%rbp), %xmm1        # 4-byte Folded Reload
	addss	-60(%rbp), %xmm1        # 4-byte Folded Reload
	cvttss2si	%xmm1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	%xmm1, -100(%rbp)       # 4-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=2
	movl	-104(%rbp), %edx        # 4-byte Reload
.LBB7_16:                               #   in Loop: Header=BB7_4 Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	movaps	%xmm3, %xmm1
	callq	lwDrawSquare
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r15d
	je	.LBB7_6
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r14d, %xmm1
	mulss	%xmm0, %xmm1
	addss	-64(%rbp), %xmm1        # 4-byte Folded Reload
	addss	-60(%rbp), %xmm1        # 4-byte Folded Reload
	cvttss2si	%xmm1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm3, %xmm3
	cmpl	$2, %r13d
	jb	.LBB7_5
# %bb.8:                                #   in Loop: Header=BB7_4 Depth=2
	callq	rand
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	divss	-48(%rbp), %xmm1        # 4-byte Folded Reload
	mulss	-52(%rbp), %xmm1        # 4-byte Folded Reload
	movaps	%xmm1, -128(%rbp)       # 16-byte Spill
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	.LCPI7_1(%rip), %xmm0
	divss	-48(%rbp), %xmm0        # 4-byte Folded Reload
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	.LCPI7_1(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	callq	rand
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_4 Depth=2
	movaps	-128(%rbp), %xmm0       # 16-byte Reload
	xorps	.LCPI7_2(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)       # 16-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=2
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	movaps	-80(%rbp), %xmm1        # 16-byte Reload
	divss	-48(%rbp), %xmm1        # 4-byte Folded Reload
	movaps	%xmm1, -80(%rbp)        # 16-byte Spill
	mulss	-52(%rbp), %xmm0        # 4-byte Folded Reload
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	callq	rand
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=2
	movaps	-96(%rbp), %xmm0        # 16-byte Reload
	xorps	.LCPI7_2(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)        # 16-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB7_12:                               #   in Loop: Header=BB7_4 Depth=2
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	mulss	-52(%rbp), %xmm0        # 4-byte Folded Reload
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	callq	rand
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_4 Depth=2
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movaps	-128(%rbp), %xmm3       # 16-byte Reload
	movaps	-96(%rbp), %xmm4        # 16-byte Reload
	movaps	-80(%rbp), %xmm5        # 16-byte Reload
	jmp	.LBB7_15
	.p2align	4, 0x90
.LBB7_14:                               #   in Loop: Header=BB7_4 Depth=2
	movaps	-80(%rbp), %xmm5        # 16-byte Reload
	xorps	.LCPI7_2(%rip), %xmm5
	movl	$42, __A_VARIABLE(%rip)
	movss	-44(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movaps	-128(%rbp), %xmm3       # 16-byte Reload
	movaps	-96(%rbp), %xmm4        # 16-byte Reload
.LBB7_15:                               #   in Loop: Header=BB7_4 Depth=2
	mulss	%xmm0, %xmm4
	movss	.LCPI7_3(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm4
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ebx, %xmm1
	addss	%xmm4, %xmm1
	cvttss2si	%xmm1, %ebx
	mulss	%xmm0, %xmm5
	divss	%xmm2, %xmm5
	addss	-100(%rbp), %xmm5       # 4-byte Folded Reload
	cvttss2si	%xmm5, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_16
.LBB7_7:
	movq	%r12, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lwDrawSchotter, .Lfunc_end7-lwDrawSchotter
                                        # -- End function
	.globl	lwRenderCanvas          # -- Begin function lwRenderCanvas
	.p2align	4, 0x90
	.type	lwRenderCanvas,@function
lwRenderCanvas:                         # @lwRenderCanvas
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r13
	callq	sdsempty
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB8_10
# %bb.1:
	xorl	%r15d, %r15d
	movl	$3, -56(%rbp)           # 4-byte Folded Spill
	movl	$2, -52(%rbp)           # 4-byte Folded Spill
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	addl	$4, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$4, -56(%rbp)           # 4-byte Folded Spill
	addl	$4, -52(%rbp)           # 4-byte Folded Spill
	addl	$4, -48(%rbp)           # 4-byte Folded Spill
	cmpl	%ecx, %r15d
	jge	.LBB8_10
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	movl	(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB8_7
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movl	%r15d, %esi
	orl	$1, %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%r15d, %esi
	orl	$2, %esi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%r15d, %r14d
	orl	$3, %r14d
	xorl	%edi, %edi
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_50:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_53:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_54:                               #   in Loop: Header=BB8_4 Depth=2
	leal	10240(%rsi), %ecx
	movb	$-30, -43(%rbp)
	shrl	$6, %ecx
	movb	%cl, -42(%rbp)
	andb	$63, %sil
	orb	$-128, %sil
	movb	%sil, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %edx
	movq	%rax, %rdi
	leaq	-43(%rbp), %rsi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %ecx
	addl	$1, %r12d
	movl	%r12d, %edi
	cmpl	%edx, %r12d
	jge	.LBB8_7
.LBB8_4:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ecx
	jle	.LBB8_5
# %bb.11:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %rsi
	movl	%r15d, %ebx
	imull	%edx, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%rsi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	jne	.LBB8_6
# %bb.12:                               #   in Loop: Header=BB8_4 Depth=2
	xorl	%esi, %esi
	jmp	.LBB8_13
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB8_6:                                #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_13:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	jg	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_21
	.p2align	4, 0x90
.LBB8_15:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-64(%rbp), %ecx         # 4-byte Folded Reload
	jle	.LBB8_18
# %bb.16:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	-48(%rbp), %ebx         # 4-byte Reload
	imull	%edx, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_20
# %bb.17:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$2, %esi
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_18:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_19:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_20:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-60(%rbp), %ecx         # 4-byte Folded Reload
	jle	.LBB8_21
# %bb.22:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	-52(%rbp), %ebx         # 4-byte Reload
	imull	%edx, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$4, %esi
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_21:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_24:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_25:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %edx
	jg	.LBB8_27
# %bb.26:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_38
	.p2align	4, 0x90
.LBB8_27:                               #   in Loop: Header=BB8_4 Depth=2
	cmpl	%r15d, %ecx
	jle	.LBB8_30
# %bb.28:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	%r15d, %ebx
	imull	%edx, %ebx
	addl	%edi, %ebx
	addl	$1, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_32
# %bb.29:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$8, %esi
	jmp	.LBB8_31
	.p2align	4, 0x90
.LBB8_30:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_31:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_32:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-64(%rbp), %ecx         # 4-byte Folded Reload
	jle	.LBB8_35
# %bb.33:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	-48(%rbp), %ebx         # 4-byte Reload
                                        # kill: def $ebx killed $ebx def $rbx
	imull	%edx, %ebx
	addl	%edi, %ebx
	addl	$1, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_37
# %bb.34:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$16, %esi
	jmp	.LBB8_36
	.p2align	4, 0x90
.LBB8_35:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_36:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_37:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-60(%rbp), %ecx         # 4-byte Folded Reload
	jle	.LBB8_38
# %bb.39:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	-52(%rbp), %ebx         # 4-byte Reload
                                        # kill: def $ebx killed $ebx def $rbx
	imull	%edx, %ebx
	addl	%edi, %ebx
	addl	$1, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_42
# %bb.40:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$32, %esi
	jmp	.LBB8_41
	.p2align	4, 0x90
.LBB8_38:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_41:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_42:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	jle	.LBB8_44
# %bb.43:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %ecx
	jle	.LBB8_44
# %bb.45:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %r8
	movl	-56(%rbp), %ebx         # 4-byte Reload
	imull	%edx, %ebx
	addl	%edi, %ebx
	movslq	%ebx, %rbx
	cmpb	$0, (%r8,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_48
# %bb.46:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$64, %esi
	jmp	.LBB8_47
	.p2align	4, 0x90
.LBB8_44:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_47:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB8_48:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %edx
	jle	.LBB8_50
# %bb.49:                               #   in Loop: Header=BB8_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %ecx
	jle	.LBB8_50
# %bb.51:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r13), %rcx
	imull	-56(%rbp), %edx         # 4-byte Folded Reload
	addl	%edi, %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpb	$0, (%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_54
# %bb.52:                               #   in Loop: Header=BB8_4 Depth=2
	orl	$128, %esi
	jmp	.LBB8_53
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	leal	-1(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r15d
	je	.LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %ecx
	jmp	.LBB8_9
.LBB8_10:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lwRenderCanvas, .Lfunc_end8-lwRenderCanvas
                                        # -- End function
	.globl	lolwut5Command          # -- Begin function lolwut5Command
	.p2align	4, 0x90
	.type	lolwut5Command,@function
lolwut5Command:                         # @lolwut5Command
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r14
	movq	$66, -40(%rbp)
	movq	$8, -32(%rbp)
	movq	$12, -24(%rbp)
	cmpl	$1, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB9_1
# %bb.3:
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_24
# %bb.4:
	cmpl	$3, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB9_2
# %bb.5:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_24
# %bb.6:
	cmpl	$4, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB9_8
# %bb.7:
	movq	72(%r14), %rax
	movq	24(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_24
	jmp	.LBB9_8
.LBB9_1:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_8:
	movq	-40(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jle	.LBB9_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1001, %rdi             # imm = 0x3E9
	jl	.LBB9_13
# %bb.11:
	movq	$1000, -40(%rbp)        # imm = 0x3E8
	movl	$1000, %edi             # imm = 0x3E8
	jmp	.LBB9_12
.LBB9_9:
	movq	$1, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_13:
	movq	-32(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB9_14
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$201, %rsi
	jl	.LBB9_18
# %bb.16:
	movq	$200, -32(%rbp)
	movl	$200, %esi
	jmp	.LBB9_17
.LBB9_14:
	movq	$1, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
.LBB9_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_18:
	movq	-24(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB9_19
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$201, %rdx
	jl	.LBB9_23
# %bb.21:
	movq	$200, -24(%rbp)
	movl	$200, %edx
	jmp	.LBB9_22
.LBB9_19:
	movq	$1, -24(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB9_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:
                                        # kill: def $edi killed $edi killed $rdi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	lwDrawSchotter
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	lwRenderCanvas
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	sdscat
	movl	$.L.str, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkSds
	movq	8(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB9_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lolwut5Command, .Lfunc_end9-lolwut5Command
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\nGeorg Nees - schotter, plotter on paper, 1968. Redis ver. "
	.size	.L.str.1, 60

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"5.0.6"
	.size	.L.str.2, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
