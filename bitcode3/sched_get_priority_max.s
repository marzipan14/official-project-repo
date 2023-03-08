	.text
	.file	"sched_get_priority_max.c"
	.globl	sched_get_priority_max  # -- Begin function sched_get_priority_max
	.p2align	4, 0x90
	.type	sched_get_priority_max,@function
sched_get_priority_max:                 # @sched_get_priority_max
# %bb.0:
	xorl	%eax, %eax
	jmp	pte_osThreadGetMaxPriority # TAILCALL
.Lfunc_end0:
	.size	sched_get_priority_max, .Lfunc_end0-sched_get_priority_max
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
