	.text
	.file	"pthread_condattr_init.c"
	.globl	pthread_condattr_init   # -- Begin function pthread_condattr_init
	.p2align	4, 0x90
	.type	pthread_condattr_init,@function
pthread_condattr_init:                  # @pthread_condattr_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$8, %esi
	callq	calloc
	xorl	%edx, %edx
	testq	%rax, %rax
	movl	$12, %ecx
	cmovnel	%edx, %ecx
	movq	%rax, (%rbx)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_condattr_init, .Lfunc_end0-pthread_condattr_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
