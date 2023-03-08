	.text
	.file	"stpncpy.c"
	.globl	stpncpy                 # -- Begin function stpncpy
	.p2align	4, 0x90
	.type	stpncpy,@function
stpncpy:                                # @stpncpy
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	cmpq	$8, %rdx
	jb	.LBB0_5
# %bb.1:
	movl	%esi, %eax
	orl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	jne	.LBB0_5
# %bb.2:
	movabsq	$-9187201950435737472, %r8 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %r9 # imm = 0xFEFEFEFEFEFEFEFF
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rax
	movq	%rax, %rbx
	notq	%rbx
	andq	%r8, %rbx
	leaq	(%rax,%r9), %rcx
	testq	%rcx, %rbx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$-8, %rdx
	addq	$8, %rsi
	movq	%rax, (%rdi)
	addq	$8, %rdi
	cmpq	$7, %rdx
	ja	.LBB0_3
.LBB0_5:
	xorl	%ecx, %ecx
	movq	%rdx, %r9
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rdx
	je	.LBB0_22
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addq	$-1, %r9
	movzbl	(%rsi,%rcx), %eax
	movb	%al, (%rdi,%rcx)
	addq	$1, %rcx
	testb	%al, %al
	jne	.LBB0_6
# %bb.8:
	movq	%rdx, %r8
	subq	%rcx, %r8
	leaq	(%rdi,%rcx), %rax
	movq	%rdx, %r15
	leaq	(%rdi,%rcx), %r10
	addq	$-1, %r10
	subq	%rcx, %r15
	je	.LBB0_23
# %bb.9:
	addq	$1, %r8
	cmpq	$32, %r15
	jb	.LBB0_19
# %bb.10:
	movq	%r15, %r14
	andq	$-32, %r14
	leaq	-32(%r14), %rax
	movq	%rax, %rbx
	shrq	$5, %rbx
	leaq	1(%rbx), %r11
	cmpq	$224, %rax
	jae	.LBB0_12
# %bb.11:
	xorl	%eax, %eax
	jmp	.LBB0_14
.LBB0_22:                               # %.loopexit3
	addq	%rcx, %rdi
	xorl	%r10d, %r10d
	movq	%rdi, %rax
	jmp	.LBB0_23
.LBB0_12:
	leal	1(%rbx), %eax
	movzbl	%al, %eax
	andl	$7, %eax
	notq	%rbx
	addq	%rax, %rbx
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%rax), %rsi
	movups	%xmm0, (%rcx,%rsi)
	movups	%xmm0, 16(%rcx,%rsi)
	movups	%xmm0, 32(%rcx,%rsi)
	movups	%xmm0, 48(%rcx,%rsi)
	movups	%xmm0, 64(%rcx,%rsi)
	movups	%xmm0, 80(%rcx,%rsi)
	movups	%xmm0, 96(%rcx,%rsi)
	movups	%xmm0, 112(%rcx,%rsi)
	movups	%xmm0, 128(%rcx,%rsi)
	movups	%xmm0, 144(%rcx,%rsi)
	movups	%xmm0, 160(%rcx,%rsi)
	movups	%xmm0, 176(%rcx,%rsi)
	movups	%xmm0, 192(%rcx,%rsi)
	movups	%xmm0, 208(%rcx,%rsi)
	movups	%xmm0, 224(%rcx,%rsi)
	movups	%xmm0, 240(%rcx,%rsi)
	addq	$256, %rax              # imm = 0x100
	addq	$8, %rbx
	jne	.LBB0_13
.LBB0_14:
	testb	$7, %r11b
	je	.LBB0_17
# %bb.15:                               # %.preheader
	addq	%rdi, %rax
	addq	%rcx, %rax
	addq	$16, %rax
	movl	%r15d, %ebx
	andb	$-32, %bl
	addb	$-32, %bl
	shrb	$5, %bl
	addb	$1, %bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	negq	%rbx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rax)
	movups	%xmm0, (%rax)
	addq	$32, %rax
	incq	%rbx
	jne	.LBB0_16
.LBB0_17:
	cmpq	%r14, %r15
	je	.LBB0_21
# %bb.18:
	andq	$-32, %r9
	subq	%r9, %rdx
	addq	%r9, %rdi
	subq	%rcx, %rdx
	addq	%rcx, %rdi
	movq	%rdx, %r15
	movq	%rdi, %rax
.LBB0_19:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movb	$0, (%rax,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jne	.LBB0_20
.LBB0_21:
	addq	%r10, %r8
	movq	%r8, %rax
.LBB0_23:
	testq	%r10, %r10
	cmovneq	%r10, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	stpncpy, .Lfunc_end0-stpncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
