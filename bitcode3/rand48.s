	.text
	.file	"rand48.c"
	.globl	__dorand48              # -- Begin function __dorand48
	.p2align	4, 0x90
	.type	__dorand48,@function
__dorand48:                             # @__dorand48
# %bb.0:
	movzwl	246(%rdi), %r8d
	movzwl	(%rsi), %r9d
	movzwl	248(%rdi), %eax
	movq	%rax, %rdx
	imulq	%r9, %rdx
	movzwl	250(%rdi), %ecx
	imull	%r9d, %ecx
	imulq	%r8, %r9
	movzwl	252(%rdi), %edi
	addq	%r9, %rdi
	movzwl	2(%rsi), %r9d
	movzwl	4(%rsi), %r10d
	movw	%di, (%rsi)
	shrq	$16, %rdi
	imull	%r9d, %eax
	imulq	%r8, %r9
	addq	%rdi, %r9
	addq	%r9, %rdx
	imull	%r8d, %r10d
	addl	%r10d, %eax
	addl	%eax, %ecx
	movw	%dx, 2(%rsi)
	movl	%edx, %eax
	shrl	$16, %eax
	addl	%ecx, %eax
	movw	%ax, 4(%rsi)
	retq
.Lfunc_end0:
	.size	__dorand48, .Lfunc_end0-__dorand48
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
