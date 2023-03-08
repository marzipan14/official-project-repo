	.text
	.file	"pthread_once.c"
	.globl	pthread_once            # -- Begin function pthread_once
	.p2align	4, 0x90
	.type	pthread_once,@function
pthread_once:                           # @pthread_once
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB0_16
# %bb.2:
	movq	%rdi, %rbx
	movl	$1, %r13d
	leaq	-72(%rbp), %r15
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	xorl	%eax, %eax
	lock		cmpxchgl	%r13d, (%rbx)
	testl	%ecx, %ecx
	je	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$2, %ecx
	je	.LBB0_15
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	lock		addl	$1, 16(%rbx)
	mfence
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	pte_osSemaphoreCreate
	movq	-48(%rbp), %rcx
	movq	8(%rbx), %rdx
	xorl	%eax, %eax
	lock		cmpxchgq	%rcx, 8(%rbx)
	testq	%rdx, %rdx
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	pte_osSemaphoreDelete
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	mfence
	movl	(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	lock		subl	$1, 16(%rbx)
	jne	.LBB0_3
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	xchgq	%rdi, 8(%rbx)
	movq	%rdi, -48(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	callq	pte_osSemaphoreDelete
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$pte_once_init_routine_cleanup, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	pte_push_cleanup
	callq	*%r14
	xorl	%edi, %edi
	callq	pte_pop_cleanup
	movl	$2, %eax
	xchgl	%eax, (%rbx)
	mfence
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_3
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rbx), %rdi
	movl	16(%rbx), %esi
	callq	pte_osSemaphorePost
	jmp	.LBB0_3
.LBB0_15:                               # %.loopexit
	xorl	%eax, %eax
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_once, .Lfunc_end0-pthread_once
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_once_init_routine_cleanup
	.type	pte_once_init_routine_cleanup,@function
pte_once_init_routine_cleanup:          # @pte_once_init_routine_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	xchgl	%eax, (%rdi)
	mfence
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_2
# %bb.1:
	movq	8(%rdi), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_once_init_routine_cleanup, .Lfunc_end1-pte_once_init_routine_cleanup
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
