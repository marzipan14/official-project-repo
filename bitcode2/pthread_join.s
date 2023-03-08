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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_2
# %bb.1:
	cmpl	%r14d, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
# %bb.3:
	xorl	%eax, %eax
	cmpl	$1, 60(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	cmovnel	%eax, %ebx
	jmp	.LBB0_4
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %ebx
.LBB0_4:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_5
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	callq	pthread_self
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:
	movq	%rax, %rdi
	movl	%edx, %esi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	pthread_equal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %ebx
	jmp	.LBB0_14
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
	jmp	.LBB0_14
.LBB0_9:
	movq	(%r12), %rdi
	callq	pte_osThreadWaitForEnd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
# %bb.13:
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx,2), %ebx
	jmp	.LBB0_14
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_12
# %bb.11:
	movq	40(%r12), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	pthread_detach
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.Lfunc_end0:
	.size	pthread_join, .Lfunc_end0-pthread_join
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
