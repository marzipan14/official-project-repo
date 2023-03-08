	.text
	.file	"ffs.c"
	.globl	ffs                     # -- Begin function ffs
	.p2align	4, 0x90
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	bsfl	%edi, %ecx
	movl	$-1, %eax
	cmovnel	%ecx, %eax
	addl	$1, %eax
	retq
.Lfunc_end0:
	.size	ffs, .Lfunc_end0-ffs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
