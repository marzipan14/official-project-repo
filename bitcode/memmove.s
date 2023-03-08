	.text
	.file	"memmove.c"
	.globl	memmove                 # -- Begin function memmove
	.p2align	4, 0x90
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r11
	cmpq	%rdi, %rsi
	jae	.LBB0_5
# %bb.1:
	leaq	(%rsi,%rdx), %rcx
	cmpq	%r11, %rcx
	jbe	.LBB0_5
# %bb.2:
	testq	%rdx, %rdx
	je	.LBB0_65
# %bb.3:
	leaq	(%r11,%rdx), %rdi
	cmpq	$16, %rdx
	jb	.LBB0_4
# %bb.16:
	cmpq	%r11, %rcx
	jbe	.LBB0_50
# %bb.17:
	cmpq	%rsi, %rdi
	jbe	.LBB0_50
.LBB0_4:
	movq	%rdx, %rbp
.LBB0_53:
	leaq	-1(%rbp), %r8
	movq	%rbp, %rsi
	andq	$7, %rsi
	je	.LBB0_57
# %bb.54:                               # %.preheader1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_55:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %ebx
	addq	$-1, %rcx
	movb	%bl, -1(%rdi)
	addq	$-1, %rdi
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_55
# %bb.56:                               # %.loopexit2
	subq	%rdx, %rbp
.LBB0_57:
	cmpq	$7, %r8
	jb	.LBB0_65
# %bb.58:                               # %.preheader
	negq	%rbp
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx,%rdx), %ebx
	movb	%bl, -1(%rdi,%rdx)
	movzbl	-2(%rcx,%rdx), %ebx
	movb	%bl, -2(%rdi,%rdx)
	movzbl	-3(%rcx,%rdx), %ebx
	movb	%bl, -3(%rdi,%rdx)
	movzbl	-4(%rcx,%rdx), %ebx
	movb	%bl, -4(%rdi,%rdx)
	movzbl	-5(%rcx,%rdx), %ebx
	movb	%bl, -5(%rdi,%rdx)
	movzbl	-6(%rcx,%rdx), %ebx
	movb	%bl, -6(%rdi,%rdx)
	movzbl	-7(%rcx,%rdx), %ebx
	movb	%bl, -7(%rdi,%rdx)
	movzbl	-8(%rcx,%rdx), %ebx
	movb	%bl, -8(%rdi,%rdx)
	addq	$-8, %rdx
	cmpq	%rdx, %rbp
	jne	.LBB0_59
	jmp	.LBB0_65
.LBB0_5:
	cmpq	$32, %rdx
	jae	.LBB0_8
# %bb.6:
	movq	%r11, %rax
	testq	%rdx, %rdx
	jne	.LBB0_7
	jmp	.LBB0_65
.LBB0_8:
	movl	%esi, %ecx
	orl	%r11d, %ecx
	testb	$7, %cl
	je	.LBB0_14
# %bb.9:
	movq	%r11, %rax
	cmpq	$32, %rdx
	jb	.LBB0_26
	jmp	.LBB0_10
.LBB0_14:
	leaq	-32(%rdx), %r14
	testb	$32, %r14b
	jne	.LBB0_33
# %bb.15:
	movq	(%rsi), %rcx
	movq	%rcx, (%r11)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%r11)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%r11)
	leaq	32(%rsi), %rcx
	movq	24(%rsi), %rbp
	leaq	32(%r11), %rdi
	movq	%rbp, 24(%r11)
	movq	%r14, %r8
	jmp	.LBB0_34
.LBB0_33:
	movq	%rsi, %rcx
	movq	%r11, %rdi
	movq	%rdx, %r8
.LBB0_34:
	movq	%r14, %r15
	andq	$-32, %r15
	cmpq	$32, %r14
	jb	.LBB0_37
# %bb.35:                               # %.preheader14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rbx), %rbp
	movq	%rbp, (%rdi,%rbx)
	movq	8(%rcx,%rbx), %rbp
	movq	%rbp, 8(%rdi,%rbx)
	movq	16(%rcx,%rbx), %rbp
	movq	%rbp, 16(%rdi,%rbx)
	movq	24(%rcx,%rbx), %rbp
	movq	%rbp, 24(%rdi,%rbx)
	movq	32(%rcx,%rbx), %rbp
	movq	%rbp, 32(%rdi,%rbx)
	movq	40(%rcx,%rbx), %rbp
	movq	%rbp, 40(%rdi,%rbx)
	movq	48(%rcx,%rbx), %rbp
	movq	%rbp, 48(%rdi,%rbx)
	movq	56(%rcx,%rbx), %rbp
	movq	%rbp, 56(%rdi,%rbx)
	addq	$-64, %r8
	addq	$64, %rbx
	cmpq	$31, %r8
	ja	.LBB0_36
.LBB0_37:
	leaq	(%rsi,%r15), %r8
	addq	$32, %r8
	leaq	(%r11,%r15), %rax
	addq	$32, %rax
	subq	%r15, %r14
	cmpq	$8, %r14
	jb	.LBB0_49
# %bb.38:
	leaq	-8(%r14), %r9
	movq	%r9, %r10
	shrq	$3, %r10
	leaq	1(%r10), %rcx
	movq	%rdx, %r13
	subq	%r15, %r13
	addq	$-40, %r13
	movq	%r13, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	cmpq	$3, %rdi
	jbe	.LBB0_41
# %bb.39:
	andq	$-8, %r13
	leaq	(%r15,%r13), %rbx
	leaq	(%rsi,%rbx), %rbp
	addq	$40, %rbp
	cmpq	%rbp, %rax
	jae	.LBB0_60
# %bb.40:
	addq	%r11, %rbx
	addq	$40, %rbx
	cmpq	%rbx, %r8
	jae	.LBB0_60
.LBB0_41:
	movq	%r8, %rbx
	movq	%rax, %rdi
.LBB0_42:
	movl	$7, %edx
	subq	%r14, %rdx
	cmpq	$-8, %rdx
	movq	$-8, %r15
	cmovaq	%rdx, %r15
	addq	%r14, %r15
	movl	%r15d, %r12d
	shrl	$3, %r12d
	addl	$1, %r12d
	andq	$7, %r12
	je	.LBB0_46
# %bb.43:                               # %.preheader12
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi,8), %rbp
	movq	%rbp, (%rdi,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %r12
	jne	.LBB0_44
# %bb.45:                               # %.loopexit13
	subq	%rdx, %rbx
	subq	%rdx, %rdi
	addq	%rdx, %r14
.LBB0_46:
	cmpq	$56, %r15
	jb	.LBB0_63
# %bb.47:                               # %.preheader10
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_48:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rdx), %rsi
	movq	%rsi, (%rdi,%rdx)
	movq	8(%rbx,%rdx), %rsi
	movq	%rsi, 8(%rdi,%rdx)
	movq	16(%rbx,%rdx), %rsi
	movq	%rsi, 16(%rdi,%rdx)
	movq	24(%rbx,%rdx), %rsi
	movq	%rsi, 24(%rdi,%rdx)
	movq	32(%rbx,%rdx), %rsi
	movq	%rsi, 32(%rdi,%rdx)
	movq	40(%rbx,%rdx), %rsi
	movq	%rsi, 40(%rdi,%rdx)
	movq	48(%rbx,%rdx), %rsi
	movq	%rsi, 48(%rdi,%rdx)
	movq	56(%rbx,%rdx), %rsi
	movq	%rsi, 56(%rdi,%rdx)
	addq	$-64, %r14
	addq	$64, %rdx
	cmpq	$7, %r14
	ja	.LBB0_48
	jmp	.LBB0_63
.LBB0_49:
	movq	%r8, %rsi
	jmp	.LBB0_64
.LBB0_50:
	movl	%edx, %ebp
	andl	$15, %ebp
	leaq	(%rsi,%rbp), %rcx
	leaq	(%r11,%rbp), %rdi
	.p2align	4, 0x90
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdx), %xmm0
	movups	%xmm0, -16(%r11,%rdx)
	addq	$-16, %rdx
	cmpq	%rdx, %rbp
	jne	.LBB0_51
# %bb.52:
	testq	%rbp, %rbp
	jne	.LBB0_53
	jmp	.LBB0_65
.LBB0_60:
	movl	%edi, %r12d
	andl	$3, %r12d
	movabsq	$2305843009213693948, %rbp # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rdi, %rbp
	leaq	(%r8,%rbp,8), %rbx
	leaq	(%rax,%rbp,8), %rdi
	leaq	(%rdx,%r12,8), %r14
	subq	%r13, %r14
	subq	%r15, %r14
	addq	$-40, %r14
	movq	%r10, %r13
	subq	%r12, %r13
	addq	$1, %r13
	leaq	(%r11,%r15), %rbp
	addq	$48, %rbp
	addq	%r15, %rsi
	addq	$48, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdx,8), %xmm0
	movups	(%rsi,%rdx,8), %xmm1
	movups	%xmm0, -16(%rbp,%rdx,8)
	movups	%xmm1, (%rbp,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r13
	jne	.LBB0_61
# %bb.62:
	testq	%r12, %r12
	jne	.LBB0_42
.LBB0_63:
	leaq	(%r8,%r10,8), %rsi
	addq	$8, %rsi
	leaq	(%rax,%rcx,8), %rax
	andl	$7, %r9d
	movq	%r9, %r14
.LBB0_64:
	movq	%r14, %rdx
	testq	%rdx, %rdx
	je	.LBB0_65
.LBB0_7:
	cmpq	$32, %rdx
	jb	.LBB0_26
.LBB0_10:
	leaq	(%rsi,%rdx), %rdi
	cmpq	%rdi, %rax
	jae	.LBB0_12
# %bb.11:
	leaq	(%rax,%rdx), %rdi
	cmpq	%rdi, %rsi
	jb	.LBB0_26
.LBB0_12:
	movq	%rdx, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rdi
	movq	%rdi, %rbx
	shrq	$5, %rbx
	addq	$1, %rbx
	movl	%ebx, %r9d
	andl	$3, %r9d
	cmpq	$96, %rdi
	jae	.LBB0_19
# %bb.13:
	xorl	%edi, %edi
	jmp	.LBB0_21
.LBB0_19:
	subq	%r9, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movups	(%rsi,%rdi), %xmm0
	movups	16(%rsi,%rdi), %xmm1
	movups	%xmm0, (%rax,%rdi)
	movups	%xmm1, 16(%rax,%rdi)
	movups	32(%rsi,%rdi), %xmm0
	movups	48(%rsi,%rdi), %xmm1
	movups	%xmm0, 32(%rax,%rdi)
	movups	%xmm1, 48(%rax,%rdi)
	movups	64(%rsi,%rdi), %xmm0
	movups	80(%rsi,%rdi), %xmm1
	movups	%xmm0, 64(%rax,%rdi)
	movups	%xmm1, 80(%rax,%rdi)
	movups	96(%rsi,%rdi), %xmm0
	movups	112(%rsi,%rdi), %xmm1
	movups	%xmm0, 96(%rax,%rdi)
	movups	%xmm1, 112(%rax,%rdi)
	subq	$-128, %rdi
	addq	$-4, %rbx
	jne	.LBB0_20
.LBB0_21:
	testq	%r9, %r9
	je	.LBB0_24
# %bb.22:                               # %.preheader7
	addq	$16, %rdi
	negq	%r9
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rsi,%rdi), %xmm0
	movups	(%rsi,%rdi), %xmm1
	movups	%xmm0, -16(%rax,%rdi)
	movups	%xmm1, (%rax,%rdi)
	addq	$32, %rdi
	incq	%r9
	jne	.LBB0_23
.LBB0_24:
	cmpq	%r8, %rdx
	je	.LBB0_65
# %bb.25:
	andl	$31, %edx
	addq	%r8, %rsi
	addq	%r8, %rax
.LBB0_26:
	leaq	-1(%rdx), %r8
	movq	%rdx, %rdi
	andq	$7, %rdi
	je	.LBB0_30
# %bb.27:                               # %.preheader5
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbx), %ecx
	movb	%cl, (%rax,%rbx)
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_28
# %bb.29:                               # %.loopexit6
	addq	%rbx, %rsi
	addq	%rbx, %rax
	subq	%rbx, %rdx
.LBB0_30:
	cmpq	$7, %r8
	jb	.LBB0_65
# %bb.31:                               # %.preheader3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %ecx
	movb	%cl, (%rax,%rdi)
	movzbl	1(%rsi,%rdi), %ecx
	movb	%cl, 1(%rax,%rdi)
	movzbl	2(%rsi,%rdi), %ecx
	movb	%cl, 2(%rax,%rdi)
	movzbl	3(%rsi,%rdi), %ecx
	movb	%cl, 3(%rax,%rdi)
	movzbl	4(%rsi,%rdi), %ecx
	movb	%cl, 4(%rax,%rdi)
	movzbl	5(%rsi,%rdi), %ecx
	movb	%cl, 5(%rax,%rdi)
	movzbl	6(%rsi,%rdi), %ecx
	movb	%cl, 6(%rax,%rdi)
	movzbl	7(%rsi,%rdi), %ecx
	movb	%cl, 7(%rax,%rdi)
	addq	$8, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_32
.LBB0_65:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
