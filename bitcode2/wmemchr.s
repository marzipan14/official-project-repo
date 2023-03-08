	.text
	.file	"wmemchr.c"
	.globl	wmemchr                 # -- Begin function wmemchr
	.p2align	4, 0x90
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.1:                                # %.preheader
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	%esi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rax
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jb	.LBB0_2
.LBB0_4:
	xorl	%eax, %eax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wmemchr, .Lfunc_end0-wmemchr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
