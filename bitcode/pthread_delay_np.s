	.text
	.file	"pthread_delay_np.c"
	.globl	pthread_delay_np        # -- Begin function pthread_delay_np
	.p2align	4, 0x90
	.type	pthread_delay_np,@function
pthread_delay_np:                       # @pthread_delay_np
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movq	%r15, %rcx
	orq	%rax, %rcx
	je	.LBB0_3
# %bb.9:
	addq	$999999, %rax           # imm = 0xF423F
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rbx
	callq	pthread_self
	testq	%rax, %rax
	je	.LBB0_10
# %bb.11:
	movq	%rax, %r14
	cmpl	$0, 88(%rax)
	je	.LBB0_12
# %bb.18:
	imull	$1000, %r15d, %eax      # imm = 0x3E8
	movq	%rbx, %rcx
	shrq	$63, %rcx
	shrq	$18, %rbx
	addl	%ecx, %ebx
	addl	%eax, %ebx
	movl	%ebx, %edi
	callq	pte_osThreadSleep
	jmp	.LBB0_19
.LBB0_1:
	movl	$22, %eax
	jmp	.LBB0_20
.LBB0_3:
	callq	pthread_testcancel
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.6:
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.8:
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	pthread_testcancel
.LBB0_19:
	xorl	%eax, %eax
	jmp	.LBB0_20
.LBB0_10:
	movl	$12, %eax
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_12:
	movq	(%r14), %rdi
	callq	pte_osThreadCheckCancel
	movl	%eax, %ecx
	testl	%eax, %eax
	je	.LBB0_13
# %bb.14:
	movl	$22, %eax
	cmpl	$4, %ecx
	jne	.LBB0_20
# %bb.15:
	movq	%r14, %rbx
	addq	$80, %rbx
	movq	%rbx, %rdi
	callq	pthread_mutex_lock
	movl	32(%r14), %eax
	cmpl	$3, %eax
	ja	.LBB0_17
# %bb.16:
	movl	$4, 32(%r14)
	movl	$1, 88(%r14)
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	movl	$2, %edi
	callq	pte_throw
.LBB0_17:
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	movl	$3, %eax
	jmp	.LBB0_20
.LBB0_13:
	movl	%ecx, %eax
	jmp	.LBB0_20
.LBB0_4:
	movl	$.L.str.1, %esi
	jmp	.LBB0_5
.LBB0_7:
	movl	$.L.str.2, %esi
.LBB0_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	pthread_delay_np, .Lfunc_end0-pthread_delay_np
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
	.asciz	"pthread_delay_np.c"
	.size	uk_pr_crit.__str.3, 19

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
