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
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_1
# %bb.2:
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	(%rsi), %r12
	leaq	(%r12,%rcx), %rax
	movq	%rax, (%rsi)
	movq	(%rdi), %rdi
	movq	%rax, %rsi
	callq	realloc
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	addq	%r12, %rax
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_1:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_3:
	movl	$12, %eax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_append, .Lfunc_end0-argz_append
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
