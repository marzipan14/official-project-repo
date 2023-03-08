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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	testq	%rdi, %rdi
	je	.LBB1_22
# %bb.1:
	movq	(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_22
# %bb.2:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r13
	je	.LBB1_22
# %bb.3:
	movl	%esi, %r15d
	leaq	40(%r13), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.4:
	movq	(%r13), %r12
	movq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_8
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB1_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_12
# %bb.7:
	movslq	%r12d, %rcx
	addq	%rax, %rcx
	movq	%rcx, 16(%r13)
.LBB1_18:
	xorl	%eax, %eax
	jmp	.LBB1_19
.LBB1_8:
	cmpq	8(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_11
# %bb.9:
	leaq	32(%r13), %rdi
	callq	sem_wait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_14
# %bb.10:
	callq	__errno
	movl	(%rax), %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB1_22
.LBB1_11:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	jmp	.LBB1_22
.LBB1_12:
	addq	$1, %rax
	movq	%rax, 16(%r13)
	addq	$-1, %r12
	movq	%r12, %rax
.LBB1_13:
	movl	$1, %r12d
.LBB1_19:
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_22
# %bb.20:
	addq	$24, %r13
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	sem_post_multiple
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	testl	%eax, %eax
	je	.LBB1_22
# %bb.21:
	callq	__errno
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB1_14:
	movq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_16
# %bb.15:
	subq	%rax, (%r13)
	movq	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_23
# %bb.17:
	movq	(%r13), %r12
	movq	%r12, 16(%r13)
	jmp	.LBB1_18
.LBB1_23:
	movq	$1, 16(%r13)
	movq	(%r13), %rax
	addq	$-1, %rax
	jmp	.LBB1_13
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
