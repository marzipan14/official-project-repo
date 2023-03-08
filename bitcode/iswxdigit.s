	.text
	.file	"iswxdigit.c"
	.globl	iswxdigit               # -- Begin function iswxdigit
	.p2align	4, 0x90
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	iswxdigit, .Lfunc_end0-iswxdigit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
