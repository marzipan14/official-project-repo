	.text
	.file	"wmemset.c"
	.globl	wmemset                 # -- Begin function wmemset
	.p2align	4, 0x90
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_7
# %bb.1:
	leaq	-1(%rdx), %rcx
	movl	%edx, %r8d
	andl	$3, %r8d
	movq	%rax, %rdi
	cmpq	$3, %rcx
	jb	.LBB0_4
# %bb.2:
	movq	%r8, %rcx
	subq	%rdx, %rcx
	movq	%rax, %rdi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%esi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, 12(%rdi)
	addq	$16, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	jne	.LBB0_3
.LBB0_4:
	testq	%r8, %r8
	je	.LBB0_7
# %bb.5:                                # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	%esi, (%rdi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_6
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wmemset, .Lfunc_end0-wmemset
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
