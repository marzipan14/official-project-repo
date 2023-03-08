	.text
	.file	"envz_add.c"
	.globl	envz_add                # -- Begin function envz_add
	.p2align	4, 0x90
	.type	envz_add,@function
envz_add:                               # @envz_add
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	envz_remove
	testq	%r12, %r12
	je	.LBB0_4
# %bb.1:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r14
	addl	%r15d, %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	movq	%rax, %rbx
	movslq	%r15d, %r15
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$61, (%rbx,%r15)
	leaq	(%rbx,%r15), %rdi
	addq	$1, %rdi
	addl	$1, %r14d
	movslq	%r14d, %rdx
	movq	%r12, %rsi
	callq	memcpy
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	argz_add
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB0_5
.LBB0_4:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	argz_add
	movl	%eax, %r14d
	jmp	.LBB0_5
.LBB0_2:
	movl	$12, %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_add, .Lfunc_end0-envz_add
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
