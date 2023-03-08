	.text
	.file	"sched_get_priority_min.c"
	.globl	sched_get_priority_min  # -- Begin function sched_get_priority_min
	.p2align	4, 0x90
	.type	sched_get_priority_min,@function
sched_get_priority_min:                 # @sched_get_priority_min
# %bb.0:
	xorl	%eax, %eax
	jmp	pte_osThreadGetMinPriority # TAILCALL
.Lfunc_end0:
	.size	sched_get_priority_min, .Lfunc_end0-sched_get_priority_min
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
