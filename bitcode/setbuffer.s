	.text
	.file	"setbuffer.c"
	.globl	setbuffer               # -- Begin function setbuffer
	.p2align	4, 0x90
	.type	setbuffer,@function
setbuffer:                              # @setbuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	addl	%eax, %eax
	movslq	%edx, %rcx
	movl	%eax, %edx
	callq	setvbuf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	setbuffer, .Lfunc_end0-setbuffer
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
