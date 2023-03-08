	.text
	.file	"pthread_getschedparam.c"
	.globl	pthread_getschedparam   # -- Begin function pthread_getschedparam
	.p2align	4, 0x90
	.type	pthread_getschedparam,@function
pthread_getschedparam:                  # @pthread_getschedparam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	xorl	%edx, %edx
	callq	pthread_kill
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.1:
	movl	$22, %eax
	cmpq	$3, %r15
	jb	.LBB0_4
# %bb.2:
	testq	%r14, %r14
	je	.LBB0_4
# %bb.3:
	movl	$0, (%r15)
	movl	72(%rbx), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_getschedparam, .Lfunc_end0-pthread_getschedparam
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
