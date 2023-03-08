	.text
	.file	"pthread_spin_unlock.c"
	.globl	pthread_spin_unlock     # -- Begin function pthread_spin_unlock
	.p2align	4, 0x90
	.type	pthread_spin_unlock,@function
pthread_spin_unlock:                    # @pthread_spin_unlock
# %bb.0:
	movl	$22, %ecx
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.2:
	cmpq	$-1, %rdi
	jne	.LBB0_5
.LBB0_3:
	movl	$1, %ecx
.LBB0_4:
	movl	%ecx, %eax
	retq
.LBB0_5:
	movslq	(%rdi), %rdx
	movl	$1, %esi
	movl	$2, %eax
	lock		cmpxchgl	%esi, (%rdi)
	cmpq	$3, %rdx
	je	.LBB0_9
# %bb.6:
	cmpq	$2, %rdx
	je	.LBB0_7
# %bb.8:
	cmpq	$1, %rdx
	je	.LBB0_3
	jmp	.LBB0_4
.LBB0_9:
	addq	$8, %rdi
	jmp	pthread_mutex_unlock    # TAILCALL
.LBB0_7:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pthread_spin_unlock, .Lfunc_end0-pthread_spin_unlock
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
