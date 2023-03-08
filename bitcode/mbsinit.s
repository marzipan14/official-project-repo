	.text
	.file	"mbsinit.c"
	.globl	mbsinit                 # -- Begin function mbsinit
	.p2align	4, 0x90
	.type	mbsinit,@function
mbsinit:                                # @mbsinit
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	mbsinit, .Lfunc_end0-mbsinit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
