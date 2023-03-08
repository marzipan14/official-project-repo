	.text
	.file	"sched_setscheduler.c"
	.globl	sched_setscheduler      # -- Begin function sched_setscheduler
	.p2align	4, 0x90
	.type	sched_setscheduler,@function
sched_setscheduler:                     # @sched_setscheduler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sched_setscheduler, .Lfunc_end0-sched_setscheduler
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
