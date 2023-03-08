	.text
	.file	"jrand48.c"
	.globl	_jrand48_r              # -- Begin function _jrand48_r
	.p2align	4, 0x90
	.type	_jrand48_r,@function
_jrand48_r:                             # @_jrand48_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	__dorand48
	movl	2(%rbx), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_jrand48_r, .Lfunc_end0-_jrand48_r
                                        # -- End function
	.globl	jrand48                 # -- Begin function jrand48
	.p2align	4, 0x90
	.type	jrand48,@function
jrand48:                                # @jrand48
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
	movl	2(%rbx), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	jrand48, .Lfunc_end1-jrand48
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
