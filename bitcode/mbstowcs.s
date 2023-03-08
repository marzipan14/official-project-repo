	.text
	.file	"mbstowcs.c"
	.globl	mbstowcs                # -- Begin function mbstowcs
	.p2align	4, 0x90
	.type	mbstowcs,@function
mbstowcs:                               # @mbstowcs
# %bb.0:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rsi,%rax), %ecx
	movl	%ecx, (%rdi,%rax,4)
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	.LBB0_1
.LBB0_3:
	cltq
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	mbstowcs, .Lfunc_end0-mbstowcs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
