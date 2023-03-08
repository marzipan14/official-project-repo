	.text
	.file	"pte_detach.c"
	.globl	pte_thread_detach_and_exit_np # -- Begin function pte_thread_detach_and_exit_np
	.p2align	4, 0x90
	.type	pte_thread_detach_and_exit_np,@function
pte_thread_detach_and_exit_np:          # @pte_thread_detach_and_exit_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	callq	pte_thread_detach_common
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_thread_detach_and_exit_np, .Lfunc_end0-pte_thread_detach_and_exit_np
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pte_thread_detach_common
	.type	pte_thread_detach_common,@function
pte_thread_detach_common:               # @pte_thread_detach_common
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpl	$0, pte_processInitialized(%rip)
	je	.LBB1_6
# %bb.1:
	movl	%edi, %r14d
	movq	pte_selfThreadKey(%rip), %rdi
	callq	pthread_getspecific
	testq	%rax, %rax
	je	.LBB1_6
# %bb.2:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movl	16(%rax), %esi
	callq	pte_callUserDestroyRoutines
	movq	%rbx, %r15
	addq	$80, %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movl	$6, 32(%rbx)
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	cmpl	$1, 60(%rbx)
	jne	.LBB1_5
# %bb.3:
	movq	8(%rbx), %rdi
	movl	16(%rbx), %esi
	addq	$8, %rsp
	testb	%r14b, %r14b
	je	.LBB1_4
# %bb.7:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pte_threadExitAndDestroy # TAILCALL
.LBB1_5:
	testb	%r14b, %r14b
	je	.LBB1_6
# %bb.8:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pte_osThreadExit        # TAILCALL
.LBB1_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_4:
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pte_threadDestroy       # TAILCALL
.Lfunc_end1:
	.size	pte_thread_detach_common, .Lfunc_end1-pte_thread_detach_common
                                        # -- End function
	.globl	pte_thread_detach_np    # -- Begin function pte_thread_detach_np
	.p2align	4, 0x90
	.type	pte_thread_detach_np,@function
pte_thread_detach_np:                   # @pte_thread_detach_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$0, pte_processInitialized(%rip)
	je	.LBB2_4
# %bb.1:
	movq	pte_selfThreadKey(%rip), %rdi
	callq	pthread_getspecific
	testq	%rax, %rax
	je	.LBB2_4
# %bb.2:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movl	16(%rax), %esi
	callq	pte_callUserDestroyRoutines
	movq	%rbx, %r14
	addq	$80, %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movl	$6, 32(%rbx)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	cmpl	$1, 60(%rbx)
	jne	.LBB2_4
# %bb.3:
	movq	8(%rbx), %rdi
	movl	16(%rbx), %esi
	callq	pte_threadDestroy
.LBB2_4:
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pte_thread_detach_np, .Lfunc_end2-pte_thread_detach_np
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
