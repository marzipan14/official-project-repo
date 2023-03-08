	.text
	.file	"wcscmp.c"
	.globl	wcscmp                  # -- Begin function wcscmp
	.p2align	4, 0x90
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx), %edx
	movl	%edx, %eax
	subl	(%rsi,%rcx), %eax
	jne	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$4, %rcx
	testl	%edx, %edx
	jne	.LBB0_1
# %bb.3:
	xorl	%eax, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	wcscmp, .Lfunc_end0-wcscmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
