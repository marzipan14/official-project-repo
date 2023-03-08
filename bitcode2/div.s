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
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_5
# %bb.2:
	addl	$1, %eax
	subl	%esi, %edx
	jmp	.LBB0_5
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB0_6
# %bb.4:
	addl	$-1, %eax
	addl	%esi, %edx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	shlq	$32, %rdx
	movl	%eax, %eax
	orq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	div, .Lfunc_end0-div
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
