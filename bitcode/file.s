	.text
	.file	"file.c"
	.globl	eventfd                 # -- Begin function eventfd
	.p2align	4, 0x90
	.type	eventfd,@function
eventfd:                                # @eventfd
# %bb.0:
	cmpb	$0, eventfd._x(%rip)
	jne	.LBB0_2
# %bb.1:
	movb	$1, eventfd._x(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	$134, errno(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	retq
.Lfunc_end0:
	.size	eventfd, .Lfunc_end0-eventfd
                                        # -- End function
	.globl	realpath                # -- Begin function realpath
	.p2align	4, 0x90
	.type	realpath,@function
realpath:                               # @realpath
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	realpath, .Lfunc_end1-realpath
                                        # -- End function
	.type	eventfd._x,@object      # @eventfd._x
	.local	eventfd._x
	.comm	eventfd._x,1,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
