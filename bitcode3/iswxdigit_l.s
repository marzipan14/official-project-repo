	.text
	.file	"iswxdigit_l.c"
	.globl	iswxdigit_l             # -- Begin function iswxdigit_l
	.p2align	4, 0x90
	.type	iswxdigit_l,@function
iswxdigit_l:                            # @iswxdigit_l
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	-48(%rdi), %eax
	cmpl	$10, %eax
	setb	%al
	andl	$-33, %edi
	addl	$-65, %edi
	cmpl	$6, %edi
	setb	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	retq
.Lfunc_end0:
	.size	iswxdigit_l, .Lfunc_end0-iswxdigit_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
