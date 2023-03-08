	.text
	.file	"sem_timedwait.c"
	.globl	sem_timedwait           # -- Begin function sem_timedwait
	.p2align	4, 0x90
	.type	sem_timedwait,@function
sem_timedwait:                          # @sem_timedwait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$0, -44(%rbp)
	movq	(%rdi), %r13
	callq	pthread_testcancel
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_4
# %bb.2:
	movq	%rbx, %rdi
	callq	pte_relmillisecs
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %r14
	jmp	.LBB0_5
.LBB0_3:
	movl	$22, -44(%rbp)
	movl	$22, %ebx
	jmp	.LBB0_7
.LBB0_4:
	xorl	%r14d, %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r13), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_11
# %bb.6:
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_9:
	movl	$-1, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.12:
	movl	(%r13), %ebx
	leal	-1(%rbx), %eax
	movl	%eax, (%r13)
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB0_14
# %bb.13:
	movq	%r13, -64(%rbp)
	leaq	-44(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-88(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movl	$pte_sem_timedwait_cleanup, %esi
	callq	pte_push_cleanup
	movq	16(%r13), %rdi
	movq	%r14, %rsi
	callq	pte_cancellable_wait
	movl	%eax, -44(%rbp)
	movl	%eax, %edi
	callq	pte_pop_cleanup
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_8
# %bb.15:
	xorl	%eax, %eax
	jmp	.LBB0_10
.LBB0_16:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_9
.Lfunc_end0:
	.size	sem_timedwait, .Lfunc_end0-sem_timedwait
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_sem_timedwait_cleanup
	.type	pte_sem_timedwait_cleanup,@function
pte_sem_timedwait_cleanup:              # @pte_sem_timedwait_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	(%rdi), %rbx
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.1:
	movl	$0, -28(%rbp)
	movq	16(%rbx), %rdi
	leaq	-28(%rbp), %rsi
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.3:
	addl	$1, (%rbx)
	jmp	.LBB1_4
.LBB1_2:
	movq	8(%r15), %rax
	movl	$0, (%rax)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_sem_timedwait_cleanup, .Lfunc_end1-pte_sem_timedwait_cleanup
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
