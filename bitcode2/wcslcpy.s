	.text
	.file	"wcslcpy.c"
	.globl	wcslcpy                 # -- Begin function wcslcpy
	.p2align	4, 0x90
	.type	wcslcpy,@function
wcslcpy:                                # @wcslcpy
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	je	.LBB0_3
# %bb.4:                                # %.preheader
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %r8d
	movl	%r8d, (%rdi,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	addq	$-4, %rcx
	cmpq	%rax, %rdx
	jne	.LBB0_5
# %bb.7:                                # %.loopexit1
	subq	%rcx, %rdi
	movq	%rsi, %rax
	subq	%rcx, %rax
	jmp	.LBB0_8
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	jmp	.LBB0_9
.LBB0_3:
	movq	%rsi, %rax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rdi)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	leaq	4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	subq	%rcx, %rax
	addq	$4, %rax
.LBB0_11:
	subq	%rsi, %rax
	sarq	$2, %rax
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcslcpy, .Lfunc_end0-wcslcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
