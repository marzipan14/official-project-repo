	.text
	.file	"pthread_equal.c"
	.globl	pthread_equal           # -- Begin function pthread_equal
	.p2align	4, 0x90
	.type	pthread_equal,@function
pthread_equal:                          # @pthread_equal
# %bb.0:
	cmpq	%rdx, %rdi
	sete	%al
	cmpl	%ecx, %esi
	sete	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	retq
.Lfunc_end0:
	.size	pthread_equal, .Lfunc_end0-pthread_equal
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
