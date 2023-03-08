	.text
	.file	"strsep.c"
	.globl	strsep                  # -- Begin function strsep
	.p2align	4, 0x90
	.type	strsep,@function
strsep:                                 # @strsep
# %bb.0:
	movq	%rdi, %rdx
	movq	(%rdi), %rdi
	xorl	%ecx, %ecx
	jmp	__strtok_r              # TAILCALL
.Lfunc_end0:
	.size	strsep, .Lfunc_end0-strsep
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
