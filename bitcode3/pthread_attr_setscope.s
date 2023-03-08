	.text
	.file	"pthread_attr_setscope.c"
	.globl	pthread_attr_setscope   # -- Begin function pthread_attr_setscope
	.p2align	4, 0x90
	.type	pthread_attr_setscope,@function
pthread_attr_setscope:                  # @pthread_attr_setscope
# %bb.0:
	testl	%esi, %esi
	je	.LBB0_1
# %bb.2:
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.3:
	movq	(%rdi), %rax
	movl	$1, 36(%rax)
	xorl	%eax, %eax
	retq
.LBB0_1:
	movl	$134, %eax
	retq
.LBB0_4:
	movl	$22, %eax
	retq
.Lfunc_end0:
	.size	pthread_attr_setscope, .Lfunc_end0-pthread_attr_setscope
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
