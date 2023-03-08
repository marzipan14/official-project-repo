	.text
	.file	"div.c"
	.globl	div                     # -- Begin function div
	.p2align	4, 0x90
	.type	div,@function
div:                                    # @div
# %bb.0:
	movl	%edi, %eax
	cltd
	idivl	%esi
                                        # kill: def $edx killed $edx def $rdx
	testl	%edi, %edi
	js	.LBB0_3
# %bb.1:
	testl	%edx, %edx
	jns	.LBB0_3
# %bb.2:
	addl	$1, %eax
	subl	%esi, %edx
	jmp	.LBB0_6
.LBB0_3:
	testl	%edi, %edi
	jns	.LBB0_6
# %bb.4:
	testl	%edx, %edx
	jle	.LBB0_6
# %bb.5:
	addl	$-1, %eax
	addl	%esi, %edx
.LBB0_6:
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	retq
.Lfunc_end0:
	.size	div, .Lfunc_end0-div
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
