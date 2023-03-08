	.text
	.file	"argz_add.c"
	.globl	argz_add                # -- Begin function argz_add
	.p2align	4, 0x90
	.type	argz_add,@function
argz_add:                               # @argz_add
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
	je	.LBB0_4
# %bb.1:
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rsi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	addl	$1, %eax
	movslq	%eax, %r12
	movq	(%rbx), %rsi
	addq	%r12, %rsi
	movq	%rsi, (%rbx)
	movq	(%r15), %rdi
	callq	realloc
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	addq	-48(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcpy
	jmp	.LBB0_4
.LBB0_2:
	movl	$12, %r14d
.LBB0_4:
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
	.size	argz_add, .Lfunc_end0-argz_add
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
