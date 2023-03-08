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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	js	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB0_5
# %bb.2:
	addq	$1, %rax
	subq	%rsi, %rdx
	jmp	.LBB0_5
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB0_6
# %bb.4:
	addq	$-1, %rax
	addq	%rsi, %rdx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	ldiv, .Lfunc_end0-ldiv
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
