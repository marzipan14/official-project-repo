	.text
	.file	"wcscat.c"
	.globl	wcscat                  # -- Begin function wcscat
	.p2align	4, 0x90
	.type	wcscat,@function
wcscat:                                 # @wcscat
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
	movl	(%rsi), %edx
	testl	%edx, %edx
	je	.LBB0_6
# %bb.3:                                # %.preheader
	movq	$-4, %rdi
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, (%rcx,%rdi)
	movl	8(%rsi,%rdi), %edx
	addq	$4, %rdi
	testl	%edx, %edx
	jne	.LBB0_4
# %bb.5:                                # %.loopexit
	addq	%rdi, %rcx
	movq	%rcx, %rdi
.LBB0_6:
	movl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcscat, .Lfunc_end0-wcscat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
