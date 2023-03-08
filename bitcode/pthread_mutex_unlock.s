	.text
	.file	"pthread_mutex_unlock.c"
	.globl	pthread_mutex_unlock    # -- Begin function pthread_mutex_unlock
	.p2align	4, 0x90
	.type	pthread_mutex_unlock,@function
pthread_mutex_unlock:                   # @pthread_mutex_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rbx
	movl	$22, %eax
	cmpq	$-4, %rbx
	ja	.LBB0_11
# %bb.1:
	cmpl	$0, 16(%rbx)
	je	.LBB0_6
# %bb.2:
	callq	pthread_self
	movl	%edx, %ecx
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	movq	%rax, %rdx
	callq	pthread_equal
	testl	%eax, %eax
	je	.LBB0_10
# %bb.3:
	cmpl	$1, 16(%rbx)
	jne	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	addl	$-1, 12(%rbx)
	jne	.LBB0_11
.LBB0_5:
	movq	$0, 24(%rbx)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xchgl	%ecx, 8(%rbx)
	testl	%ecx, %ecx
	jns	.LBB0_11
	jmp	.LBB0_8
.LBB0_6:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xchgl	%ecx, 8(%rbx)
	testl	%ecx, %ecx
	je	.LBB0_10
# %bb.7:
	jns	.LBB0_11
.LBB0_8:
	movq	(%rbx), %rdi
	movl	$1, %esi
	callq	pte_osSemaphorePost
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	$22, %eax
	cmovel	%ecx, %eax
	jmp	.LBB0_11
.LBB0_10:
	movl	$1, %eax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_unlock, .Lfunc_end0-pthread_mutex_unlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
