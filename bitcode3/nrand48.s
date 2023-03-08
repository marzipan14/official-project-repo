	.text
	.file	"nrand48.c"
	.globl	_nrand48_r              # -- Begin function _nrand48_r
	.p2align	4, 0x90
	.type	_nrand48_r,@function
_nrand48_r:                             # @_nrand48_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	__dorand48
	movzwl	4(%rbx), %ecx
	shlq	$15, %rcx
	movzwl	2(%rbx), %eax
	shrq	%rax
	orq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_nrand48_r, .Lfunc_end0-_nrand48_r
                                        # -- End function
	.globl	nrand48                 # -- Begin function nrand48
	.p2align	4, 0x90
	.type	nrand48,@function
nrand48:                                # @nrand48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__dorand48
	movzwl	4(%rbx), %ecx
	shlq	$15, %rcx
	movzwl	2(%rbx), %eax
	shrq	%rax
	orq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	nrand48, .Lfunc_end1-nrand48
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
