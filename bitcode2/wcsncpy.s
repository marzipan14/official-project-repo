	.text
	.file	"wcsncpy.c"
	.globl	wcsncpy                 # -- Begin function wcsncpy
	.p2align	4, 0x90
	.type	wcsncpy,@function
wcsncpy:                                # @wcsncpy
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_13
# %bb.1:                                # %.preheader3
	leaq	-1(%rdx), %r8
	xorl	%edi, %edi
	xorl	%r10d, %r10d
	movq	%rdx, %r9
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	addq	$-1, %r9
	movl	(%rsi,%r10,4), %ecx
	movl	%ecx, (%rax,%r10,4)
	addq	$-4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r8
	leaq	1(%r10), %r10
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_2
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r8
	movl	$42, __A_VARIABLE(%rip)
	subq	%r10, %r8
	je	.LBB0_12
# %bb.5:
	movq	%rax, %rsi
	subq	%rdi, %rsi
	notq	%r10
	addq	%rdx, %r10
	testb	$3, %r8b
	je	.LBB0_9
# %bb.6:                                # %.preheader1
	andl	$3, %r8d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	jne	.LBB0_7
# %bb.8:                                # %.loopexit2
	subq	%rdx, %r9
	movq	%r9, %r8
.LBB0_9:
	cmpq	$3, %r10
	jb	.LBB0_12
# %bb.10:                               # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 4(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 8(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 12(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_11
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsncpy, .Lfunc_end0-wcsncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
