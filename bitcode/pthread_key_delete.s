	.text
	.file	"pthread_key_delete.c"
	.globl	pthread_key_delete      # -- Begin function pthread_key_delete
	.p2align	4, 0x90
	.type	pthread_key_delete,@function
pthread_key_delete:                     # @pthread_key_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	cmpq	$0, 24(%rdi)
	je	.LBB0_9
# %bb.3:
	cmpq	$0, 8(%r15)
	je	.LBB0_9
# %bb.4:
	leaq	16(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB0_9
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	(%rbx), %r12
	addq	$64, %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	movl	%eax, %r13d
	movq	%rbx, %rdi
	callq	pte_tkAssocDestroy
	testl	%r13d, %r13d
	jne	.LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	24(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_6
# %bb.8:
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
.LBB0_9:
	movl	(%r15), %edi
	callq	pte_osTlsFree
	cmpq	$0, 8(%r15)
	je	.LBB0_10
# %bb.11:
	leaq	16(%r15), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_destroy
	movl	%eax, %ebx
	cmpl	$16, %eax
	jne	.LBB0_19
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pthread_mutex_destroy
	cmpl	$16, %eax
	je	.LBB0_12
# %bb.18:
	movl	%eax, %ebx
	jmp	.LBB0_19
.LBB0_1:
	xorl	%ebx, %ebx
	jmp	.LBB0_20
.LBB0_10:
	xorl	%ebx, %ebx
.LBB0_19:
	movq	%r15, %rdi
	callq	free
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_13:
	movl	$.L.str.1, %esi
	jmp	.LBB0_14
.LBB0_16:
	movl	$.L.str.2, %esi
.LBB0_14:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	pthread_key_delete, .Lfunc_end0-pthread_key_delete
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
	.p2align	4
uk_pr_crit.__str.3:
	.asciz	"pthread_key_delete.c"
	.size	uk_pr_crit.__str.3, 21

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
