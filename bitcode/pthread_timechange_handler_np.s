	.text
	.file	"pthread_timechange_handler_np.c"
	.globl	pthread_timechange_handler_np # -- Begin function pthread_timechange_handler_np
	.p2align	4, 0x90
	.type	pthread_timechange_handler_np,@function
pthread_timechange_handler_np:          # @pthread_timechange_handler_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexLock
	movq	pte_cond_list_head(%rip), %rax
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:                                # %.preheader
	leaq	-16(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	pthread_cond_broadcast
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testq	%rcx, %rcx
	jne	.LBB0_3
.LBB0_5:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$11, %ebx
	cmoveq	%rcx, %rbx
	jmp	.LBB0_6
.LBB0_1:
	xorl	%ebx, %ebx
.LBB0_6:
	movq	pte_cond_list_lock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_timechange_handler_np, .Lfunc_end0-pthread_timechange_handler_np
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
