	.text
	.file	"sendfile.c"
	.globl	sendfile                # -- Begin function sendfile
	.p2align	4, 0x90
	.type	sendfile,@function
sendfile:                               # @sendfile
# %bb.0:
	cmpb	$0, sendfile._x(%rip)
	jne	.LBB0_2
# %bb.1:
	movb	$1, sendfile._x(%rip)
.LBB0_2:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	sendfile, .Lfunc_end0-sendfile
                                        # -- End function
	.type	sendfile._x,@object     # @sendfile._x
	.local	sendfile._x
	.comm	sendfile._x,1,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
