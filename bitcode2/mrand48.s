	.text
	.file	"mrand48.c"
	.globl	_mrand48_r              # -- Begin function _mrand48_r
	.p2align	4, 0x90
	.type	_mrand48_r,@function
_mrand48_r:                             # @_mrand48_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	240(%rdi), %rsi
	callq	__dorand48
	movl	242(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mrand48_r, .Lfunc_end0-_mrand48_r
                                        # -- End function
	.globl	mrand48                 # -- Begin function mrand48
	.p2align	4, 0x90
	.type	mrand48,@function
mrand48:                                # @mrand48
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
	movl	242(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mrand48, .Lfunc_end1-mrand48
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
