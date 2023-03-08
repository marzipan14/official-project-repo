	.text
	.file	"sem_close.c"
	.globl	sem_close               # -- Begin function sem_close
	.p2align	4, 0x90
	.type	sem_close,@function
sem_close:                              # @sem_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$88, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sem_close, .Lfunc_end0-sem_close
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
