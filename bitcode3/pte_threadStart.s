	.text
	.file	"pte_threadStart.c"
	.globl	pte_threadStart         # -- Begin function pte_threadStart
	.p2align	4, 0x90
	.type	pte_threadStart,@function
pte_threadStart:                        # @pte_threadStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$1073741820, %esi       # imm = 0x3FFFFFFC
	#APP
	movl	%esi, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	wrpkru
	lfence
	#NO_APP
	movq	(%rdi), %rbx
	movq	16(%rdi), %r15
	movq	24(%rdi), %r14
	movq	pte_selfThreadKey(%rip), %rdi
	movq	%rbx, %rsi
	callq	pthread_setspecific
	movl	$1, 32(%rbx)
	leaq	104(%rbx), %rdi
	callq	setjmp
	cmpl	$1, %eax
	je	.LBB0_4
# %bb.1:
	movl	%eax, %ecx
	movq	$-1, %rax
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	*%r15
.LBB0_3:
	movq	%rax, 40(%rbx)
.LBB0_4:
	xorl	%eax, %eax
	callq	pte_thread_detach_and_exit_np
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_threadStart, .Lfunc_end0-pte_threadStart
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
