	.text
	.file	"create.c"
	.globl	pthread_create          # -- Begin function pthread_create
	.p2align	4, 0x90
	.type	pthread_create,@function
pthread_create:                         # @pthread_create
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	movl	$0, 8(%rbx)
.LBB0_2:
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.4:
	movq	(%rsi), %rax
	jmp	.LBB0_5
.LBB0_3:
	xorl	%eax, %eax
.LBB0_5:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	pte_new
	movl	%edx, %esi
	testq	%rax, %rax
	je	.LBB0_6
# %bb.8:
	movq	%rax, %r15
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	movl	72(%r15), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$32, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_21
# %bb.9:
	movq	%rax, %rbx
	movq	%r12, (%rax)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rbx)
	movq	%r14, 16(%rbx)
	movq	%r13, 24(%rbx)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_10
# %bb.11:
	movq	16(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	24(%rcx), %eax
	movl	%eax, 60(%r12)
	movl	28(%rcx), %r13d
	xorl	%eax, %eax
	callq	pte_osThreadGetMaxPriority
	movl	$22, %r14d
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	cmpl	%eax, %r13d
	jg	.LBB0_20
# %bb.12:
	xorl	%eax, %eax
	callq	pte_osThreadGetMinPriority
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB0_20
# %bb.13:
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 32(%rax)
	je	.LBB0_15
# %bb.14:
	movl	%edx, %ecx
	movl	%edx, %r14d
	jmp	.LBB0_16
.LBB0_6:
	xorl	%edi, %edi
	jmp	.LBB0_7
.LBB0_21:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB0_7:
                                        # kill: def $esi killed $esi killed $rsi
	callq	pte_threadDestroy
	movl	$11, %r14d
	jmp	.LBB0_24
.LBB0_10:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	-44(%rbp), %r14d        # 4-byte Reload
.LBB0_16:
	movl	$0, 32(%r12)
	movq	$0, 176(%r12)
	addq	$64, %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	testl	%eax, %eax
	jne	.LBB0_18
# %bb.17:
	movl	%r14d, 72(%r12)
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
.LBB0_18:
	movl	$pte_threadStart, %edi
	movq	-72(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r14d, %edx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	pte_osThreadCreate
	testl	%eax, %eax
	je	.LBB0_22
# %bb.19:
	movq	$0, (%r12)
	movl	$11, %r14d
.LBB0_20:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	pte_threadDestroy
	movq	%rbx, %rdi
	callq	free
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_22:
	movq	(%r12), %rdi
	callq	pte_osThreadStart
	xorl	%r14d, %r14d
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_24
# %bb.23:
	movq	%r12, (%rax)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 8(%rax)
	jmp	.LBB0_24
.LBB0_15:
	callq	pthread_self
	movl	72(%rax), %r14d
	jmp	.LBB0_16
.Lfunc_end0:
	.size	pthread_create, .Lfunc_end0-pthread_create
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
