	.text
	.file	"sincosl.c"
	.globl	sincosl                 # -- Begin function sincosl
	.p2align	4, 0x90
	.type	sincosl,@function
sincosl:                                # @sincosl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	fldt	16(%rbp)
	fstpl	-24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	sincos
	fldl	-40(%rbp)
	fstpt	(%rbx)
	fldl	-32(%rbp)
	fstpt	(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sincosl, .Lfunc_end0-sincosl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
