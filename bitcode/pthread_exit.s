	.text
	.file	"pthread_exit.c"
	.globl	pthread_exit            # -- Begin function pthread_exit
	.p2align	4, 0x90
	.type	pthread_exit,@function
pthread_exit:                           # @pthread_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	pte_selfThreadKey(%rip), %rdi
	callq	pthread_getspecific
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	callq	pte_osThreadExit
.LBB0_2:
	movq	%r14, 40(%rbx)
	movl	$1, %edi
	callq	pte_throw
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_exit, .Lfunc_end0-pthread_exit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
