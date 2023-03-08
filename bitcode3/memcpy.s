	.text
	.file	"memcpy.c"
	.globl	memcpy                  # -- Begin function memcpy
	.p2align	4, 0x90
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rax
	cmpq	$32, %rdx
	jae	.LBB0_2
# %bb.1:
	movq	%rax, %r12
	testq	%rdx, %rdx
	je	.LBB0_33
.LBB0_21:
	cmpq	$32, %rdx
	jae	.LBB0_22
	jmp	.LBB0_31
.LBB0_2:
	movl	%esi, %ecx
	orl	%eax, %ecx
	testb	$7, %cl
	je	.LBB0_4
# %bb.3:
	movq	%rax, %r12
	cmpq	$32, %rdx
	jb	.LBB0_31
.LBB0_22:
	movq	%rdx, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rdi
	movq	%rdi, %rbx
	shrq	$5, %rbx
	addq	$1, %rbx
	movl	%ebx, %ecx
	andl	$3, %ecx
	cmpq	$96, %rdi
	jae	.LBB0_24
# %bb.23:
	xorl	%edi, %edi
	jmp	.LBB0_26
.LBB0_4:
	leaq	-32(%rdx), %r15
	movl	%r15d, %r8d
	shrl	$5, %r8d
	addl	$1, %r8d
	movq	%rsi, %rcx
	movq	%rax, %rbx
	movq	%rdx, %r9
	andq	$3, %r8
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbx)
	movups	16(%rcx), %xmm0
	addq	$32, %rcx
	movups	%xmm0, 16(%rbx)
	addq	$32, %rbx
	addq	$-32, %r9
	addq	$-1, %r8
	jne	.LBB0_5
.LBB0_6:
	movq	%r15, %r14
	andq	$-32, %r14
	cmpq	$96, %r15
	jb	.LBB0_9
# %bb.7:                                # %.preheader4
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movups	(%rcx,%rdi), %xmm0
	movups	%xmm0, (%rbx,%rdi)
	movups	16(%rcx,%rdi), %xmm0
	movups	%xmm0, 16(%rbx,%rdi)
	movups	32(%rcx,%rdi), %xmm0
	movups	%xmm0, 32(%rbx,%rdi)
	movups	48(%rcx,%rdi), %xmm0
	movups	%xmm0, 48(%rbx,%rdi)
	movups	64(%rcx,%rdi), %xmm0
	movups	%xmm0, 64(%rbx,%rdi)
	movups	80(%rcx,%rdi), %xmm0
	movups	%xmm0, 80(%rbx,%rdi)
	movups	96(%rcx,%rdi), %xmm0
	movups	%xmm0, 96(%rbx,%rdi)
	movups	112(%rcx,%rdi), %xmm0
	movups	%xmm0, 112(%rbx,%rdi)
	addq	$-128, %r9
	subq	$-128, %rdi
	cmpq	$31, %r9
	ja	.LBB0_8
.LBB0_9:
	leaq	(%rsi,%r14), %r8
	addq	$32, %r8
	leaq	(%rax,%r14), %r12
	addq	$32, %r12
	subq	%r14, %r15
	cmpq	$8, %r15
	jb	.LBB0_10
# %bb.11:
	leaq	-8(%r15), %r9
	movq	%r9, %r10
	shrq	$3, %r10
	leaq	1(%r10), %r11
	movq	%rdx, %rcx
	subq	%r14, %rcx
	addq	$-40, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	cmpq	$3, %rdi
	ja	.LBB0_15
# %bb.12:
	movq	%r8, %rbp
	movq	%r12, %rbx
	jmp	.LBB0_13
.LBB0_24:
	subq	%rcx, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movups	(%rsi,%rdi), %xmm0
	movups	16(%rsi,%rdi), %xmm1
	movups	%xmm0, (%r12,%rdi)
	movups	%xmm1, 16(%r12,%rdi)
	movups	32(%rsi,%rdi), %xmm0
	movups	48(%rsi,%rdi), %xmm1
	movups	%xmm0, 32(%r12,%rdi)
	movups	%xmm1, 48(%r12,%rdi)
	movups	64(%rsi,%rdi), %xmm0
	movups	80(%rsi,%rdi), %xmm1
	movups	%xmm0, 64(%r12,%rdi)
	movups	%xmm1, 80(%r12,%rdi)
	movups	96(%rsi,%rdi), %xmm0
	movups	112(%rsi,%rdi), %xmm1
	movups	%xmm0, 96(%r12,%rdi)
	movups	%xmm1, 112(%r12,%rdi)
	subq	$-128, %rdi
	addq	$-4, %rbx
	jne	.LBB0_25
.LBB0_26:
	testq	%rcx, %rcx
	je	.LBB0_29
# %bb.27:                               # %.preheader
	addq	$16, %rdi
	negq	%rcx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdi), %xmm0
	movups	(%rsi,%rdi), %xmm1
	movups	%xmm0, -16(%r12,%rdi)
	movups	%xmm1, (%r12,%rdi)
	addq	$32, %rdi
	incq	%rcx
	jne	.LBB0_28
.LBB0_29:
	cmpq	%r8, %rdx
	je	.LBB0_33
# %bb.30:
	andl	$31, %edx
	addq	%r8, %rsi
	addq	%r8, %r12
.LBB0_31:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rcx), %ebx
	movb	%bl, (%r12,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_32
.LBB0_33:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movq	%r8, %rsi
	jmp	.LBB0_19
.LBB0_15:
	movl	%edi, %r13d
	andl	$3, %r13d
	movabsq	$2305843009213693948, %rbx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rdi, %rbx
	leaq	(%r8,%rbx,8), %rbp
	leaq	(%r12,%rbx,8), %rbx
	leaq	(%rdx,%r13,8), %r15
	andq	$-8, %rcx
	subq	%rcx, %r15
	subq	%r14, %r15
	addq	$-40, %r15
	movq	%r10, %rcx
	subq	%r13, %rcx
	addq	$1, %rcx
	leaq	(%rax,%r14), %rdx
	addq	$48, %rdx
	addq	%r14, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdi,8), %xmm0
	movups	(%rsi,%rdi,8), %xmm1
	movups	%xmm0, -16(%rdx,%rdi,8)
	movups	%xmm1, (%rdx,%rdi,8)
	addq	$4, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB0_16
# %bb.17:
	testq	%r13, %r13
	je	.LBB0_18
.LBB0_13:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rcx), %rdx
	movq	%rdx, (%rbx,%rcx)
	addq	$-8, %r15
	addq	$8, %rcx
	cmpq	$7, %r15
	ja	.LBB0_14
.LBB0_18:
	leaq	(%r8,%r10,8), %rsi
	addq	$8, %rsi
	leaq	(%r12,%r11,8), %r12
	andl	$7, %r9d
	movq	%r9, %r15
.LBB0_19:
	movq	%r15, %rdx
	testq	%rdx, %rdx
	jne	.LBB0_21
	jmp	.LBB0_33
.Lfunc_end0:
	.size	memcpy, .Lfunc_end0-memcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
