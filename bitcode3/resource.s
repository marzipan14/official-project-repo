	.text
	.file	"resource.c"
	.globl	getrlimit               # -- Begin function getrlimit
	.p2align	4, 0x90
	.type	getrlimit,@function
getrlimit:                              # @getrlimit
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	getrlimit, .Lfunc_end0-getrlimit
                                        # -- End function
	.globl	setrlimit               # -- Begin function setrlimit
	.p2align	4, 0x90
	.type	setrlimit,@function
setrlimit:                              # @setrlimit
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	setrlimit, .Lfunc_end1-setrlimit
                                        # -- End function
	.globl	getrusage               # -- Begin function getrusage
	.p2align	4, 0x90
	.type	getrusage,@function
getrusage:                              # @getrusage
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	getrusage, .Lfunc_end2-getrusage
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
