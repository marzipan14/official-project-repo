	.text
	.file	"pte_callUserDestroyRoutines.c"
	.globl	pte_callUserDestroyRoutines # -- Begin function pte_callUserDestroyRoutines
	.p2align	4, 0x90
	.type	pte_callUserDestroyRoutines,@function
pte_callUserDestroyRoutines:            # @pte_callUserDestroyRoutines
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.1:
	movq	%rdi, %r14
	leaq	64(%rdi), %r15
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB0_19
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movq	176(%r14), %rax
	movq	%rax, 184(%r14)
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movq	184(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%rbx, %rdi
	callq	pte_tkAssocDestroy
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	addq	$16, %r12
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB0_17:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movq	184(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB0_18
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rbx), %rdi
	addq	$16, %rdi
	callq	pthread_mutex_trylock
	cmpl	$16, %eax
	jne	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=2
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	movq	16(%rbx), %rax
	movq	%rax, 184(%r14)
	movq	8(%rbx), %r12
	movq	8(%r12), %r14
	movl	(%r12), %edi
	callq	pte_osTlsGetValue
	movq	%rax, %r13
	movl	(%r12), %edi
	xorl	%esi, %esi
	callq	pte_osTlsSetValue
	cmpl	$4, -56(%rbp)           # 4-byte Folded Reload
	ja	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=2
	testq	%r13, %r13
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	addq	$16, %r12
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movq	%r13, %rdi
	callq	*%r14
	jmp	.LBB0_16
.LBB0_3:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	movl	$.L.str.2, %esi
	jmp	.LBB0_8
.LBB0_7:
	movl	$.L.str.1, %esi
.LBB0_8:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	pte_callUserDestroyRoutines, .Lfunc_end0-pte_callUserDestroyRoutines
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
	.asciz	"pte_callUserDestroyRoutines.c"
	.size	uk_pr_crit.__str.3, 30

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
