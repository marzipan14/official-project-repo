	.text
	.file	"strncpy.c"
	.globl	strncpy                 # -- Begin function strncpy
	.p2align	4, 0x90
	.type	strncpy,@function
strncpy:                                # @strncpy
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	cmpq	$8, %rdx
	jb	.LBB0_1
# %bb.2:
	movl	%esi, %ecx
	orl	%eax, %ecx
	andl	$7, %ecx
	testq	%rcx, %rcx
	jne	.LBB0_3
# %bb.4:
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movabsq	$-72340172838076673, %r10 # imm = 0xFEFEFEFEFEFEFEFF
	movq	%rax, %r8
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rcx
	movq	%rcx, %rbx
	notq	%rbx
	andq	%r9, %rbx
	leaq	(%rcx,%r10), %rdi
	testq	%rdi, %rbx
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	addq	$-8, %rdx
	addq	$8, %rsi
	movq	%rcx, (%r8)
	addq	$8, %r8
	cmpq	$7, %rdx
	ja	.LBB0_5
	jmp	.LBB0_7
.LBB0_1:
	movq	%rax, %r8
.LBB0_7:
	testq	%rdx, %rdx
	je	.LBB0_25
.LBB0_8:                                # %.preheader3
	leaq	-1(%rdx), %r9
	xorl	%edi, %edi
	movq	%rdx, %rcx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %rcx
	movzbl	(%rsi,%rdi), %ebx
	movb	%bl, (%r8,%rdi)
	cmpq	%rdi, %r9
	leaq	1(%rdi), %rdi
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	testb	%bl, %bl
	jne	.LBB0_9
.LBB0_11:
	movq	%rdx, %r11
	subq	%rdi, %r11
	je	.LBB0_25
# %bb.12:
	cmpq	$32, %r11
	jae	.LBB0_14
# %bb.13:
	addq	%rdi, %r8
	jmp	.LBB0_23
.LBB0_3:
	movq	%rax, %r8
	testq	%rdx, %rdx
	jne	.LBB0_8
	jmp	.LBB0_25
.LBB0_14:
	movq	%r11, %r9
	andq	$-32, %r9
	leaq	-32(%r9), %rbx
	movq	%rbx, %r14
	shrq	$5, %r14
	leaq	1(%r14), %r10
	cmpq	$224, %rbx
	jae	.LBB0_16
# %bb.15:
	xorl	%ebx, %ebx
	jmp	.LBB0_18
.LBB0_16:
	leal	1(%r14), %ebx
	movzbl	%bl, %ebx
	andl	$7, %ebx
	notq	%r14
	addq	%rbx, %r14
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rbx), %rsi
	movups	%xmm0, (%rdi,%rsi)
	movups	%xmm0, 16(%rdi,%rsi)
	movups	%xmm0, 32(%rdi,%rsi)
	movups	%xmm0, 48(%rdi,%rsi)
	movups	%xmm0, 64(%rdi,%rsi)
	movups	%xmm0, 80(%rdi,%rsi)
	movups	%xmm0, 96(%rdi,%rsi)
	movups	%xmm0, 112(%rdi,%rsi)
	movups	%xmm0, 128(%rdi,%rsi)
	movups	%xmm0, 144(%rdi,%rsi)
	movups	%xmm0, 160(%rdi,%rsi)
	movups	%xmm0, 176(%rdi,%rsi)
	movups	%xmm0, 192(%rdi,%rsi)
	movups	%xmm0, 208(%rdi,%rsi)
	movups	%xmm0, 224(%rdi,%rsi)
	movups	%xmm0, 240(%rdi,%rsi)
	addq	$256, %rbx              # imm = 0x100
	addq	$8, %r14
	jne	.LBB0_17
.LBB0_18:
	testb	$7, %r10b
	je	.LBB0_21
# %bb.19:                               # %.preheader
	addq	%r8, %rbx
	leaq	(%rdi,%rbx), %rsi
	addq	$16, %rsi
	movl	%r11d, %ebx
	andb	$-32, %bl
	addb	$-32, %bl
	shrb	$5, %bl
	addb	$1, %bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	negq	%rbx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	incq	%rbx
	jne	.LBB0_20
.LBB0_21:
	cmpq	%r9, %r11
	je	.LBB0_25
# %bb.22:
	andq	$-32, %rcx
	addq	%rcx, %r8
	subq	%rcx, %rdx
	addq	%rdi, %r8
	subq	%rdi, %rdx
	movq	%rdx, %r11
.LBB0_23:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movb	$0, (%r8,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r11
	jne	.LBB0_24
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
