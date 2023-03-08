	.text
	.file	"wcrtomb.c"
	.globl	_wcrtomb_r              # -- Begin function _wcrtomb_r
	.p2align	4, 0x90
	.type	_wcrtomb_r,@function
_wcrtomb_r:                             # @_wcrtomb_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	224(%rcx), %rax
	testq	%rbx, %rbx
	je	.LBB0_1
# %bb.2:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	jmp	.LBB0_3
.LBB0_1:
	leaq	-42(%rbp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
.LBB0_3:
	movq	%r14, %rcx
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB0_4
# %bb.5:
	cltq
	jmp	.LBB0_6
.LBB0_4:
	movl	$0, (%r14)
	movl	$138, (%r15)
	movq	$-1, %rax
.LBB0_6:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcrtomb_r, .Lfunc_end0-_wcrtomb_r
                                        # -- End function
	.globl	wcrtomb                 # -- Begin function wcrtomb
	.p2align	4, 0x90
	.type	wcrtomb,@function
wcrtomb:                                # @wcrtomb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r12
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	224(%rcx), %rax
	testq	%rbx, %rbx
	je	.LBB1_1
# %bb.2:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	jmp	.LBB1_3
.LBB1_1:
	leaq	-42(%rbp), %rsi
	movq	%r12, %rdi
	xorl	%edx, %edx
.LBB1_3:
	movq	%r14, %rcx
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB1_4
# %bb.5:
	cltq
	jmp	.LBB1_6
.LBB1_4:
	movl	$0, (%r14)
	movl	$138, (%r12)
	movq	$-1, %rax
.LBB1_6:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wcrtomb, .Lfunc_end1-wcrtomb
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
