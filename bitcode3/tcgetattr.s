	.text
	.file	"tcgetattr.c"
	.globl	tcgetattr               # -- Begin function tcgetattr
	.p2align	4, 0x90
	.type	tcgetattr,@function
tcgetattr:                              # @tcgetattr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movl	$21505, %esi            # imm = 0x5401
	xorl	%eax, %eax
	callq	ioctl
	negl	%eax
	sbbl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tcgetattr, .Lfunc_end0-tcgetattr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
