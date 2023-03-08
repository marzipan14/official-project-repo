	.text
	.file	"wf_drem.c"
	.globl	dremf                   # -- Begin function dremf
	.p2align	4, 0x90
	.type	dremf,@function
dremf:                                  # @dremf
# %bb.0:
	jmp	remainderf              # TAILCALL
.Lfunc_end0:
	.size	dremf, .Lfunc_end0-dremf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
