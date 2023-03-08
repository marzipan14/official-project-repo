	.text
	.file	"pthread_join.c"
	.globl	pthread_join            # -- Begin function pthread_join
	.p2align	4, 0x90
	.type	pthread_join,@function
pthread_join:                           # @pthread_join
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$3, %ebx
	testq	%r12, %r12
	je	.LBB0_3
# %bb.1:
	cmpl	%r14d, 16(%r12)
	jne	.LBB0_3
# %bb.2:
	movl	$22, %ebx
	cmpl	$1, 60(%r12)
	jne	.LBB0_4
.LBB0_3:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
.LBB0_14:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	callq	pthread_self
	testq	%rax, %rax
	je	.LBB0_5
# %bb.6:
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	pthread_equal
	movl	$45, %ebx
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.7:
	movq	(%r12), %rdi
	callq	pte_osThreadWaitForEnd
	cmpl	$4, %eax
	je	.LBB0_8
# %bb.9:
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.10:
	testq	%r15, %r15
	je	.LBB0_12
# %bb.11:
	movq	40(%r12), %rax
	movq	%rax, (%r15)
.LBB0_12:
	movq	%r12, %rdi
	movl	%r14d, %esi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pthread_detach          # TAILCALL
.LBB0_5:
	movl	$2, %ebx
	jmp	.LBB0_14
.LBB0_8:
	xorl	%ebx, %ebx
	jmp	.LBB0_14
.LBB0_13:
	movl	$3, %ebx
	jmp	.LBB0_14
.Lfunc_end0:
	.size	pthread_join, .Lfunc_end0-pthread_join
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
