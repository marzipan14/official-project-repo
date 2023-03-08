	.text
	.file	"wcsncat.c"
	.globl	wcsncat                 # -- Begin function wcsncat
	.p2align	4, 0x90
	.type	wcsncat,@function
wcsncat:                                # @wcsncat
# %bb.0:
	movq	%rdi, %rax
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdi
	addq	$4, %rcx
	cmpl	$0, (%rdi)
	jne	.LBB0_1
# %bb.2:
	testq	%rdx, %rdx
	je	.LBB0_8
# %bb.3:
	movl	(%rsi), %r8d
	testl	%r8d, %r8d
	je	.LBB0_8
# %bb.4:                                # %.preheader
	addq	$-1, %rdx
	movl	$4, %r9d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	%r8d, -4(%rcx,%rdi,4)
	addq	$-4, %r9
	cmpq	%rdi, %rdx
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	4(%rsi,%rdi,4), %r8d
	addq	$1, %rdi
	testl	%r8d, %r8d
	jne	.LBB0_5
.LBB0_7:                                # %.loopexit
	subq	%r9, %rcx
	movq	%rcx, %rdi
.LBB0_8:
	movl	$0, (%rdi)
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
