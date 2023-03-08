	.text
	.file	"mbsinit.c"
	.globl	mbsinit                 # -- Begin function mbsinit
	.p2align	4, 0x90
	.type	mbsinit,@function
mbsinit:                                # @mbsinit
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	sete	%al
	retq
.LBB0_2:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	mbsinit, .Lfunc_end0-mbsinit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
