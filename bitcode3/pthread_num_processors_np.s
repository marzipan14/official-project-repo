	.text
	.file	"pthread_num_processors_np.c"
	.globl	pthread_num_processors_np # -- Begin function pthread_num_processors_np
	.p2align	4, 0x90
	.type	pthread_num_processors_np,@function
pthread_num_processors_np:              # @pthread_num_processors_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rdi
	callq	pte_getprocessors
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	$1, -4(%rbp)
	movl	$1, %eax
	jmp	.LBB0_3
.LBB0_1:
	movl	-4(%rbp), %eax
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_num_processors_np, .Lfunc_end0-pthread_num_processors_np
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
