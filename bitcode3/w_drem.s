	.text
	.file	"w_drem.c"
	.globl	drem                    # -- Begin function drem
	.p2align	4, 0x90
	.type	drem,@function
drem:                                   # @drem
# %bb.0:
	jmp	remainder               # TAILCALL
.Lfunc_end0:
	.size	drem, .Lfunc_end0-drem
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
