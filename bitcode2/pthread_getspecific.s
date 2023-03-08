	.text
	.file	"pthread_getspecific.c"
	.globl	pthread_getspecific     # -- Begin function pthread_getspecific
	.p2align	4, 0x90
	.type	pthread_getspecific,@function
pthread_getspecific:                    # @pthread_getspecific
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movl	(%rdi), %edi
	callq	pte_osTlsGetValue
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_getspecific, .Lfunc_end0-pthread_getspecific
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
