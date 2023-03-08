	.text
	.file	"wcscoll.c"
	.globl	wcscoll                 # -- Begin function wcscoll
	.p2align	4, 0x90
	.type	wcscoll,@function
wcscoll:                                # @wcscoll
# %bb.0:
	jmp	wcscmp                  # TAILCALL
.Lfunc_end0:
	.size	wcscoll, .Lfunc_end0-wcscoll
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
