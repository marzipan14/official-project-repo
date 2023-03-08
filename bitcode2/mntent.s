	.text
	.file	"mntent.c"
	.globl	setmntent               # -- Begin function setmntent
	.p2align	4, 0x90
	.type	setmntent,@function
setmntent:                              # @setmntent
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	setmntent, .Lfunc_end0-setmntent
                                        # -- End function
	.globl	getmntent               # -- Begin function getmntent
	.p2align	4, 0x90
	.type	getmntent,@function
getmntent:                              # @getmntent
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	getmntent, .Lfunc_end1-getmntent
                                        # -- End function
	.globl	getmntent_r             # -- Begin function getmntent_r
	.p2align	4, 0x90
	.type	getmntent_r,@function
getmntent_r:                            # @getmntent_r
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	getmntent_r, .Lfunc_end2-getmntent_r
                                        # -- End function
	.globl	addmntent               # -- Begin function addmntent
	.p2align	4, 0x90
	.type	addmntent,@function
addmntent:                              # @addmntent
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	addmntent, .Lfunc_end3-addmntent
                                        # -- End function
	.globl	endmntent               # -- Begin function endmntent
	.p2align	4, 0x90
	.type	endmntent,@function
endmntent:                              # @endmntent
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	endmntent, .Lfunc_end4-endmntent
                                        # -- End function
	.globl	hasmntopt               # -- Begin function hasmntopt
	.p2align	4, 0x90
	.type	hasmntopt,@function
hasmntopt:                              # @hasmntopt
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	hasmntopt, .Lfunc_end5-hasmntopt
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
