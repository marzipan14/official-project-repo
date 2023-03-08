	.text
	.file	"wcscat.c"
	.globl	wcscat                  # -- Begin function wcscat
	.p2align	4, 0x90
	.type	wcscat,@function
wcscat:                                 # @wcscat
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rcx
	je	.LBB0_3
# %bb.1:                                # %.preheader1
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 4(%rcx)
	leaq	4(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_6
# %bb.4:                                # %.preheader
	addq	$4, %rsi
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, (%rcx)
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %edx
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_5
.LBB0_6:
	movl	$0, (%rcx)
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
