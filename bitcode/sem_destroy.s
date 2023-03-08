	.text
	.file	"sem_destroy.c"
	.globl	sem_destroy             # -- Begin function sem_destroy
	.p2align	4, 0x90
	.type	sem_destroy,@function
sem_destroy:                            # @sem_destroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$22, %ebx
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.1:
	movq	%rdi, %r12
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB0_7
# %bb.2:
	leaq	8(%r14), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB0_3
.LBB0_7:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$-1, %eax
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_3:
	cmpl	$0, (%r14)
	js	.LBB0_4
# %bb.5:
	movq	16(%r14), %rdi
	callq	pte_osSemaphoreDelete
	testl	%eax, %eax
	je	.LBB0_8
# %bb.6:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	$22, %ebx
	jmp	.LBB0_7
.LBB0_4:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movl	$16, %ebx
	jmp	.LBB0_7
.LBB0_8:
	movq	$0, (%r12)
	movl	$2147483647, (%r14)     # imm = 0x7FFFFFFF
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	pthread_mutex_destroy
	cmpl	$16, %eax
	je	.LBB0_9
# %bb.15:
	movq	%r14, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB0_16
.LBB0_10:
	movl	$.L.str.1, %esi
	jmp	.LBB0_11
.LBB0_13:
	movl	$.L.str.2, %esi
.LBB0_11:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	sem_destroy, .Lfunc_end0-sem_destroy
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.3, %edx
	movl	$.L.str, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_crit, .Lfunc_end1-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"current"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s"
	.size	.L.str.2, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
uk_pr_crit.__str:
	.asciz	"libpthread-embedded"
	.size	uk_pr_crit.__str, 20

	.type	uk_pr_crit.__str.3,@object # @uk_pr_crit.__str.3
uk_pr_crit.__str.3:
	.asciz	"sem_destroy.c"
	.size	uk_pr_crit.__str.3, 14

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
