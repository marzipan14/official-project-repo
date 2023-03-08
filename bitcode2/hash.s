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
	subq	$200, %rsp
	movl	%esi, %eax
	andl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_64
.LBB0_2:
	movq	%r8, %r15
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$656, %esi              # imm = 0x290
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_64
# %bb.3:
	movq	%rax, %r12
	movl	$-1, 284(%rax)
	movl	%ebx, 280(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%r15, -56(%rbp)         # 8-byte Spill
	je	.LBB0_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %ebx             # imm = 0x400
	jne	.LBB0_7
# %bb.5:
	leaq	-144(%rbp), %rsi
	movq	%r14, %rdi
	callq	stat
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_11
# %bb.6:
	callq	__errno
	cmpl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
.LBB0_7:
	callq	__errno
	cmpl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_9
# %bb.8:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	testq	%r14, %r14
	jne	.LBB0_12
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_17
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB0_12:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	xorl	%eax, %eax
	callq	open
	movl	%eax, 284(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_29
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %ebx              # imm = 0x200
	je	.LBB0_16
# %bb.14:
	leaq	-144(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_16
# %bb.15:
	cmpq	$0, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_66
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	je	.LBB0_30
.LBB0_17:
	movabsq	$34359738624, %rax      # imm = 0x800000100
	movq	%rax, 24(%r12)
	movdqa	.LCPI0_0(%rip), %xmm0   # xmm0 = [1234,4096,12,256]
	movdqu	%xmm0, 8(%r12)
	movq	$65536, 52(%r12)        # imm = 0x10000
	movq	__default_hash(%rip), %rax
	movq	%rax, 272(%r12)
	leaq	68(%r12), %rdi
	movl	$128, %edx
	xorl	%esi, %esi
	callq	memset
	movq	%r12, %rdi
	addq	$196, %rdi
	movl	$64, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_20
# %bb.18:
	leaq	-232(%rbp), %rsi
	movq	%r14, %rdi
	callq	stat
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_60
# %bb.19:
	movl	-160(%rbp), %edi
	movl	%edi, 12(%r12)
	callq	__log2
	movl	%eax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	movl	$1, %eax
	testq	%r15, %r15
	je	.LBB0_50
# %bb.21:
	movl	(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_23
# %bb.22:
	callq	__log2
	movl	$1, %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%eax, 16(%r12)
	movl	%edx, 12(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65537, %edx            # imm = 0x10001
	jge	.LBB0_59
.LBB0_23:
	movl	4(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_25
# %bb.24:
	movl	%eax, 52(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	movq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_27
# %bb.26:
	movq	%rax, 272(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_45
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_46
.LBB0_29:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB0_62
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_32
# %bb.31:
	movq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_33
.LBB0_32:
	movq	__default_hash(%rip), %rax
.LBB0_33:
	movq	%rax, 272(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	284(%r12), %edi
	movl	$260, %edx              # imm = 0x104
	movq	%r12, %rsi
	callq	read
	movl	(%r12), %ecx
	movl	4(%r12), %edx
	bswapl	%ecx
	movl	%ecx, (%r12)
	bswapl	%edx
	movl	%edx, 4(%r12)
	movl	8(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 8(%r12)
	movl	12(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 12(%r12)
	movl	16(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 16(%r12)
	movl	20(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 20(%r12)
	movl	24(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 24(%r12)
	movl	28(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 28(%r12)
	movl	32(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 32(%r12)
	movl	36(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 36(%r12)
	movl	40(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 40(%r12)
	movl	44(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 44(%r12)
	movl	48(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 48(%r12)
	movl	52(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 52(%r12)
	movl	56(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 56(%r12)
	movl	60(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 60(%r12)
	movl	64(%r12), %ecx
	bswapl	%ecx
	movl	%ecx, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$98, %ecx
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movl	-324(%r12,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, -324(%r12,%rcx,4)
	rolw	$8, (%r12,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	$130, %rcx
	jne	.LBB0_34
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_43
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$79, %ebx
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB0_44
# %bb.37:
	cmpl	$398689, (%r12)         # imm = 0x61561
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_44
# %bb.38:
	movl	4(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_40
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_44
.LBB0_40:
	movl	$.L.str, %edi
	movl	$12, %esi
	callq	*272(%r12)
	cmpl	64(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_44
# %bb.41:
	movl	24(%r12), %ecx
	movl	40(%r12), %eax
	addl	%ecx, %eax
	cltd
	idivl	%ecx
	movl	$0, 260(%r12)
	movq	%r12, %rdi
	movl	%eax, %esi
	callq	alloc_segs
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_65
# %bb.42:
	movslq	32(%r12), %rax
	movl	68(%r12,%rax,4), %eax
	movl	12(%r12), %ecx
	leal	(%rax,%rcx,8), %eax
	addl	$-1, %eax
	movb	16(%r12), %cl
	addb	$3, %cl
	sarl	%cl, %eax
	movl	%eax, 592(%r12)
	movq	%r12, %rdi
	addq	$336, %rdi              # imm = 0x150
	movslq	%eax, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB0_56
.LBB0_43:
	callq	__errno
	movl	(%rax), %ebx
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	284(%r12), %edi
	callq	close
	jmp	.LBB0_62
.LBB0_45:
	movl	$1, %eax
.LBB0_46:
	movl	24(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_50
# %bb.47:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4321, %ecx             # imm = 0x10E1
	je	.LBB0_49
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1234, %ecx             # imm = 0x4D2
	jne	.LBB0_59
.LBB0_49:
	movl	%ecx, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_50:
	addl	$-1, %eax
	cltd
	idivl	52(%r12)
	addl	$1, %eax
	cmpl	$1, %eax
	movl	$2, %edi
	cmovgl	%eax, %edi
	callq	__log2
	movl	%eax, %ecx
	shll	%cl, %ebx
	movslq	%eax, %rsi
	addl	$1, %eax
	movl	%eax, 68(%r12,%rsi,4)
	movl	%eax, 72(%r12,%rsi,4)
	movl	%esi, 32(%r12)
	movl	$2, 36(%r12)
	shll	$11, %esi
	orl	$1, %esi
	movq	%r12, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%eax, %edx
	xorl	%ecx, %ecx
	callq	__ibitmap
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_52
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_60
.LBB0_52:
	leal	-1(%rbx), %eax
	movl	%eax, 48(%r12)
	movl	%eax, 40(%r12)
	leal	(%rbx,%rbx), %ecx
	addl	$-1, %ecx
	movl	%ecx, 44(%r12)
	movb	16(%r12), %cl
	movl	$511, %edx              # imm = 0x1FF
	shrq	%cl, %rdx
	addl	$1, %edx
	movl	%edx, 60(%r12)
	cltd
	idivl	24(%r12)
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rax), %edi
	callq	__log2
	movl	$1, %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	cmpl	20(%r12), %esi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_54
# %bb.53:
	movl	%esi, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:
	movq	%r12, %rdi
	callq	alloc_segs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_61
# %bb.55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_67
# %bb.57:
	movl	12(%r15), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_67
# %bb.58:
	movq	%r12, %rdi
	jmp	.LBB0_68
.LBB0_59:
	callq	__errno
	movl	$22, (%rax)
.LBB0_60:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB0_62:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	free
.LBB0_63:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_64:
	xorl	%ebx, %ebx
.LBB0_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_66:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_10
.LBB0_67:
	movq	%r12, %rdi
	movl	$65536, %esi            # imm = 0x10000
.LBB0_68:
	callq	__buf_init
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, 324(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_70
# %bb.69:
	movl	280(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	shrl	%eax
	andl	$1, %eax
	jmp	.LBB0_71
.LBB0_70:
	xorl	%eax, %eax
.LBB0_71:
	movl	%eax, 328(%r12)
	movl	$-1, 312(%r12)
	movl	$72, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_73
# %bb.72:
	movq	%rax, %rbx
	movq	%r12, 56(%rax)
	movq	$hash_close, 8(%rax)
	movq	$hash_delete, 16(%rax)
	movq	$hash_fd, 64(%rax)
	movl	$hash_put, %eax
	movq	%rax, %xmm0
	movl	$hash_get, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 24(%rbx)
	movq	$hash_seq, 40(%rbx)
	movq	$hash_sync, 48(%rbx)
	movl	$1, (%rbx)
	jmp	.LBB0_65
.LBB0_73:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r12, %rdi
	callq	hdestroy
	jmp	.LBB0_63
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movb	28(%r15), %cl
	movl	%r14d, %eax
	shll	%cl, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_4
# %bb.5:
	movq	%rax, %r11
	movl	28(%r15), %ecx
	movl	260(%r15), %r10d
	movl	%r14d, %r9d
	movl	%r9d, %r8d
	andl	$1, %r8d
	xorl	%eax, %eax
	cmpl	$1, %r14d
	jne	.LBB1_7
# %bb.6:
	xorl	%edi, %edi
	testq	%r8, %r8
	jne	.LBB1_11
	jmp	.LBB1_12
.LBB1_1:
	callq	__errno
	movl	(%rax), %r14d
	movq	%r15, %rdi
	callq	hdestroy
	callq	__errno
	movl	%r14d, (%rax)
	movl	$-1, %eax
	jmp	.LBB1_12
.LBB1_4:
	xorl	%eax, %eax
	jmp	.LBB1_12
.LBB1_7:
	subq	%r8, %r9
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	shll	%cl, %esi
	movslq	%esi, %rsi
	leaq	(%r11,%rsi,8), %rsi
	movq	648(%r15), %rdx
	movq	%rsi, (%rdx,%rdi,8)
	movl	%edi, %edx
	leal	(%r10,%rdx), %esi
	addl	$1, %esi
	movl	%esi, 260(%r15)
	leal	1(%rdi), %esi
	shll	%cl, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%esi, %rsi
	leaq	(%r11,%rsi,8), %rsi
	movq	648(%r15), %rbx
	movq	%rsi, 8(%rbx,%rdi,8)
	addq	$2, %rdi
	addl	%r10d, %edx
	addl	$2, %edx
	movl	%edx, 260(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r9
	jne	.LBB1_8
# %bb.9:                                # %.loopexit
	addl	%edi, %r10d
	testq	%r8, %r8
	je	.LBB1_12
.LBB1_11:
	movl	%edi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movslq	%edx, %rcx
	leaq	(%r11,%rcx,8), %rcx
	movq	648(%r15), %rdx
	movq	%rcx, (%rdx,%rdi,8)
	addl	$1, %r10d
	movl	%r10d, 260(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_1
# %bb.2:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_3
.LBB2_1:
	xorl	%r14d, %r14d
.LBB2_3:
	movq	648(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# %bb.4:
	movq	(%rax), %rdi
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	subl	$1, 264(%r15)
	movq	648(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_6 Depth=1
	movslq	260(%r15), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, 260(%r15)
	movq	-8(%rdi,%rax,8), %rdi
	jmp	.LBB2_6
.LBB2_7:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	movq	%r15, %rdi
	callq	flush_meta
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB2_11
# %bb.9:
	testl	%eax, %eax
	je	.LBB2_11
# %bb.10:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	592(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_16
# %bb.12:                               # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_13 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB2_16
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	movq	336(%r15,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_13 Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	592(%r15), %eax
	jmp	.LBB2_15
.LBB2_16:
	movl	284(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB2_18
# %bb.17:
	callq	close
	movl	$42, __A_VARIABLE(%rip)
.LBB2_18:
	movq	%r15, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jb	.LBB4_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$22, 320(%rbx)
	jmp	.LBB4_5
.LBB4_2:
	testb	$3, 280(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.1:
	movq	56(%rdi), %rax
	movl	284(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB5_3
# %bb.2:
	callq	__errno
	movl	$2, (%rax)
	movl	$-1, %eax
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jne	.LBB7_3
# %bb.1:
	testb	$3, 280(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	ja	.LBB8_26
# %bb.1:
	movl	$137, %eax
	btl	%ecx, %eax
	jae	.LBB8_26
# %bb.2:
	movq	%rsi, %r15
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	312(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	je	.LBB8_5
# %bb.3:
	testl	%eax, %eax
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
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
                                        # implicit-def: $rax
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
                                        #     Child Loop BB8_21 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	movzwl	(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB8_11
	jmp	.LBB8_29
	.p2align	4, 0x90
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_11:                               #   in Loop: Header=BB8_8 Depth=1
	movq	(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_8 Depth=1
	movq	32(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_8 Depth=1
	movl	312(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	40(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jbe	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_15:                               #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movl	%ebx, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_27
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=2
	movq	%rax, (%r14)
	movq	32(%rax), %rcx
	cmpw	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_15 Depth=2
	addl	$1, %ebx
	movl	$1, 316(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	40(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jbe	.LBB8_15
	jmp	.LBB8_19
.LBB8_18:                               #   in Loop: Header=BB8_8 Depth=1
	movl	40(%r12), %edx
.LBB8_19:                               #   in Loop: Header=BB8_8 Depth=1
	movl	%ebx, 312(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jg	.LBB8_31
.LBB8_20:                               #   in Loop: Header=BB8_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r13), %rdx
	cmpw	$0, 2(%rcx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_23
	.p2align	4, 0x90
.LBB8_21:                               #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, 304(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_27
# %bb.22:                               #   in Loop: Header=BB8_21 Depth=2
	movq	32(%rax), %rcx
	movl	$1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, 4(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	je	.LBB8_21
.LBB8_23:                               #   in Loop: Header=BB8_8 Depth=1
	cmpw	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_7
# %bb.24:                               #   in Loop: Header=BB8_8 Depth=1
	movq	$0, 304(%r12)
	addl	$1, 312(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_7
.LBB8_26:
	callq	__errno
	movl	$22, (%rax)
	movl	$22, 320(%r12)
.LBB8_27:
	movl	$-1, %eax
.LBB8_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_29:
	movl	(%r13), %esi
	movzwl	%si, %edi
	movzwl	2(%rcx,%rdi,2), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %r8
	ja	.LBB8_32
# %bb.30:
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$1, %r8d
	callq	__big_keydata
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB8_28
	jmp	.LBB8_38
.LBB8_31:
	movl	$-1, 312(%r12)
	movl	$1, %eax
	jmp	.LBB8_28
.LBB8_32:
	movq	(%r14), %rax
	movq	32(%rax), %r10
	movl	%edi, %r9d
	movzwl	(%rcx,%r9,2), %ebx
	leaq	(%r10,%rbx), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jb	.LBB8_34
# %bb.33:
	movzwl	-2(%rcx,%r9,2), %ecx
	jmp	.LBB8_35
.LBB8_34:
	movl	12(%r12), %ecx
.LBB8_35:
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %ecx
	movslq	%ecx, %rax
	movq	%rax, 8(%r15)
	addq	%r8, %r10
	movq	%r10, (%rdi)
	subq	%r8, %rbx
	movq	%rbx, 8(%rdi)
	addl	$2, %esi
	movzwl	%si, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %eax
	jbe	.LBB8_37
# %bb.36:
	movq	$0, 304(%r12)
	addl	$1, 312(%r12)
	movl	$1, %eax
.LBB8_37:
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_38:
	xorl	%eax, %eax
	jmp	.LBB8_28
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB9_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %ebx
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB9_8
# %bb.3:
	movq	56(%rdi), %r14
	cmpl	$0, 328(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_7
# %bb.4:
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	__buf_free
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_8
# %bb.5:
	movq	%r14, %rdi
	callq	flush_meta
	movl	$42, __A_VARIABLE(%rip)
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
	movl	48(%rdi), %r15d
	movb	28(%rdi), %cl
	movl	%r14d, %r13d
	shrl	%cl, %r13d
	andl	%r14d, %r15d
	movl	%r14d, %edi
	cmpl	260(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_8
# %bb.1:
	movl	20(%rbx), %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r13d
	jl	.LBB10_5
# %bb.2:
	movl	%r12d, %eax
	shll	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movslq	%eax, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_5:
	movslq	24(%rbx), %rdi
	movl	$8, %esi
	callq	calloc
	movq	648(%rbx), %rcx
	movslq	%r13d, %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_6
# %bb.7:
	addl	$1, 264(%rbx)
	addl	$1, 260(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	40(%rbx), %edi
.LBB10_8:
	addl	$1, %edi
	callq	__log2
	movslq	32(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jle	.LBB10_10
# %bb.9:
	movl	68(%rbx,%rcx,4), %ecx
	movslq	%eax, %rdx
	movl	%ecx, 68(%rbx,%rdx,4)
	movl	%eax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_10:
	movl	44(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jbe	.LBB10_12
# %bb.11:
	movl	%eax, 48(%rbx)
	orl	%r14d, %eax
	movl	%eax, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_12:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	__split_page
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB11_2
# %bb.1:
	andl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_11
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	cmpq	$64, %rax
	jne	.LBB12_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	lseek
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpq	$-1, %rax
	je	.LBB12_12
# %bb.4:
	leaq	-288(%rbp), %rsi
	movl	$260, %edx              # imm = 0x104
	movl	%r14d, %edi
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB12_12
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB12_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB12_8
	.p2align	4, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_8 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %r14
	jae	.LBB12_11
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movq	336(%rbx,%r14,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	movzwl	196(%rbx,%r14,2), %edx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	__put_page
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_10
	jmp	.LBB12_12
.LBB12_11:
	xorl	%r15d, %r15d
	jmp	.LBB12_12
.LBB12_6:
	callq	__errno
	movl	$79, (%rax)
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, 320(%rbx)
.LBB12_12:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movl	12(%rdi), %r14d
	movq	(%rdx), %rdi
	movq	8(%rdx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movslq	%eax, %rsi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	*272(%rbx)
	andl	44(%rbx), %eax
	cmpl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB13_2
# %bb.1:
	andl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	%eax, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_3
# %bb.4:
	movl	%r13d, -60(%rbp)        # 4-byte Spill
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	orb	$8, 40(%rax)
	movq	32(%rax), %r13
	movzwl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, %r15
	cmpl	$2, %ecx
	jb	.LBB13_23
# %bb.5:
	addq	$2, %r13
	movl	$1, %r12d
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB13_6
	.p2align	4, 0x90
.LBB13_9:                               #   in Loop: Header=BB13_6 Depth=1
	movzwl	2(%r13), %r14d
	addq	$4, %r13
	addl	$2, %r12d
.LBB13_22:                              #   in Loop: Header=BB13_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r12d
	jge	.LBB13_23
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	movzwl	2(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$4, %ax
	jb	.LBB13_10
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=1
	movzwl	(%r13), %esi
	subl	%esi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-104(%rbp), %r14d       # 4-byte Folded Reload
	jne	.LBB13_9
# %bb.8:                                #   in Loop: Header=BB13_6 Depth=1
	addq	32(%r15), %rsi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, %ebx
	callq	memcmp
	movl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_9
	jmp	.LBB13_15
	.p2align	4, 0x90
.LBB13_10:                              #   in Loop: Header=BB13_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB13_11
# %bb.14:                               #   in Loop: Header=BB13_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	callq	__find_bigpair
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB13_15
# %bb.17:                               #   in Loop: Header=BB13_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %r12d
	jne	.LBB13_13
# %bb.18:                               #   in Loop: Header=BB13_6 Depth=1
	movq	%r15, -80(%rbp)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rsi
	callq	__find_last_page
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB13_19
# %bb.20:                               #   in Loop: Header=BB13_6 Depth=1
	movzwl	%ax, %esi
	movq	-80(%rbp), %rdx
	movq	%rbx, %rdi
	jmp	.LBB13_12
.LBB13_11:                              #   in Loop: Header=BB13_6 Depth=1
	movzwl	(%r13), %esi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
.LBB13_12:                              #   in Loop: Header=BB13_6 Depth=1
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_13
# %bb.21:                               #   in Loop: Header=BB13_6 Depth=1
	movq	%rax, %r15
	movq	32(%rax), %r13
	movzwl	(%r13), %ecx
	addq	$2, %r13
	movl	12(%rbx), %r14d
	movl	$1, %r12d
	jmp	.LBB13_22
.LBB13_15:
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	ja	.LBB13_32
# %bb.16:
	movl	%eax, %eax
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_26:
	movq	32(%r15), %rcx
	movslq	%r12d, %rdx
	movzwl	2(%rcx,%rdx,2), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	ja	.LBB13_33
# %bb.27:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	xorl	%r8d, %r8d
	callq	__big_return
	jmp	.LBB13_31
.LBB13_19:
	movq	-80(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB13_23:
	movl	-60(%rbp), %eax         # 4-byte Reload
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB13_25
# %bb.24:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	__addel
	movq	-48(%rbp), %rcx         # 8-byte Reload
	andb	$-9, 40(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB13_35
.LBB13_25:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB13_35
.LBB13_30:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	__delpair
.LBB13_31:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_3
	jmp	.LBB13_34
.LBB13_28:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	__delpair
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_13
# %bb.29:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	__addel
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_34
.LBB13_13:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB13_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_33:
	leaq	(%rcx,%rax), %rsi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, (%rdi)
	movzwl	(%rcx,%rdx,2), %ecx
	subq	%rax, %rcx
	movq	%rcx, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_34:
	movq	-48(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB13_35
.LBB13_32:
	callq	abort
.Lfunc_end13:
	.size	hash_access, .Lfunc_end13-hash_access
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI13_0:
	.quad	.LBB13_26
	.quad	.LBB13_28
	.quad	.LBB13_25
	.quad	.LBB13_30
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
