	.text
	.file	"strpbrk.c"
	.globl	strpbrk                 # -- Begin function strpbrk
	.p2align	4, 0x90
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %rax
	movb	(%rsi), %r8b
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rax), %cl
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_8
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	testb	%r8b, %r8b
	je	.LBB0_7
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r8d, %edx
	movq	%rsi, %rdi
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	je	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rdi), %edx
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB0_5
	jmp	.LBB0_7
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strpbrk, .Lfunc_end0-strpbrk
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
