	.text
	.file	"atexit.c"
	.globl	atexit                  # -- Begin function atexit
	.p2align	4, 0x90
	.type	atexit,@function
atexit:                                 # @atexit
# %bb.0:
	movq	%rdi, %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	__register_exitproc     # TAILCALL
.Lfunc_end0:
	.size	atexit, .Lfunc_end0-atexit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
