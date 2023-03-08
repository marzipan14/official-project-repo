	.text
	.file	"mblen.c"
	.globl	mblen                   # -- Begin function mblen
	.p2align	4, 0x90
	.type	mblen,@function
mblen:                                  # @mblen
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpb	$0, (%rdi)
	je	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	setne	%al
	addl	%eax, %eax
	addl	$-1, %eax
.LBB0_3:
	retq
.Lfunc_end0:
	.size	mblen, .Lfunc_end0-mblen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
