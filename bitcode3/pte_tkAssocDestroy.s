	.text
	.file	"pte_tkAssocDestroy.c"
	.globl	pte_tkAssocDestroy      # -- Begin function pte_tkAssocDestroy
	.p2align	4, 0x90
	.type	pte_tkAssocDestroy,@function
pte_tkAssocDestroy:                     # @pte_tkAssocDestroy
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.1:
	movq	16(%rdi), %rax
	movq	32(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_3
# %bb.2:
	movq	%rax, 16(%rcx)
.LBB0_3:
	testq	%rax, %rax
	je	.LBB0_5
# %bb.4:
	movq	%rcx, 32(%rax)
.LBB0_5:
	movq	(%rdi), %rcx
	cmpq	%rdi, 176(%rcx)
	je	.LBB0_6
# %bb.7:
	cmpq	%rdi, 184(%rcx)
	je	.LBB0_8
.LBB0_9:
	movq	24(%rdi), %rax
	movq	40(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB0_11
# %bb.10:
	movq	%rax, 24(%rcx)
.LBB0_11:
	testq	%rax, %rax
	je	.LBB0_13
# %bb.12:
	movq	%rcx, 40(%rax)
.LBB0_13:
	movq	8(%rdi), %rcx
	cmpq	%rdi, 24(%rcx)
	je	.LBB0_14
# %bb.15:
	jmp	free                    # TAILCALL
.LBB0_16:
	retq
.LBB0_6:
	movq	%rax, 176(%rcx)
	cmpq	%rdi, 184(%rcx)
	jne	.LBB0_9
.LBB0_8:
	movq	%rax, 184(%rcx)
	jmp	.LBB0_9
.LBB0_14:
	movq	%rax, 24(%rcx)
	jmp	free                    # TAILCALL
.Lfunc_end0:
	.size	pte_tkAssocDestroy, .Lfunc_end0-pte_tkAssocDestroy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
