	.text
	.file	"pthread_attr_setschedparam.c"
	.globl	pthread_attr_setschedparam # -- Begin function pthread_attr_setschedparam
	.p2align	4, 0x90
	.type	pthread_attr_setschedparam,@function
pthread_attr_setschedparam:             # @pthread_attr_setschedparam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	pte_is_attr
	movl	$22, %r14d
	testq	%rbx, %rbx
	je	.LBB0_5
# %bb.1:
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.2:
	movl	(%rbx), %r12d
	xorl	%edi, %edi
	callq	sched_get_priority_min
	cmpl	%eax, %r12d
	jl	.LBB0_5
# %bb.3:
	xorl	%edi, %edi
	callq	sched_get_priority_max
	cmpl	%eax, %r12d
	jg	.LBB0_5
# %bb.4:
	movq	(%r15), %rdi
	addq	$28, %rdi
	movl	$4, %edx
	movq	%rbx, %rsi
	callq	memcpy
	xorl	%r14d, %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_setschedparam, .Lfunc_end0-pthread_attr_setschedparam
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
