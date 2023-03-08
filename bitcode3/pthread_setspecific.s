	.text
	.file	"pthread_setspecific.c"
	.globl	pthread_setspecific     # -- Begin function pthread_setspecific
	.p2align	4, 0x90
	.type	pthread_setspecific,@function
pthread_setspecific:                    # @pthread_setspecific
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	%rdi, pte_selfThreadKey(%rip)
	je	.LBB0_4
# %bb.1:
	callq	pthread_self
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_2
# %bb.8:
	testq	%rbx, %rbx
	je	.LBB0_9
.LBB0_10:
	testq	%r15, %r15
	je	.LBB0_22
# %bb.11:
	testq	%r14, %r14
	je	.LBB0_22
# %bb.12:
	cmpq	$0, 8(%rbx)
	je	.LBB0_22
# %bb.13:
	leaq	16(%rbx), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB0_15
# %bb.14:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
.LBB0_22:
	movl	(%rbx), %edi
	movq	%r14, %rsi
	callq	pte_osTlsSetValue
	testl	%eax, %eax
	movl	$11, %ecx
	cmovnel	%ecx, %eax
	jmp	.LBB0_23
.LBB0_4:
	movq	%rbx, %rdi
	callq	pthread_getspecific
	testq	%rax, %rax
	je	.LBB0_5
# %bb.6:
	addq	$8, %rax
	jmp	.LBB0_7
.LBB0_5:
	movq	%r14, %rax
	testq	%r14, %r14
	je	.LBB0_2
.LBB0_7:
	movq	(%rax), %r15
	testq	%rbx, %rbx
	jne	.LBB0_10
.LBB0_9:
	xorl	%eax, %eax
	jmp	.LBB0_23
.LBB0_2:
	movl	$2, %r15d
.LBB0_3:
	movl	%r15d, %eax
.LBB0_23:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:
	leaq	64(%r15), %r13
	movq	%r13, %rdi
	callq	pthread_mutex_lock
	movq	176(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_17
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 8(%rax)
	je	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_19 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_19
.LBB0_17:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	pte_tkAssocCreate
	movl	%eax, %r15d
	jmp	.LBB0_21
.LBB0_20:
	xorl	%r15d, %r15d
.LBB0_21:
	movq	%r13, %rdi
	callq	pthread_mutex_unlock
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	testl	%r15d, %r15d
	jne	.LBB0_3
	jmp	.LBB0_22
.Lfunc_end0:
	.size	pthread_setspecific, .Lfunc_end0-pthread_setspecific
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
