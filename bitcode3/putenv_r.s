	.text
	.file	"putenv_r.c"
	.globl	_putenv_r               # -- Begin function _putenv_r
	.p2align	4, 0x90
	.type	_putenv_r,@function
_putenv_r:                              # @_putenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	_strdup_r
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$61, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_2
# %bb.5:
	movb	$0, (%rax)
	addq	$1, %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movl	$1, %ecx
	callq	_setenv_r
	movl	%eax, %r14d
	movq	%rbx, %rdi
	callq	free
	movl	%r14d, %eax
	jmp	.LBB0_4
.LBB0_2:
	movq	%rbx, %rdi
	callq	free
.LBB0_3:
	movl	$1, %eax
.LBB0_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putenv_r, .Lfunc_end0-_putenv_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
