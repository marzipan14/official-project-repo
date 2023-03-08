	.text
	.file	"cxa_finalize.c"
	.globl	__cxa_finalize          # -- Begin function __cxa_finalize
	.p2align	4, 0x90
	.type	__cxa_finalize,@function
__cxa_finalize:                         # @__cxa_finalize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	xorl	%edi, %edi
	callq	__call_exitprocs
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxa_finalize, .Lfunc_end0-__cxa_finalize
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
