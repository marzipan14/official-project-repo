	.text
	.file	"xpg_strerror_r.c"
	.globl	__xpg_strerror_r        # -- Begin function __xpg_strerror_r
	.p2align	4, 0x90
	.type	__xpg_strerror_r,@function
__xpg_strerror_r:                       # @__xpg_strerror_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$0, -36(%rbp)
	movl	$34, %r15d
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	%edi, %r12d
	callq	__getreent
	leaq	-36(%rbp), %rcx
	movq	%rax, %rdi
	movl	%r12d, %esi
	movl	$1, %edx
	callq	_strerror_r
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	strlen
	cmpq	%rbx, %rax
	jae	.LBB0_2
# %bb.3:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strcpy
	movl	-36(%rbp), %r15d
	testl	%r15d, %r15d
	jne	.LBB0_6
# %bb.4:
	cmpb	$0, (%r12)
	jne	.LBB0_6
# %bb.5:
	movl	$22, %r15d
	jmp	.LBB0_6
.LBB0_2:
	leaq	-1(%rbx), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movb	$0, -1(%r14,%rbx)
.LBB0_6:
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__xpg_strerror_r, .Lfunc_end0-__xpg_strerror_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
