	.text
	.file	"uselocale.c"
	.globl	_uselocale_r            # -- Begin function _uselocale_r
	.p2align	4, 0x90
	.type	_uselocale_r,@function
_uselocale_r:                           # @_uselocale_r
# %bb.0:
	movq	72(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpq	$1, %rdx
	movl	$0, %eax
	sbbq	%rax, %rax
	orq	%rdx, %rax
	cmpq	$-1, %rsi
	je	.LBB0_3
# %bb.1:
	testq	%rsi, %rsi
	jne	.LBB0_2
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	movq	%rsi, %rcx
.LBB0_3:
	movq	%rcx, 72(%rdi)
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
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpq	$1, %rsi
	movl	$0, %ecx
	sbbq	%rcx, %rcx
	orq	%rsi, %rcx
	cmpq	$-1, %rbx
	je	.LBB1_3
# %bb.1:
	testq	%rbx, %rbx
	je	.LBB1_4
# %bb.2:
	movq	%rbx, %rdx
.LBB1_3:
	movq	%rdx, 72(%rax)
.LBB1_4:
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
