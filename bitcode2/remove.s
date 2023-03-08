	.text
	.file	"remove.c"
	.globl	_remove_r               # -- Begin function _remove_r
	.p2align	4, 0x90
	.type	_remove_r,@function
_remove_r:                              # @_remove_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_unlink_r
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_remove_r, .Lfunc_end0-_remove_r
                                        # -- End function
	.globl	remove                  # -- Begin function remove
	.p2align	4, 0x90
	.type	remove,@function
remove:                                 # @remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_unlink_r
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	remove, .Lfunc_end1-remove
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
