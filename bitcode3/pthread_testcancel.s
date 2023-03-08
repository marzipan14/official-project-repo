	.text
	.file	"pthread_testcancel.c"
	.globl	pthread_testcancel      # -- Begin function pthread_testcancel
	.p2align	4, 0x90
	.type	pthread_testcancel,@function
pthread_testcancel:                     # @pthread_testcancel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	pthread_self
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:
	movq	%rax, %rbx
	movl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB0_5
# %bb.2:
	movq	%rbx, %r14
	addq	$80, %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	cmpl	$1, 88(%rbx)
	je	.LBB0_4
# %bb.3:
	movl	$4, 32(%rbx)
	movl	$1, 88(%rbx)
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
.LBB0_4:
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	pthread_mutex_unlock    # TAILCALL
.LBB0_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_testcancel, .Lfunc_end0-pthread_testcancel
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
