	.text
	.file	"tdestroy.c"
	.globl	tdestroy                # -- Begin function tdestroy
	.p2align	4, 0x90
	.type	tdestroy,@function
tdestroy:                               # @tdestroy
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	jmp	trecurse                # TAILCALL
.LBB0_1:
	retq
.Lfunc_end0:
	.size	tdestroy, .Lfunc_end0-tdestroy
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function trecurse
	.type	trecurse,@function
trecurse:                               # @trecurse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:
	movq	%r14, %rsi
	callq	trecurse
.LBB1_2:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:
	movq	%r14, %rsi
	callq	trecurse
.LBB1_4:
	movq	(%rbx), %rdi
	callq	*%r14
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end1:
	.size	trecurse, .Lfunc_end1-trecurse
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
