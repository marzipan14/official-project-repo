	.text
	.file	"mbtowc.c"
	.globl	mbtowc                  # -- Begin function mbtowc
	.p2align	4, 0x90
	.type	mbtowc,@function
mbtowc:                                 # @mbtowc
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.4:
	movsbl	(%rsi), %ecx
	testq	%rdi, %rdi
	je	.LBB0_6
# %bb.5:
	movl	%ecx, (%rdi)
.LBB0_6:
	xorl	%eax, %eax
	testb	%cl, %cl
	setne	%al
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_3:
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	mbtowc, .Lfunc_end0-mbtowc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
