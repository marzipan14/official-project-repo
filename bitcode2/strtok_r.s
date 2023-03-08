	.text
	.file	"strtok_r.c"
	.globl	__strtok_r              # -- Begin function __strtok_r
	.p2align	4, 0x90
	.type	__strtok_r,@function
__strtok_r:                             # @__strtok_r
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.1:
	movq	(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_19
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	%rdi, %rax
	addq	$1, %rdi
	movb	(%rax), %r8b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r9
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r9), %r10d
	movl	$42, __A_VARIABLE(%rip)
	testb	%r10b, %r10b
	je	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r10b, %r8b
	jne	.LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.7:
	movq	%rdi, (%rdx)
	movb	$0, (%rax)
	jmp	.LBB0_20
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB0_16
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	leaq	1(%rdi), %r8
	movb	(%rdi), %r9b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_11:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %r10d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r9b, %r10b
	je	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%r10b, %r10b
	jne	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=1
	movq	%r8, %rdi
	jmp	.LBB0_10
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r9b, %r9b
	je	.LBB0_17
# %bb.15:
	movb	$0, (%rdi)
	jmp	.LBB0_18
.LBB0_16:
	movq	$0, (%rdx)
.LBB0_19:
	xorl	%eax, %eax
	jmp	.LBB0_20
.LBB0_17:
	xorl	%r8d, %r8d
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, (%rdx)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB1_3
# %bb.1:
	movq	(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_2
	.p2align	4, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rax), %r9
	movb	(%rax), %r8b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %r8b
	jne	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%r9, %rax
	jmp	.LBB1_3
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB1_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	leaq	1(%r9), %r8
	movb	(%r9), %r10b
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	.p2align	4, 0x90
.LBB1_11:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r10b, %cl
	je	.LBB1_12
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=2
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB1_11
# %bb.19:                               #   in Loop: Header=BB1_10 Depth=1
	movq	%r8, %r9
	jmp	.LBB1_10
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r10b, %r10b
	je	.LBB1_13
# %bb.14:
	movb	$0, (%r9)
	jmp	.LBB1_15
.LBB1_8:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB1_16
.LBB1_13:
	xorl	%r8d, %r8d
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	movq	%r8, (%rdx)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
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
