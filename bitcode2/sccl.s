	.text
	.file	"sccl.c"
	.globl	__sccl                  # -- Begin function __sccl
	.p2align	4, 0x90
	.type	__sccl,@function
__sccl:                                 # @__sccl
# %bb.0:
	movb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$94, %al
	jne	.LBB0_1
# %bb.2:
	movb	1(%rsi), %al
	addq	$2, %rsi
	movb	$1, %cl
	jmp	.LBB0_3
.LBB0_1:
	addq	$1, %rsi
	xorl	%ecx, %ecx
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 1(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 2(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 3(%rdi,%rdx)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB0_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_6
# %bb.9:
	movzbl	%al, %r8d
	movl	$42, __A_VARIABLE(%rip)
	xorb	$1, %cl
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_19 Depth 3
	movslq	%r8d, %rax
	movb	%cl, (%rdi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	movl	%r8d, %edx
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
	leaq	1(%rax), %rsi
	movzbl	(%rax), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$45, %r8d
	jne	.LBB0_13
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	movzbl	(%rsi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %r8d
	cmpl	$93, %r9d
	je	.LBB0_15
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %edx
	jg	.LBB0_15
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rdx
	movl	%r9d, %esi
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	%cl, 1(%rdi,%rdx)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jl	.LBB0_19
# %bb.11:                               #   in Loop: Header=BB0_12 Depth=2
	addq	$2, %rax
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	testb	%r8b, %r8b
	je	.LBB0_8
# %bb.14:                               #   in Loop: Header=BB0_10 Depth=1
	cmpb	$93, %r8b
	je	.LBB0_7
	jmp	.LBB0_15
.LBB0_6:
	addq	$-1, %rsi
.LBB0_7:                                # %.loopexit
	movq	%rsi, %rax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__sccl, .Lfunc_end0-__sccl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
