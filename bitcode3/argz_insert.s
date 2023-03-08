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
	testq	%rdx, %rdx
	je	.LBB0_11
# %bb.1:
	movq	%rdx, %rbx
	movq	(%r12), %r13
	movl	$22, %eax
	cmpq	%rdx, %r13
	ja	.LBB0_10
# %bb.2:
	movq	(%r15), %rcx
	addq	%r13, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB0_10
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %r13
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, -1(%rbx)
	leaq	-1(%rbx), %rbx
	jne	.LBB0_3
# %bb.6:
	addq	$1, %rbx
	jmp	.LBB0_7
.LBB0_11:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	argz_add                # TAILCALL
.LBB0_4:
	movq	%r13, %rbx
.LBB0_7:
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
	testq	%rax, %rax
	je	.LBB0_8
# %bb.9:
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
	jmp	.LBB0_10
.LBB0_8:
	movl	$12, %eax
.LBB0_10:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_insert, .Lfunc_end0-argz_insert
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
