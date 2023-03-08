	.text
	.file	"pthread_spin_lock.c"
	.globl	pthread_spin_lock       # -- Begin function pthread_spin_lock
	.p2align	4, 0x90
	.type	pthread_spin_lock,@function
pthread_spin_lock:                      # @pthread_spin_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.2:
	cmpq	$-1, %rdi
	jne	.LBB0_5
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_spinlock_check_need_init
	testl	%eax, %eax
	jne	.LBB0_12
# %bb.4:
	movq	(%rbx), %rdi
.LBB0_5:
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %edx
	movl	$1, %eax
	lock		cmpxchgl	%ecx, (%rdi)
	cmpl	$2, %edx
	je	.LBB0_6
# %bb.7:
	movl	(%rdi), %eax
	cmpl	$2, %eax
	je	.LBB0_8
# %bb.9:
	cmpl	$3, %eax
	jne	.LBB0_11
# %bb.10:
	addq	$8, %rdi
	callq	pthread_mutex_lock
	jmp	.LBB0_12
.LBB0_8:
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_11:
	movl	$22, %eax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_spin_lock, .Lfunc_end0-pthread_spin_lock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
