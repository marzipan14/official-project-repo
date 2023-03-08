	.text
	.file	"wcschr.c"
	.globl	wcschr                  # -- Begin function wcschr
	.p2align	4, 0x90
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	cmpl	%esi, %ecx
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$4, %rax
	testl	%ecx, %ecx
	jne	.LBB0_1
# %bb.3:
	xorl	%eax, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	wcschr, .Lfunc_end0-wcschr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
