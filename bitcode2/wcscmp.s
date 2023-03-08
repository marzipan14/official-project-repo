	.text
	.file	"wcscmp.c"
	.globl	wcscmp                  # -- Begin function wcscmp
	.p2align	4, 0x90
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx), %edx
	movl	%edx, %eax
	subl	(%rsi,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_1
# %bb.3:
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcscmp, .Lfunc_end0-wcscmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
