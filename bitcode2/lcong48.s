	.text
	.file	"lcong48.c"
	.globl	_lcong48_r              # -- Begin function _lcong48_r
	.p2align	4, 0x90
	.type	_lcong48_r,@function
_lcong48_r:                             # @_lcong48_r
# %bb.0:
	movzwl	(%rsi), %eax
	movw	%ax, 240(%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 242(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 244(%rdi)
	movzwl	6(%rsi), %eax
	movw	%ax, 246(%rdi)
	movzwl	8(%rsi), %eax
	movw	%ax, 248(%rdi)
	movzwl	10(%rsi), %eax
	movw	%ax, 250(%rdi)
	movzwl	12(%rsi), %eax
	movw	%ax, 252(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	_lcong48_r, .Lfunc_end0-_lcong48_r
                                        # -- End function
	.globl	lcong48                 # -- Begin function lcong48
	.p2align	4, 0x90
	.type	lcong48,@function
lcong48:                                # @lcong48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movzwl	(%rbx), %ecx
	movw	%cx, 240(%rax)
	movzwl	2(%rbx), %ecx
	movw	%cx, 242(%rax)
	movzwl	4(%rbx), %ecx
	movw	%cx, 244(%rax)
	movzwl	6(%rbx), %ecx
	movw	%cx, 246(%rax)
	movzwl	8(%rbx), %ecx
	movw	%cx, 248(%rax)
	movzwl	10(%rbx), %ecx
	movw	%cx, 250(%rax)
	movzwl	12(%rbx), %ecx
	movw	%cx, 252(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lcong48, .Lfunc_end1-lcong48
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
