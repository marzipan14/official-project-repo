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
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	movl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.4:
	movq	(%rsi), %r12
	jmp	.LBB0_5
.LBB0_3:
	xorl	%r12d, %r12d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	callq	pte_new
	movq	%rax, %r14
	movl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%r13, %r12
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	72(%r14), %ebx
	movl	$32, %edi
	callq	malloc
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.9:
	movl	%ebx, %ecx
	movq	%r14, (%r13)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%r13)
	movq	%r15, 16(%r13)
	movq	%r12, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB0_10
# %bb.11:
	movq	16(%rbx), %r15
	movl	24(%rbx), %eax
	movl	%eax, 60(%r14)
	movl	28(%rbx), %r12d
	xorl	%eax, %eax
	callq	pte_osThreadGetMaxPriority
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r12d
	jg	.LBB0_13
# %bb.12:
	xorl	%eax, %eax
	callq	pte_osThreadGetMinPriority
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r12d
	jge	.LBB0_14
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
	jmp	.LBB0_22
.LBB0_6:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movl	$11, %r15d
	jmp	.LBB0_24
.LBB0_8:
	movq	%r13, %rbx
	xorl	%r13d, %r13d
	movl	$11, %r15d
	jmp	.LBB0_23
.LBB0_10:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$11, %r15d
	movl	%ecx, %r12d
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	movl	$0, 32(%r14)
	movq	$0, 176(%r14)
	movq	%r14, %rbx
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.19:
	movl	%r12d, 72(%r14)
	movq	%rbx, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$pte_threadStart, %edi
	movq	-56(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r12d, %edx
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	pte_osThreadCreate
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_26
# %bb.21:
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movq	%r13, %rbx
.LBB0_23:
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	pte_threadDestroy
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_29
# %bb.25:
	movq	%r13, %rdi
	callq	free
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:
	movq	(%r14), %rdi
	callq	pte_osThreadStart
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_29
# %bb.27:
	movq	%r14, (%rcx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rcx)
	jmp	.LBB0_28
.LBB0_14:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	cmpl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.15:
	movl	$11, %r15d
	jmp	.LBB0_18
.LBB0_16:
	callq	pthread_self
	movl	72(%rax), %r12d
	movl	$11, %r15d
	jmp	.LBB0_17
.Lfunc_end0:
	.size	pthread_create, .Lfunc_end0-pthread_create
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
