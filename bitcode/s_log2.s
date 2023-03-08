	.text
	.file	"s_log2.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function log2
.LCPI0_0:
	.quad	4604418534313441775     # double 0.69314718055994529
	.text
	.globl	log2
	.p2align	4, 0x90
	.type	log2,@function
log2:                                   # @log2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	log
	divsd	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	log2, .Lfunc_end0-log2
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
