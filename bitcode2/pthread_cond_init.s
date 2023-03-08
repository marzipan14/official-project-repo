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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.3:
	movq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.4:
	cmpl	$1, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
# %bb.5:
	xorl	%r15d, %r15d
	movl	$88, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_23
.LBB0_7:
	movl	$1, %edi
	movl	$64, %esi
	callq	calloc
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.9:
	movq	$0, 16(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	leaq	32(%r15), %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	callq	sem_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_11
# %bb.10:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB0_17
.LBB0_1:
	movl	$22, %ebx
	jmp	.LBB0_25
.LBB0_8:
	movl	$12, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_23
.LBB0_11:
	leaq	24(%r15), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	sem_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.12:
	callq	__errno
	movl	(%rax), %ebx
	jmp	.LBB0_16
.LBB0_13:
	movq	%r15, %rdi
	addq	$40, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_14
# %bb.15:
	movl	%eax, %ebx
	movq	%r13, %rdi
	callq	sem_destroy
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	sem_destroy
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_24
.LBB0_18:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	$0, 48(%r15)
	movq	pte_cond_list_tail(%rip), %rax
	movq	%rax, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_20
# %bb.19:
	movq	%r15, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movq	%r15, pte_cond_list_tail(%rip)
	cmpq	$0, pte_cond_list_head(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_22
# %bb.21:
	movq	%r15, pte_cond_list_head(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	xorl	%ebx, %ebx
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_24:
	movq	%r15, (%r14)
.LBB0_25:
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
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.Lfunc_end0:
	.size	pthread_cond_init, .Lfunc_end0-pthread_cond_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
