	.text
	.file	"pte_rwlock_check_need_init.c"
	.globl	pte_rwlock_check_need_init # -- Begin function pte_rwlock_check_need_init
	.p2align	4, 0x90
	.type	pte_rwlock_check_need_init,@function
pte_rwlock_check_need_init:             # @pte_rwlock_check_need_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	xorl	%ebx, %ebx
	cmpq	$-1, %rax
	jne	.LBB0_4
# %bb.2:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	pthread_rwlock_init
	movl	%eax, %ebx
	jmp	.LBB0_4
.LBB0_3:
	movl	$22, %ebx
.LBB0_4:
	movq	pte_rwlock_test_init_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_rwlock_check_need_init, .Lfunc_end0-pte_rwlock_check_need_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
