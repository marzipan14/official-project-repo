	.text
	.file	"pthread_cond_signal.c"
	.globl	pthread_cond_signal     # -- Begin function pthread_cond_signal
	.p2align	4, 0x90
	.type	pthread_cond_signal,@function
pthread_cond_signal:                    # @pthread_cond_signal
# %bb.0:
	xorl	%esi, %esi
	jmp	pte_cond_unblock        # TAILCALL
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
	je	.LBB1_5
# %bb.1:
	movq	(%rdi), %r13
	testq	%r13, %r13
	je	.LBB1_5
# %bb.2:
	cmpq	$-1, %r13
	jne	.LBB1_4
.LBB1_3:
	xorl	%ebx, %ebx
	jmp	.LBB1_5
.LBB1_4:
	movl	%esi, %r12d
	leaq	40(%r13), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB1_6
.LBB1_5:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_6:
	movq	(%r13), %r15
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_10
# %bb.7:
	testq	%r15, %r15
	je	.LBB1_13
# %bb.8:
	testl	%r12d, %r12d
	je	.LBB1_14
# %bb.9:
	movslq	%r15d, %rcx
	addq	%rax, %rcx
	movq	%rcx, 16(%r13)
.LBB1_20:
	xorl	%eax, %eax
	jmp	.LBB1_21
.LBB1_10:
	cmpq	8(%r13), %r15
	jle	.LBB1_13
# %bb.11:
	leaq	32(%r13), %rdi
	callq	sem_wait
	testl	%eax, %eax
	je	.LBB1_16
# %bb.12:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB1_5
.LBB1_13:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pthread_mutex_unlock    # TAILCALL
.LBB1_14:
	addq	$1, %rax
	movq	%rax, 16(%r13)
	addq	$-1, %r15
	movq	%r15, %rax
.LBB1_15:
	movl	$1, %r15d
.LBB1_21:
	movq	%rax, (%r13)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.22:
	addq	$24, %r13
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	sem_post_multiple
	testl	%eax, %eax
	je	.LBB1_3
# %bb.23:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB1_5
.LBB1_16:
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_18
# %bb.17:
	subq	%rax, (%r13)
	movq	$0, 8(%r13)
.LBB1_18:
	testl	%r12d, %r12d
	je	.LBB1_25
# %bb.19:
	movq	(%r13), %r15
	movq	%r15, 16(%r13)
	jmp	.LBB1_20
.LBB1_25:
	movq	$1, 16(%r13)
	movq	(%r13), %rax
	addq	$-1, %rax
	jmp	.LBB1_15
.Lfunc_end1:
	.size	pte_cond_unblock, .Lfunc_end1-pte_cond_unblock
                                        # -- End function
	.globl	pthread_cond_broadcast  # -- Begin function pthread_cond_broadcast
	.p2align	4, 0x90
	.type	pthread_cond_broadcast,@function
pthread_cond_broadcast:                 # @pthread_cond_broadcast
# %bb.0:
	movl	$1, %esi
	jmp	pte_cond_unblock        # TAILCALL
.Lfunc_end2:
	.size	pthread_cond_broadcast, .Lfunc_end2-pthread_cond_broadcast
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
