	.text
	.file	"lrand48.c"
	.globl	_lrand48_r              # -- Begin function _lrand48_r
	.p2align	4, 0x90
	.type	_lrand48_r,@function
_lrand48_r:                             # @_lrand48_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	240(%rdi), %rsi
	callq	__dorand48
	movzwl	244(%rbx), %ecx
	shlq	$15, %rcx
	movzwl	242(%rbx), %eax
	shrq	%rax
	orq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_lrand48_r, .Lfunc_end0-_lrand48_r
                                        # -- End function
	.globl	lrand48                 # -- Begin function lrand48
	.p2align	4, 0x90
	.type	lrand48,@function
lrand48:                                # @lrand48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	__getreent
	movq	%rax, %rbx
	leaq	240(%rax), %rsi
	movq	%rax, %rdi
	callq	__dorand48
	movzwl	244(%rbx), %ecx
	shlq	$15, %rcx
	movzwl	242(%rbx), %eax
	shrq	%rax
	orq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lrand48, .Lfunc_end1-lrand48
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
