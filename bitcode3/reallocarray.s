	.text
	.file	"reallocarray.c"
	.globl	reallocarray            # -- Begin function reallocarray
	.p2align	4, 0x90
	.type	reallocarray,@function
reallocarray:                           # @reallocarray
# %bb.0:
	movq	%rdx, %rcx
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
	cmpq	%rcx, %rax
	jae	.LBB0_4
# %bb.3:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB0_4:
	imulq	%rsi, %rcx
	movq	%rcx, %rsi
	jmp	realloc                 # TAILCALL
.Lfunc_end0:
	.size	reallocarray, .Lfunc_end0-reallocarray
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
