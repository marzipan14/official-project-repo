	.text
	.file	"pte_mutex_check_need_init.c"
	.globl	pte_mutex_check_need_init # -- Begin function pte_mutex_check_need_init
	.p2align	4, 0x90
	.type	pte_mutex_check_need_init,@function
pte_mutex_check_need_init:              # @pte_mutex_check_need_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	pte_mutex_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	je	.LBB0_3
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %rax
	je	.LBB0_7
# %bb.8:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_11
# %bb.9:
	movl	$22, %ebx
	jmp	.LBB0_10
.LBB0_1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_5
.LBB0_3:
	movl	$pte_recursive_mutexattr, %esi
	jmp	.LBB0_4
.LBB0_7:
	movl	$pte_errorcheck_mutexattr, %esi
.LBB0_4:
	movq	%rbx, %rdi
.LBB0_5:
	callq	pthread_mutex_init
	movl	%eax, %ebx
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movq	pte_mutex_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_mutex_check_need_init, .Lfunc_end0-pte_mutex_check_need_init
                                        # -- End function
	.type	pte_recursive_mutexattr,@object # @pte_recursive_mutexattr
	.data
	.p2align	3
pte_recursive_mutexattr:
	.quad	pte_recursive_mutexattr_s
	.size	pte_recursive_mutexattr, 8

	.type	pte_errorcheck_mutexattr,@object # @pte_errorcheck_mutexattr
	.p2align	3
pte_errorcheck_mutexattr:
	.quad	pte_errorcheck_mutexattr_s
	.size	pte_errorcheck_mutexattr, 8

	.type	pte_recursive_mutexattr_s,@object # @pte_recursive_mutexattr_s
	.p2align	2
pte_recursive_mutexattr_s:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	pte_recursive_mutexattr_s, 8

	.type	pte_errorcheck_mutexattr_s,@object # @pte_errorcheck_mutexattr_s
	.p2align	2
pte_errorcheck_mutexattr_s:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.size	pte_errorcheck_mutexattr_s, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
