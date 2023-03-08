	.text
	.file	"wcsncmp.c"
	.globl	wcsncmp                 # -- Begin function wcsncmp
	.p2align	4, 0x90
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:                                # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %r8d
	movl	%r8d, %eax
	subl	(%rsi,%rcx,4), %eax
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_3
.LBB0_6:
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	wcsncmp, .Lfunc_end0-wcsncmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
