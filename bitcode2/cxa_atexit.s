	.text
	.file	"cxa_atexit.c"
	.globl	__cxa_atexit            # -- Begin function __cxa_atexit
	.p2align	4, 0x90
	.type	__cxa_atexit,@function
__cxa_atexit:                           # @__cxa_atexit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movl	$2, %edi
	callq	__register_exitproc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxa_atexit, .Lfunc_end0-__cxa_atexit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
