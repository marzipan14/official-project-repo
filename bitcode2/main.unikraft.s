	.text
	.file	"main.c"
	.globl	server_thread_fn        # -- Begin function server_thread_fn
	.p2align	4, 0x90
	.type	server_thread_fn,@function
server_thread_fn:                       # @server_thread_fn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	(%rdi), %eax
	movq	8(%rdi), %rsi
	movl	%eax, %edi
	callq	redis_server_main
	cltq
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	server_thread_fn, .Lfunc_end0-server_thread_fn
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	$server_thread_fn, %edx
	xorl	%esi, %esi
	callq	pthread_create
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_3
# %bb.1:
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	xorl	%edx, %edx
	callq	pthread_join
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	testl	%ecx, %ecx
	je	.LBB1_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
