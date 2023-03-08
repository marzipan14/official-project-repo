	.text
	.file	"memset.c"
	.globl	memset                  # -- Begin function memset
	.p2align	4, 0x90
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	testb	$7, %al
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB0_30
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$-1, %rdx
	movb	%sil, (%rdi)
	addq	$1, %rdi
	testb	$7, %dil
	jne	.LBB0_1
.LBB0_3:
	cmpq	$8, %rdx
	jb	.LBB0_17
# %bb.4:
	movzbl	%sil, %ebx
	movl	%ebx, %ecx
	shll	$8, %ecx
	orl	%ebx, %ecx
	movl	%ecx, %ebx
	shll	$16, %ebx
	orl	%ecx, %ebx
	movq	%rbx, %r10
	shlq	$32, %r10
	orq	%rbx, %r10
	cmpq	$32, %rdx
	jb	.LBB0_9
# %bb.5:
	leaq	-32(%rdx), %r8
	movl	%r8d, %ebx
	shrl	$5, %ebx
	addl	$1, %ebx
	movq	%rdi, %rcx
	andq	$3, %rbx
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	movq	%r10, 8(%rcx)
	movq	%r10, 16(%rcx)
	movq	%r10, 24(%rcx)
	addq	$32, %rcx
	addq	$-32, %rdx
	addq	$-1, %rbx
	jne	.LBB0_6
.LBB0_7:
	movq	%r8, %r9
	andq	$-32, %r9
	cmpq	$96, %r8
	jb	.LBB0_8
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	movq	%r10, 8(%rcx)
	movq	%r10, 16(%rcx)
	movq	%r10, 24(%rcx)
	movq	%r10, 32(%rcx)
	movq	%r10, 40(%rcx)
	movq	%r10, 48(%rcx)
	movq	%r10, 56(%rcx)
	movq	%r10, 64(%rcx)
	movq	%r10, 72(%rcx)
	movq	%r10, 80(%rcx)
	movq	%r10, 88(%rcx)
	movq	%r10, 96(%rcx)
	movq	%r10, 104(%rcx)
	movq	%r10, 112(%rcx)
	movq	%r10, 120(%rcx)
	addq	$-128, %rdx
	subq	$-128, %rcx
	cmpq	$31, %rdx
	ja	.LBB0_31
.LBB0_8:
	addq	%r9, %rdi
	addq	$32, %rdi
	subq	%r9, %r8
	movq	%r8, %rdx
	cmpq	$8, %r8
	jb	.LBB0_16
.LBB0_9:
	leaq	-8(%rdx), %r8
	movq	%r8, %r9
	shrq	$3, %r9
	addq	$1, %r9
	movl	$7, %ecx
	subq	%rdx, %rcx
	cmpq	$-8, %rcx
	movq	$-8, %rbx
	cmovaq	%rcx, %rbx
	addq	%rdx, %rbx
	movq	%rbx, %r11
	shrq	$3, %r11
	leaq	1(%r11), %r15
	cmpq	$3, %r15
	ja	.LBB0_11
# %bb.10:
	movq	%rdi, %rcx
	jmp	.LBB0_14
.LBB0_11:
	movl	%r15d, %r14d
	andl	$3, %r14d
	movabsq	$2305843009213693948, %rcx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%r15, %rcx
	leaq	(%rdi,%rcx,8), %rcx
	leaq	(%rdx,%r14,8), %rdx
	andq	$-8, %rbx
	subq	%rbx, %rdx
	addq	$-8, %rdx
	movq	%r10, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	subq	%r14, %r11
	addq	$1, %r11
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdi,%rbx,8)
	movdqu	%xmm0, 16(%rdi,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %r11
	jne	.LBB0_12
# %bb.13:
	testq	%r14, %r14
	je	.LBB0_15
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	addq	$8, %rcx
	addq	$-8, %rdx
	cmpq	$7, %rdx
	ja	.LBB0_14
.LBB0_15:
	leaq	(%rdi,%r9,8), %rdi
	andl	$7, %r8d
.LBB0_16:
	movq	%r8, %rdx
.LBB0_17:
	testq	%rdx, %rdx
	je	.LBB0_30
# %bb.18:
	cmpq	$32, %rdx
	jb	.LBB0_28
# %bb.19:
	movq	%rdx, %r8
	andq	$-32, %r8
	movzbl	%sil, %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	-32(%r8), %rcx
	movq	%rcx, %r10
	shrq	$5, %r10
	addq	$1, %r10
	movl	%r10d, %r9d
	andl	$7, %r9d
	cmpq	$224, %rcx
	jae	.LBB0_21
# %bb.20:
	xorl	%ecx, %ecx
	jmp	.LBB0_23
.LBB0_21:
	subq	%r9, %r10
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdi,%rcx)
	movdqu	%xmm0, 16(%rdi,%rcx)
	movdqu	%xmm0, 32(%rdi,%rcx)
	movdqu	%xmm0, 48(%rdi,%rcx)
	movdqu	%xmm0, 64(%rdi,%rcx)
	movdqu	%xmm0, 80(%rdi,%rcx)
	movdqu	%xmm0, 96(%rdi,%rcx)
	movdqu	%xmm0, 112(%rdi,%rcx)
	movdqu	%xmm0, 128(%rdi,%rcx)
	movdqu	%xmm0, 144(%rdi,%rcx)
	movdqu	%xmm0, 160(%rdi,%rcx)
	movdqu	%xmm0, 176(%rdi,%rcx)
	movdqu	%xmm0, 192(%rdi,%rcx)
	movdqu	%xmm0, 208(%rdi,%rcx)
	movdqu	%xmm0, 224(%rdi,%rcx)
	movdqu	%xmm0, 240(%rdi,%rcx)
	addq	$256, %rcx              # imm = 0x100
	addq	$-8, %r10
	jne	.LBB0_22
.LBB0_23:
	testq	%r9, %r9
	je	.LBB0_26
# %bb.24:                               # %.preheader
	addq	%rdi, %rcx
	addq	$16, %rcx
	negq	%r9
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	addq	$32, %rcx
	incq	%r9
	jne	.LBB0_25
.LBB0_26:
	cmpq	%r8, %rdx
	je	.LBB0_30
# %bb.27:
	andl	$31, %edx
	addq	%r8, %rdi
.LBB0_28:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movb	%sil, (%rdi,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_29
.LBB0_30:
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	memset, .Lfunc_end0-memset
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
