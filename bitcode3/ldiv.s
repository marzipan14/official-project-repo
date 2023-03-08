	.text
	.file	"ldiv.c"
	.globl	ldiv                    # -- Begin function ldiv
	.p2align	4, 0x90
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	movq	%rdi, %rax
	cqto
	idivq	%rsi
	testq	%rdi, %rdi
	js	.LBB0_3
# %bb.1:
	testq	%rdx, %rdx
	jns	.LBB0_3
# %bb.2:
	addq	$1, %rax
	subq	%rsi, %rdx
	retq
.LBB0_3:
	testq	%rdi, %rdi
	jns	.LBB0_6
# %bb.4:
	testq	%rdx, %rdx
	jle	.LBB0_6
# %bb.5:
	addq	$-1, %rax
	addq	%rsi, %rdx
.LBB0_6:
	retq
.Lfunc_end0:
	.size	ldiv, .Lfunc_end0-ldiv
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
