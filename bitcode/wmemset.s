	.text
	.file	"wmemset.c"
	.globl	wmemset                 # -- Begin function wmemset
	.p2align	4, 0x90
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_14
# %bb.1:
	cmpq	$8, %rdx
	jae	.LBB0_3
# %bb.2:
	xorl	%r8d, %r8d
	movq	%rax, %rcx
	jmp	.LBB0_12
.LBB0_3:
	movq	%rdx, %r8
	andq	$-8, %r8
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	leaq	-8(%r8), %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %r9d
	andl	$7, %r9d
	cmpq	$56, %rcx
	jae	.LBB0_5
# %bb.4:
	xorl	%ecx, %ecx
	jmp	.LBB0_7
.LBB0_5:
	subq	%r9, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rax,%rcx,4)
	movdqu	%xmm0, 16(%rax,%rcx,4)
	movdqu	%xmm0, 32(%rax,%rcx,4)
	movdqu	%xmm0, 48(%rax,%rcx,4)
	movdqu	%xmm0, 64(%rax,%rcx,4)
	movdqu	%xmm0, 80(%rax,%rcx,4)
	movdqu	%xmm0, 96(%rax,%rcx,4)
	movdqu	%xmm0, 112(%rax,%rcx,4)
	movdqu	%xmm0, 128(%rax,%rcx,4)
	movdqu	%xmm0, 144(%rax,%rcx,4)
	movdqu	%xmm0, 160(%rax,%rcx,4)
	movdqu	%xmm0, 176(%rax,%rcx,4)
	movdqu	%xmm0, 192(%rax,%rcx,4)
	movdqu	%xmm0, 208(%rax,%rcx,4)
	movdqu	%xmm0, 224(%rax,%rcx,4)
	movdqu	%xmm0, 240(%rax,%rcx,4)
	addq	$64, %rcx
	addq	$-8, %rdi
	jne	.LBB0_6
.LBB0_7:
	testq	%r9, %r9
	je	.LBB0_10
# %bb.8:                                # %.preheader
	leaq	(%rax,%rcx,4), %rcx
	addq	$16, %rcx
	negq	%r9
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	addq	$32, %rcx
	incq	%r9
	jne	.LBB0_9
.LBB0_10:
	cmpq	%rdx, %r8
	je	.LBB0_14
# %bb.11:
	leaq	(%rax,%r8,4), %rcx
.LBB0_12:
	subq	%r8, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	%esi, (%rcx,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_13
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wmemset, .Lfunc_end0-wmemset
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
