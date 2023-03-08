	.text
	.file	"dev.c"
	.globl	major                   # -- Begin function major
	.p2align	4, 0x90
	.type	major,@function
major:                                  # @major
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	major, .Lfunc_end0-major
                                        # -- End function
	.globl	minor                   # -- Begin function minor
	.p2align	4, 0x90
	.type	minor,@function
minor:                                  # @minor
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	minor, .Lfunc_end1-minor
                                        # -- End function
	.globl	makedev                 # -- Begin function makedev
	.p2align	4, 0x90
	.type	makedev,@function
makedev:                                # @makedev
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	makedev, .Lfunc_end2-makedev
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
