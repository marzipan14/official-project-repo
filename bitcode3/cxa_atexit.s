	.text
	.file	"cxa_atexit.c"
	.globl	__cxa_atexit            # -- Begin function __cxa_atexit
	.p2align	4, 0x90
	.type	__cxa_atexit,@function
__cxa_atexit:                           # @__cxa_atexit
# %bb.0:
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movl	$2, %edi
	jmp	__register_exitproc     # TAILCALL
.Lfunc_end0:
	.size	__cxa_atexit, .Lfunc_end0-__cxa_atexit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
