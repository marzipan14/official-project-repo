	.text
	.file	"putchar_u.c"
	.globl	_putchar_unlocked_r     # -- Begin function _putchar_unlocked_r
	.p2align	4, 0x90
	.type	_putchar_unlocked_r,@function
_putchar_unlocked_r:                    # @_putchar_unlocked_r
# %bb.0:
	movl	%esi, %eax
	movq	16(%rdi), %rsi
	movl	%eax, %edi
	jmp	putc_unlocked           # TAILCALL
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	putc_unlocked           # TAILCALL
.Lfunc_end1:
	.size	putchar_unlocked, .Lfunc_end1-putchar_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
