	.text
	.file	"sccl.c"
	.globl	__sccl                  # -- Begin function __sccl
	.p2align	4, 0x90
	.type	__sccl,@function
__sccl:                                 # @__sccl
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movb	(%rsi), %r11b
	cmpb	$94, %r11b
	jne	.LBB0_1
# %bb.2:
	movb	1(%rsi), %r11b
	addq	$2, %rsi
	movb	$1, %r10b
	jmp	.LBB0_3
.LBB0_1:
	addq	$1, %rsi
	xorl	%r10d, %r10d
.LBB0_3:
	movzbl	%r10b, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 48(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 80(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 112(%rdi)
	movdqu	%xmm0, 128(%rdi)
	movdqu	%xmm0, 144(%rdi)
	movdqu	%xmm0, 160(%rdi)
	movdqu	%xmm0, 176(%rdi)
	movdqu	%xmm0, 192(%rdi)
	movdqu	%xmm0, 208(%rdi)
	movdqu	%xmm0, 224(%rdi)
	movdqu	%xmm0, 240(%rdi)
	testb	%r11b, %r11b
	je	.LBB0_22
# %bb.4:
	xorb	$1, %r10b
	movzbl	%r10b, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$224, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,3,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	113(%rdi), %r8
	leaq	17(%rdi), %r9
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_21 Depth 3
	movzbl	%r11b, %edx
	movb	%r10b, (%rdi,%rdx)
	movq	%rsi, %rax
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=2
	addq	$2, %rax
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_21 Depth 3
	leaq	1(%rax), %rsi
	movb	(%rax), %r11b
	cmpb	$45, %r11b
	jne	.LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=2
	movzbl	(%rsi), %r12d
	movb	$45, %r11b
	cmpl	$93, %r12d
	je	.LBB0_5
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=2
	cmpl	%r12d, %edx
	jg	.LBB0_5
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=2
	movslq	%edx, %rdx
	leaq	1(%rdx), %r14
	cmpq	%r12, %r14
	cmovlq	%r12, %r14
	subq	%rdx, %r14
	cmpq	$32, %r14
	jb	.LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=2
	movq	%r14, %r11
	andq	$-32, %r11
	leaq	-32(%r11), %rcx
	movq	%rcx, %rbx
	shrq	$5, %rbx
	addq	$1, %rbx
	movl	%ebx, %r15d
	andl	$3, %r15d
	cmpq	$96, %rcx
	jae	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_7 Depth=2
	xorl	%esi, %esi
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=2
	subq	%r15, %rbx
	leaq	(%r8,%rdx), %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, -112(%rcx,%rsi)
	movdqu	%xmm0, -96(%rcx,%rsi)
	movdqu	%xmm0, -80(%rcx,%rsi)
	movdqu	%xmm0, -64(%rcx,%rsi)
	movdqu	%xmm0, -48(%rcx,%rsi)
	movdqu	%xmm0, -32(%rcx,%rsi)
	movdqu	%xmm0, -16(%rcx,%rsi)
	movdqu	%xmm0, (%rcx,%rsi)
	subq	$-128, %rsi
	addq	$-4, %rbx
	jne	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=2
	testq	%r15, %r15
	je	.LBB0_20
# %bb.18:                               # %.preheader
                                        #   in Loop: Header=BB0_7 Depth=2
	addq	%rdx, %rsi
	addq	%r9, %rsi
	shlq	$5, %r15
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	%xmm0, -16(%rsi,%rcx)
	movdqu	%xmm0, (%rsi,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r15
	jne	.LBB0_19
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=2
	addq	%r11, %rdx
	cmpq	%r11, %r14
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%r10b, 1(%rdi,%rdx)
	addq	$1, %rdx
	cmpq	%r12, %rdx
	jl	.LBB0_21
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	testb	%r11b, %r11b
	je	.LBB0_24
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	cmpb	$93, %r11b
	jne	.LBB0_5
	jmp	.LBB0_23
.LBB0_22:
	addq	$-1, %rsi
.LBB0_23:                               # %.loopexit3
	movq	%rsi, %rax
.LBB0_24:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	__sccl, .Lfunc_end0-__sccl
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
