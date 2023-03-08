	.text
	.file	"pthread_attr_init.c"
	.globl	pthread_attr_init       # -- Begin function pthread_attr_init
	.p2align	4, 0x90
	.type	pthread_attr_init,@function
pthread_attr_init:                      # @pthread_attr_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	movl	$40, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rax, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movl	$0, 24(%rax)
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	pte_osThreadGetDefaultPriority
	movl	%eax, 28(%rbx)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 32(%rbx)
	movl	$3300982766, %eax       # imm = 0xC4C0FFEE
	movq	%rax, (%rbx)
	movq	%rbx, (%r15)
	jmp	.LBB0_5
.LBB0_1:
	movl	$22, %r14d
	jmp	.LBB0_5
.LBB0_3:
	movl	$12, %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_attr_init, .Lfunc_end0-pthread_attr_init
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
