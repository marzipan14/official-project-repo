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
	pushq	%rbx
	pushq	%rax
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	testq	%rbx, %rbx
	je	.LBB0_22
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %rbx
	jb	.LBB0_4
# %bb.2:
	movq	%rdi, %r15
	callq	pte_mutex_check_need_init
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_22
# %bb.3:
	movq	(%r15), %rbx
.LBB0_4:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.9:
	callq	pthread_self
	movq	%rax, %r14
	movl	8(%rbx), %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	lock		cmpxchgl	%esi, 8(%rbx)
	movl	%edx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_19
# %bb.12:
	movq	24(%rbx), %rdi
	movl	32(%rbx), %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	pthread_equal
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_15
# %bb.13:
	cmpl	$1, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %r14d
	jne	.LBB0_21
# %bb.14:
	addl	$1, 12(%rbx)
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_17
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_16
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	movl	$1, 12(%rbx)
	movq	%r14, 24(%rbx)
	movl	%r15d, 32(%rbx)
.LBB0_20:
	xorl	%r14d, %r14d
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	movl	$1, %eax
	xchgl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB0_22
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	$-1, %eax
	xchgl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_22
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	pte_osSemaphorePend
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	jmp	.LBB0_22
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	jmp	.LBB0_21
.Lfunc_end0:
	.size	pthread_mutex_lock, .Lfunc_end0-pthread_mutex_lock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
