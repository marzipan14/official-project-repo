	.text
	.file	"pte_rwlock_cancelwrwait.c"
	.globl	pte_rwlock_cancelwrwait # -- Begin function pte_rwlock_cancelwrwait
	.p2align	4, 0x90
	.type	pte_rwlock_cancelwrwait,@function
pte_rwlock_cancelwrwait:                # @pte_rwlock_cancelwrwait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	xorl	%eax, %eax
	subl	32(%rdi), %eax
	movl	%eax, 24(%rdi)
	movl	$0, 32(%rdi)
	addq	$8, %rdi
	callq	pthread_mutex_unlock
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_rwlock_cancelwrwait, .Lfunc_end0-pte_rwlock_cancelwrwait
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
