	.text
	.file	"iswxdigit_l.c"
	.globl	iswxdigit_l             # -- Begin function iswxdigit_l
	.p2align	4, 0x90
	.type	iswxdigit_l,@function
iswxdigit_l:                            # @iswxdigit_l
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	-48(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$10, %ecx
	jb	.LBB0_3
# %bb.1:
	leal	-97(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ecx
	jb	.LBB0_3
# %bb.2:
	addl	$-65, %edi
	xorl	%eax, %eax
	cmpl	$6, %edi
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	iswxdigit_l, .Lfunc_end0-iswxdigit_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
