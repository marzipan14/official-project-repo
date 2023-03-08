	.text
	.file	"lroundl.c"
	.globl	lroundl                 # -- Begin function lroundl
	.p2align	4, 0x90
	.type	lroundl,@function
lroundl:                                # @lroundl
# %bb.0:
	pushq	%rax
	fldt	16(%rsp)
	fstpl	(%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	popq	%rax
	jmp	lround                  # TAILCALL
.Lfunc_end0:
	.size	lroundl, .Lfunc_end0-lroundl
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
