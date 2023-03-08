	.text
	.file	"wcstok.c"
	.globl	wcstok                  # -- Begin function wcstok
	.p2align	4, 0x90
	.type	wcstok,@function
wcstok:                                 # @wcstok
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:
	movq	(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	leaq	4(%rax), %r9
	movl	(%rax), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %r8d
	jne	.LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%r9, %rax
	jmp	.LBB0_4
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	leaq	4(%r9), %r8
	movl	(%r9), %r10d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %edi
	je	.LBB0_13
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jne	.LBB0_12
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=1
	movq	%r8, %r9
	jmp	.LBB0_11
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	je	.LBB0_14
# %bb.15:
	movl	$0, (%r9)
	jmp	.LBB0_16
.LBB0_9:
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB0_17
.LBB0_14:
	xorl	%r8d, %r8d
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movq	%r8, (%rdx)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	xorl	%eax, %eax
	jmp	.LBB0_18
.Lfunc_end0:
	.size	wcstok, .Lfunc_end0-wcstok
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
