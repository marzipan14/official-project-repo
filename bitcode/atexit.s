	.text
	.file	"atexit.c"
	.globl	atexit                  # -- Begin function atexit
	.p2align	4, 0x90
	.type	atexit,@function
atexit:                                 # @atexit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	xorl	%edi, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__register_exitproc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atexit, .Lfunc_end0-atexit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
