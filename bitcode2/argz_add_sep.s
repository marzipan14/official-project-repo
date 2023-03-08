	.text
	.file	"argz_add_sep.c"
	.globl	argz_add_sep            # -- Begin function argz_add_sep
	.p2align	4, 0x90
	.type	argz_add_sep,@function
argz_add_sep:                           # @argz_add_sep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	(%rsi), %r12
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %r8
	movq	%rax, %rdi
	movl	%ecx, %esi
	movq	%r8, %rcx
	callq	argz_create_sep
	movq	-40(%rbp), %rsi
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.1:
	addq	(%rbx), %rsi
	movq	%rsi, (%rbx)
	movq	(%r15), %rdi
	callq	realloc
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	addq	%r12, %rax
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_2:
	movl	$12, %r14d
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_add_sep, .Lfunc_end0-argz_add_sep
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
