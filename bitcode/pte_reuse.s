	.text
	.file	"pte_reuse.c"
	.globl	pte_threadReusePop      # -- Begin function pte_threadReusePop
	.p2align	4, 0x90
	.type	pte_threadReusePop,@function
pte_threadReusePop:                     # @pte_threadReusePop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	pte_threadReuseTop(%rip), %rax
	cmpq	$1, %rax
	je	.LBB0_1
# %bb.2:
	movq	24(%rax), %rcx
	movq	%rcx, pte_threadReuseTop(%rip)
	cmpq	$1, %rcx
	jne	.LBB0_4
# %bb.3:
	movq	$1, pte_threadReuseBottom(%rip)
.LBB0_4:
	movq	$0, 24(%rax)
	movq	8(%rax), %rbx
	movl	16(%rax), %r14d
	jmp	.LBB0_5
.LBB0_1:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB0_5:
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_threadReusePop, .Lfunc_end0-pte_threadReusePop
                                        # -- End function
	.globl	pte_threadReusePush     # -- Begin function pte_threadReusePush
	.p2align	4, 0x90
	.type	pte_threadReusePush,@function
pte_threadReusePush:                    # @pte_threadReusePush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexLock
	movups	8(%rbx), %xmm0
	movaps	%xmm0, -32(%rbp)
	movl	$192, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movaps	-32(%rbp), %xmm0
	movups	%xmm0, 8(%rbx)
	addl	$1, 16(%rbx)
	movq	$1, 24(%rbx)
	movq	pte_threadReuseBottom(%rip), %rax
	cmpq	$1, %rax
	leaq	24(%rax), %rax
	movl	$pte_threadReuseTop, %ecx
	cmoveq	%rcx, %rax
	movq	%rbx, (%rax)
	movq	%rbx, pte_threadReuseBottom(%rip)
	movq	pte_thread_reuse_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_threadReusePush, .Lfunc_end1-pte_threadReusePush
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
