	.text
	.file	"pthread_attr_getschedpolicy.c"
	.globl	pthread_attr_getschedpolicy # -- Begin function pthread_attr_getschedpolicy
	.p2align	4, 0x90
	.type	pthread_attr_getschedpolicy,@function
pthread_attr_getschedpolicy:            # @pthread_attr_getschedpolicy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	pte_is_attr
	movl	%eax, %ecx
	movl	$22, %eax
	cmpq	$3, %rbx
	jb	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.2:
	movl	$0, (%rbx)
	xorl	%eax, %eax
.LBB0_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_getschedpolicy, .Lfunc_end0-pthread_attr_getschedpolicy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
