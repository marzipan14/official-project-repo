	.text
	.file	"putchar.c"
	.globl	_putchar_r              # -- Begin function _putchar_r
	.p2align	4, 0x90
	.type	_putchar_r,@function
_putchar_r:                             # @_putchar_r
# %bb.0:
	movq	16(%rdi), %rdx
	jmp	_putc_r                 # TAILCALL
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_putc_r                 # TAILCALL
.Lfunc_end1:
	.size	putchar, .Lfunc_end1-putchar
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
