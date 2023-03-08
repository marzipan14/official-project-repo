	.text
	.file	"putchar.c"
	.globl	_putchar_r              # -- Begin function _putchar_r
	.p2align	4, 0x90
	.type	_putchar_r,@function
_putchar_r:                             # @_putchar_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rdx
	callq	_putc_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_putchar_r, .Lfunc_end0-_putchar_r
                                        # -- End function
	.globl	putchar                 # -- Begin function putchar
	.p2align	4, 0x90
	.type	putchar,@function
putchar:                                # @putchar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	16(%rax), %rdx
	movq	%rax, %rdi
	movl	%ebx, %esi
	callq	_putc_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	putchar, .Lfunc_end1-putchar
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
