	.text
	.file	"pte_spinlock_check_need_init.c"
	.globl	pte_spinlock_check_need_init # -- Begin function pte_spinlock_check_need_init
	.p2align	4, 0x90
	.type	pte_spinlock_check_need_init,@function
pte_spinlock_check_need_init:           # @pte_spinlock_check_need_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_1
# %bb.2:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_5
# %bb.3:
	movl	$22, %ebx
	jmp	.LBB0_4
.LBB0_1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	pthread_spin_init
	movl	%eax, %ebx
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	pte_spinlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_spinlock_check_need_init, .Lfunc_end0-pte_spinlock_check_need_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
