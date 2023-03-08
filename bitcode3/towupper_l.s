	.text
	.file	"towupper_l.c"
	.globl	towupper_l              # -- Begin function towupper_l
	.p2align	4, 0x90
	.type	towupper_l,@function
towupper_l:                             # @towupper_l
# %bb.0:
	jmp	towupper                # TAILCALL
.Lfunc_end0:
	.size	towupper_l, .Lfunc_end0-towupper_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
