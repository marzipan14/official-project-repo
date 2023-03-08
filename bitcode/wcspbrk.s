	.text
	.file	"wcspbrk.c"
	.globl	wcspbrk                 # -- Begin function wcspbrk
	.p2align	4, 0x90
	.type	wcspbrk,@function
wcspbrk:                                # @wcspbrk
# %bb.0:
	movl	(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB0_4
# %bb.1:
	movq	%rdi, %rax
	movl	(%rsi), %r8d
	addq	$4, %rsi
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	4(%rax), %ecx
	addq	$4, %rax
	testl	%ecx, %ecx
	je	.LBB0_4
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	%rsi, %rdi
	movl	%r8d, %edx
	testl	%r8d, %r8d
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edx, %ecx
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_6 Depth=2
	movl	(%rdi), %edx
	addq	$4, %rdi
	testl	%edx, %edx
	jne	.LBB0_6
	jmp	.LBB0_3
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
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
