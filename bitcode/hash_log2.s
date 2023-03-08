	.text
	.file	"hash_log2.c"
	.globl	__log2                  # -- Begin function __log2
	.p2align	4, 0x90
	.type	__log2,@function
__log2:                                 # @__log2
# %bb.0:
	xorl	%eax, %eax
	cmpl	$2, %edi
	jb	.LBB0_3
# %bb.1:                                # %.preheader
	xorl	%eax, %eax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	addl	%ecx, %ecx
	addl	$1, %eax
	cmpl	%edi, %ecx
	jb	.LBB0_2
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__log2, .Lfunc_end0-__log2
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
