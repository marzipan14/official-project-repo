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
	movq	%rdi, %r13
	cmpq	%rdi, pte_selfThreadKey(%rip)
	je	.LBB0_9
# %bb.1:
	callq	pthread_self
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_11
# %bb.2:
	testq	%r13, %r13
	je	.LBB0_14
.LBB0_3:
	testq	%r15, %r15
	je	.LBB0_8
# %bb.4:
	testq	%r14, %r14
	je	.LBB0_8
# %bb.5:
	cmpq	$0, 8(%r13)
	je	.LBB0_8
# %bb.6:
	leaq	16(%r13), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	je	.LBB0_16
# %bb.7:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
.LBB0_8:
	movl	(%r13), %edi
	movq	%r14, %rsi
	callq	pte_osTlsSetValue
	testl	%eax, %eax
	movl	$11, %ebx
	cmovel	%eax, %ebx
	jmp	.LBB0_15
.LBB0_9:
	movq	%r13, %rdi
	callq	pthread_getspecific
	testq	%rax, %rax
	je	.LBB0_12
# %bb.10:
	addq	$8, %rax
	jmp	.LBB0_13
.LBB0_12:
	movq	%r14, %rax
	testq	%r14, %r14
	je	.LBB0_11
.LBB0_13:
	movq	(%rax), %r15
	testq	%r13, %r13
	jne	.LBB0_3
.LBB0_14:
	xorl	%ebx, %ebx
	jmp	.LBB0_15
.LBB0_11:
	movl	$2, %ebx
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_16:
	leaq	64(%r15), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	pthread_mutex_lock
	movq	176(%r15), %rax
	testq	%rax, %rax
	je	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r13, 8(%rax)
	je	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB0_17
.LBB0_19:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pte_tkAssocCreate
	movl	%eax, %ebx
	jmp	.LBB0_22
.LBB0_21:
	xorl	%ebx, %ebx
.LBB0_22:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pthread_mutex_unlock
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	testl	%ebx, %ebx
	jne	.LBB0_15
	jmp	.LBB0_8
.Lfunc_end0:
	.size	pthread_setspecific, .Lfunc_end0-pthread_setspecific
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
