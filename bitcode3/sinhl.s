	.text
	.file	"sinhl.c"
	.globl	sinhl                   # -- Begin function sinhl
	.p2align	4, 0x90
	.type	sinhl,@function
sinhl:                                  # @sinhl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	fldt	16(%rbp)
	fstpl	-16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sinh
	movsd	%xmm0, -8(%rbp)
	fldl	-8(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sinhl, .Lfunc_end0-sinhl
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
