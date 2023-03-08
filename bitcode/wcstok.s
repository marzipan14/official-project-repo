	.text
	.file	"wcstok.c"
	.globl	wcstok                  # -- Begin function wcstok
	.p2align	4, 0x90
	.type	wcstok,@function
wcstok:                                 # @wcstok
# %bb.0:
	movq	%rdi, %rax
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	leaq	4(%rax), %r9
	movl	(%rax), %r8d
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	testl	%edi, %edi
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	addq	$4, %rcx
	cmpl	%edi, %r8d
	jne	.LBB0_4
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r9, %rax
	jmp	.LBB0_3
.LBB0_7:
	testl	%r8d, %r8d
	je	.LBB0_8
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	leaq	4(%r9), %r8
	movl	(%r9), %r10d
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	cmpl	%r10d, %edi
	je	.LBB0_11
# %bb.13:                               #   in Loop: Header=BB0_10 Depth=2
	addq	$4, %rcx
	testl	%edi, %edi
	jne	.LBB0_10
# %bb.14:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%r8, %r9
	jmp	.LBB0_9
.LBB0_11:
	testl	%r10d, %r10d
	je	.LBB0_12
# %bb.15:
	movl	$0, (%r9)
	jmp	.LBB0_16
.LBB0_8:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB0_16
.LBB0_12:
	xorl	%r8d, %r8d
.LBB0_16:
	movq	%r8, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcstok, .Lfunc_end0-wcstok
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
