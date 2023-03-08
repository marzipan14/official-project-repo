	.text
	.file	"wcslcpy.c"
	.globl	wcslcpy                 # -- Begin function wcslcpy
	.p2align	4, 0x90
	.type	wcslcpy,@function
wcslcpy:                                # @wcslcpy
# %bb.0:
	movq	%rsi, %rax
	testq	%rdx, %rdx
	je	.LBB0_8
# %bb.1:
	addq	$-1, %rdx
	je	.LBB0_2
# %bb.3:                                # %.preheader
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %r8d
	movl	%r8d, (%rdi,%rax,4)
	testl	%r8d, %r8d
	je	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %rax
	addq	$-4, %rcx
	cmpq	%rax, %rdx
	jne	.LBB0_4
# %bb.6:                                # %.loopexit2
	subq	%rcx, %rdi
	movq	%rsi, %rax
	subq	%rcx, %rax
	jmp	.LBB0_7
.LBB0_2:
	movq	%rsi, %rax
.LBB0_7:
	movl	$0, (%rdi)
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rax)
	leaq	4(%rax), %rax
	jne	.LBB0_8
	jmp	.LBB0_10
.LBB0_9:                                # %.loopexit1
	movq	%rsi, %rax
	subq	%rcx, %rax
	addq	$4, %rax
.LBB0_10:
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
