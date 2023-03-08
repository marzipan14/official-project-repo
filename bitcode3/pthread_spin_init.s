	.text
	.file	"pthread_spin_init.c"
	.globl	pthread_spin_init       # -- Begin function pthread_spin_init
	.p2align	4, 0x90
	.type	pthread_spin_init,@function
pthread_spin_init:                      # @pthread_spin_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$0, -36(%rbp)
	testq	%rdi, %rdi
	je	.LBB0_6
# %bb.1:
	movl	%esi, %r15d
	movq	%rdi, %r14
	leaq	-36(%rbp), %rdi
	callq	pte_getprocessors
	testl	%eax, %eax
	je	.LBB0_7
# %bb.2:
	movl	$1, -36(%rbp)
.LBB0_3:
	movl	$1, %edi
	movl	$16, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_9
# %bb.4:
	movq	%rax, %r12
	movl	-36(%rbp), %eax
	cmpl	$2, %eax
	jl	.LBB0_10
# %bb.5:
	movl	%eax, 8(%r12)
	movl	$1, (%r12)
	jmp	.LBB0_15
.LBB0_6:
	movl	$22, %ebx
	jmp	.LBB0_17
.LBB0_7:
	cmpl	$1, %r15d
	jne	.LBB0_3
# %bb.8:
	movl	$88, %ebx
	cmpl	$1, -36(%rbp)
	jg	.LBB0_17
	jmp	.LBB0_3
.LBB0_9:
	movl	$12, %ebx
	jmp	.LBB0_17
.LBB0_10:
	leaq	-48(%rbp), %rdi
	callq	pthread_mutexattr_init
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.11:
	movq	-48(%rbp), %rax
	movl	%r15d, (%rax)
	movq	%r12, %rdi
	addq	$8, %rdi
	leaq	-48(%rbp), %rsi
	callq	pthread_mutex_init
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.12:
	movl	$3, (%r12)
	xorl	%ebx, %ebx
.LBB0_13:
	leaq	-48(%rbp), %rdi
	callq	pthread_mutexattr_destroy
	testl	%ebx, %ebx
	je	.LBB0_15
# %bb.14:
	movq	%r12, %rdi
	callq	free
	xorl	%r12d, %r12d
	jmp	.LBB0_16
.LBB0_15:
	xorl	%ebx, %ebx
.LBB0_16:
	movq	%r12, (%r14)
.LBB0_17:
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_spin_init, .Lfunc_end0-pthread_spin_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
