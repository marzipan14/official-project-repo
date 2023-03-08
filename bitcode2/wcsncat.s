	.text
	.file	"wcsncat.c"
	.globl	wcsncat                 # -- Begin function wcsncat
	.p2align	4, 0x90
	.type	wcsncat,@function
wcsncat:                                # @wcsncat
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r9
	je	.LBB0_3
# %bb.1:                                # %.preheader1
	movq	%rax, %r9
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 4(%r9)
	leaq	4(%r9), %r9
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_9
# %bb.4:
	testl	%r8d, %r8d
	je	.LBB0_9
# %bb.5:                                # %.preheader
	addq	$-1, %rdx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	%r8d, (%r9,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rsi,%rcx,4), %r8d
	addq	$-4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %rcx
	testl	%r8d, %r8d
	jne	.LBB0_6
.LBB0_8:                                # %.loopexit
	subq	%rdi, %r9
.LBB0_9:
	movl	$0, (%r9)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsncat, .Lfunc_end0-wcsncat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
