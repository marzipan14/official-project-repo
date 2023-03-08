	.text
	.file	"pthread_cond_signal.c"
	.globl	pthread_cond_signal     # -- Begin function pthread_cond_signal
	.p2align	4, 0x90
	.type	pthread_cond_signal,@function
pthread_cond_signal:                    # @pthread_cond_signal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	pte_cond_unblock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_cond_signal, .Lfunc_end0-pthread_cond_signal
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_cond_unblock
	.type	pte_cond_unblock,@function
pte_cond_unblock:                       # @pte_cond_unblock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$22, %ebx
	testq	%rdi, %rdi
	je	.LBB1_24
# %bb.1:
	movq	(%rdi), %r13
	testq	%r13, %r13
	je	.LBB1_24
# %bb.2:
	cmpq	$-1, %r13
	jne	.LBB1_4
.LBB1_23:
	xorl	%ebx, %ebx
	jmp	.LBB1_24
.LBB1_4:
	movl	%esi, %r12d
	leaq	40(%r13), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB1_24
# %bb.5:
	movq	(%r13), %r15
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_9
# %bb.6:
	testq	%r15, %r15
	je	.LBB1_12
# %bb.7:
	testl	%r12d, %r12d
	je	.LBB1_13
# %bb.8:
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	movq	%rcx, 16(%r13)
.LBB1_19:
	xorl	%eax, %eax
	jmp	.LBB1_20
.LBB1_9:
	cmpq	8(%r13), %r15
	jle	.LBB1_12
# %bb.10:
	leaq	32(%r13), %rdi
	callq	sem_wait
	testl	%eax, %eax
	je	.LBB1_15
# %bb.11:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB1_24
.LBB1_12:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	jmp	.LBB1_24
.LBB1_13:
	addq	$1, %rax
	movq	%rax, 16(%r13)
	addq	$-1, %r15
	movq	%r15, %rax
.LBB1_14:
	movl	$1, %r15d
.LBB1_20:
	movq	%rax, (%r13)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB1_24
# %bb.21:
	addq	$24, %r13
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	sem_post_multiple
	testl	%eax, %eax
	je	.LBB1_23
# %bb.22:
	callq	__errno
	movl	(%rax), %ebx
.LBB1_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_15:
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_17
# %bb.16:
	subq	%rax, (%r13)
	movq	$0, 8(%r13)
.LBB1_17:
	testl	%r12d, %r12d
	je	.LBB1_25
# %bb.18:
	movq	(%r13), %r15
	movq	%r15, 16(%r13)
	jmp	.LBB1_19
.LBB1_25:
	movq	$1, 16(%r13)
	movq	(%r13), %rax
	addq	$-1, %rax
	jmp	.LBB1_14
.Lfunc_end1:
	.size	pte_cond_unblock, .Lfunc_end1-pte_cond_unblock
                                        # -- End function
	.globl	pthread_cond_broadcast  # -- Begin function pthread_cond_broadcast
	.p2align	4, 0x90
	.type	pthread_cond_broadcast,@function
pthread_cond_broadcast:                 # @pthread_cond_broadcast
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	pte_cond_unblock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pthread_cond_broadcast, .Lfunc_end2-pthread_cond_broadcast
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
