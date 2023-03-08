	.text
	.file	"setlinebuf.c"
	.globl	setlinebuf              # -- Begin function setlinebuf
	.p2align	4, 0x90
	.type	setlinebuf,@function
setlinebuf:                             # @setlinebuf
# %bb.0:
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	jmp	setvbuf                 # TAILCALL
.Lfunc_end0:
	.size	setlinebuf, .Lfunc_end0-setlinebuf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
