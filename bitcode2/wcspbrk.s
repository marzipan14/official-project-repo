	.text
	.file	"wcspbrk.c"
	.globl	wcspbrk                 # -- Begin function wcspbrk
	.p2align	4, 0x90
	.type	wcspbrk,@function
wcspbrk:                                # @wcspbrk
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_8
# %bb.1:
	movq	%rdi, %rax
	movl	(%rsi), %r8d
	addq	$4, %rsi
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rax), %ecx
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_8
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_7
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rsi, %rdi
	movl	%r8d, %edx
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %edx
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_4
	jmp	.LBB0_7
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_8:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcspbrk, .Lfunc_end0-wcspbrk
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
