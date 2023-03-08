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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_6
# %bb.2:
	movq	%rdx, %r15
	movq	%rdi, %r12
	movq	(%r14), %rsi
	callq	*%rdx
	movq	(%rbx), %rcx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %r14
	leaq	8(%rcx), %rdx
	leaq	16(%rcx), %rbx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovsq	%rdx, %rbx
	setns	%cl
	movq	8(%r14,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	8(,%rcx,8), %r13
	movq	(%rax), %rsi
	movq	%r12, %rdi
	callq	*%r15
	movq	(%r14,%r13), %rcx
	jmp	.LBB0_3
.LBB0_6:
	xorl	%r14d, %r14d
	jmp	.LBB0_19
.LBB0_7:
	movq	8(%rcx), %r15
	movq	16(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_17
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_18
# %bb.9:
	leaq	8(%rdx), %rcx
	movq	8(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_16
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB0_11
# %bb.12:
	addq	$8, %rcx
.LBB0_13:
	leaq	8(%rax), %rdx
	movq	16(%rax), %rsi
	movq	%rsi, (%rcx)
	movq	(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rdx)
	movq	(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, %rdx
	jmp	.LBB0_17
.LBB0_16:
	movq	%r15, (%rcx)
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r15
.LBB0_18:
	movq	(%rbx), %rdi
	callq	free
	movq	%r15, (%rbx)
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
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
