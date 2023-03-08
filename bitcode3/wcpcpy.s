	.text
	.file	"wcpcpy.c"
	.globl	wcpcpy                  # -- Begin function wcpcpy
	.p2align	4, 0x90
	.type	wcpcpy,@function
wcpcpy:                                 # @wcpcpy
# %bb.0:
	movq	%rdi, %rax
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %ecx
	addq	$4, %rsi
	movl	%ecx, 4(%rax)
	addq	$4, %rax
	testl	%ecx, %ecx
	jne	.LBB0_1
# %bb.2:
	retq
.Lfunc_end0:
	.size	wcpcpy, .Lfunc_end0-wcpcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
