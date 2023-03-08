	.text
	.file	"sf_log2.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function log2f
.LCPI0_0:
	.long	1060205080              # float 0.693147182
	.text
	.globl	log2f
	.p2align	4, 0x90
	.type	log2f,@function
log2f:                                  # @log2f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	logf
	divss	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	log2f, .Lfunc_end0-log2f
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
