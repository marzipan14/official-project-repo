	.text
	.file	"pthread_mutex_timedlock.c"
	.globl	pthread_mutex_timedlock # -- Begin function pthread_mutex_timedlock
	.p2align	4, 0x90
	.type	pthread_mutex_timedlock,@function
pthread_mutex_timedlock:                # @pthread_mutex_timedlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r13
	movq	(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %r12
	jb	.LBB0_3
# %bb.1:
	movq	%rdi, %rbx
	callq	pte_mutex_check_need_init
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_28
# %bb.2:
	movq	(%rbx), %r12
.LBB0_3:
	cmpl	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_4
# %bb.12:
	callq	pthread_self
	movq	%rax, %r14
	movl	8(%r12), %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgl	%esi, 8(%r12)
	movl	%edx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_15
# %bb.16:
	movq	24(%r12), %rdi
	movl	32(%r12), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	pthread_equal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_21
# %bb.17:
	cmpl	$1, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %r14d
	jne	.LBB0_27
# %bb.18:
	addl	$1, 12(%r12)
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%r13, %rdi
	callq	pte_relmillisecs
	movl	%eax, -48(%rbp)
	movq	%rbx, %rdi
	leaq	-48(%rbp), %rsi
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB0_26
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_15
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_25
.LBB0_4:
	movl	$1, %eax
	xchgl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_20
# %bb.5:
	xorl	%r14d, %r14d
	leaq	-44(%rbp), %r15
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	%r13, %rdi
	callq	pte_relmillisecs
	movl	%eax, -44(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB0_11
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_28
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_15:
	movl	$1, 12(%r12)
	movq	%r14, 24(%r12)
	movl	%r15d, 32(%r12)
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	xorl	%r14d, %r14d
	jmp	.LBB0_28
.LBB0_11:
	movl	$116, %r14d
	jmp	.LBB0_28
.LBB0_26:
	movl	$116, %r14d
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_mutex_timedlock, .Lfunc_end0-pthread_mutex_timedlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
