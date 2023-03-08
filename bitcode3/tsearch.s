	.text
	.file	"tsearch.c"
	.globl	tsearch                 # -- Begin function tsearch
	.p2align	4, 0x90
	.type	tsearch,@function
tsearch:                                # @tsearch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_5
# %bb.2:                                # %.preheader
	movq	%rdx, %r15
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	*%r15
	testl	%eax, %eax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	16(%rcx), %rbx
	xorl	%esi, %esi
	testl	%eax, %eax
	setns	%sil
	cmovsq	%rdx, %rbx
	movq	8(%rcx,%rsi,8), %rax
	testq	%rax, %rax
	jne	.LBB0_3
.LBB0_5:
	movl	$24, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_9
# %bb.6:
	movq	%rax, (%rbx)
	movq	%r14, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	jmp	.LBB0_10
.LBB0_9:
	xorl	%eax, %eax
	jmp	.LBB0_10
.LBB0_8:
	movq	(%rbx), %rax
.LBB0_10:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tsearch, .Lfunc_end0-tsearch
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
