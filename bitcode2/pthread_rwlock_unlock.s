	.text
	.file	"pthread_rwlock_unlock.c"
	.globl	pthread_rwlock_unlock   # -- Begin function pthread_rwlock_unlock
	.p2align	4, 0x90
	.type	pthread_rwlock_unlock,@function
pthread_rwlock_unlock:                  # @pthread_rwlock_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.1:
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_11
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB0_3
# %bb.4:
	cmpl	$262974946, 36(%rbx)    # imm = 0xFACADE2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.5:
	movl	28(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_6
# %bb.9:
	addl	$-1, %eax
	movl	%eax, 28(%rbx)
	leaq	8(%rbx), %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r15d
	movq	%rbx, %r14
.LBB0_10:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	cmovnel	%r15d, %eax
	jmp	.LBB0_11
.LBB0_3:
	xorl	%eax, %eax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_6:
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.7:
	xorl	%r15d, %r15d
	addl	$1, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
# %bb.8:
	addq	$16, %rbx
	movq	%rbx, %rdi
	callq	pthread_cond_signal
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
.Lfunc_end0:
	.size	pthread_rwlock_unlock, .Lfunc_end0-pthread_rwlock_unlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
