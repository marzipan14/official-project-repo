	.text
	.file	"tcsetattr.c"
	.globl	tcsetattr               # -- Begin function tcsetattr
	.p2align	4, 0x90
	.type	tcsetattr,@function
tcsetattr:                              # @tcsetattr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %esi
	jb	.LBB0_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_3
.LBB0_2:
	addl	$21506, %esi            # imm = 0x5402
	xorl	%eax, %eax
	callq	ioctl
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tcsetattr, .Lfunc_end0-tcsetattr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
