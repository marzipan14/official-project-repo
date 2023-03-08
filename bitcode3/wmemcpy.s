	.text
	.file	"wmemcpy.c"
	.globl	wmemcpy                 # -- Begin function wmemcpy
	.p2align	4, 0x90
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	shlq	$2, %rdx
	jmp	memcpy                  # TAILCALL
.Lfunc_end0:
	.size	wmemcpy, .Lfunc_end0-wmemcpy
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
