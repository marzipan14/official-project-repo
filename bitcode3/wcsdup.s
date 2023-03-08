	.text
	.file	"wcsdup.c"
	.globl	_wcsdup_r               # -- Begin function _wcsdup_r
	.p2align	4, 0x90
	.type	_wcsdup_r,@function
_wcsdup_r:                              # @_wcsdup_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rsi, %rdi
	callq	wcslen
	movq	%rax, %rbx
	leaq	4(,%rax,4), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	addq	$1, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	wmemcpy
.LBB0_2:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcsdup_r, .Lfunc_end0-_wcsdup_r
                                        # -- End function
	.globl	wcsdup                  # -- Begin function wcsdup
	.p2align	4, 0x90
	.type	wcsdup,@function
wcsdup:                                 # @wcsdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	__getreent
	movq	%r14, %rdi
	callq	wcslen
	movq	%rax, %rbx
	leaq	4(,%rax,4), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB1_2
# %bb.1:
	addq	$1, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	wmemcpy
.LBB1_2:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wcsdup, .Lfunc_end1-wcsdup
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
