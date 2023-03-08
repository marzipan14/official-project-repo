	.text
	.file	"tcsetattr.c"
	.globl	tcsetattr               # -- Begin function tcsetattr
	.p2align	4, 0x90
	.type	tcsetattr,@function
tcsetattr:                              # @tcsetattr
# %bb.0:
	cmpl	$3, %esi
	jb	.LBB0_2
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.LBB0_2:
	addl	$21506, %esi            # imm = 0x5402
	xorl	%eax, %eax
	jmp	ioctl                   # TAILCALL
.Lfunc_end0:
	.size	tcsetattr, .Lfunc_end0-tcsetattr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
