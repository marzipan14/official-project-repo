	.text
	.file	"wcscspn.c"
	.globl	wcscspn                 # -- Begin function wcscspn
	.p2align	4, 0x90
	.type	wcscspn,@function
wcscspn:                                # @wcscspn
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	testl	%r9d, %r9d
	je	.LBB0_7
# %bb.1:
	movl	(%rsi), %r8d
	addq	$4, %rsi
	movq	%rdi, %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %r9d
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB0_7
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_6
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rdx
	movl	%r8d, %ecx
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r9d
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %ecx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_4
	jmp	.LBB0_6
.LBB0_7:
	subq	%rdi, %rax
	sarq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcscspn, .Lfunc_end0-wcscspn
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
