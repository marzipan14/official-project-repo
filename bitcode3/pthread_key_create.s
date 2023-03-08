	.text
	.file	"pthread_key_create.c"
	.globl	pthread_key_create      # -- Begin function pthread_key_create
	.p2align	4, 0x90
	.type	pthread_key_create,@function
pthread_key_create:                     # @pthread_key_create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rbx, %rdi
	callq	pte_osTlsAlloc
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:
	movq	%rbx, %rdi
	callq	free
	movl	$11, %eax
	xorl	%ebx, %ebx
	jmp	.LBB0_6
.LBB0_1:
	movl	$12, %eax
	jmp	.LBB0_6
.LBB0_4:
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB0_6
# %bb.5:
	movq	$-1, 16(%rbx)
	movq	%r15, 8(%rbx)
.LBB0_6:
	movq	%rbx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_key_create, .Lfunc_end0-pthread_key_create
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
