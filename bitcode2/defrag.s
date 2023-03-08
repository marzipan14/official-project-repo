	.text
	.file	"defrag.c"
	.globl	activeDefragCycle       # -- Begin function activeDefragCycle
	.p2align	4, 0x90
	.type	activeDefragCycle,@function
activeDefragCycle:                      # @activeDefragCycle
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	activeDefragCycle, .Lfunc_end0-activeDefragCycle
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
