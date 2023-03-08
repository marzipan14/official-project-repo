	.text
	.file	"pthread_attr_setdetachstate.c"
	.globl	pthread_attr_setdetachstate # -- Begin function pthread_attr_setdetachstate
	.p2align	4, 0x90
	.type	pthread_attr_setdetachstate,@function
pthread_attr_setdetachstate:            # @pthread_attr_setdetachstate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$22, %eax
	cmpl	$1, %r14d
	ja	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	movq	(%rbx), %rax
	movl	%r14d, 24(%rax)
	xorl	%eax, %eax
.LBB0_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_setdetachstate, .Lfunc_end0-pthread_attr_setdetachstate
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
