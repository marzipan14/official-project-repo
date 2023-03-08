	.text
	.file	"strnlen.c"
	.globl	strnlen                 # -- Begin function strnlen
	.p2align	4, 0x90
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.1:                                # %.preheader
	movq	%rdi, %rax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$-1, %rsi
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB0_2
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	subq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strnlen, .Lfunc_end0-strnlen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
