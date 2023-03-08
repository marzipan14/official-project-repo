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
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
.LBB0_2:
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_condattr_init, .Lfunc_end0-pthread_condattr_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
