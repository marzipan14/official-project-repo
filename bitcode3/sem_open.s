	.text
	.file	"sem_open.c"
	.globl	sem_open                # -- Begin function sem_open
	.p2align	4, 0x90
	.type	sem_open,@function
sem_open:                               # @sem_open
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$88, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sem_open, .Lfunc_end0-sem_open
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
