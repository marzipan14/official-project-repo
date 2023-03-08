	.text
	.file	"mempcpy.c"
	.globl	mempcpy                 # -- Begin function mempcpy
	.p2align	4, 0x90
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rax
	cmpq	$32, %rdx
	jb	.LBB0_26
# %bb.1:
	movl	%esi, %ecx
	orl	%eax, %ecx
	testb	$7, %cl
	jne	.LBB0_27
# %bb.2:
	leaq	-32(%rdx), %r12
	testb	$32, %r12b
	jne	.LBB0_3
# %bb.4:
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	leaq	32(%rsi), %r9
	movq	24(%rsi), %rcx
	leaq	32(%rax), %rbx
	movq	%rcx, 24(%rax)
	movq	%r12, %r8
	jmp	.LBB0_5
.LBB0_3:
	movq	%rsi, %r9
	movq	%rax, %rbx
	movq	%rdx, %r8
.LBB0_5:
	movq	%r12, %r15
	andq	$-32, %r15
	cmpq	$32, %r12
	jb	.LBB0_8
# %bb.6:                                # %.preheader10
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rcx), %rdi
	movq	%rdi, (%rbx,%rcx)
	movq	8(%r9,%rcx), %rdi
	movq	%rdi, 8(%rbx,%rcx)
	movq	16(%r9,%rcx), %rdi
	movq	%rdi, 16(%rbx,%rcx)
	movq	24(%r9,%rcx), %rdi
	movq	%rdi, 24(%rbx,%rcx)
	movq	32(%r9,%rcx), %rdi
	movq	%rdi, 32(%rbx,%rcx)
	movq	40(%r9,%rcx), %rdi
	movq	%rdi, 40(%rbx,%rcx)
	movq	48(%r9,%rcx), %rdi
	movq	%rdi, 48(%rbx,%rcx)
	movq	56(%r9,%rcx), %rdi
	movq	%rdi, 56(%rbx,%rcx)
	addq	$-64, %r8
	addq	$64, %rcx
	cmpq	$31, %r8
	ja	.LBB0_7
.LBB0_8:
	leaq	(%rsi,%r15), %r8
	addq	$32, %r8
	leaq	(%rax,%r15), %r10
	addq	$32, %r10
	subq	%r15, %r12
	cmpq	$8, %r12
	jb	.LBB0_9
# %bb.10:
	leaq	-8(%r12), %r9
	movq	%r9, %r14
	shrq	$3, %r14
	leaq	1(%r14), %r11
	movq	%rdx, %rcx
	subq	%r15, %rcx
	addq	$-40, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	cmpq	$3, %rdi
	jbe	.LBB0_11
# %bb.19:
	andq	$-8, %rcx
	leaq	(%r15,%rcx), %r13
	leaq	(%rsi,%r13), %rbx
	addq	$40, %rbx
	cmpq	%rbx, %r10
	jae	.LBB0_21
# %bb.20:
	leaq	(%rax,%r13), %rbx
	addq	$40, %rbx
	cmpq	%rbx, %r8
	jae	.LBB0_21
.LBB0_11:
	movq	%r8, %rbx
	movq	%r10, %rdi
.LBB0_12:
	movl	$7, %ecx
	subq	%r12, %rcx
	cmpq	$-8, %rcx
	movq	$-8, %r15
	cmovaq	%rcx, %r15
	addq	%r12, %r15
	movl	%r15d, %ecx
	shrl	$3, %ecx
	addl	$1, %ecx
	andq	$7, %rcx
	je	.LBB0_16
# %bb.13:                               # %.preheader8
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %rcx
	jne	.LBB0_14
# %bb.15:                               # %.loopexit9
	subq	%rdx, %rbx
	subq	%rdx, %rdi
	addq	%rdx, %r12
.LBB0_16:
	cmpq	$56, %r15
	jb	.LBB0_24
# %bb.17:                               # %.preheader6
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rax), %rcx
	movq	%rcx, (%rdi,%rax)
	movq	8(%rbx,%rax), %rcx
	movq	%rcx, 8(%rdi,%rax)
	movq	16(%rbx,%rax), %rcx
	movq	%rcx, 16(%rdi,%rax)
	movq	24(%rbx,%rax), %rcx
	movq	%rcx, 24(%rdi,%rax)
	movq	32(%rbx,%rax), %rcx
	movq	%rcx, 32(%rdi,%rax)
	movq	40(%rbx,%rax), %rcx
	movq	%rcx, 40(%rdi,%rax)
	movq	48(%rbx,%rax), %rcx
	movq	%rcx, 48(%rdi,%rax)
	movq	56(%rbx,%rax), %rcx
	movq	%rcx, 56(%rdi,%rax)
	addq	$-64, %r12
	addq	$64, %rax
	cmpq	$7, %r12
	ja	.LBB0_18
	jmp	.LBB0_24
.LBB0_9:
	movq	%r10, %rax
	movq	%r8, %rsi
	jmp	.LBB0_25
.LBB0_21:
	movl	%edi, %r13d
	andl	$3, %r13d
	movabsq	$2305843009213693948, %r12 # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rdi, %r12
	leaq	(%r8,%r12,8), %rbx
	leaq	(%r10,%r12,8), %rdi
	leaq	(%rdx,%r13,8), %r12
	subq	%rcx, %r12
	subq	%r15, %r12
	addq	$-40, %r12
	movq	%r14, %rcx
	subq	%r13, %rcx
	addq	$1, %rcx
	addq	%r15, %rax
	addq	$48, %rax
	leaq	(%rsi,%r15), %rdx
	addq	$48, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rdx,%rsi,8), %xmm0
	movups	(%rdx,%rsi,8), %xmm1
	movups	%xmm0, -16(%rax,%rsi,8)
	movups	%xmm1, (%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_22
# %bb.23:
	testq	%r13, %r13
	jne	.LBB0_12
.LBB0_24:
	leaq	(%r8,%r14,8), %rsi
	addq	$8, %rsi
	leaq	(%r10,%r11,8), %rax
	andl	$7, %r9d
	movq	%r9, %r12
.LBB0_25:
	movq	%r12, %rdx
.LBB0_26:
	testq	%rdx, %rdx
	je	.LBB0_48
.LBB0_27:
	cmpq	$32, %rdx
	jb	.LBB0_28
# %bb.29:
	leaq	(%rsi,%rdx), %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_31
# %bb.30:
	leaq	(%rax,%rdx), %rcx
	cmpq	%rcx, %rsi
	jae	.LBB0_31
.LBB0_28:
	movq	%rax, %rdi
	movq	%rdx, %r9
.LBB0_40:
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$7, %r10
	je	.LBB0_44
# %bb.41:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbx), %ecx
	movb	%cl, (%rdi,%rbx)
	addq	$1, %rbx
	cmpq	%rbx, %r10
	jne	.LBB0_42
# %bb.43:                               # %.loopexit2
	addq	%rbx, %rsi
	addq	%rbx, %rdi
	subq	%rbx, %r9
.LBB0_44:
	cmpq	$7, %r8
	jb	.LBB0_47
# %bb.45:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbx), %ecx
	movb	%cl, (%rdi,%rbx)
	movzbl	1(%rsi,%rbx), %ecx
	movb	%cl, 1(%rdi,%rbx)
	movzbl	2(%rsi,%rbx), %ecx
	movb	%cl, 2(%rdi,%rbx)
	movzbl	3(%rsi,%rbx), %ecx
	movb	%cl, 3(%rdi,%rbx)
	movzbl	4(%rsi,%rbx), %ecx
	movb	%cl, 4(%rdi,%rbx)
	movzbl	5(%rsi,%rbx), %ecx
	movb	%cl, 5(%rdi,%rbx)
	movzbl	6(%rsi,%rbx), %ecx
	movb	%cl, 6(%rdi,%rbx)
	movzbl	7(%rsi,%rbx), %ecx
	movb	%cl, 7(%rdi,%rbx)
	addq	$8, %rbx
	cmpq	%rbx, %r9
	jne	.LBB0_46
	jmp	.LBB0_47
.LBB0_31:
	movq	%rdx, %rdi
	andq	$-32, %rdi
	leaq	-32(%rdi), %rbx
	movq	%rbx, %rcx
	shrq	$5, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$96, %rbx
	jae	.LBB0_33
# %bb.32:
	xorl	%ebx, %ebx
	jmp	.LBB0_35
.LBB0_33:
	subq	%r8, %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movups	(%rsi,%rbx), %xmm0
	movups	16(%rsi,%rbx), %xmm1
	movups	%xmm0, (%rax,%rbx)
	movups	%xmm1, 16(%rax,%rbx)
	movups	32(%rsi,%rbx), %xmm0
	movups	48(%rsi,%rbx), %xmm1
	movups	%xmm0, 32(%rax,%rbx)
	movups	%xmm1, 48(%rax,%rbx)
	movups	64(%rsi,%rbx), %xmm0
	movups	80(%rsi,%rbx), %xmm1
	movups	%xmm0, 64(%rax,%rbx)
	movups	%xmm1, 80(%rax,%rbx)
	movups	96(%rsi,%rbx), %xmm0
	movups	112(%rsi,%rbx), %xmm1
	movups	%xmm0, 96(%rax,%rbx)
	movups	%xmm1, 112(%rax,%rbx)
	subq	$-128, %rbx
	addq	$-4, %rcx
	jne	.LBB0_34
.LBB0_35:
	testq	%r8, %r8
	je	.LBB0_38
# %bb.36:                               # %.preheader3
	addq	$16, %rbx
	negq	%r8
	.p2align	4, 0x90
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rbx), %xmm0
	movups	(%rsi,%rbx), %xmm1
	movups	%xmm0, -16(%rax,%rbx)
	movups	%xmm1, (%rax,%rbx)
	addq	$32, %rbx
	incq	%r8
	jne	.LBB0_37
.LBB0_38:
	cmpq	%rdi, %rdx
	jne	.LBB0_39
.LBB0_47:
	addq	%rdx, %rax
.LBB0_48:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB0_39:
	movl	%edx, %r9d
	andl	$31, %r9d
	addq	%rdi, %rsi
	addq	%rax, %rdi
	jmp	.LBB0_40
.Lfunc_end0:
	.size	mempcpy, .Lfunc_end0-mempcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
