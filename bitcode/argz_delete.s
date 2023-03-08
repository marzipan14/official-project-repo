	.text
	.file	"argz_delete.c"
	.globl	argz_delete             # -- Begin function argz_delete
	.p2align	4, 0x90
	.type	argz_delete,@function
argz_delete:                            # @argz_delete
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
	testq	%rdx, %rdx
	je	.LBB0_5
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	%rdx, %rdi
	callq	strlen
	addl	$1, %eax
	movslq	%eax, %r13
	leaq	(%rbx,%r13), %rsi
	movq	(%r15), %rdx
	addq	(%r12), %rdx
	subq	%rsi, %rdx
	movq	%rbx, %rdi
	callq	memmove
	movq	(%r12), %rsi
	subq	%r13, %rsi
	movq	%rsi, (%r12)
	movq	(%r15), %rdi
	callq	realloc
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	cmpq	$0, (%r12)
	jne	.LBB0_5
# %bb.4:
	movq	%rax, %rdi
	callq	free
	movq	$0, (%r15)
	jmp	.LBB0_5
.LBB0_2:
	movl	$12, %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
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
	.size	argz_delete, .Lfunc_end0-argz_delete
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
