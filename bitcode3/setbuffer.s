	.text
	.file	"setbuffer.c"
	.globl	setbuffer               # -- Begin function setbuffer
	.p2align	4, 0x90
	.type	setbuffer,@function
setbuffer:                              # @setbuffer
# %bb.0:
	xorl	%eax, %eax
	testq	%rsi, %rsi
	sete	%al
	addl	%eax, %eax
	movslq	%edx, %rcx
	movl	%eax, %edx
	jmp	setvbuf                 # TAILCALL
.Lfunc_end0:
	.size	setbuffer, .Lfunc_end0-setbuffer
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
