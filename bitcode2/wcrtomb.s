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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	224(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.4:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	jmp	.LBB0_5
.LBB0_3:
	leaq	-42(%rbp), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
.LBB0_5:
	movq	%r14, %rcx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_6
# %bb.7:
	cltq
	jmp	.LBB0_8
.LBB0_6:
	movl	$0, (%r14)
	movl	$138, (%r15)
	movq	$-1, %rax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	224(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.4:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	jmp	.LBB1_5
.LBB1_3:
	leaq	-42(%rbp), %rsi
	movq	%r12, %rdi
	xorl	%edx, %edx
.LBB1_5:
	movq	%r14, %rcx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_6
# %bb.7:
	cltq
	jmp	.LBB1_8
.LBB1_6:
	movl	$0, (%r14)
	movl	$138, (%r12)
	movq	$-1, %rax
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
