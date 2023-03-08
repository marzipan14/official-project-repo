	.text
	.file	"towlower_l.c"
	.globl	towlower_l              # -- Begin function towlower_l
	.p2align	4, 0x90
	.type	towlower_l,@function
towlower_l:                             # @towlower_l
# %bb.0:
	jmp	towlower                # TAILCALL
.Lfunc_end0:
	.size	towlower_l, .Lfunc_end0-towlower_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
