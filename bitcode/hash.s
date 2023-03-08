	.text
	.file	"hash.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __hash_open
.LCPI0_0:
	.long	1234                    # 0x4d2
	.long	4096                    # 0x1000
	.long	12                      # 0xc
	.long	256                     # 0x100
	.text
	.globl	__hash_open
	.p2align	4, 0x90
	.type	__hash_open,@function
__hash_open:                            # @__hash_open
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movl	%esi, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	jne	.LBB0_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_53
.LBB0_2:
	movq	%r8, %r15
	movl	%edx, %r13d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$656, %esi              # imm = 0x290
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_53
# %bb.3:
	movq	%rax, %rbx
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movl	$-1, 284(%rax)
	movl	%r12d, 280(%rax)
	testq	%r14, %r14
	je	.LBB0_7
# %bb.4:
	movl	%r12d, %eax
	andl	$1024, %eax             # imm = 0x400
	jne	.LBB0_7
# %bb.5:
	leaq	-136(%rbp), %rsi
	movq	%r14, %rdi
	callq	stat
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB0_9
# %bb.6:
	callq	__errno
	cmpl	$2, (%rax)
	jne	.LBB0_9
.LBB0_7:
	callq	__errno
	movl	$1, %r15d
	cmpl	$2, (%rax)
	jne	.LBB0_9
# %bb.8:
	callq	__errno
	movl	$0, (%rax)
.LBB0_9:
	testq	%r14, %r14
	je	.LBB0_13
# %bb.10:
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	xorl	%eax, %eax
	callq	open
	movl	%eax, 284(%rbx)
	cmpl	$-1, %eax
	je	.LBB0_30
# %bb.11:
	testl	$512, %r12d             # imm = 0x200
	je	.LBB0_13
# %bb.12:
	leaq	-136(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	testl	%eax, %eax
	je	.LBB0_36
.LBB0_13:
	movl	%r15d, %r13d
	testl	%r15d, %r15d
	je	.LBB0_38
.LBB0_14:
	movabsq	$34359738624, %rax      # imm = 0x800000100
	movq	%rax, 24(%rbx)
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1234,4096,12,256]
	movdqu	%xmm0, 8(%rbx)
	movq	$65536, 52(%rbx)        # imm = 0x10000
	movq	__default_hash(%rip), %rax
	movq	%rax, 272(%rbx)
	leaq	68(%rbx), %rdi
	movl	$128, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rdi
	addq	$196, %rdi
	movl	$64, %edx
	xorl	%esi, %esi
	callq	memset
	testq	%r14, %r14
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB0_17
# %bb.15:
	leaq	-224(%rbp), %rsi
	movq	%r14, %rdi
	callq	stat
	testl	%eax, %eax
	jne	.LBB0_35
# %bb.16:
	movl	-152(%rbp), %edi
	movl	%edi, 12(%rbx)
	callq	__log2
	movl	%eax, 16(%rbx)
.LBB0_17:
	movl	$1, %r12d
	movl	$1, %eax
	testq	%r15, %r15
	je	.LBB0_28
# %bb.18:
	movl	(%r15), %edi
	testl	%edi, %edi
	je	.LBB0_20
# %bb.19:
	callq	__log2
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%eax, 16(%rbx)
	movl	%edx, 12(%rbx)
	cmpl	$65537, %edx            # imm = 0x10001
	jge	.LBB0_31
.LBB0_20:
	movl	4(%r15), %eax
	testl	%eax, %eax
	je	.LBB0_22
# %bb.21:
	movl	%eax, 52(%rbx)
.LBB0_22:
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_24
# %bb.23:
	movq	%rax, 272(%rbx)
.LBB0_24:
	movl	8(%r15), %edx
	movl	24(%r15), %ecx
	testl	%edx, %edx
	movl	$1, %eax
	cmovnel	%edx, %eax
	testl	%ecx, %ecx
	je	.LBB0_28
# %bb.25:
	cmpl	$1234, %ecx             # imm = 0x4D2
	je	.LBB0_27
# %bb.26:
	cmpl	$4321, %ecx             # imm = 0x10E1
	jne	.LBB0_31
.LBB0_27:
	movl	%ecx, 8(%rbx)
.LBB0_28:
	addl	$-1, %eax
	cltd
	idivl	52(%rbx)
	addl	$1, %eax
	cmpl	$1, %eax
	movl	$2, %edi
	cmovgl	%eax, %edi
	callq	__log2
	movl	%eax, %ecx
	shll	%cl, %r12d
	movslq	%eax, %rsi
	addl	$1, %eax
	movl	%eax, 68(%rbx,%rsi,4)
	movl	%eax, 72(%rbx,%rsi,4)
	movl	%esi, 32(%rbx)
	movl	$2, 36(%rbx)
	shll	$11, %esi
	orl	$1, %esi
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%eax, %edx
	xorl	%ecx, %ecx
	callq	__ibitmap
	testl	%eax, %eax
	je	.LBB0_32
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_35
.LBB0_30:
	callq	__errno
	movl	(%rax), %r12d
	jmp	.LBB0_52
.LBB0_31:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_35
.LBB0_32:
	leal	-1(%r12), %eax
	movl	%eax, 48(%rbx)
	movl	%eax, 40(%rbx)
	leal	(%r12,%r12), %ecx
	addl	$-1, %ecx
	movl	%ecx, 44(%rbx)
	movb	16(%rbx), %cl
	movl	$511, %edx              # imm = 0x1FF
	shrq	%cl, %rdx
	addl	$1, %edx
	movl	%edx, 60(%rbx)
	cltd
	idivl	24(%rbx)
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rax), %edi
	callq	__log2
	movl	$1, %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	cmpl	20(%rbx), %esi
	jle	.LBB0_34
# %bb.33:
	movl	%esi, 20(%rbx)
.LBB0_34:
	movq	%rbx, %rdi
	callq	alloc_segs
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_55
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	(%rax), %r12d
	xorl	%ebx, %ebx
	jmp	.LBB0_52
.LBB0_36:
	testl	%r15d, %r15d
	jne	.LBB0_14
# %bb.37:
	movl	%r15d, %r13d
	cmpq	$0, -120(%rbp)
	je	.LBB0_14
.LBB0_38:
	movq	-48(%rbp), %r15         # 8-byte Reload
	testq	%r15, %r15
	je	.LBB0_40
# %bb.39:
	movq	16(%r15), %rax
	testq	%rax, %rax
	jne	.LBB0_41
.LBB0_40:
	movq	__default_hash(%rip), %rax
.LBB0_41:
	movq	%rax, 272(%rbx)
	movl	284(%rbx), %edi
	movl	$260, %edx              # imm = 0x104
	movq	%rbx, %rsi
	callq	read
	movl	(%rbx), %ecx
	movl	4(%rbx), %edx
	bswapl	%ecx
	movl	%ecx, (%rbx)
	bswapl	%edx
	movl	%edx, 4(%rbx)
	movl	8(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 8(%rbx)
	movl	12(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 12(%rbx)
	movl	16(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 16(%rbx)
	movl	20(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 20(%rbx)
	movl	24(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 24(%rbx)
	movl	28(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 28(%rbx)
	movl	32(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 32(%rbx)
	movl	36(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 36(%rbx)
	movl	40(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 40(%rbx)
	movl	44(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 44(%rbx)
	movl	48(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 48(%rbx)
	movl	52(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 52(%rbx)
	movl	56(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 56(%rbx)
	movl	60(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 60(%rbx)
	movl	64(%rbx), %ecx
	bswapl	%ecx
	movl	%ecx, 64(%rbx)
	movl	$98, %ecx
	.p2align	4, 0x90
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	movl	-324(%rbx,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, -324(%rbx,%rcx,4)
	rolw	$8, (%rbx,%rcx,2)
	movl	-320(%rbx,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, -320(%rbx,%rcx,4)
	rolw	$8, 2(%rbx,%rcx,2)
	addq	$2, %rcx
	cmpq	$130, %rcx
	jne	.LBB0_42
# %bb.43:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_50
# %bb.44:
	movl	$79, %r12d
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB0_51
# %bb.45:
	cmpl	$398689, (%rbx)         # imm = 0x61561
	jne	.LBB0_51
# %bb.46:
	movl	4(%rbx), %eax
	addl	$-1, %eax
	cmpl	$1, %eax
	ja	.LBB0_51
# %bb.47:
	movl	$.L.str, %edi
	movl	$12, %esi
	callq	*272(%rbx)
	cmpl	64(%rbx), %eax
	jne	.LBB0_51
# %bb.48:
	movl	24(%rbx), %ecx
	movl	40(%rbx), %eax
	addl	%ecx, %eax
	cltd
	idivl	%ecx
	movl	$0, 260(%rbx)
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	alloc_segs
	testl	%eax, %eax
	jne	.LBB0_53
# %bb.49:
	movslq	32(%rbx), %rax
	movl	68(%rbx,%rax,4), %eax
	movl	12(%rbx), %ecx
	leal	(%rax,%rcx,8), %eax
	addl	$-1, %eax
	movb	16(%rbx), %cl
	addb	$3, %cl
	sarl	%cl, %eax
	movl	%eax, 592(%rbx)
	movq	%rbx, %rdi
	addq	$336, %rdi              # imm = 0x150
	movslq	%eax, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_56
.LBB0_50:
	callq	__errno
	movl	(%rax), %r12d
.LBB0_51:
	movl	284(%rbx), %edi
	callq	close
.LBB0_52:
	movq	%rbx, %rdi
	callq	free
	callq	__errno
	movl	%r12d, (%rax)
.LBB0_53:
	xorl	%eax, %eax
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB0_56:
	testq	%r15, %r15
	je	.LBB0_59
# %bb.57:
	movl	12(%r15), %esi
	testl	%esi, %esi
	je	.LBB0_59
# %bb.58:
	movq	%rbx, %rdi
	jmp	.LBB0_60
.LBB0_59:
	movq	%rbx, %rdi
	movl	$65536, %esi            # imm = 0x10000
.LBB0_60:
	callq	__buf_init
	movl	%r13d, 324(%rbx)
	testq	%r14, %r14
	je	.LBB0_62
# %bb.61:
	movl	280(%rbx), %eax
	shrl	%eax
	andl	$1, %eax
	jmp	.LBB0_63
.LBB0_62:
	xorl	%eax, %eax
.LBB0_63:
	movl	%eax, 328(%rbx)
	movl	$-1, 312(%rbx)
	movl	$72, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_65
# %bb.64:
	movq	%rbx, 56(%rax)
	movq	$hash_close, 8(%rax)
	movq	$hash_delete, 16(%rax)
	movq	$hash_fd, 64(%rax)
	movl	$hash_put, %ecx
	movq	%rcx, %xmm0
	movl	$hash_get, %ecx
	movq	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 24(%rax)
	movq	$hash_seq, 40(%rax)
	movq	$hash_sync, 48(%rax)
	movl	$1, (%rax)
	jmp	.LBB0_54
.LBB0_65:
	callq	__errno
	movl	(%rax), %r14d
	movq	%rbx, %rdi
	callq	hdestroy
	callq	__errno
	movl	%r14d, (%rax)
	jmp	.LBB0_53
.Lfunc_end0:
	.size	__hash_open, .Lfunc_end0-__hash_open
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function alloc_segs
	.type	alloc_segs,@function
alloc_segs:                             # @alloc_segs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	movslq	20(%rdi), %rdi
	movl	$8, %esi
	callq	calloc
	movq	%rax, 648(%r15)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movb	28(%r15), %cl
	movl	%r14d, %eax
	shll	%cl, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB1_1
# %bb.3:
	testl	%r14d, %r14d
	jle	.LBB1_11
# %bb.4:
	movl	28(%r15), %ecx
	movl	260(%r15), %r8d
	movl	%r14d, %r9d
	leaq	-1(%r9), %rdi
	movl	%r9d, %esi
	andl	$3, %esi
	cmpq	$3, %rdi
	jae	.LBB1_6
# %bb.5:
	xorl	%edi, %edi
	jmp	.LBB1_8
.LBB1_1:
	callq	__errno
	movl	(%rax), %r14d
	movq	%r15, %rdi
	callq	hdestroy
	callq	__errno
	movl	%r14d, (%rax)
	movl	$-1, %eax
	jmp	.LBB1_12
.LBB1_6:
	subq	%rsi, %r9
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	shll	%cl, %edx
	movslq	%edx, %rdx
	leaq	(%rax,%rdx,8), %r10
	leal	1(%rdi), %ebx
	shll	%cl, %ebx
	movq	648(%r15), %rdx
	movq	%r10, (%rdx,%rdi,8)
	movslq	%ebx, %rdx
	leaq	(%rax,%rdx,8), %r10
	leal	2(%rdi), %ebx
	shll	%cl, %ebx
	movq	648(%r15), %rdx
	movq	%r10, 8(%rdx,%rdi,8)
	movslq	%ebx, %rdx
	leaq	(%rax,%rdx,8), %r10
	leal	3(%rdi), %ebx
	shll	%cl, %ebx
	movq	648(%r15), %rdx
	movq	%r10, 16(%rdx,%rdi,8)
	movslq	%ebx, %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	648(%r15), %rbx
	movq	%rdx, 24(%rbx,%rdi,8)
	addq	$4, %rdi
	cmpq	%rdi, %r9
	jne	.LBB1_7
.LBB1_8:
	testq	%rsi, %rsi
	je	.LBB1_10
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	shll	%cl, %edx
	movslq	%edx, %rdx
	leaq	(%rax,%rdx,8), %rdx
	movq	648(%r15), %rbx
	movq	%rdx, (%rbx,%rdi,8)
	addq	$1, %rdi
	addq	$-1, %rsi
	jne	.LBB1_9
.LBB1_10:
	addl	%r14d, %r8d
	movl	%r8d, 260(%r15)
.LBB1_11:
	xorl	%eax, %eax
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	alloc_segs, .Lfunc_end1-alloc_segs
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hdestroy
	.type	hdestroy,@function
hdestroy:                               # @hdestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	328(%rdi), %edx
	movl	$1, %esi
	callq	__buf_free
	testl	%eax, %eax
	je	.LBB2_1
# %bb.2:
	callq	__errno
	movl	(%rax), %r14d
	jmp	.LBB2_3
.LBB2_1:
	xorl	%r14d, %r14d
.LBB2_3:
	movq	648(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_8
# %bb.4:
	movq	(%rax), %rdi
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	callq	free
	subl	$1, 264(%r15)
	movq	648(%r15), %rdi
	jb	.LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_6 Depth=1
	movslq	260(%r15), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, 260(%r15)
	movq	-8(%rdi,%rax,8), %rdi
	jmp	.LBB2_6
.LBB2_7:
	callq	free
.LBB2_8:
	movq	%r15, %rdi
	callq	flush_meta
	testl	%r14d, %r14d
	jne	.LBB2_11
# %bb.9:
	testl	%eax, %eax
	je	.LBB2_11
# %bb.10:
	callq	__errno
	movl	(%rax), %r14d
.LBB2_11:
	movl	592(%r15), %eax
	testl	%eax, %eax
	jle	.LBB2_16
# %bb.12:                               # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_13 Depth=1
	addq	$1, %rbx
	movslq	%eax, %rcx
	cmpq	%rcx, %rbx
	jge	.LBB2_16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	movq	336(%r15,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	callq	free
	movl	592(%r15), %eax
	jmp	.LBB2_15
.LBB2_16:
	movl	284(%r15), %edi
	cmpl	$-1, %edi
	je	.LBB2_18
# %bb.17:
	callq	close
.LBB2_18:
	movq	%r15, %rdi
	callq	free
	testl	%r14d, %r14d
	je	.LBB2_19
# %bb.20:
	callq	__errno
	movl	%r14d, (%rax)
	movl	$-1, %eax
	jmp	.LBB2_21
.LBB2_19:
	xorl	%eax, %eax
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hdestroy, .Lfunc_end2-hdestroy
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_close
	.type	hash_close,@function
hash_close:                             # @hash_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movq	%rdi, %rbx
	movq	56(%rdi), %rdi
	callq	hdestroy
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB3_3
.LBB3_1:
	movl	$-1, %r14d
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	hash_close, .Lfunc_end3-hash_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_delete
	.type	hash_delete,@function
hash_delete:                            # @hash_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	56(%rdi), %rbx
	cmpl	$2, %edx
	jb	.LBB4_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$22, 320(%rbx)
	jmp	.LBB4_5
.LBB4_2:
	testb	$3, 280(%rbx)
	je	.LBB4_4
# %bb.3:
	movq	%rsi, %rax
	movq	%rbx, %rdi
	movl	$3, %esi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	hash_access
	jmp	.LBB4_6
.LBB4_4:
	callq	__errno
	movl	$1, (%rax)
	movl	$1, 320(%rbx)
.LBB4_5:
	movl	$-1, %eax
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	hash_delete, .Lfunc_end4-hash_delete
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_fd
	.type	hash_fd,@function
hash_fd:                                # @hash_fd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.1:
	movq	56(%rdi), %rax
	movl	284(%rax), %eax
	cmpl	$-1, %eax
	jne	.LBB5_3
# %bb.2:
	callq	__errno
	movl	$2, (%rax)
	movl	$-1, %eax
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	hash_fd, .Lfunc_end5-hash_fd
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_get
	.type	hash_get,@function
hash_get:                               # @hash_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	56(%rdi), %rbx
	testl	%ecx, %ecx
	je	.LBB6_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$22, 320(%rbx)
	movl	$-1, %eax
	jmp	.LBB6_3
.LBB6_2:
	movq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rcx
	callq	hash_access
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	hash_get, .Lfunc_end6-hash_get
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_put
	.type	hash_put,@function
hash_put:                               # @hash_put
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rax
	movq	%rsi, %rdx
	movq	56(%rdi), %rbx
	movl	%ecx, %esi
	orl	$8, %esi
	cmpl	$8, %esi
	jne	.LBB7_3
# %bb.1:
	testb	$3, 280(%rbx)
	je	.LBB7_4
# %bb.2:
	xorl	%esi, %esi
	cmpl	$8, %ecx
	sete	%sil
	addl	$1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rcx
	callq	hash_access
	jmp	.LBB7_6
.LBB7_3:
	movl	$22, 320(%rbx)
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB7_5
.LBB7_4:
	callq	__errno
	movl	$1, (%rax)
	movl	$1, 320(%rbx)
.LBB7_5:
	movl	$-1, %eax
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	hash_put, .Lfunc_end7-hash_put
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_seq
	.type	hash_seq,@function
hash_seq:                               # @hash_seq
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	56(%rdi), %r12
	cmpl	$7, %ecx
	ja	.LBB8_24
# %bb.1:
	movl	$137, %eax
	btl	%ecx, %eax
	jae	.LBB8_24
# %bb.2:
	movq	%rsi, %r15
	cmpl	$3, %ecx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	je	.LBB8_5
# %bb.3:
	cmpl	$0, 312(%r12)
	js	.LBB8_5
# %bb.4:
	leaq	304(%r12), %r14
	leaq	316(%r12), %r13
	jmp	.LBB8_6
.LBB8_5:
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 312(%r12)
	leaq	316(%r12), %r13
	leaq	304(%r12), %r14
	movq	$0, 304(%r12)
.LBB8_6:
	xorl	%ecx, %ecx
                                        # implicit-def: $rax
.LBB8_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
                                        #     Child Loop BB8_19 Depth 2
	testq	%rcx, %rcx
	je	.LBB8_9
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	movzwl	(%rcx), %edx
	testl	%edx, %edx
	jne	.LBB8_27
.LBB8_9:                                #   in Loop: Header=BB8_7 Depth=1
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_7 Depth=1
	movq	32(%rax), %rcx
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_11:                               #   in Loop: Header=BB8_7 Depth=1
	movl	40(%r12), %edx
	movl	312(%r12), %ebx
	cmpl	%edx, %ebx
	jbe	.LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_7 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_17
	.p2align	4, 0x90
.LBB8_13:                               #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB8_25
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=2
	movq	%rax, (%r14)
	movq	32(%rax), %rcx
	cmpw	$0, (%rcx)
	jne	.LBB8_16
# %bb.15:                               #   in Loop: Header=BB8_13 Depth=2
	addl	$1, %ebx
	movl	$1, 316(%r12)
	movl	40(%r12), %edx
	cmpl	%edx, %ebx
	jbe	.LBB8_13
	jmp	.LBB8_17
.LBB8_16:                               #   in Loop: Header=BB8_7 Depth=1
	movl	40(%r12), %edx
.LBB8_17:                               #   in Loop: Header=BB8_7 Depth=1
	movl	%ebx, 312(%r12)
	cmpl	%edx, %ebx
	jg	.LBB8_29
.LBB8_18:                               #   in Loop: Header=BB8_7 Depth=1
	movslq	(%r13), %rdx
	cmpw	$0, 2(%rcx,%rdx,2)
	jne	.LBB8_21
	.p2align	4, 0x90
.LBB8_19:                               #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, 304(%r12)
	testq	%rax, %rax
	je	.LBB8_25
# %bb.20:                               #   in Loop: Header=BB8_19 Depth=2
	movq	32(%rax), %rcx
	movl	$1, (%r13)
	movl	$1, %edx
	cmpw	$0, 4(%rcx)
	je	.LBB8_19
.LBB8_21:                               #   in Loop: Header=BB8_7 Depth=1
	cmpw	$0, (%rcx)
	jne	.LBB8_7
# %bb.22:                               #   in Loop: Header=BB8_7 Depth=1
	movq	$0, 304(%r12)
	addl	$1, 312(%r12)
	jmp	.LBB8_7
.LBB8_24:
	callq	__errno
	movl	$22, (%rax)
	movl	$22, 320(%r12)
.LBB8_25:
	movl	$-1, %eax
.LBB8_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_27:
	movl	(%r13), %esi
	movzwl	%si, %edi
	movzwl	2(%rcx,%rdi,2), %r8d
	cmpq	$3, %r8
	ja	.LBB8_30
# %bb.28:
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$1, %r8d
	callq	__big_keydata
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB8_26
	jmp	.LBB8_36
.LBB8_29:
	movl	$-1, 312(%r12)
	movl	$1, %eax
	jmp	.LBB8_26
.LBB8_30:
	movq	(%r14), %rax
	movq	32(%rax), %r10
	movl	%edi, %r9d
	movzwl	(%rcx,%r9,2), %ebx
	leaq	(%r10,%rbx), %rax
	movq	%rax, (%r15)
	cmpl	$2, %edi
	jb	.LBB8_32
# %bb.31:
	movzwl	-2(%rcx,%r9,2), %ecx
	jmp	.LBB8_33
.LBB8_32:
	movl	12(%r12), %ecx
.LBB8_33:
	subl	%ebx, %ecx
	movslq	%ecx, %rax
	movq	%rax, 8(%r15)
	addq	%r8, %r10
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r10, (%rax)
	subq	%r8, %rbx
	movq	%rbx, 8(%rax)
	addl	$2, %esi
	movzwl	%si, %eax
	cmpl	%edx, %eax
	jbe	.LBB8_35
# %bb.34:
	movq	$0, 304(%r12)
	addl	$1, 312(%r12)
	movl	$1, %eax
.LBB8_35:
	movl	%eax, (%r13)
.LBB8_36:
	xorl	%eax, %eax
	jmp	.LBB8_26
.Lfunc_end8:
	.size	hash_seq, .Lfunc_end8-hash_seq
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_sync
	.type	hash_sync,@function
hash_sync:                              # @hash_sync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testl	%esi, %esi
	je	.LBB9_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %ebx
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_2:
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB9_8
# %bb.3:
	movq	56(%rdi), %r14
	cmpl	$0, 328(%r14)
	je	.LBB9_7
# %bb.4:
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	__buf_free
	testl	%eax, %eax
	jne	.LBB9_8
# %bb.5:
	movq	%r14, %rdi
	callq	flush_meta
	testl	%eax, %eax
	jne	.LBB9_8
# %bb.6:
	movl	$0, 324(%r14)
.LBB9_7:
	xorl	%ebx, %ebx
	jmp	.LBB9_8
.Lfunc_end9:
	.size	hash_sync, .Lfunc_end9-hash_sync
                                        # -- End function
	.globl	__expand_table          # -- Begin function __expand_table
	.p2align	4, 0x90
	.type	__expand_table,@function
__expand_table:                         # @__expand_table
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	40(%rdi), %r14d
	addl	$1, %r14d
	movl	%r14d, 40(%rdi)
	movb	28(%rdi), %cl
	movl	%r14d, %r13d
	shrl	%cl, %r13d
	movl	48(%rdi), %r15d
	andl	%r14d, %r15d
	movl	%r14d, %edi
	cmpl	260(%rbx), %r13d
	jl	.LBB10_8
# %bb.1:
	movl	20(%rbx), %r12d
	cmpl	%r12d, %r13d
	jl	.LBB10_5
# %bb.2:
	movl	%r12d, %eax
	shll	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB10_3
# %bb.4:
	shll	$3, %r12d
	movq	648(%rbx), %rsi
	movslq	%r12d, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %r12
	callq	memmove
	movq	%r12, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	648(%rbx), %rdi
	callq	free
	movq	%r12, 648(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 20(%rbx)
.LBB10_5:
	movslq	24(%rbx), %rdi
	movl	$8, %esi
	callq	calloc
	movq	648(%rbx), %rcx
	movslq	%r13d, %rdx
	movq	%rax, (%rcx,%rdx,8)
	testq	%rax, %rax
	je	.LBB10_6
# %bb.7:
	addl	$1, 264(%rbx)
	addl	$1, 260(%rbx)
	movl	40(%rbx), %edi
.LBB10_8:
	addl	$1, %edi
	callq	__log2
	movslq	32(%rbx), %rcx
	cmpl	%ecx, %eax
	jle	.LBB10_10
# %bb.9:
	movl	68(%rbx,%rcx,4), %ecx
	movslq	%eax, %rdx
	movl	%ecx, 68(%rbx,%rdx,4)
	movl	%eax, 32(%rbx)
.LBB10_10:
	movl	44(%rbx), %eax
	cmpl	%eax, %r14d
	jbe	.LBB10_12
# %bb.11:
	movl	%eax, 48(%rbx)
	orl	%r14d, %eax
	movl	%eax, 44(%rbx)
.LBB10_12:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	__split_page
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_6:
	movl	$-1, %eax
	jmp	.LBB10_13
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB10_13
.Lfunc_end10:
	.size	__expand_table, .Lfunc_end10-__expand_table
                                        # -- End function
	.globl	__call_hash             # -- Begin function __call_hash
	.p2align	4, 0x90
	.type	__call_hash,@function
__call_hash:                            # @__call_hash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movslq	%edx, %rsi
	movq	%rax, %rdi
	callq	*272(%rbx)
	andl	44(%rbx), %eax
	cmpl	40(%rbx), %eax
	jle	.LBB11_2
# %bb.1:
	andl	48(%rbx), %eax
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	__call_hash, .Lfunc_end11-__call_hash
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function flush_meta
	.type	flush_meta,@function
flush_meta:                             # @flush_meta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	cmpl	$0, 328(%rdi)
	je	.LBB12_10
# %bb.1:
	movq	%rdi, %rbx
	movabsq	$8590333281, %rax       # imm = 0x200061561
	movq	%rax, (%rdi)
	movl	$.L.str, %edi
	movl	$12, %esi
	callq	*272(%rbx)
	movl	%eax, 64(%rbx)
	movl	284(%rbx), %r14d
	movdqu	(%rbx), %xmm1
	pxor	%xmm0, %xmm0
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqa	%xmm1, -288(%rbp)
	movdqu	16(%rbx), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqa	%xmm1, -272(%rbp)
	movdqu	32(%rbx), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm1
	movdqa	%xmm1, -256(%rbp)
	movdqu	48(%rbx), %xmm1
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm0, %xmm2    # xmm2 = xmm2[8],xmm0[8],xmm2[9],xmm0[9],xmm2[10],xmm0[10],xmm2[11],xmm0[11],xmm2[12],xmm0[12],xmm2[13],xmm0[13],xmm2[14],xmm0[14],xmm2[15],xmm0[15]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pshuflw	$27, %xmm1, %xmm0       # xmm0 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm0
	movdqa	%xmm0, -240(%rbp)
	movb	67(%rbx), %al
	movb	%al, -224(%rbp)
	movb	66(%rbx), %al
	movb	%al, -223(%rbp)
	movb	65(%rbx), %al
	movb	%al, -222(%rbp)
	movb	64(%rbx), %al
	movb	%al, -221(%rbp)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movzbl	71(%rbx,%rax,2), %ecx
	movb	%cl, -220(%rbp,%rax,2)
	movzbl	70(%rbx,%rax,2), %ecx
	movb	%cl, -219(%rbp,%rax,2)
	movzbl	69(%rbx,%rax,2), %ecx
	movb	%cl, -218(%rbp,%rax,2)
	movzbl	68(%rbx,%rax,2), %ecx
	movb	%cl, -217(%rbp,%rax,2)
	movzbl	197(%rbx,%rax), %ecx
	movb	%cl, -92(%rbp,%rax)
	movzbl	196(%rbx,%rax), %ecx
	movb	%cl, -91(%rbp,%rax)
	movzbl	75(%rbx,%rax,2), %ecx
	movb	%cl, -216(%rbp,%rax,2)
	movzbl	74(%rbx,%rax,2), %ecx
	movb	%cl, -215(%rbp,%rax,2)
	movzbl	73(%rbx,%rax,2), %ecx
	movb	%cl, -214(%rbp,%rax,2)
	movzbl	72(%rbx,%rax,2), %ecx
	movb	%cl, -213(%rbp,%rax,2)
	movzbl	199(%rbx,%rax), %ecx
	movb	%cl, -90(%rbp,%rax)
	movzbl	198(%rbx,%rax), %ecx
	movb	%cl, -89(%rbp,%rax)
	addq	$4, %rax
	cmpq	$64, %rax
	jne	.LBB12_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lseek
	movl	$-1, %r15d
	cmpq	$-1, %rax
	je	.LBB12_11
# %bb.4:
	leaq	-288(%rbp), %rsi
	movl	$260, %edx              # imm = 0x104
	movl	%r14d, %edi
	callq	write
	cmpl	$-1, %eax
	je	.LBB12_11
# %bb.5:
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB12_12
# %bb.6:                                # %.preheader
	xorl	%r14d, %r14d
	jmp	.LBB12_7
	.p2align	4, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_7 Depth=1
	addq	$1, %r14
	cmpq	$32, %r14
	jae	.LBB12_10
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	movq	336(%rbx,%r14,8), %rsi
	testq	%rsi, %rsi
	je	.LBB12_9
# %bb.8:                                #   in Loop: Header=BB12_7 Depth=1
	movzwl	196(%rbx,%r14,2), %edx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	__put_page
	testl	%eax, %eax
	je	.LBB12_9
	jmp	.LBB12_11
.LBB12_10:
	xorl	%r15d, %r15d
	jmp	.LBB12_11
.LBB12_12:
	callq	__errno
	movl	$79, (%rax)
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, 320(%rbx)
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	flush_meta, .Lfunc_end12-flush_meta
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function hash_access
	.type	hash_access,@function
hash_access:                            # @hash_access
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movl	12(%rdi), %r15d
	movq	(%rdx), %rdi
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movslq	%eax, %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	*272(%rbx)
	andl	44(%rbx), %eax
	cmpl	40(%rbx), %eax
	jle	.LBB13_2
# %bb.1:
	andl	48(%rbx), %eax
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	%eax, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB13_32
# %bb.3:
	movl	%r13d, -60(%rbp)        # 4-byte Spill
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	orb	$8, 40(%rax)
	movq	32(%rax), %r14
	movzwl	(%r14), %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	cmpl	$2, %ecx
	jb	.LBB13_24
# %bb.4:
	addq	$2, %r14
	movl	$1, %r13d
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB13_7
	.p2align	4, 0x90
.LBB13_5:                               #   in Loop: Header=BB13_7 Depth=1
	movzwl	2(%r14), %eax
	movl	%ebx, %ecx
.LBB13_6:                               #   in Loop: Header=BB13_7 Depth=1
	movzwl	%ax, %r15d
	addq	$4, %r14
	addl	$2, %r13d
	cmpl	%ecx, %r13d
	jge	.LBB13_24
.LBB13_7:                               # =>This Inner Loop Header: Depth=1
	movzwl	2(%r14), %eax
	cmpw	$4, %ax
	jb	.LBB13_10
# %bb.8:                                #   in Loop: Header=BB13_7 Depth=1
	movzwl	(%r14), %esi
	subl	%esi, %r15d
	cmpl	-104(%rbp), %r15d       # 4-byte Folded Reload
	jne	.LBB13_6
# %bb.9:                                #   in Loop: Header=BB13_7 Depth=1
	movl	%ecx, %ebx
	addq	32(%r12), %rsi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB13_5
	jmp	.LBB13_19
	.p2align	4, 0x90
.LBB13_10:                              #   in Loop: Header=BB13_7 Depth=1
	testw	%ax, %ax
	je	.LBB13_15
# %bb.11:                               #   in Loop: Header=BB13_7 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	callq	__find_bigpair
	movl	%eax, %r13d
	testl	%eax, %eax
	jg	.LBB13_19
# %bb.12:                               #   in Loop: Header=BB13_7 Depth=1
	cmpl	$-2, %r13d
	jne	.LBB13_31
# %bb.13:                               #   in Loop: Header=BB13_7 Depth=1
	movq	%r12, -80(%rbp)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rsi
	callq	__find_last_page
	testw	%ax, %ax
	je	.LBB13_23
# %bb.14:                               #   in Loop: Header=BB13_7 Depth=1
	movzwl	%ax, %esi
	movq	-80(%rbp), %rdx
	movq	%rbx, %rdi
	jmp	.LBB13_16
.LBB13_15:                              #   in Loop: Header=BB13_7 Depth=1
	movzwl	(%r14), %esi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rdx
.LBB13_16:                              #   in Loop: Header=BB13_7 Depth=1
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB13_31
# %bb.17:                               #   in Loop: Header=BB13_7 Depth=1
	movq	%rax, %r12
	movq	32(%rax), %r14
	movzwl	(%r14), %ecx
	addq	$2, %r14
	movl	12(%rbx), %r15d
	movl	$1, %r13d
	cmpl	%ecx, %r13d
	jl	.LBB13_7
	jmp	.LBB13_24
.LBB13_19:
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	$3, %eax
	ja	.LBB13_36
# %bb.20:
	movl	%eax, %eax
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_21:
	movq	32(%r12), %rcx
	movslq	%r13d, %rdx
	movzwl	2(%rcx,%rdx,2), %eax
	cmpq	$3, %rax
	ja	.LBB13_34
# %bb.22:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	xorl	%r8d, %r8d
	callq	__big_return
	jmp	.LBB13_28
.LBB13_23:
	movq	-80(%rbp), %r12
.LBB13_24:
	movl	-60(%rbp), %eax         # 4-byte Reload
	addl	$-1, %eax
	cmpl	$1, %eax
	ja	.LBB13_26
# %bb.25:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	__addel
	movq	-48(%rbp), %rcx         # 8-byte Reload
	andb	$-9, 40(%rcx)
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB13_33
.LBB13_26:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
	movl	$1, %eax
	jmp	.LBB13_33
.LBB13_27:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%r13d, %edx
	callq	__delpair
.LBB13_28:
	testl	%eax, %eax
	movl	$-1, %eax
	jne	.LBB13_33
	jmp	.LBB13_35
.LBB13_29:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	callq	__delpair
	testl	%eax, %eax
	jne	.LBB13_31
# %bb.30:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	__addel
	testl	%eax, %eax
	je	.LBB13_35
.LBB13_31:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
.LBB13_32:
	movl	$-1, %eax
.LBB13_33:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_34:
	leaq	(%rcx,%rax), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, (%rdi)
	movzwl	(%rcx,%rdx,2), %ecx
	subq	%rax, %rcx
	movq	%rcx, 8(%rdi)
.LBB13_35:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
	xorl	%eax, %eax
	jmp	.LBB13_33
.LBB13_36:
	callq	abort
.Lfunc_end13:
	.size	hash_access, .Lfunc_end13-hash_access
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_21
	.quad	.LBB13_29
	.quad	.LBB13_26
	.quad	.LBB13_27
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%$sniglet^&"
	.size	.L.str, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
