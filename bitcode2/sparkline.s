	.text
	.file	"sparkline.c"
	.globl	createSparklineSequence # -- Begin function createSparklineSequence
	.p2align	4, 0x90
	.type	createSparklineSequence,@function
createSparklineSequence:                # @createSparklineSequence
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$32, %edi
	callq	zmalloc
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	createSparklineSequence, .Lfunc_end0-createSparklineSequence
                                        # -- End function
	.globl	sparklineSequenceAddSample # -- Begin function sparklineSequenceAddSample
	.p2align	4, 0x90
	.type	sparklineSequenceAddSample,@function
sparklineSequenceAddSample:             # @sparklineSequenceAddSample
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	je	.LBB1_4
# %bb.1:
	cmpb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_4
# %bb.2:
	movq	%rsi, %rdi
	callq	zstrdup
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_5
.LBB1_4:
	xorl	%r14d, %r14d
.LBB1_5:
	movslq	(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_8
# %bb.6:
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB1_9
# %bb.7:
	leaq	16(%rbx), %rax
	jmp	.LBB1_11
.LBB1_8:
	movsd	%xmm0, 24(%rbx)
	leaq	16(%rbx), %rax
	jmp	.LBB1_11
.LBB1_9:
	ucomisd	24(%rbx), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB1_12
# %bb.10:
	leaq	24(%rbx), %rax
.LBB1_11:
	movsd	%xmm0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movq	8(%rbx), %rdi
	shlq	$4, %rsi
	addq	$16, %rsi
	callq	zrealloc
	movq	%rax, 8(%rbx)
	movslq	(%rbx), %rcx
	leal	1(%rcx), %edx
	shlq	$4, %rcx
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx)
	movq	%r14, 8(%rax,%rcx)
	movl	%edx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_14
# %bb.13:
	addl	$1, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sparklineSequenceAddSample, .Lfunc_end1-sparklineSequenceAddSample
                                        # -- End function
	.globl	freeSparklineSequence   # -- Begin function freeSparklineSequence
	.p2align	4, 0x90
	.type	freeSparklineSequence,@function
freeSparklineSequence:                  # @freeSparklineSequence
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB2_3
# %bb.1:                                # %.preheader
	movl	$8, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r15), %rdi
	callq	zfree
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r14), %rax
	movq	8(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	cmpq	%rax, %rbx
	jl	.LBB2_2
.LBB2_3:
	callq	zfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	freeSparklineSequence, .Lfunc_end2-freeSparklineSequence
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function sparklineRenderRange
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	sparklineRenderRange
	.p2align	4, 0x90
	.type	sparklineRenderRange,@function
sparklineRenderRange:                   # @sparklineRenderRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%r9d, %r14d
	movl	%ecx, %r12d
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rsi), %xmm0
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movslq	%r8d, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -48(%rbp)        # 4-byte Spill
	testb	$2, %r14b
	je	.LBB3_2
# %bb.1:
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI3_0(%rip), %xmm0
	callq	log
	jmp	.LBB3_4
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jne	.LBB3_5
	jp	.LBB3_5
# %bb.3:
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_5:
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$32, %esi
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB3_31
# %bb.6:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leal	(%rax,%rax,2), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	notl	%eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movslq	%r12d, %rcx
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	movl	$charset, %eax
	movl	$charset_fill, %edx
	cmoveq	%rax, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	shlq	$4, %rcx
	orq	$8, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_27:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB3_28
.LBB3_30:                               #   in Loop: Header=BB3_7 Depth=1
	addl	$1, %r14d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdx
	callq	sdscatlen
	movl	$.L.str, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	$32, %esi
	movq	%r13, %rdx
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB3_31
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	notl	%eax
	addl	-72(%rbp), %eax         # 4-byte Folded Reload
	leal	(%rax,%rax,2), %eax
	negl	%eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	addl	%r14d, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	cltq
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r15        # 8-byte Reload
	xorl	%r12d, %r12d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB3_8
.LBB3_15:                               #   in Loop: Header=BB3_8 Depth=2
	cltq
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB3_24:                               #   in Loop: Header=BB3_8 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%al, (%rcx,%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB3_25:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB3_26:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	jge	.LBB3_27
.LBB3_8:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %r13
	movsd	-8(%r13,%r15), %xmm0    # xmm0 = mem[0],zero
	subsd	16(%rbx), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=2
	addsd	.LCPI3_0(%rip), %xmm0
	callq	log
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:                               #   in Loop: Header=BB3_8 Depth=2
	mulsd	-144(%rbp), %xmm0       # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	testl	%eax, %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-152(%rbp), %eax        # 4-byte Folded Reload
	jl	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-88(%rbp), %eax         # 4-byte Reload
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-72(%rbp), %r14d        # 4-byte Folded Reload
	jge	.LBB3_19
# %bb.13:                               #   in Loop: Header=BB3_8 Depth=2
	addl	-92(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB3_16
# %bb.14:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jle	.LBB3_15
.LBB3_16:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB3_25
# %bb.17:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jl	.LBB3_25
# %bb.18:                               #   in Loop: Header=BB3_8 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	$124, (%rax,%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_25
	.p2align	4, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_8 Depth=2
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_21
# %bb.20:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-72(%rbp), %r14d        # 4-byte Folded Reload
	jle	.LBB3_29
.LBB3_21:                               #   in Loop: Header=BB3_8 Depth=2
	movq	(%r13,%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_26
# %bb.22:                               #   in Loop: Header=BB3_8 Depth=2
	callq	strlen
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, -84(%rbp)         # 4-byte Folded Reload
	jge	.LBB3_25
# %bb.23:                               #   in Loop: Header=BB3_8 Depth=2
	movq	(%r13,%r15), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movzbl	(%rax,%rcx), %eax
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_29:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_30
.LBB3_31:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_32
.LBB3_28:
	movq	-104(%rbp), %r15        # 8-byte Reload
.LBB3_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sparklineRenderRange, .Lfunc_end3-sparklineRenderRange
                                        # -- End function
	.globl	sparklineRender         # -- Begin function sparklineRender
	.p2align	4, 0x90
	.type	sparklineRender,@function
sparklineRender:                        # @sparklineRender
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB4_5
# %bb.1:                                # %.preheader
	movl	%edx, %r13d
	movq	%rsi, %r12
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rdi
	movq	%r12, %rsi
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	callq	sparklineRenderRange
	addl	%r13d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	subl	%r13d, %r15d
	cmpl	%r14d, %ebx
	jle	.LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	addl	%r15d, %ebx
	cmpl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%r13d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$.L.str, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_4
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sparklineRender, .Lfunc_end4-sparklineRender
                                        # -- End function
	.type	charset_fill,@object    # @charset_fill
	.section	.rodata.str1.1,"aMS",@progbits,1
charset_fill:
	.asciz	"_o#"
	.size	charset_fill, 4

	.type	charset,@object         # @charset
charset:
	.asciz	"_-`"
	.size	charset, 4

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"\n"
	.size	.L.str, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
