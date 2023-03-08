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
	movq	%rsi, %r14
	movq	%rdi, %r15
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
	movq	8(%r15,%rbx,8), %rdi
	addq	$1, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.3:
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	testl	%ebx, %ebx
	je	.LBB0_8
# %bb.6:
	movq	%rax, %r13
	movl	%ebx, %ebx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15,%r14,8), %rdi
	callq	strlen
	movq	(%r15,%r14,8), %rsi
	addl	$1, %eax
	movslq	%eax, %r12
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %r13
	addq	$1, %r14
	cmpq	%r14, %rbx
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_10:
	movq	$0, (%r14)
.LBB0_8:
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_4:
	movl	$12, %eax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
