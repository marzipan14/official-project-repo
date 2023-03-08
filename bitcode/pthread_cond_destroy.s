	.text
	.file	"pthread_cond_destroy.c"
	.globl	pthread_cond_destroy    # -- Begin function pthread_cond_destroy
	.p2align	4, 0x90
	.type	pthread_cond_destroy,@function
pthread_cond_destroy:                   # @pthread_cond_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$22, %r12d
	testq	%rdi, %rdi
	je	.LBB0_31
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	cmpq	$-1, %rax
	je	.LBB0_26
# %bb.2:
	testq	%rax, %rax
	je	.LBB0_31
# %bb.3:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	(%rbx), %r15
	leaq	32(%r15), %r14
	movq	%r14, %rdi
	callq	sem_wait
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	callq	__errno
	movl	(%rax), %r12d
	jmp	.LBB0_31
.LBB0_26:
	movq	pte_cond_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$16, %r12d
	cmpq	$-1, (%rbx)
	jne	.LBB0_28
# %bb.27:
	movq	$0, (%rbx)
	xorl	%r12d, %r12d
.LBB0_28:
	movq	pte_cond_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	testl	%r12d, %r12d
	sete	%al
	xorl	%r13d, %r13d
.LBB0_29:
	movl	%r13d, %r14d
.LBB0_30:
	testb	%al, %al
	cmovnel	%r14d, %r12d
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	leaq	40(%r15), %r13
	movq	%r13, %rdi
	callq	pthread_mutex_trylock
	testl	%eax, %eax
	je	.LBB0_7
# %bb.6:
	movl	%eax, %r12d
	movq	%r14, %rdi
	callq	sem_post
	jmp	.LBB0_31
.LBB0_7:
	movq	(%r15), %rax
	cmpq	8(%r15), %rax
	jle	.LBB0_12
# %bb.8:
	movq	%r14, %rdi
	callq	sem_post
	testl	%eax, %eax
	je	.LBB0_9
# %bb.10:
	callq	__errno
	movl	(%rax), %r12d
	jmp	.LBB0_11
.LBB0_12:
	movq	$0, (%rbx)
	movq	%r14, %rdi
	callq	sem_destroy
	xorl	%r14d, %r14d
	movl	$0, %r12d
	testl	%eax, %eax
	je	.LBB0_14
# %bb.13:
	callq	__errno
	movl	(%rax), %r12d
.LBB0_14:
	leaq	24(%r15), %rdi
	callq	sem_destroy
	testl	%eax, %eax
	je	.LBB0_16
# %bb.15:
	callq	__errno
	movl	(%rax), %r14d
.LBB0_16:
	movq	%r13, %rdi
	callq	pthread_mutex_unlock
	movq	%r13, %rdi
	movl	%eax, %r13d
	testl	%eax, %eax
	jne	.LBB0_18
# %bb.17:
	callq	pthread_mutex_destroy
	movl	%eax, %r13d
.LBB0_18:
	movq	48(%r15), %rcx
	cmpq	%r15, pte_cond_list_head(%rip)
	je	.LBB0_19
# %bb.20:
	movq	56(%r15), %rax
	movq	%rcx, 48(%rax)
	jmp	.LBB0_21
.LBB0_9:
	xorl	%r12d, %r12d
.LBB0_11:
	movq	%r13, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r14d
	movl	$16, %r13d
	jmp	.LBB0_25
.LBB0_19:
	movq	%rcx, pte_cond_list_head(%rip)
	movq	56(%r15), %rax
.LBB0_21:
	cmpq	%r15, pte_cond_list_tail(%rip)
	je	.LBB0_22
# %bb.23:
	movq	48(%r15), %rcx
	addq	$56, %rcx
	jmp	.LBB0_24
.LBB0_22:
	movl	$pte_cond_list_tail, %ecx
.LBB0_24:
	movq	%rax, (%rcx)
	movq	%r15, %rdi
	callq	free
.LBB0_25:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	testl	%r12d, %r12d
	sete	%al
	testl	%r14d, %r14d
	jne	.LBB0_30
	jmp	.LBB0_29
.Lfunc_end0:
	.size	pthread_cond_destroy, .Lfunc_end0-pthread_cond_destroy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
