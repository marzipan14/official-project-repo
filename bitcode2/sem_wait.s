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
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	callq	pthread_testcancel
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_1
# %bb.3:
	leaq	8(%r14), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_2
# %bb.4:
	cmpq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.5:
	movl	(%r14), %ebx
	leal	-1(%rbx), %eax
	movl	%eax, (%r14)
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB0_11
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r12d
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	callq	__errno
	movl	%r12d, (%rax)
.LBB0_10:
	movl	$-1, %r14d
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
.LBB0_8:
	leaq	-56(%rbp), %rdi
	movl	$pte_sem_wait_cleanup, %esi
	movq	%r14, %rdx
	callq	pte_push_cleanup
	movq	16(%r14), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	pte_cancellable_wait
	movl	%eax, %r12d
	movl	%eax, %edi
	callq	pte_pop_cleanup
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB0_9
	jmp	.LBB0_11
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_4
# %bb.1:
	movl	$0, -20(%rbp)
	movq	16(%rbx), %rdi
	leaq	-20(%rbp), %rsi
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_3
# %bb.2:
	addl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_6
# %bb.1:
	leaq	8(%r12), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_7
# %bb.2:
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_10
# %bb.3:
	movl	(%r12), %ebx
	leal	-1(%rbx), %eax
	movl	%eax, (%r12)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB2_5
# %bb.4:
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	%ebx, (%rax)
.LBB2_8:
	movl	$-1, %eax
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_10:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	callq	__errno
	movl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_8
.Lfunc_end2:
	.size	sem_wait_nocancel, .Lfunc_end2-sem_wait_nocancel
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
