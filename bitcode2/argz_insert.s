	.text
	.file	"argz_insert.c"
	.globl	argz_insert             # -- Begin function argz_insert
	.p2align	4, 0x90
	.type	argz_insert,@function
argz_insert:                            # @argz_insert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_1
# %bb.2:
	movq	%rdx, %rbx
	movq	(%r12), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	cmpq	%rdx, %r13
	ja	.LBB0_12
# %bb.3:
	movq	(%r15), %rcx
	addq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	jbe	.LBB0_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	je	.LBB0_8
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	jne	.LBB0_5
# %bb.7:
	movq	%r13, %rbx
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movq	%r14, %rdi
	callq	strlen
	movq	(%r12), %rdi
	addl	$1, %eax
	cltq
	movq	(%r15), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	%rax, %rsi
	callq	realloc
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_10
# %bb.11:
	subq	%r13, %rbx
	addq	%rbx, %rax
	movq	-48(%rbp), %r13         # 8-byte Reload
	leaq	(%rax,%r13), %rdi
	movq	(%r15), %rdx
	subq	%rbx, %rdx
	movq	%rax, %rsi
	callq	memmove
	addq	(%r12), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, (%r15)
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_1:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	argz_add
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	$12, %eax
	jmp	.LBB0_12
.Lfunc_end0:
	.size	argz_insert, .Lfunc_end0-argz_insert
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
