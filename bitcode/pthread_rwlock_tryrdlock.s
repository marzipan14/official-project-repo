	.text
	.file	"pthread_rwlock_tryrdlock.c"
	.globl	pthread_rwlock_tryrdlock # -- Begin function pthread_rwlock_tryrdlock
	.p2align	4, 0x90
	.type	pthread_rwlock_tryrdlock,@function
pthread_rwlock_tryrdlock:               # @pthread_rwlock_tryrdlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$22, %r15d
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB0_12
# %bb.2:
	cmpq	$-1, %r14
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_rwlock_check_need_init
	movl	%eax, %r15d
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_12
# %bb.4:
	movq	(%rbx), %r14
.LBB0_5:
	cmpl	$262974946, 36(%r14)    # imm = 0xFACADE2
	movl	$22, %r15d
	jne	.LBB0_12
# %bb.6:
	movq	%r14, %rdi
	callq	pthread_mutex_trylock
	movl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.7:
	movl	24(%r14), %eax
	addl	$1, %eax
	movl	%eax, 24(%r14)
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jne	.LBB0_11
# %bb.8:
	leaq	8(%r14), %rbx
	movq	%rbx, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.10:
	movl	32(%r14), %eax
	subl	%eax, 24(%r14)
	movl	$0, 32(%r14)
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	testl	%eax, %eax
	je	.LBB0_11
.LBB0_9:
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	jmp	.LBB0_12
.LBB0_11:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %r15d
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_rwlock_tryrdlock, .Lfunc_end0-pthread_rwlock_tryrdlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
