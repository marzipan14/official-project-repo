	.text
	.file	"setbuf.c"
	.globl	setbuf                  # -- Begin function setbuf
	.p2align	4, 0x90
	.type	setbuf,@function
setbuf:                                 # @setbuf
# %bb.0:
	xorl	%edx, %edx
	testq	%rsi, %rsi
	sete	%dl
	addl	%edx, %edx
	movl	$1024, %ecx             # imm = 0x400
	jmp	setvbuf                 # TAILCALL
.Lfunc_end0:
	.size	setbuf, .Lfunc_end0-setbuf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
