	.text
	.file	"putwchar.c"
	.globl	_putwchar_r             # -- Begin function _putwchar_r
	.p2align	4, 0x90
	.type	_putwchar_r,@function
_putwchar_r:                            # @_putwchar_r
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_fputwc_r               # TAILCALL
.Lfunc_end0:
	.size	_putwchar_r, .Lfunc_end0-_putwchar_r
                                        # -- End function
	.globl	putwchar                # -- Begin function putwchar
	.p2align	4, 0x90
	.type	putwchar,@function
putwchar:                               # @putwchar
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
	jmp	fputwc                  # TAILCALL
.Lfunc_end1:
	.size	putwchar, .Lfunc_end1-putwchar
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
