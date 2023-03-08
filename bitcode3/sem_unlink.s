	.text
	.file	"sem_unlink.c"
	.globl	sem_unlink              # -- Begin function sem_unlink
	.p2align	4, 0x90
	.type	sem_unlink,@function
sem_unlink:                             # @sem_unlink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$88, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sem_unlink, .Lfunc_end0-sem_unlink
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
