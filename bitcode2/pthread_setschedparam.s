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
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rdi, %rbx
	xorl	%edx, %edx
	callq	pthread_kill
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	cmpl	$2, %r15d
	ja	.LBB0_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$134, %eax
	testl	%r15d, %r15d
	jne	.LBB0_4
# %bb.3:
	movl	(%r14), %ecx
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	pte_setthreadpriority
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r13d
	cmpl	%r15d, %eax
	jg	.LBB1_6
# %bb.1:
	movl	%ebx, %edi
	callq	sched_get_priority_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jl	.LBB1_6
# %bb.2:
	leaq	64(%r14), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_6
# %bb.3:
	movq	(%r14), %rdi
	movl	%r15d, %esi
	callq	pte_osThreadSetPriority
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r13d
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.4:
	movl	%r15d, 72(%r14)
	xorl	%r13d, %r13d
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
