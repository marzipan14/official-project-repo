	.text
	.file	"pthread_attr_setscope.c"
	.globl	pthread_attr_setscope   # -- Begin function pthread_attr_setscope
	.p2align	4, 0x90
	.type	pthread_attr_setscope,@function
pthread_attr_setscope:                  # @pthread_attr_setscope
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_1
# %bb.2:
	cmpl	$1, %esi
	jne	.LBB0_4
# %bb.3:
	movq	(%rdi), %rax
	movl	$1, 36(%rax)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_1:
	movl	$134, %eax
	jmp	.LBB0_5
.LBB0_4:
	movl	$22, %eax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	pthread_attr_setscope, .Lfunc_end0-pthread_attr_setscope
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
