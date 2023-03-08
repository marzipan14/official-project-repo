	.text
	.file	"ffsll.c"
	.globl	ffsll                   # -- Begin function ffsll
	.p2align	4, 0x90
	.type	ffsll,@function
ffsll:                                  # @ffsll
# %bb.0:
	bsfq	%rdi, %rcx
	addl	$1, %ecx
	xorl	%eax, %eax
	testq	%rdi, %rdi
	cmovnel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	ffsll, .Lfunc_end0-ffsll
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
