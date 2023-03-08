	.text
	.file	"strcspn.c"
	.globl	strcspn                 # -- Begin function strcspn
	.p2align	4, 0x90
	.type	strcspn,@function
strcspn:                                # @strcspn
# %bb.0:
	movb	(%rdi), %r9b
	movq	%rdi, %rax
	testb	%r9b, %r9b
	je	.LBB0_6
# %bb.1:
	movb	(%rsi), %r8b
	addq	$1, %rsi
	movq	%rdi, %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movb	1(%rax), %r9b
	addq	$1, %rax
	testb	%r9b, %r9b
	je	.LBB0_6
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%rsi, %rdx
	movl	%r8d, %ecx
	testb	%r8b, %r8b
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%cl, %r9b
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_5 Depth=2
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
	testb	%cl, %cl
	jne	.LBB0_5
	jmp	.LBB0_3
.LBB0_6:
	subq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	strcspn, .Lfunc_end0-strcspn
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
