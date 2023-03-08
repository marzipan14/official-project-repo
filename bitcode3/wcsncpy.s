	.text
	.file	"wcsncpy.c"
	.globl	wcsncpy                 # -- Begin function wcsncpy
	.p2align	4, 0x90
	.type	wcsncpy,@function
wcsncpy:                                # @wcsncpy
# %bb.0:
	pushq	%rbx
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_17
# %bb.1:                                # %.preheader3
	leaq	-1(%rdx), %rdi
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %r11
	movl	(%rsi), %ecx
	movl	%ecx, (%rbx)
	addq	$4, %rbx
	addq	$-1, %rdx
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rsi
	leaq	-1(%r11), %rdi
	testl	%ecx, %ecx
	jne	.LBB0_2
.LBB0_4:
	testq	%rdx, %rdx
	je	.LBB0_17
# %bb.5:
	cmpq	$8, %rdx
	jb	.LBB0_15
# %bb.6:
	movq	%rdx, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rcx
	movq	%rcx, %r9
	shrq	$3, %r9
	addq	$1, %r9
	cmpq	$56, %rcx
	jae	.LBB0_8
# %bb.7:
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_8:
	movq	%r11, %r10
	andq	$-8, %r10
	addq	$-8, %r10
	shrq	$3, %r10
	leal	1(%r10), %ecx
	movzbl	%cl, %ecx
	andl	$7, %ecx
	notq	%r10
	addq	%rcx, %r10
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx,%rsi,4)
	movups	%xmm0, 16(%rbx,%rsi,4)
	movups	%xmm0, 32(%rbx,%rsi,4)
	movups	%xmm0, 48(%rbx,%rsi,4)
	movups	%xmm0, 64(%rbx,%rsi,4)
	movups	%xmm0, 80(%rbx,%rsi,4)
	movups	%xmm0, 96(%rbx,%rsi,4)
	movups	%xmm0, 112(%rbx,%rsi,4)
	movups	%xmm0, 128(%rbx,%rsi,4)
	movups	%xmm0, 144(%rbx,%rsi,4)
	movups	%xmm0, 160(%rbx,%rsi,4)
	movups	%xmm0, 176(%rbx,%rsi,4)
	movups	%xmm0, 192(%rbx,%rsi,4)
	movups	%xmm0, 208(%rbx,%rsi,4)
	movups	%xmm0, 224(%rbx,%rsi,4)
	movups	%xmm0, 240(%rbx,%rsi,4)
	addq	$64, %rsi
	addq	$8, %r10
	jne	.LBB0_9
.LBB0_10:
	testb	$7, %r9b
	je	.LBB0_13
# %bb.11:                               # %.preheader
	shlq	$2, %rsi
	andb	$56, %r11b
	addb	$-8, %r11b
	shrb	$3, %r11b
	addb	$1, %r11b
	movzbl	%r11b, %edi
	andl	$7, %edi
	negq	%rdi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx,%rsi)
	movups	%xmm0, 16(%rbx,%rsi)
	addq	$32, %rsi
	incq	%rdi
	jne	.LBB0_12
.LBB0_13:
	cmpq	%r8, %rdx
	je	.LBB0_17
# %bb.14:
	andl	$7, %edx
	leaq	(%rbx,%r8,4), %rbx
.LBB0_15:
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rbx,%rsi,4)
	addq	$1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_16
.LBB0_17:
	popq	%rbx
	retq
.Lfunc_end0:
	.size	wcsncpy, .Lfunc_end0-wcsncpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
