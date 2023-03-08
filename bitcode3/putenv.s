	.text
	.file	"putenv.c"
	.globl	putenv                  # -- Begin function putenv
	.p2align	4, 0x90
	.type	putenv,@function
putenv:                                 # @putenv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_putenv_r               # TAILCALL
.Lfunc_end0:
	.size	putenv, .Lfunc_end0-putenv
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
