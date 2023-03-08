	.text
	.file	"setbuf.c"
	.globl	setbuf                  # -- Begin function setbuf
	.p2align	4, 0x90
	.type	setbuf,@function
setbuf:                                 # @setbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	testq	%rsi, %rsi
	sete	%dl
	addl	%edx, %edx
	movl	$1024, %ecx             # imm = 0x400
	callq	setvbuf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	setbuf, .Lfunc_end0-setbuf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
