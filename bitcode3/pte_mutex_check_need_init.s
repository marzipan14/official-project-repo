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
	addq	$3, %rax
	cmpq	$3, %rax
	ja	.LBB0_1
# %bb.2:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_7:
	movl	$pte_errorcheck_mutexattr, %esi
	jmp	.LBB0_5
.LBB0_1:
	xorl	%ebx, %ebx
	jmp	.LBB0_9
.LBB0_4:
	movl	$pte_recursive_mutexattr, %esi
.LBB0_5:
	movq	%rbx, %rdi
	jmp	.LBB0_6
.LBB0_3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
.LBB0_6:
	callq	pthread_mutex_init
	movl	%eax, %ebx
	jmp	.LBB0_9
.LBB0_8:
	movl	$22, %ebx
.LBB0_9:
	movq	pte_mutex_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_mutex_check_need_init, .Lfunc_end0-pte_mutex_check_need_init
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_7
	.quad	.LBB0_4
	.quad	.LBB0_3
	.quad	.LBB0_8
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
