	.text
	.file	"pthread_rwlock_init.c"
	.globl	pthread_rwlock_init     # -- Begin function pthread_rwlock_init
	.p2align	4, 0x90
	.type	pthread_rwlock_init,@function
pthread_rwlock_init:                    # @pthread_rwlock_init
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
	je	.LBB0_5
# %bb.3:
	cmpq	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.4:
	xorl	%r15d, %r15d
	movl	$22, %ebx
	jmp	.LBB0_14
.LBB0_5:
	movl	$1, %edi
	movl	$40, %esi
	callq	calloc
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:
	movq	$0, 24(%r15)
	movl	$0, 32(%r15)
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.8:
	leaq	8(%r15), %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.9:
	movq	%r15, %rdi
	addq	$16, %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	pthread_cond_init
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_10
# %bb.11:
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	pthread_mutex_destroy
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ebx
.LBB0_12:
	movq	%r15, %rdi
	callq	pthread_mutex_destroy
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movq	%r15, %rdi
	callq	free
	xorl	%r15d, %r15d
	jmp	.LBB0_14
.LBB0_1:
	movl	$22, %ebx
	jmp	.LBB0_15
.LBB0_6:
	movl	$12, %ebx
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, (%r14)
.LBB0_15:
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
.LBB0_10:
	movl	$262974946, 36(%r15)    # imm = 0xFACADE2
	jmp	.LBB0_14
.Lfunc_end0:
	.size	pthread_rwlock_init, .Lfunc_end0-pthread_rwlock_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
