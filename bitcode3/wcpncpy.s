	.text
	.file	"wcpncpy.c"
	.globl	wcpncpy                 # -- Begin function wcpncpy
	.p2align	4, 0x90
	.type	wcpncpy,@function
wcpncpy:                                # @wcpncpy
# %bb.0:
	pushq	%r14
	pushq	%rbx
	leaq	-1(%rdx), %rcx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_18
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%rdx, %r8
	movq	%rcx, %r14
	addq	$-1, %rdx
	movl	(%rsi), %ebx
	addq	$4, %rsi
	leaq	4(%rax), %rdi
	movl	%ebx, (%rax)
	addq	$-1, %rcx
	testl	%ebx, %ebx
	jne	.LBB0_1
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.5:
	cmpq	$8, %rdx
	jb	.LBB0_15
# %bb.6:
	movq	%rdx, %r9
	andq	$-8, %r9
	leaq	-8(%r9), %rcx
	movq	%rcx, %r10
	shrq	$3, %r10
	addq	$1, %r10
	cmpq	$56, %rcx
	jae	.LBB0_8
# %bb.7:
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_4:
	movq	%rax, %r9
	movq	%rdi, %rax
	jmp	.LBB0_18
.LBB0_8:
	movq	%r14, %r11
	andq	$-8, %r11
	addq	$-8, %r11
	shrq	$3, %r11
	leal	1(%r11), %ecx
	movzbl	%cl, %ecx
	andl	$7, %ecx
	notq	%r11
	addq	%rcx, %r11
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi,%rsi,4)
	movups	%xmm0, 16(%rdi,%rsi,4)
	movups	%xmm0, 32(%rdi,%rsi,4)
	movups	%xmm0, 48(%rdi,%rsi,4)
	movups	%xmm0, 64(%rdi,%rsi,4)
	movups	%xmm0, 80(%rdi,%rsi,4)
	movups	%xmm0, 96(%rdi,%rsi,4)
	movups	%xmm0, 112(%rdi,%rsi,4)
	movups	%xmm0, 128(%rdi,%rsi,4)
	movups	%xmm0, 144(%rdi,%rsi,4)
	movups	%xmm0, 160(%rdi,%rsi,4)
	movups	%xmm0, 176(%rdi,%rsi,4)
	movups	%xmm0, 192(%rdi,%rsi,4)
	movups	%xmm0, 208(%rdi,%rsi,4)
	movups	%xmm0, 224(%rdi,%rsi,4)
	movups	%xmm0, 240(%rdi,%rsi,4)
	addq	$64, %rsi
	addq	$8, %r11
	jne	.LBB0_9
.LBB0_10:
	testb	$7, %r10b
	je	.LBB0_13
# %bb.11:                               # %.preheader
	shlq	$2, %rsi
	andb	$56, %r14b
	addb	$-8, %r14b
	shrb	$3, %r14b
	addb	$1, %r14b
	movzbl	%r14b, %ecx
	andl	$7, %ecx
	negq	%rcx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi,%rsi)
	movups	%xmm0, 16(%rdi,%rsi)
	addq	$32, %rsi
	incq	%rcx
	jne	.LBB0_12
.LBB0_13:
	cmpq	%r9, %rdx
	je	.LBB0_17
# %bb.14:
	andl	$7, %edx
	leaq	(%rdi,%r9,4), %rdi
.LBB0_15:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_16
.LBB0_17:
	movq	%rax, %r9
	leaq	(%rax,%r8,4), %rax
.LBB0_18:
	testq	%r9, %r9
	cmovneq	%r9, %rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	wcpncpy, .Lfunc_end0-wcpncpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
