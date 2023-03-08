	.text
	.file	"flsl.c"
	.globl	flsl                    # -- Begin function flsl
	.p2align	4, 0x90
	.type	flsl,@function
flsl:                                   # @flsl
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	bsrq	%rdi, %rax
	xorl	$-64, %eax
	addl	$65, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	flsl, .Lfunc_end0-flsl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
