	.text
	.file	"tdelete.c"
	.globl	tdelete                 # -- Begin function tdelete
	.p2align	4, 0x90
	.type	tdelete,@function
tdelete:                                # @tdelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB0_10
# %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %r14
	testq	%r14, %r14
	je	.LBB0_10
# %bb.2:
	movq	%rdx, %r15
	movq	%rdi, %r12
	movq	(%r14), %rsi
	callq	*%rdx
	movq	(%rbx), %rcx
	testl	%eax, %eax
	je	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r14
	leaq	8(%rcx), %rdx
	leaq	16(%rcx), %rbx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setns	%cl
	cmovsq	%rdx, %rbx
	movq	8(%r14,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	8(,%rcx,8), %r13
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	*%r15
	movq	(%r14,%r13), %rcx
	testl	%eax, %eax
	jne	.LBB0_3
.LBB0_5:
	movq	8(%rcx), %rdx
	movq	16(%rcx), %r15
	testq	%rdx, %rdx
	je	.LBB0_15
# %bb.6:
	testq	%r15, %r15
	je	.LBB0_13
# %bb.7:
	movq	8(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rcx
	movq	%rax, %r15
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.9:
	movq	16(%r15), %rax
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%r15)
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%r15)
	jmp	.LBB0_15
.LBB0_10:
	xorl	%r14d, %r14d
	jmp	.LBB0_16
.LBB0_13:
	movq	%rdx, %r15
	jmp	.LBB0_15
.LBB0_14:
	movq	%rdx, 8(%r15)
.LBB0_15:
	movq	(%rbx), %rdi
	callq	free
	movq	%r15, (%rbx)
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tdelete, .Lfunc_end0-tdelete
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
