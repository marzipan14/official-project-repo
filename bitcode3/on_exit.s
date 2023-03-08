	.text
	.file	"on_exit.c"
	.globl	on_exit                 # -- Begin function on_exit
	.p2align	4, 0x90
	.type	on_exit,@function
on_exit:                                # @on_exit
# %bb.0:
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movl	$1, %edi
	xorl	%ecx, %ecx
	jmp	__register_exitproc     # TAILCALL
.Lfunc_end0:
	.size	on_exit, .Lfunc_end0-on_exit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
