	.text
	.file	"strcspn.c"
	.globl	strcspn                 # -- Begin function strcspn
	.p2align	4, 0x90
	.type	strcspn,@function
strcspn:                                # @strcspn
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %r9b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	testb	%r9b, %r9b
	je	.LBB0_7
# %bb.1:
	movb	(%rsi), %r8b
	addq	$1, %rsi
	movq	%rdi, %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rax), %r9b
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%r9b, %r9b
	je	.LBB0_7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB0_6
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rdx
	movl	%r8d, %ecx
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %r9b
	je	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_4
	jmp	.LBB0_6
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	subq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strcspn, .Lfunc_end0-strcspn
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
