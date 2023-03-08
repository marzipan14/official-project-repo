	.text
	.file	"pthread_cond_wait.c"
	.globl	pthread_cond_wait       # -- Begin function pthread_cond_wait
	.p2align	4, 0x90
	.type	pthread_cond_wait,@function
pthread_cond_wait:                      # @pthread_cond_wait
# %bb.0:
	xorl	%edx, %edx
	jmp	pte_cond_timedwait      # TAILCALL
.Lfunc_end0:
	.size	pthread_cond_wait, .Lfunc_end0-pthread_cond_wait
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_cond_timedwait
	.type	pte_cond_timedwait,@function
pte_cond_timedwait:                     # @pte_cond_timedwait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movl	$0, -36(%rbp)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB1_11
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB1_11
# %bb.2:
	movq	%rdx, %r14
	movq	%rsi, %r12
	cmpq	$-1, %rcx
	jne	.LBB1_4
# %bb.3:
	movq	%rbx, %rdi
	callq	pte_cond_check_need_init
	movl	%eax, -36(%rbp)
	movl	%eax, %ecx
	orl	$16, %ecx
	cmpl	$16, %ecx
	jne	.LBB1_11
.LBB1_4:
	movq	(%rbx), %r15
	leaq	32(%r15), %rbx
	movq	%rbx, %rdi
	callq	sem_wait
	testl	%eax, %eax
	jne	.LBB1_5
# %bb.6:
	addq	$1, (%r15)
	movq	%rbx, %rdi
	callq	sem_post
	testl	%eax, %eax
	je	.LBB1_7
.LBB1_5:
	callq	__errno
	movl	(%rax), %eax
.LBB1_11:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:
	movq	%r12, -64(%rbp)
	movq	%r15, -56(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-88(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movl	$pte_cond_wait_cleanup, %esi
	callq	pte_push_cleanup
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, -36(%rbp)
	testl	%eax, %eax
	jne	.LBB1_10
# %bb.8:
	addq	$24, %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	sem_timedwait
	testl	%eax, %eax
	je	.LBB1_10
# %bb.9:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
.LBB1_10:
	movl	$1, %edi
	callq	pte_pop_cleanup
	movl	-36(%rbp), %eax
	jmp	.LBB1_11
.Lfunc_end1:
	.size	pte_cond_timedwait, .Lfunc_end1-pte_cond_timedwait
                                        # -- End function
	.globl	pthread_cond_timedwait  # -- Begin function pthread_cond_timedwait
	.p2align	4, 0x90
	.type	pthread_cond_timedwait,@function
pthread_cond_timedwait:                 # @pthread_cond_timedwait
# %bb.0:
	testq	%rdx, %rdx
	je	.LBB2_1
# %bb.2:
	jmp	pte_cond_timedwait      # TAILCALL
.LBB2_1:
	movl	$22, %eax
	retq
.Lfunc_end2:
	.size	pthread_cond_timedwait, .Lfunc_end2-pthread_cond_timedwait
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_cond_wait_cleanup
	.type	pte_cond_wait_cleanup,@function
pte_cond_wait_cleanup:                  # @pte_cond_wait_cleanup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	movq	16(%rdi), %r13
	leaq	40(%rbx), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB3_12
# %bb.1:
	movq	16(%rbx), %r12
	testl	%r12d, %r12d
	je	.LBB3_3
# %bb.2:
	movq	%r12, %rax
	addq	$-1, %rax
	movq	%rax, 16(%rbx)
	jmp	.LBB3_8
.LBB3_3:
	movq	8(%rbx), %rax
	addq	$1, %rax
	movq	%rax, 8(%rbx)
	cmpq	$1073741823, %rax       # imm = 0x3FFFFFFF
	jne	.LBB3_8
# %bb.4:
	leaq	32(%rbx), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	sem_wait
	testl	%eax, %eax
	jne	.LBB3_5
# %bb.6:
	movq	8(%rbx), %rax
	subq	%rax, (%rbx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sem_post
	testl	%eax, %eax
	jne	.LBB3_5
# %bb.7:
	movq	$0, 8(%rbx)
.LBB3_8:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	testl	%eax, %eax
	jne	.LBB3_12
# %bb.9:
	cmpl	$1, %r12d
	jne	.LBB3_11
# %bb.10:
	addq	$32, %rbx
	movq	%rbx, %rdi
	callq	sem_post
	testl	%eax, %eax
	je	.LBB3_11
.LBB3_5:
	callq	__errno
	movl	(%rax), %eax
	jmp	.LBB3_12
.LBB3_11:
	movq	(%r14), %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB3_13
.LBB3_12:
	movl	%eax, (%r13)
.LBB3_13:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pte_cond_wait_cleanup, .Lfunc_end3-pte_cond_wait_cleanup
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
