	.text
	.file	"uselocale.c"
	.globl	_uselocale_r            # -- Begin function _uselocale_r
	.p2align	4, 0x90
	.type	_uselocale_r,@function
_uselocale_r:                           # @_uselocale_r
# %bb.0:
	movq	72(%rdi), %rdx
	xorl	%ecx, %ecx
	cmpq	$1, %rdx
	movl	$0, %eax
	sbbq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rsi
	je	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	testq	%rsi, %rsi
	je	.LBB0_3
.LBB0_2:
	movq	%rcx, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	_uselocale_r, .Lfunc_end0-_uselocale_r
                                        # -- End function
	.globl	uselocale               # -- Begin function uselocale
	.p2align	4, 0x90
	.type	uselocale,@function
uselocale:                              # @uselocale
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rsi
	xorl	%edx, %edx
	cmpq	$1, %rsi
	movl	$0, %ecx
	sbbq	%rcx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	orq	%rsi, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rbx
	je	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdx
	testq	%rbx, %rbx
	je	.LBB1_3
.LBB1_2:
	movq	%rdx, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uselocale, .Lfunc_end1-uselocale
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
