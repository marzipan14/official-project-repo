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
	subq	$24, %rsp
	movq	%rsi, %r13
	movq	(%rdi), %r12
	cmpq	$-3, %r12
	jb	.LBB0_3
# %bb.1:
	movq	%rdi, %rbx
	callq	pte_mutex_check_need_init
	movl	%eax, %r14d
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.2:
	movq	(%rbx), %r12
.LBB0_3:
	cmpl	$0, 16(%r12)
	je	.LBB0_8
# %bb.4:
	callq	pthread_self
	movq	%rax, %rbx
	movl	8(%r12), %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgl	%esi, 8(%r12)
	movl	%edx, %r15d
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	je	.LBB0_15
# %bb.5:
	movq	24(%r12), %rdi
	movl	32(%r12), %esi
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	pthread_equal
	testl	%eax, %eax
	je	.LBB0_16
# %bb.6:
	movl	$45, %r14d
	cmpl	$1, 16(%r12)
	jne	.LBB0_26
# %bb.7:
	addl	$1, 12(%r12)
	jmp	.LBB0_25
.LBB0_8:
	movl	$1, %eax
	xchgl	%eax, 8(%r12)
	testl	%eax, %eax
	je	.LBB0_25
# %bb.9:
	xorl	%r14d, %r14d
	leaq	-44(%rbp), %r15
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r13, %rdi
	callq	pte_relmillisecs
	movl	%eax, -44(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB0_23
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%r12)
	testl	%eax, %eax
	je	.LBB0_26
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	(%r12), %rbx
	testq	%r13, %r13
	jne	.LBB0_10
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_11
.LBB0_15:
	movl	$1, 12(%r12)
	movq	%rbx, 24(%r12)
	movl	%r15d, 32(%r12)
	jmp	.LBB0_26
.LBB0_16:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leaq	-48(%rbp), %r14
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_19 Depth=1
	movq	%r13, %rdi
	callq	pte_relmillisecs
	movl	%eax, -48(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB0_23
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%r12)
	testl	%eax, %eax
	je	.LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	(%r12), %rbx
	testq	%r13, %r13
	jne	.LBB0_17
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_18
.LBB0_23:
	movl	$116, %r14d
	jmp	.LBB0_26
.LBB0_24:
	movl	$1, 12(%r12)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%r12)
	movl	%r15d, 32(%r12)
.LBB0_25:
	xorl	%r14d, %r14d
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
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
