	.text
	.file	"setlinebuf.c"
	.globl	setlinebuf              # -- Begin function setlinebuf
	.p2align	4, 0x90
	.type	setlinebuf,@function
setlinebuf:                             # @setlinebuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	setvbuf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	setlinebuf, .Lfunc_end0-setlinebuf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
