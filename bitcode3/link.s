	.text
	.file	"link.c"
	.globl	dl_iterate_phdr         # -- Begin function dl_iterate_phdr
	.p2align	4, 0x90
	.type	dl_iterate_phdr,@function
dl_iterate_phdr:                        # @dl_iterate_phdr
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dl_iterate_phdr, .Lfunc_end0-dl_iterate_phdr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
