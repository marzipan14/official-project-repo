	.text
	.file	"mempcpy.c"
	.globl	mempcpy                 # -- Begin function mempcpy
	.p2align	4, 0x90
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	pushq	%rbx
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rdx
	jb	.LBB0_20
# %bb.1:
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	je	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_21
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-32(%rdx), %r9
	testb	$32, %r9b
	jne	.LBB0_4
# %bb.5:
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	leaq	32(%rsi), %r11
	movq	24(%rsi), %rdi
	leaq	32(%rax), %rcx
	movq	%rdi, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %r8
	jmp	.LBB0_6
.LBB0_4:
	movq	%rsi, %r11
	movq	%rax, %rcx
	movq	%rdx, %r8
.LBB0_6:
	movq	%r9, %r10
	andq	$-32, %r10
	cmpq	$32, %r9
	jb	.LBB0_9
# %bb.7:                                # %.preheader7
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	(%r11,%rdi), %rbx
	movq	%rbx, (%rcx,%rdi)
	movq	8(%r11,%rdi), %rbx
	movq	%rbx, 8(%rcx,%rdi)
	movq	16(%r11,%rdi), %rbx
	movq	%rbx, 16(%rcx,%rdi)
	movq	24(%r11,%rdi), %rbx
	movq	%rbx, 24(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r11,%rdi), %rbx
	movq	%rbx, 32(%rcx,%rdi)
	movq	40(%r11,%rdi), %rbx
	movq	%rbx, 40(%rcx,%rdi)
	movq	48(%r11,%rdi), %rbx
	movq	%rbx, 48(%rcx,%rdi)
	movq	56(%r11,%rdi), %rbx
	movq	%rbx, 56(%rcx,%rdi)
	addq	$-64, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdi
	cmpq	$31, %r8
	ja	.LBB0_8
.LBB0_9:
	addq	%r10, %rsi
	addq	$32, %rsi
	addq	%r10, %rax
	addq	$32, %rax
	subq	%r10, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %r9
	jb	.LBB0_19
# %bb.10:
	leaq	-8(%r9), %r8
	movq	%r8, %r11
	shrq	$3, %r11
	subq	%r10, %rdx
	addq	$-40, %rdx
	movl	%edx, %ecx
	shrl	$3, %ecx
	addl	$1, %ecx
	andq	$3, %rcx
	je	.LBB0_11
# %bb.12:                               # %.preheader5
	negq	%rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi), %rbx
	movq	%rbx, (%rax,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	incq	%rcx
	jne	.LBB0_13
# %bb.14:                               # %.loopexit6
	leaq	(%rsi,%rdi), %rcx
	leaq	(%rax,%rdi), %rbx
	subq	%rdi, %r9
	jmp	.LBB0_15
.LBB0_11:
	movq	%rsi, %rcx
	movq	%rax, %rbx
.LBB0_15:
	leaq	1(%r11), %r10
	cmpq	$24, %rdx
	jb	.LBB0_18
# %bb.16:                               # %.preheader3
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx), %rdi
	movq	%rdi, (%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rdx), %rdi
	movq	%rdi, 8(%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx,%rdx), %rdi
	movq	%rdi, 16(%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rcx,%rdx), %rdi
	movq	%rdi, 24(%rbx,%rdx)
	addq	$-32, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdx
	cmpq	$7, %r9
	ja	.LBB0_17
.LBB0_18:
	leaq	(%rsi,%r11,8), %rsi
	addq	$8, %rsi
	leaq	(%rax,%r10,8), %rax
	andl	$7, %r8d
	movq	%r8, %r9
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rdx
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_30
.LBB0_21:
	leaq	-1(%rdx), %r8
	movq	%rdx, %rcx
	andq	$3, %rcx
	je	.LBB0_22
# %bb.23:                               # %.preheader1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %ebx
	movb	%bl, (%rax,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB0_24
# %bb.25:                               # %.loopexit2
	addq	%rdi, %rsi
	leaq	(%rax,%rdi), %rcx
	movq	%rdx, %r9
	subq	%rdi, %r9
	cmpq	$3, %r8
	jae	.LBB0_27
	jmp	.LBB0_29
.LBB0_22:
	movq	%rax, %rcx
	movq	%rdx, %r9
	cmpq	$3, %r8
	jb	.LBB0_29
.LBB0_27:                               # %.preheader
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %ebx
	movb	%bl, (%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rsi,%rdi), %ebx
	movb	%bl, 1(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rsi,%rdi), %ebx
	movb	%bl, 2(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rsi,%rdi), %ebx
	movb	%bl, 3(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdi
	cmpq	%rdi, %r9
	jne	.LBB0_28
.LBB0_29:
	addq	%rdx, %rax
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	mempcpy, .Lfunc_end0-mempcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
