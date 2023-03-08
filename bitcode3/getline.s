	.text
	.file	"getline.c"
	.globl	__getline               # -- Begin function __getline
	.p2align	4, 0x90
	.type	__getline,@function
__getline:                              # @__getline
# %bb.0:
	movq	%rdx, %rcx
	movl	$10, %edx
	jmp	__getdelim              # TAILCALL
.Lfunc_end0:
	.size	__getline, .Lfunc_end0-__getline
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
