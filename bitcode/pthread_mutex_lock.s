	.text
	.file	"pthread_mutex_lock.c"
	.globl	pthread_mutex_lock      # -- Begin function pthread_mutex_lock
	.p2align	4, 0x90
	.type	pthread_mutex_lock,@function
pthread_mutex_lock:                     # @pthread_mutex_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB0_20
# %bb.1:
	cmpq	$-3, %rbx
	jb	.LBB0_4
# %bb.2:
	movq	%rdi, %r14
	callq	pte_mutex_check_need_init
	movl	%eax, %r12d
	testl	%eax, %eax
	jne	.LBB0_21
# %bb.3:
	movq	(%r14), %rbx
.LBB0_4:
	cmpl	$0, 16(%rbx)
	je	.LBB0_13
# %bb.5:
	callq	pthread_self
	movq	%rax, %r14
	movl	8(%rbx), %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgl	%esi, 8(%rbx)
	movl	%edx, %r15d
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	je	.LBB0_19
# %bb.6:
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	pthread_equal
	testl	%eax, %eax
	je	.LBB0_10
# %bb.7:
	movl	$45, %r12d
	cmpl	$1, 16(%rbx)
	jne	.LBB0_21
# %bb.8:
	addl	$1, 12(%rbx)
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	testl	%eax, %eax
	jne	.LBB0_20
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%rbx)
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.11:
	movl	$1, 12(%rbx)
	movq	%r14, 24(%rbx)
	movl	%r15d, 32(%rbx)
	jmp	.LBB0_18
.LBB0_13:
	movl	$1, %eax
	xchgl	%eax, 8(%rbx)
	testl	%eax, %eax
	je	.LBB0_18
# %bb.14:
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%rbx)
	testl	%eax, %eax
	je	.LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	testl	%eax, %eax
	je	.LBB0_15
.LBB0_20:
	movl	$22, %r12d
	jmp	.LBB0_21
.LBB0_18:
	xorl	%r12d, %r12d
	jmp	.LBB0_21
.LBB0_19:
	movl	$1, 12(%rbx)
	movq	%r14, 24(%rbx)
	movl	%r15d, 32(%rbx)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_lock, .Lfunc_end0-pthread_mutex_lock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
