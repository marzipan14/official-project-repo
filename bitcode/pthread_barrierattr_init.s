	.text
	.file	"pthread_barrierattr_init.c"
	.globl	pthread_barrierattr_init # -- Begin function pthread_barrierattr_init
	.p2align	4, 0x90
	.type	pthread_barrierattr_init,@function
pthread_barrierattr_init:               # @pthread_barrierattr_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$4, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movl	$0, (%rax)
	xorl	%ecx, %ecx
	jmp	.LBB0_3
.LBB0_1:
	movl	$12, %ecx
.LBB0_3:
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_barrierattr_init, .Lfunc_end0-pthread_barrierattr_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
