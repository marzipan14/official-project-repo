	.text
	.file	"argz_create.c"
	.globl	argz_create             # -- Begin function argz_create
	.p2align	4, 0x90
	.type	argz_create,@function
argz_create:                            # @argz_create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	$0, (%rdx)
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.1:                                # %.preheader
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	callq	strlen
	movq	(%r12), %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, (%r12)
	movq	8(%r14,%rbx,8), %rdi
	addq	$1, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.3:
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	testl	%ebx, %ebx
	je	.LBB0_8
# %bb.6:
	movq	%rax, %r13
	movl	%ebx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14,%r15,8), %rdi
	callq	strlen
	movq	(%r14,%r15,8), %rsi
	addl	$1, %eax
	movslq	%eax, %r12
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %r13
	addq	$1, %r15
	cmpq	%r15, %rbx
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_10:
	movq	$0, (%r15)
.LBB0_8:
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_4:
	movl	$12, %eax
.LBB0_9:
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_create, .Lfunc_end0-argz_create
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
