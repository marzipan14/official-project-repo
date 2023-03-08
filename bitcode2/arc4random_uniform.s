	.text
	.file	"arc4random_uniform.c"
	.globl	arc4random_uniform      # -- Begin function arc4random_uniform
	.p2align	4, 0x90
	.type	arc4random_uniform,@function
arc4random_uniform:                     # @arc4random_uniform
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edi
	jb	.LBB0_4
# %bb.1:
	movl	%edi, %r14d
	movl	%edi, %eax
	negl	%eax
	xorl	%edx, %edx
	divl	%edi
	movl	%edx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	callq	arc4random
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jb	.LBB0_2
# %bb.3:
	xorl	%edx, %edx
	divl	%r14d
	movl	%edx, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	arc4random_uniform, .Lfunc_end0-arc4random_uniform
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
