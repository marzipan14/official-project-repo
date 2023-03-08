	.text
	.file	"putchar_u.c"
	.globl	_putchar_unlocked_r     # -- Begin function _putchar_unlocked_r
	.p2align	4, 0x90
	.type	_putchar_unlocked_r,@function
_putchar_unlocked_r:                    # @_putchar_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %eax
	movq	16(%rdi), %rsi
	movl	%eax, %edi
	callq	putc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putchar_unlocked_r, .Lfunc_end0-_putchar_unlocked_r
                                        # -- End function
	.globl	putchar_unlocked        # -- Begin function putchar_unlocked
	.p2align	4, 0x90
	.type	putchar_unlocked,@function
putchar_unlocked:                       # @putchar_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	16(%rax), %rsi
	movl	%ebx, %edi
	callq	putc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putchar_unlocked, .Lfunc_end1-putchar_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
