	.text
	.file	"envz_remove.c"
	.globl	envz_remove             # -- Begin function envz_remove
	.p2align	4, 0x90
	.type	envz_remove,@function
envz_remove:                            # @envz_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	envz_entry
	testq	%rax, %rax
	je	.LBB0_4
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	strlen
	movq	(%r15), %rdi
	movq	(%r14), %rsi
	leaq	(%rdi,%rsi), %rdx
	addl	$1, %eax
	movslq	%eax, %r12
	leaq	(%rbx,%r12), %rax
	addq	$-1, %rax
	cmpq	%rax, %rdx
	je	.LBB0_3
# %bb.2:
	movq	%rbx, %rsi
	addq	%r12, %rsi
	subq	%rsi, %rdx
	movq	%rbx, %rdi
	callq	memmove
	movq	(%r15), %rdi
	movq	(%r14), %rsi
.LBB0_3:
	subq	%r12, %rsi
	callq	realloc
	movq	%rax, (%r15)
	subq	%r12, (%r14)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_remove, .Lfunc_end0-envz_remove
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
