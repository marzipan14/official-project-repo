	.text
	.file	"pthread_setschedparam.c"
	.globl	pthread_setschedparam   # -- Begin function pthread_setschedparam
	.p2align	4, 0x90
	.type	pthread_setschedparam,@function
pthread_setschedparam:                  # @pthread_setschedparam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rdi, %r15
	xorl	%edx, %edx
	callq	pthread_kill
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.1:
	cmpl	$2, %r12d
	jbe	.LBB0_3
.LBB0_2:
	movl	$22, %ebx
	jmp	.LBB0_11
.LBB0_3:
	movl	$134, %ebx
	testl	%r12d, %r12d
	je	.LBB0_4
.LBB0_11:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movl	(%r14), %r14d
	xorl	%edi, %edi
	callq	sched_get_priority_min
	cmpl	%r14d, %eax
	jg	.LBB0_2
# %bb.6:
	xorl	%edi, %edi
	callq	sched_get_priority_max
	movl	$22, %ebx
	cmpl	%r14d, %eax
	jl	.LBB0_11
# %bb.7:
	leaq	64(%r15), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.8:
	movq	(%r15), %rdi
	movl	%r14d, %esi
	callq	pte_osThreadSetPriority
	movl	$22, %ebx
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.9:
	movl	%r14d, 72(%r15)
	xorl	%ebx, %ebx
.LBB0_10:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_11
.Lfunc_end0:
	.size	pthread_setschedparam, .Lfunc_end0-pthread_setschedparam
                                        # -- End function
	.globl	pte_setthreadpriority   # -- Begin function pte_setthreadpriority
	.p2align	4, 0x90
	.type	pte_setthreadpriority,@function
pte_setthreadpriority:                  # @pte_setthreadpriority
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r15d
	movl	%edx, %ebx
	movq	%rdi, %r14
	movl	%edx, %edi
	callq	sched_get_priority_min
	movl	$22, %r13d
	cmpl	%r15d, %eax
	jg	.LBB1_6
# %bb.1:
	movl	%ebx, %edi
	callq	sched_get_priority_max
	cmpl	%r15d, %eax
	jl	.LBB1_6
# %bb.2:
	leaq	64(%r14), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r13d
	testl	%eax, %eax
	jne	.LBB1_6
# %bb.3:
	movq	(%r14), %rdi
	movl	%r15d, %esi
	callq	pte_osThreadSetPriority
	movl	$22, %r13d
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.4:
	movl	%r15d, 72(%r14)
	xorl	%r13d, %r13d
.LBB1_5:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
.LBB1_6:
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_setthreadpriority, .Lfunc_end1-pte_setthreadpriority
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
