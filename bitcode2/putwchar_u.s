	.text
	.file	"putwchar_u.c"
	.globl	_putwchar_unlocked_r    # -- Begin function _putwchar_unlocked_r
	.p2align	4, 0x90
	.type	_putwchar_unlocked_r,@function
_putwchar_unlocked_r:                   # @_putwchar_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	__getreent
	movq	16(%rax), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	_fputwc_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putwchar_unlocked_r, .Lfunc_end0-_putwchar_unlocked_r
                                        # -- End function
	.globl	putwchar_unlocked       # -- Begin function putwchar_unlocked
	.p2align	4, 0x90
	.type	putwchar_unlocked,@function
putwchar_unlocked:                      # @putwchar_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	16(%rax), %rsi
	movl	%ebx, %edi
	callq	fputwc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putwchar_unlocked, .Lfunc_end1-putwchar_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
