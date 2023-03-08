	.text
	.file	"pthread_spin_unlock.c"
	.globl	pthread_spin_unlock     # -- Begin function pthread_spin_unlock
	.p2align	4, 0x90
	.type	pthread_spin_unlock,@function
pthread_spin_unlock:                    # @pthread_spin_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$22, %ecx
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.1:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.2:
	cmpq	$-1, %rdi
	je	.LBB0_3
# %bb.4:
	movslq	(%rdi), %rdx
	movl	$1, %esi
	movl	$2, %eax
	lock		cmpxchgl	%esi, (%rdi)
	cmpq	$3, %rdx
	je	.LBB0_8
# %bb.5:
	cmpq	$2, %rdx
	je	.LBB0_9
# %bb.6:
	cmpq	$1, %rdx
	jne	.LBB0_10
.LBB0_3:
	movl	$1, %ecx
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.LBB0_8:
	addq	$8, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, %ecx
	jmp	.LBB0_10
.LBB0_9:
	xorl	%ecx, %ecx
	jmp	.LBB0_10
.Lfunc_end0:
	.size	pthread_spin_unlock, .Lfunc_end0-pthread_spin_unlock
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
