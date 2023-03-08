	.text
	.file	"pthread_cond_init.c"
	.globl	pthread_cond_init       # -- Begin function pthread_cond_init
	.p2align	4, 0x90
	.type	pthread_cond_init,@function
pthread_cond_init:                      # @pthread_cond_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB0_6
# %bb.3:
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_6
# %bb.4:
	cmpl	$1, 4(%rax)
	jne	.LBB0_6
# %bb.5:
	movl	$88, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB0_21
.LBB0_6:
	movl	$1, %edi
	movl	$64, %esi
	callq	calloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_7
# %bb.8:
	movq	$0, 16(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	leaq	32(%r15), %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	sem_init
	testl	%eax, %eax
	je	.LBB0_10
# %bb.9:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB0_15
.LBB0_1:
	movl	$22, %ebx
	jmp	.LBB0_22
.LBB0_7:
	movl	$12, %ebx
	jmp	.LBB0_21
.LBB0_10:
	leaq	24(%r15), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	sem_init
	testl	%eax, %eax
	je	.LBB0_12
# %bb.11:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB0_14
.LBB0_12:
	movq	%r15, %rdi
	addq	$40, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	testl	%eax, %eax
	je	.LBB0_16
# %bb.13:
	movl	%eax, %ebx
	movq	%r13, %rdi
	callq	sem_destroy
.LBB0_14:
	movq	%r12, %rdi
	callq	sem_destroy
.LBB0_15:
	movq	%r15, %rdi
	callq	free
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	jne	.LBB0_21
.LBB0_16:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	$0, 48(%r15)
	movq	pte_cond_list_tail(%rip), %rax
	movq	%rax, 56(%r15)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.17:
	movq	%r15, 48(%rax)
.LBB0_18:
	movq	%r15, pte_cond_list_tail(%rip)
	cmpq	$0, pte_cond_list_head(%rip)
	jne	.LBB0_20
# %bb.19:
	movq	%r15, pte_cond_list_head(%rip)
.LBB0_20:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	xorl	%ebx, %ebx
.LBB0_21:
	movq	%r15, (%r14)
.LBB0_22:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_cond_init, .Lfunc_end0-pthread_cond_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
