	.text
	.file	"flsll.c"
	.globl	flsll                   # -- Begin function flsll
	.p2align	4, 0x90
	.type	flsll,@function
flsll:                                  # @flsll
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	bsrq	%rdi, %rax
	xorl	$-64, %eax
	addl	$65, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_1:
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	flsll, .Lfunc_end0-flsll
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
