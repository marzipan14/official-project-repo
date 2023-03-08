	.text
	.file	"wmemcmp.c"
	.globl	wmemcmp                 # -- Begin function wmemcmp
	.p2align	4, 0x90
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_5
# %bb.1:                                # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	cmpl	%ecx, (%rdi,%rax,4)
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	cmpq	%rdx, %rax
	jb	.LBB0_2
.LBB0_5:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	setg	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wmemcmp, .Lfunc_end0-wmemcmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
