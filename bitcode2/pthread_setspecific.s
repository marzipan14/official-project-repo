	.text
	.file	"pthread_setspecific.c"
	.globl	pthread_setspecific     # -- Begin function pthread_setspecific
	.p2align	4, 0x90
	.type	pthread_setspecific,@function
pthread_setspecific:                    # @pthread_setspecific
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r13
	cmpq	%rdi, pte_selfThreadKey(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.1:
	callq	pthread_self
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.2:
	movl	$2, %ebx
	jmp	.LBB0_23
.LBB0_3:
	movq	%r13, %rdi
	callq	pthread_getspecific
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.6:
	addq	$8, %rax
	jmp	.LBB0_7
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	testq	%r14, %r14
	je	.LBB0_5
.LBB0_7:
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_23
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_24
# %bb.10:
	movq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_24
# %bb.11:
	testq	%rax, %rax
	je	.LBB0_24
# %bb.12:
	leaq	16(%r13), %r12
	movq	%r12, %rdi
	callq	pthread_mutex_lock
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.13:
	leaq	64(%r15), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	pthread_mutex_lock
	movq	176(%r15), %rax
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	cmpq	%r13, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	movq	16(%rax), %rax
	jmp	.LBB0_14
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	(%r13), %edi
	movq	%r14, %rsi
	callq	pte_osTlsSetValue
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	testl	%eax, %eax
	je	.LBB0_23
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$11, %ebx
	jmp	.LBB0_23
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
	jmp	.LBB0_23
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	pte_tkAssocCreate
	movl	%eax, %ebx
	jmp	.LBB0_19
.LBB0_16:
	xorl	%ebx, %ebx
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movq	%r12, %rdi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_21
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end0:
	.size	pthread_setspecific, .Lfunc_end0-pthread_setspecific
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
