	.text
	.file	"sched_get_priority_max.c"
	.globl	sched_get_priority_max  # -- Begin function sched_get_priority_max
	.p2align	4, 0x90
	.type	sched_get_priority_max,@function
sched_get_priority_max:                 # @sched_get_priority_max
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	callq	pte_osThreadGetMaxPriority
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sched_get_priority_max, .Lfunc_end0-sched_get_priority_max
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
