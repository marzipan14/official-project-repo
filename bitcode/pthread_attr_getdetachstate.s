	.text
	.file	"pthread_attr_getdetachstate.c"
	.globl	pthread_attr_getdetachstate # -- Begin function pthread_attr_getdetachstate
	.p2align	4, 0x90
	.type	pthread_attr_getdetachstate,@function
pthread_attr_getdetachstate:            # @pthread_attr_getdetachstate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$22, %eax
	movl	$1, %edx
	testq	%r14, %r14
	je	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	movq	(%rbx), %rax
	movl	24(%rax), %edx
	xorl	%eax, %eax
.LBB0_3:
	movl	%edx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_getdetachstate, .Lfunc_end0-pthread_attr_getdetachstate
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
