	.text
	.file	"pthread_attr_setschedpolicy.c"
	.globl	pthread_attr_setschedpolicy # -- Begin function pthread_attr_setschedpolicy
	.p2align	4, 0x90
	.type	pthread_attr_setschedpolicy,@function
pthread_attr_setschedpolicy:            # @pthread_attr_setschedpolicy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	callq	pte_is_attr
	testl	%ebx, %ebx
	movl	$134, %ecx
	cmovel	%ebx, %ecx
	testl	%eax, %eax
	movl	$22, %eax
	cmovel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_setschedpolicy, .Lfunc_end0-pthread_attr_setschedpolicy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
