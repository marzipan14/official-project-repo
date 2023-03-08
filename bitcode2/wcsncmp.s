	.text
	.file	"wcsncmp.c"
	.globl	wcsncmp                 # -- Begin function wcsncmp
	.p2align	4, 0x90
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:                                # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %r8d
	movl	%r8d, %eax
	subl	(%rsi,%rcx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_3
	jmp	.LBB0_6
.LBB0_1:
	xorl	%eax, %eax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsncmp, .Lfunc_end0-wcsncmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
