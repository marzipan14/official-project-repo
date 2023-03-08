	.text
	.file	"wcsspn.c"
	.globl	wcsspn                  # -- Begin function wcsspn
	.p2align	4, 0x90
	.type	wcsspn,@function
wcsspn:                                 # @wcsspn
# %bb.0:
	movl	(%rdi), %r9d
	movq	%rdi, %rax
	testl	%r9d, %r9d
	je	.LBB0_7
# %bb.1:
	movl	(%rsi), %r8d
	addq	$4, %rsi
	movq	%rdi, %rax
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%rsi, %rdx
	movl	%r8d, %ecx
	testl	%r8d, %r8d
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %r9d
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_5 Depth=2
	movl	(%rdx), %ecx
	addq	$4, %rdx
	testl	%ecx, %ecx
	jne	.LBB0_5
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	4(%rax), %r9d
	addq	$4, %rax
	testl	%r9d, %r9d
	jne	.LBB0_2
	jmp	.LBB0_7
.LBB0_3:
	movq	%rdi, %rax
.LBB0_7:
	subq	%rdi, %rax
	sarq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcsspn, .Lfunc_end0-wcsspn
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
