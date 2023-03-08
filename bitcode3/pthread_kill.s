	.text
	.file	"pthread_kill.c"
	.globl	pthread_kill            # -- Begin function pthread_kill
	.p2align	4, 0x90
	.type	pthread_kill,@function
pthread_kill:                           # @pthread_kill
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movq	(%rbx), %rdi
	movl	%r14d, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pte_kill                # TAILCALL
.Lfunc_end0:
	.size	pthread_kill, .Lfunc_end0-pthread_kill
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
