	.text
	.file	"pthread_rwlockattr_init.c"
	.globl	pthread_rwlockattr_init # -- Begin function pthread_rwlockattr_init
	.p2align	4, 0x90
	.type	pthread_rwlockattr_init,@function
pthread_rwlockattr_init:                # @pthread_rwlockattr_init
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
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_rwlockattr_init, .Lfunc_end0-pthread_rwlockattr_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
