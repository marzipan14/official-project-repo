	.text
	.file	"pthread_mutex_init.c"
	.globl	pthread_mutex_init      # -- Begin function pthread_mutex_init
	.p2align	4, 0x90
	.type	pthread_mutex_init,@function
pthread_mutex_init:                     # @pthread_mutex_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	$1, %edi
	movl	$40, %esi
	callq	calloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	$0, 8(%rbx)
	xorl	%r14d, %r14d
	movl	$0, %eax
	testq	%r12, %r12
	je	.LBB0_7
# %bb.5:
	movq	(%r12), %rcx
	movl	$0, %eax
	testq	%rcx, %rcx
	je	.LBB0_7
# %bb.6:
	movl	4(%rcx), %eax
.LBB0_7:
	movl	%eax, 16(%rbx)
	movq	$0, 24(%rbx)
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	pte_osSemaphoreCreate
	jmp	.LBB0_8
.LBB0_1:
	movl	$22, %r14d
	jmp	.LBB0_9
.LBB0_3:
	movl	$12, %r14d
.LBB0_8:
	movq	%rbx, (%r15)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_init, .Lfunc_end0-pthread_mutex_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
