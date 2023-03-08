	.text
	.file	"wcsrchr.c"
	.globl	wcsrchr                 # -- Begin function wcsrchr
	.p2align	4, 0x90
	.type	wcsrchr,@function
wcsrchr:                                # @wcsrchr
# %bb.0:
	leaq	-4(%rdi), %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rax)
	leaq	4(%rax), %rax
	jne	.LBB0_1
# %bb.2:
	cmpq	%rdi, %rax
	jb	.LBB0_3
# %bb.4:
	testl	%esi, %esi
	je	.LBB0_9
# %bb.5:                                # %.preheader
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rax
	jb	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	%esi, (%rax)
	leaq	-4(%rax), %rax
	jne	.LBB0_6
# %bb.8:                                # %..loopexit_crit_edge
	addq	$4, %rax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_10:
.LBB0_3:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsrchr, .Lfunc_end0-wcsrchr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
