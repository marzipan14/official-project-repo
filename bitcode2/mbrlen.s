	.text
	.file	"mbrlen.c"
	.globl	mbrlen                  # -- Begin function mbrlen
	.p2align	4, 0x90
	.type	mbrlen,@function
mbrlen:                                 # @mbrlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	xorl	%edi, %edi
	callq	mbrtowc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	mbrlen, .Lfunc_end0-mbrlen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
