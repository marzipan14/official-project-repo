	.text
	.file	"llroundl.c"
	.globl	llroundl                # -- Begin function llroundl
	.p2align	4, 0x90
	.type	llroundl,@function
llroundl:                               # @llroundl
# %bb.0:
	pushq	%rax
	fldt	16(%rsp)
	fstpl	(%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	popq	%rax
	jmp	llround                 # TAILCALL
.Lfunc_end0:
	.size	llroundl, .Lfunc_end0-llroundl
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
