	.text
	.file	"arc4random_uniform.c"
	.globl	arc4random_uniform      # -- Begin function arc4random_uniform
	.p2align	4, 0x90
	.type	arc4random_uniform,@function
arc4random_uniform:                     # @arc4random_uniform
# %bb.0:
	xorl	%eax, %eax
	cmpl	$2, %edi
	jb	.LBB0_4
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movl	%edi, %eax
	negl	%eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	callq	arc4random
	cmpl	%ebx, %eax
	jb	.LBB0_2
# %bb.3:
	xorl	%edx, %edx
	divl	%r14d
	movl	%edx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
.LBB0_4:
	retq
.Lfunc_end0:
	.size	arc4random_uniform, .Lfunc_end0-arc4random_uniform
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
