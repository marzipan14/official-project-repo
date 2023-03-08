	.text
	.file	"sem_wait.c"
	.globl	sem_wait                # -- Begin function sem_wait
	.p2align	4, 0x90
	.type	sem_wait,@function
sem_wait:                               # @sem_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r12
	movq	(%rdi), %r15
	callq	pthread_testcancel
	testq	%r15, %r15
	je	.LBB0_1
# %bb.2:
	leaq	8(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_6
# %bb.3:
	cmpq	$0, (%r12)
	je	.LBB0_9
# %bb.4:
	movl	(%r15), %ebx
	leal	-1(%rbx), %eax
	movl	%eax, (%r15)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%r14d, %r14d
	testl	%ebx, %ebx
	jg	.LBB0_8
# %bb.5:
	leaq	-56(%rbp), %rdi
	movl	$pte_sem_wait_cleanup, %esi
	movq	%r15, %rdx
	callq	pte_push_cleanup
	movq	16(%r15), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	pte_cancellable_wait
	movl	%eax, %ebx
	movl	%eax, %edi
	callq	pte_pop_cleanup
	testl	%ebx, %ebx
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_1:
	movl	$22, %ebx
.LBB0_6:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_7:
	movl	$-1, %r14d
.LBB0_8:
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_9:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_7
.Lfunc_end0:
	.size	sem_wait, .Lfunc_end0-sem_wait
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_sem_wait_cleanup
	.type	pte_sem_wait_cleanup,@function
pte_sem_wait_cleanup:                   # @pte_sem_wait_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	leaq	8(%rdi), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB1_4
# %bb.1:
	movl	$0, -20(%rbp)
	movq	16(%rbx), %rdi
	leaq	-20(%rbp), %rsi
	callq	pte_osSemaphorePend
	testl	%eax, %eax
	je	.LBB1_3
# %bb.2:
	addl	$1, (%rbx)
.LBB1_3:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
.LBB1_4:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_sem_wait_cleanup, .Lfunc_end1-pte_sem_wait_cleanup
                                        # -- End function
	.globl	sem_wait_nocancel       # -- Begin function sem_wait_nocancel
	.p2align	4, 0x90
	.type	sem_wait_nocancel,@function
sem_wait_nocancel:                      # @sem_wait_nocancel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movq	(%rdi), %r12
	callq	pthread_testcancel
	testq	%r12, %r12
	je	.LBB2_5
# %bb.1:
	leaq	8(%r12), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB2_6
# %bb.2:
	cmpq	$0, (%r15)
	je	.LBB2_9
# %bb.3:
	movl	(%r12), %r15d
	leal	-1(%r15), %eax
	movl	%eax, (%r12)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jg	.LBB2_8
# %bb.4:
	movq	16(%r12), %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	jmp	.LBB2_8
.LBB2_5:
	movl	$22, %ebx
.LBB2_6:
	callq	__errno
	movl	%ebx, (%rax)
.LBB2_7:
	movl	$-1, %ebx
.LBB2_8:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_9:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB2_7
.Lfunc_end2:
	.size	sem_wait_nocancel, .Lfunc_end2-sem_wait_nocancel
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
