	.text
	.file	"pthread_attr_getscope.c"
	.globl	pthread_attr_getscope   # -- Begin function pthread_attr_getscope
	.p2align	4, 0x90
	.type	pthread_attr_getscope,@function
pthread_attr_getscope:                  # @pthread_attr_getscope
# %bb.0:
	movq	(%rdi), %rax
	movl	36(%rax), %eax
	movl	%eax, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pthread_attr_getscope, .Lfunc_end0-pthread_attr_getscope
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
