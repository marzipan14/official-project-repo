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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rdi
	je	.LBB0_3
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB0_9
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi), %edx
	movl	$1, %eax
	lock		cmpxchgl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_9:
	movl	(%rdi), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	je	.LBB0_12
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	cmpl	$3, %ecx
	jne	.LBB0_12
# %bb.11:
	addq	$8, %rdi
	callq	pthread_mutex_lock
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_3:
	movq	%rbx, %rdi
	callq	pte_spinlock_check_need_init
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.4:
	movq	(%rbx), %rdi
	jmp	.LBB0_5
.Lfunc_end0:
	.size	pthread_spin_lock, .Lfunc_end0-pthread_spin_lock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
