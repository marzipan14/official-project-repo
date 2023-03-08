	.text
	.file	"renamer.c"
	.globl	_rename_r               # -- Begin function _rename_r
	.p2align	4, 0x90
	.type	_rename_r,@function
_rename_r:                              # @_rename_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_link_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_1
# %bb.2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_unlink_r
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%eax
	jmp	.LBB0_3
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_rename_r, .Lfunc_end0-_rename_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
