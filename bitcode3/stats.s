	.text
	.file	"stats.c"
	.globl	stats_init              # -- Begin function stats_init
	.p2align	4, 0x90
	.type	stats_init,@function
stats_init:                             # @stats_init
# %bb.0:
	retq
.Lfunc_end0:
	.size	stats_init, .Lfunc_end0-stats_init
                                        # -- End function
	.type	lwip_stats,@object      # @lwip_stats
	.comm	lwip_stats,310,2
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
