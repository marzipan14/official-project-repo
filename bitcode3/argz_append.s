	.text
	.file	"argz_append.c"
	.globl	argz_append             # -- Begin function argz_append
	.p2align	4, 0x90
	.type	argz_append,@function
argz_append:                            # @argz_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	xorl	%r14d, %r14d
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.1:
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%rdi, %r12
	movq	(%rsi), %r13
	leaq	(%rcx,%r13), %rax
	movq	%rax, (%rsi)
	movq	(%rdi), %rdi
	movq	%rax, %rsi
	callq	realloc
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	addq	%r13, %rax
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	jmp	.LBB0_4
.LBB0_2:
	movl	$12, %r14d
.LBB0_4:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_append, .Lfunc_end0-argz_append
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
