	.text
	.file	"wcsrchr.c"
	.globl	wcsrchr                 # -- Begin function wcsrchr
	.p2align	4, 0x90
	.type	wcsrchr,@function
wcsrchr:                                # @wcsrchr
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.1:
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 4(%rax)
	leaq	4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jae	.LBB0_6
.LBB0_11:
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_12
# %bb.7:                                # %.preheader
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jb	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	cmpl	%esi, (%rax)
	leaq	-4(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.10:                               # %..loopexit_crit_edge
	addq	$4, %rax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
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
