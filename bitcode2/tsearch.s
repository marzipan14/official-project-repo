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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.3:                                # %.preheader
	movq	%rdx, %r15
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	*%r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%rbx), %rcx
	leaq	8(%rcx), %rdx
	leaq	16(%rcx), %rbx
	xorl	%esi, %esi
	testl	%eax, %eax
	setns	%sil
	cmovsq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rcx,%rsi,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_4
.LBB0_7:
	movl	$24, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_10
# %bb.8:
	movq	%rax, (%rbx)
	movq	%r14, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	jmp	.LBB0_9
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_10
.LBB0_5:
	movq	(%rbx), %rax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tsearch, .Lfunc_end0-tsearch
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
