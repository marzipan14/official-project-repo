	.text
	.file	"reallocarray.c"
	.globl	reallocarray            # -- Begin function reallocarray
	.p2align	4, 0x90
	.type	reallocarray,@function
reallocarray:                           # @reallocarray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.1:
	movq	%rcx, %rax
	orq	%rsi, %rax
	shrq	$32, %rax
	je	.LBB0_4
# %bb.2:
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.3:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_4:
	imulq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	realloc
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	reallocarray, .Lfunc_end0-reallocarray
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
