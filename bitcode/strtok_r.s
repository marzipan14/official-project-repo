	.text
	.file	"strtok_r.c"
	.globl	__strtok_r              # -- Begin function __strtok_r
	.p2align	4, 0x90
	.type	__strtok_r,@function
__strtok_r:                             # @__strtok_r
# %bb.0:
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.1:
	movq	(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_17
	.p2align	4, 0x90
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	%rdi, %rax
	addq	$1, %rdi
	movb	(%rax), %r8b
	movq	%rsi, %r9
	.p2align	4, 0x90
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r9), %r10d
	testb	%r10b, %r10b
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	addq	$1, %r9
	cmpb	%r10b, %r8b
	jne	.LBB0_3
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_2
# %bb.6:
	movq	%rdi, (%rdx)
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_7:
	testb	%r8b, %r8b
	je	.LBB0_14
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	leaq	1(%rdi), %r8
	movb	(%rdi), %r9b
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %r10d
	cmpb	%r9b, %r10b
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	addq	$1, %rcx
	testb	%r10b, %r10b
	jne	.LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	movq	%r8, %rdi
	jmp	.LBB0_8
.LBB0_12:
	testb	%r9b, %r9b
	je	.LBB0_15
# %bb.13:
	movb	$0, (%rdi)
	jmp	.LBB0_16
.LBB0_14:
	movq	$0, (%rdx)
.LBB0_17:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_15:
	xorl	%r8d, %r8d
.LBB0_16:
	movq	%r8, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__strtok_r, .Lfunc_end0-__strtok_r
                                        # -- End function
	.globl	strtok_r                # -- Begin function strtok_r
	.p2align	4, 0x90
	.type	strtok_r,@function
strtok_r:                               # @strtok_r
# %bb.0:
	movq	%rdi, %rax
	testq	%rdi, %rdi
	jne	.LBB1_3
# %bb.1:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.LBB1_2
	.p2align	4, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	leaq	1(%rax), %r9
	movb	(%rax), %r8b
	movq	%rsi, %rdi
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ecx
	testb	%cl, %cl
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	addq	$1, %rdi
	cmpb	%cl, %r8b
	jne	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%r9, %rax
	jmp	.LBB1_3
.LBB1_7:
	testb	%r8b, %r8b
	je	.LBB1_8
.LBB1_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	leaq	1(%r9), %r8
	movb	(%r9), %r10b
	movq	%rsi, %rdi
	.p2align	4, 0x90
.LBB1_10:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ecx
	cmpb	%r10b, %cl
	je	.LBB1_11
# %bb.13:                               #   in Loop: Header=BB1_10 Depth=2
	addq	$1, %rdi
	testb	%cl, %cl
	jne	.LBB1_10
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%r8, %r9
	jmp	.LBB1_9
.LBB1_11:
	testb	%r10b, %r10b
	je	.LBB1_12
# %bb.15:
	movb	$0, (%r9)
	jmp	.LBB1_16
.LBB1_8:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB1_16
.LBB1_12:
	xorl	%r8d, %r8d
.LBB1_16:
	movq	%r8, (%rdx)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_2:
	xorl	%eax, %eax
	jmp	.LBB1_17
.Lfunc_end1:
	.size	strtok_r, .Lfunc_end1-strtok_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
