	.text
	.file	"sf_trunc.c"
	.globl	truncf                  # -- Begin function truncf
	.p2align	4, 0x90
	.type	truncf,@function
truncf:                                 # @truncf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$149, %ecx
	ja	.LBB0_4
# %bb.1:
	movl	%eax, %edx
	andl	$-2147483648, %edx      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$126, %ecx
	ja	.LBB0_3
# %bb.2:
	movd	%edx, %xmm0
	jmp	.LBB0_4
.LBB0_3:
	addl	$-127, %ecx
	movl	$-8388608, %esi         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %esi
	andl	%eax, %esi
	orl	%edx, %esi
	movd	%esi, %xmm0
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	truncf, .Lfunc_end0-truncf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
