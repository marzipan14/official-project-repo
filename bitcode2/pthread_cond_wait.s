	.text
	.file	"pthread_cond_wait.c"
	.globl	pthread_cond_wait       # -- Begin function pthread_cond_wait
	.p2align	4, 0x90
	.type	pthread_cond_wait,@function
pthread_cond_wait:                      # @pthread_cond_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	callq	pte_cond_timedwait
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %eax
	testq	%rdi, %rdi
	je	.LBB1_12
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_12
# %bb.2:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB1_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_5
.LBB1_4:
	movq	%rbx, %rdi
	callq	pte_cond_check_need_init
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	orl	$16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB1_12
.LBB1_5:
	movq	(%rbx), %r12
	leaq	32(%r12), %rbx
	movq	%rbx, %rdi
	callq	sem_wait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_6
# %bb.7:
	addq	$1, (%r12)
	movq	%rbx, %rdi
	callq	sem_post
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_8
.LBB1_6:
	callq	__errno
	movl	(%rax), %eax
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_8:
	movq	%r15, -64(%rbp)
	movq	%r12, -56(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-88(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movl	$pte_cond_wait_cleanup, %esi
	callq	pte_push_cleanup
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_11
# %bb.9:
	addq	$24, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sem_timedwait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_11
# %bb.10:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_11:
	movl	$1, %edi
	callq	pte_pop_cleanup
	movl	-36(%rbp), %eax
	jmp	.LBB1_12
.Lfunc_end1:
	.size	pte_cond_timedwait, .Lfunc_end1-pte_cond_timedwait
                                        # -- End function
	.globl	pthread_cond_timedwait  # -- Begin function pthread_cond_timedwait
	.p2align	4, 0x90
	.type	pthread_cond_timedwait,@function
pthread_cond_timedwait:                 # @pthread_cond_timedwait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_1
# %bb.2:
	callq	pte_cond_timedwait
	jmp	.LBB2_3
.LBB2_1:
	movl	$22, %eax
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_1
# %bb.2:
	movq	16(%rbx), %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB3_5
# %bb.3:
	movq	%r12, %rax
	addq	$-1, %rax
	movq	%rax, 16(%rbx)
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_9
.LBB3_5:
	movq	8(%rbx), %rax
	addq	$1, %rax
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1073741823, %rax       # imm = 0x3FFFFFFF
	jne	.LBB3_9
# %bb.6:
	leaq	32(%rbx), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	sem_wait
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_13
# %bb.7:
	movq	8(%rbx), %rax
	subq	%rax, (%rbx)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sem_post
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_13
# %bb.8:
	movq	$0, 8(%rbx)
	jmp	.LBB3_4
.LBB3_9:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_11
.LBB3_1:
	movl	%eax, (%r13)
.LBB3_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r12d
	jne	.LBB3_14
# %bb.12:
	addq	$32, %rbx
	movq	%rbx, %rdi
	callq	sem_post
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_14
.LBB3_13:
	callq	__errno
	movl	(%rax), %eax
	movl	%eax, (%r13)
	jmp	.LBB3_16
.LBB3_14:
	movq	(%r14), %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_16
# %bb.15:
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_16
.Lfunc_end3:
	.size	pte_cond_wait_cleanup, .Lfunc_end3-pte_cond_wait_cleanup
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
