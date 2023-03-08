	.text
	.file	"putenv_r.c"
	.globl	_putenv_r               # -- Begin function _putenv_r
	.p2align	4, 0x90
	.type	_putenv_r,@function
_putenv_r:                              # @_putenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	callq	_strdup_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	testq	%rax, %rax
	je	.LBB0_4
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$61, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.2:
	movb	$0, (%rax)
	addq	$1, %rax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	_setenv_r
	movl	%eax, %r14d
.LBB0_3:
	movq	%rbx, %rdi
	callq	free
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putenv_r, .Lfunc_end0-_putenv_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
