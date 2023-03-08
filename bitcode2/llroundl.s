	.text
	.file	"llroundl.c"
	.globl	llroundl                # -- Begin function llroundl
	.p2align	4, 0x90
	.type	llroundl,@function
llroundl:                               # @llroundl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	fldt	16(%rbp)
	fstpl	-8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	llround
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	llroundl, .Lfunc_end0-llroundl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
