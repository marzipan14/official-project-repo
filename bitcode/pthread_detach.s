	.text
	.file	"pthread_detach.c"
	.globl	pthread_detach          # -- Begin function pthread_detach
	.p2align	4, 0x90
	.type	pthread_detach,@function
pthread_detach:                         # @pthread_detach
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movl	$3, %r15d
	testq	%rbx, %rbx
	je	.LBB0_4
# %bb.1:
	cmpl	%r14d, 16(%rbx)
	jne	.LBB0_4
# %bb.2:
	cmpl	$1, 60(%rbx)
	jne	.LBB0_6
# %bb.3:
	movl	$22, %r15d
	jmp	.LBB0_4
.LBB0_6:
	leaq	80(%rbx), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB0_8
.LBB0_4:
	xorl	%r13d, %r13d
.LBB0_12:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	testb	%r13b, %r13b
	je	.LBB0_15
# %bb.13:
	testl	%r15d, %r15d
	jne	.LBB0_15
# %bb.14:
	movq	(%rbx), %rdi
	callq	pte_osThreadWaitForEnd
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	pte_threadDestroy
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:
	movl	32(%rbx), %eax
	cmpl	$6, %eax
	jne	.LBB0_10
# %bb.9:
	cmpl	$1, 60(%rbx)
	setne	%r13b
	jmp	.LBB0_11
.LBB0_10:
	movl	$1, 60(%rbx)
	xorl	%r13d, %r13d
.LBB0_11:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	xorl	%r15d, %r15d
	jmp	.LBB0_12
.Lfunc_end0:
	.size	pthread_detach, .Lfunc_end0-pthread_detach
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
