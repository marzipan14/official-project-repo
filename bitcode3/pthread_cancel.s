	.text
	.file	"pthread_cancel.c"
	.globl	pthread_cancel          # -- Begin function pthread_cancel
	.p2align	4, 0x90
	.type	pthread_cancel,@function
pthread_cancel:                         # @pthread_cancel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %r15
	xorl	%edx, %edx
	callq	pthread_kill
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.1:
	callq	pthread_self
	testq	%rax, %rax
	je	.LBB0_2
# %bb.3:
	movl	%edx, %ecx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rax, %rdx
	callq	pthread_equal
	movl	%eax, %ebx
	leaq	80(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	cmpl	$0, 92(%r15)
	jne	.LBB0_9
# %bb.4:
	cmpl	$0, 88(%r15)
	jne	.LBB0_9
# %bb.5:
	movl	32(%r15), %eax
	cmpl	$3, %eax
	ja	.LBB0_9
# %bb.6:
	testl	%ebx, %ebx
	je	.LBB0_8
# %bb.7:
	movl	$4, 32(%r15)
	movl	$1, 88(%r15)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
	xorl	%ebx, %ebx
	jmp	.LBB0_13
.LBB0_9:
	movl	32(%r15), %eax
	cmpl	$2, %eax
	ja	.LBB0_11
# %bb.10:
	movl	$3, 32(%r15)
	movq	(%r15), %rdi
	callq	pte_osThreadCancel
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	jmp	.LBB0_12
.LBB0_2:
	movl	$12, %ebx
	jmp	.LBB0_13
.LBB0_11:
	movl	32(%r15), %eax
	xorl	%ecx, %ecx
	cmpl	$3, %eax
	seta	%cl
.LBB0_12:
	leal	(%rcx,%rcx,2), %ebx
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
.LBB0_13:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$1, %ebx
	jmp	.LBB0_13
.Lfunc_end0:
	.size	pthread_cancel, .Lfunc_end0-pthread_cancel
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
